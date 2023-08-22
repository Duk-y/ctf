# MANAGE PLAYERS LEAVING/JOINING
execute as @a unless score @s leave_game matches 0 run function ctf:on_player_join

# LOBBY STUFF
execute if score $in_lobby var matches 1 run function ctf:in_lobby
execute if entity @a[scores={fungus_click=1..},limit=1] run scoreboard players set $start_game var 200
scoreboard players set @a fungus_click 0
execute if score $start_game var matches 1.. run function ctf:begin_game_timer

# JAIL STUFF
scoreboard players remove @a[scores={tag_cooldown=1..}] tag_cooldown 1

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

execute as @a[tag=invincible] at @s run function ctf:invincibility/tick_invincible_player

tag @a[tag=in_jail] add return_to_jail
tag @a remove in_jail
execute at @e[type=marker, tag=jail.center, tag=!jailbroken, limit=5] positioned ~-4 ~ ~-4 as @a[tag=player, gamemode=!spectator, gamemode=!creative, dx=7, dy=3, dz=7] positioned ~4 ~ ~4 run function ctf:jail/jail_verify
execute as @a[tag=return_to_jail] at @s run function ctf:jail/prevent_jail_cheesing

# if there's a player close to the jail, run some jailbreak conditions to check if it's a valid jailbreak
execute as @e[tag=jail.center, tag=!jailbroken] at @s run function ctf:jail/tick_jail_center_non_jailbroken

# FLAGS STUFF

# prevent cross-biome flag pickup
execute as @e[type=item,tag=flag, tag=!game_start_flag] at @s run function ctf:flag/tick_flag_entity

# detect flag pickup
execute as @a[scores={picked_up.mesa=1..}, tag=!carrying, tag=player] at @s run function ctf:flag/collect_flag
execute as @a[scores={picked_up.cherry=1..}, tag=!carrying, tag=player] at @s run function ctf:flag/collect_flag
execute as @a[scores={picked_up.desert=1..}, tag=!carrying, tag=player] at @s run function ctf:flag/collect_flag
execute as @a[scores={picked_up.ice=1..}, tag=!carrying, tag=player] at @s run function ctf:flag/collect_flag
execute as @a[scores={picked_up.forest=1..}, tag=!carrying, tag=player] at @s run function ctf:flag/collect_flag

#
execute as @a[tag=carrying] at @s run function ctf:flag/tick_carrying_player
execute as @e[type=armor_stand, tag=flag_mount] at @s run function ctf:flag/flag_mount/tick_flag_mount

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
execute if score $started_win_countdown var matches 1 if score $flags_capt.mesa var < $flags_to_win const if score $flags_capt.cherry var < $flags_to_win const if score $flags_capt.desert var < $flags_to_win const if score $flags_capt.ice var < $flags_to_win const if score $flags_capt.forest var < $flags_to_win const run function ctf:win/cancel_countdown

scoreboard players reset @a[scores={carrot_click=1..}] carrot_click
kill @e[type=item, nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

execute if score $game_started_timer var matches 1.. run scoreboard players remove $game_started_timer var 1