# LOBBY STUFF
execute if score $in_lobby var matches 1 run function ctf:in_lobby
execute as @a if score @s fungus_click matches 1.. run scoreboard players set $start_game var 200
scoreboard players set @a fungus_click 0
execute if score $start_game var matches 1.. run function ctf:begin_game_timer
# JAIL STUFF

execute as @e[tag=jail.particle_emitter] at @s run function ctf:jail/particleconditions
scoreboard players add $jail.particle_emitter.timer var 1

execute as @a[scores={tag_cooldown=1..}] run scoreboard players remove @s tag_cooldown 1

execute as @a[scores={invincibility=1..}] run tag @s add invincible
execute as @a[tag=invincible] at @s run function ctf:invincible
execute as @a[scores={invincibility=0}] run tag @s remove invincible 

# cooldown.x measures the time between jailbreaks to ensure that two jailbreaks can't happen sequentially (1 minute; 1200 ticks)
# (i.e., someone just camps near the jail and jailbreaks it instantly)
execute if score $jail.break.cooldown.mesa var matches 1.. run scoreboard players remove $jail.break.cooldown.mesa var 1
execute if score $jail.break.cooldown.cherry var matches 1.. run scoreboard players remove $jail.break.cooldown.cherry var 1
execute if score $jail.break.cooldown.desert var matches 1.. run scoreboard players remove $jail.break.cooldown.desert var 1
execute if score $jail.break.cooldown.ice var matches 1.. run scoreboard players remove $jail.break.cooldown.ice var 1
execute if score $jail.break.cooldown.forest var matches 1.. run scoreboard players remove $jail.break.cooldown.forest var 1

# cooldown.x.cooldown is the cooldown for how often it can send the message saying it's on cooldown, otherwise it spams (10 seconds; 200 ticks)
execute if score $jail.break.cooldown.mesa.cooldown var matches 1.. run scoreboard players remove $jail.break.cooldown.mesa.cooldown var 1
execute if score $jail.break.cooldown.cherry.cooldown var matches 1.. run scoreboard players remove $jail.break.cooldown.cherry.cooldown var 1
execute if score $jail.break.cooldown.desert.cooldown var matches 1.. run scoreboard players remove $jail.break.cooldown.desert.cooldown var 1
execute if score $jail.break.cooldown.ice.cooldown var matches 1.. run scoreboard players remove $jail.break.cooldown.ice.cooldown var 1
execute if score $jail.break.cooldown.forest.cooldown var matches 1.. run scoreboard players remove $jail.break.cooldown.forest.cooldown var 1

# x.timer is the timer for how long each jail should stay open after being jailbroken (10 seconds; 200 ticks)
execute if score $jail.break.mesa.timer var matches 1.. run scoreboard players remove $jail.break.mesa.timer var 1
execute if score $jail.break.cherry.timer var matches 1.. run scoreboard players remove $jail.break.cherry.timer var 1
execute if score $jail.break.desert.timer var matches 1.. run scoreboard players remove $jail.break.desert.timer var 1
execute if score $jail.break.ice.timer var matches 1.. run scoreboard players remove $jail.break.ice.timer var 1
execute if score $jail.break.forest.timer var matches 1.. run scoreboard players remove $jail.break.forest.timer var 1

# at the end of the jailbreak, reset it back to its original state (reset trapdoors, remove jailbroken tag, etc)
execute if score $jail.break.mesa.timer var matches 1 as @e[tag=jail.center, tag=mesa] at @s run function ctf:jail/jailbreak/jailbreak_end
execute if score $jail.break.cherry.timer var matches 1 as @e[tag=jail.center, tag=cherry] at @s run function ctf:jail/jailbreak/jailbreak_end
execute if score $jail.break.desert.timer var matches 1 as @e[tag=jail.center, tag=desert] at @s run function ctf:jail/jailbreak/jailbreak_end
execute if score $jail.break.ice.timer var matches 1 as @e[tag=jail.center, tag=ice] at @s run function ctf:jail/jailbreak/jailbreak_end
execute if score $jail.break.forest.timer var matches 1 as @e[tag=jail.center, tag=forest] at @s run function ctf:jail/jailbreak/jailbreak_end

execute if score $jail.particle_emitter.timer var matches 4 run scoreboard players set $jail.particle_emitter.timer var 0

scoreboard players set @a valid_tag 0
tag @a remove victim
tag @a remove tagged

execute as @a[tag=!in_jail] at @s if block ~ -64 ~ #wool run tag @s add jail_verify
execute as @a[tag=jail_verify, predicate=ctf:in_own_biome] at @s if block ~ -64 ~ #wool if entity @e[tag=jail.center, distance=..9] run function ctf:jail/in_own_jail
execute as @e[tag=jail_verify] run tag @s add in_jail
tag @e remove jail_verify
execute as @a[tag=in_jail] at @s unless block ~ -64 ~ #wool run tag @s remove in_jail

# if there's a player close to the jail, run some jailbreak conditions to check if it's a valid jailbreak
execute as @e[tag=jail.center, tag=mesa, tag=!jailbroken] at @s as @a[team=!mesa, distance=..10, tag=!in_jail, tag=player, gamemode=!spectator, gamemode=!creative] run function ctf:jail/jailbreak_conditions/mesa
execute as @e[tag=jail.center, tag=cherry, tag=!jailbroken] at @s as @a[team=!cherry, distance=..10, tag=!in_jail, tag=player, gamemode=!spectator, gamemode=!creative] run function ctf:jail/jailbreak_conditions/cherry
execute as @e[tag=jail.center, tag=desert, tag=!jailbroken] at @s as @a[team=!desert, distance=..10, tag=!in_jail, tag=player, gamemode=!spectator, gamemode=!creative] run function ctf:jail/jailbreak_conditions/desert
execute as @e[tag=jail.center, tag=ice, tag=!jailbroken] at @s as @a[team=!ice, distance=..10, tag=!in_jail, tag=player, gamemode=!spectator, gamemode=!creative] run function ctf:jail/jailbreak_conditions/ice
execute as @e[tag=jail.center, tag=forest, tag=!jailbroken] at @s as @a[team=!forest, distance=..10, tag=!in_jail, tag=player, gamemode=!spectator, gamemode=!creative] run function ctf:jail/jailbreak_conditions/forest

# FLAGS STUFF

# player carrying flag leaves the game
execute as @e[type=armor_stand, tag=flag_mount] positioned as @s unless entity @p[tag=carrying,distance=0..5] run function ctf:flag/place/leave_game
execute as @a[scores={leave_game=1..},tag=carrying] run function ctf:flag/remove_carrying_tags

execute as @a[tag=!carrying, tag=player] if score @s picked_up.mesa matches 1.. at @s run function ctf:flag/collect_flag
execute as @a[tag=!carrying, tag=player] if score @s picked_up.cherry matches 1.. at @s run function ctf:flag/collect_flag
execute as @a[tag=!carrying, tag=player] if score @s picked_up.desert matches 1.. at @s run function ctf:flag/collect_flag
execute as @a[tag=!carrying, tag=player] if score @s picked_up.ice matches 1.. at @s run function ctf:flag/collect_flag
execute as @a[tag=!carrying, tag=player] if score @s picked_up.forest matches 1.. at @s run function ctf:flag/collect_flag

execute as @a[tag=carrying] at @s[predicate=!ctf:in_own_biome] run function ctf:flag/stealing_flag
execute as @a[tag=carrying] at @s[predicate=ctf:in_own_biome] run function ctf:flag/stolen_flag

execute as @e[tag=flag] at @s as @a[distance=..2.5, tag=!carrying] at @s run execute store result score @s pafisb run function ctf:flag/pafisb
# ensure that players can't pick up flags if they already have a flag and/or are in their home turf and/or are not in the same biome as the flag (to prevent picking up one's own flag over a border and causing issues)
# (the old command) execute as @e[tag=flag] at @s if entity @a[distance=..1.4, tag=!carrying, predicate=!ctf:in_own_biome, scores={pafisb=1}] run data modify entity @s Owner set from entity @a[distance=..1.4, tag=!carrying, sort=nearest, limit=1] UUID
execute as @e[tag=flag] at @s if entity @a[distance=..1.4, tag=!carrying, predicate=!ctf:in_own_biome, scores={pafisb=1}] run data modify entity @s Owner set from entity @a[distance=..1.4, tag=!carrying, predicate=!ctf:in_own_biome, sort=nearest, limit=1] UUID

execute as @a[tag=carrying] unless score @s captured matches 1 if entity @s[predicate=ctf:in_own_biome] run function ctf:flag/capture

execute as @a if score @s[tag=carrying, predicate=ctf:in_own_biome] carrot_click matches 1.. at @s run function ctf:flag/place/place_current
execute as @a[tag=carrying, predicate=ctf:in_own_biome] unless score @s has_flag_placer matches 1 run function ctf:flag/give_placer_item
execute as @a[tag=carrying, predicate=!ctf:in_own_biome] if score @s has_flag_placer matches 1 run function ctf:flag/remove_placer_item

# flag timer (time to place down flag upon capturing)
execute as @a[scores={place_timer=1..}] run function ctf:flag/place/timer

execute if score $flags_capt.mesa var >= $flags_to_win const unless score $started_win_countdown var matches 1 unless score $game_over var matches 1 run function ctf:win/start_countdown
execute if score $flags_capt.cherry var >= $flags_to_win const unless score $started_win_countdown var matches 1 unless score $game_over var matches 1 run function ctf:win/start_countdown
execute if score $flags_capt.desert var >= $flags_to_win const unless score $started_win_countdown var matches 1 unless score $game_over var matches 1 run function ctf:win/start_countdown
execute if score $flags_capt.ice var >= $flags_to_win const unless score $started_win_countdown var matches 1 unless score $game_over var matches 1 run function ctf:win/start_countdown
execute if score $flags_capt.forest var >= $flags_to_win const unless score $started_win_countdown var matches 1 unless score $game_over var matches 1 run function ctf:win/start_countdown

execute if score $tp_timer var matches 1.. run scoreboard players remove $tp_timer var 1
execute if score $tp_timer var matches 1 run tp @a -87 104.5 -288
execute if score $tp_timer var matches 1 positioned -87 105 -288 run playsound entity.enderman.teleport master @a
execute if score $started_win_countdown var matches 1 run function ctf:win/countdown
# if all of the teams have less than 3 flags at any point, cancel the countdown
# in theory this could cause an issue if one team has 3 flags and another team has 2 flags, and one from the team with 3 is teleported to the team with 2, then there would never not be a momennt where a team does not have 3 flags. However, since the teleportation of flags is impossible, and flags are always moved manually through a process that stops the team "having" the flag for a time, this isn't an issue
execute if score $started_win_countdown var matches 1 if score $flags_capt.mesa var < $flags_to_win const if score $flags_capt.mesa var < $flags_to_win const if score $flags_capt.cherry var < $flags_to_win const if score $flags_capt.desert var < $flags_to_win const if score $flags_capt.ice var < $flags_to_win const if score $flags_capt.forest var < $flags_to_win const run function ctf:win/cancel_countdown

execute as @e[type=item, nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run data modify entity @s PickupDelay set value 0
tag @e remove self_flagplace

execute if score $game_started_timer var matches 1.. run scoreboard players remove $game_started_timer var 1