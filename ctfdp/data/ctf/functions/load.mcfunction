kill @e[tag=jail.particle_emitter]
kill @e[tag=flag]
kill @e[tag=flag_mount]
kill @e[tag=height_check]
tag @e remove jailbroken
tag @e remove carrying
tag @e remove carrying_mesa
tag @e remove carrying_cherry
tag @e remove carrying_desert
tag @e remove carrying_ice
tag @e remove carrying_forest

clear @a carrot_on_a_stick
title @a times 1s 3s 1s

team add desert_sbd
team add mesa_sbd
team add cherry_sbd
team add forest_sbd
team add ice_sbd

team modify cherry friendlyFire false
team modify desert friendlyFire false
team modify mesa friendlyFire false
team modify ice friendlyFire false
team modify forest friendlyFire false


team join mesa_sbd ‌‌‌‌‌
team join cherry_sbd ‌‌‌‌
team join desert_sbd ‌‌‌
team join ice_sbd ‌‌
team join forest_sbd ‌

scoreboard players set ‌‌‌‌‌ flags 0
scoreboard players set ‌‌‌‌ flags 0
scoreboard players set ‌‌‌ flags 0
scoreboard players set ‌‌ flags 0
scoreboard players set ‌ flags 0

scoreboard objectives add var dummy
scoreboard objectives add const dummy
scoreboard objectives add flags dummy ""
scoreboard objectives add pafisb dummy
scoreboard objectives add invincibility_display dummy
scoreboard objectives add valid_tag dummy
scoreboard objectives add captured dummy
scoreboard objectives add invincibility dummy
scoreboard objectives add tag_cooldown_display dummy
scoreboard objectives add tag_cooldown dummy
scoreboard objectives add placed_flag.z dummy
scoreboard objectives add placed_flag.x dummy
scoreboard objectives add has_flag_placer dummy
scoreboard objectives add place_timer dummy
scoreboard objectives add carrot_click used:carrot_on_a_stick
scoreboard objectives add fungus_click used:warped_fungus_on_a_stick
scoreboard objectives add leave_game minecraft.custom:minecraft.leave_game

scoreboard players set @a has_flag_placer 0
scoreboard players set @a carrot_click 0
scoreboard players set @a tag_cooldown 0
scoreboard players set @a invincibility 0
scoreboard players set @a place_timer 0
scoreboard players set $game_over var 0
scoreboard players set $started_win_countdown var 0
scoreboard players set $tp_timer var 0
bossbar add win_timer [{"text":"Game Over ","bold":true,"color":"red"},{"text":"in:","color":"white","bold":false}]
bossbar set win_timer color red
bossbar set win_timer visible false


clear @a #candles
clear @a leather_boots
clear @a leather_leggings
effect give @a saturation infinite 100 true
effect give @a water_breathing infinite 100 true


execute as @e[tag=jail.center] at @s run function ctf:jail/summon_assets
scoreboard players set $jail.particle_emitter.timer var 0

scoreboard players set $jail.break.mesa.timer var 0
scoreboard players set $jail.break.cherry.timer var 0
scoreboard players set $jail.break.desert.timer var 0
scoreboard players set $jail.break.ice.timer var 0
scoreboard players set $jail.break.forest.timer var 0

scoreboard players set $jail.break.cooldown.mesa var 0
scoreboard players set $jail.break.cooldown.cherry var 0
scoreboard players set $jail.break.cooldown.desert var 0
scoreboard players set $jail.break.cooldown.ice var 0
scoreboard players set $jail.break.cooldown.forest var 0

scoreboard players set $jail.break.cooldown.mesa.cooldown var 0
scoreboard players set $jail.break.cooldown.cherry.cooldown var 0
scoreboard players set $jail.break.cooldown.desert.cooldown var 0
scoreboard players set $jail.break.cooldown.ice.cooldown var 0
scoreboard players set $jail.break.cooldown.forest.cooldown var 0

# summon the markers that mark the predetermined flag spots
kill @e[tag=flag_spot]
# cherry
summon marker 94 31 -115 {Tags:["flag_spot", "cherry"]}
summon marker 21 29 -100 {Tags:["flag_spot", "cherry"]}
summon marker 10 28 -175 {Tags:["flag_spot", "cherry"]}
summon marker 175 29 -141 {Tags:["flag_spot", "cherry"]}
summon marker 39 27 -76 {Tags:["flag_spot", "cherry"]}
# desert
summon marker 110 30 -13 {Tags:["flag_spot", "desert"]}
summon marker 28 27 18 {Tags:["flag_spot", "desert"]}
summon marker 135 30 10 {Tags:["flag_spot", "desert"]}
summon marker 193 29 -85 {Tags:["flag_spot", "desert"]}
summon marker 171 29 50 {Tags:["flag_spot", "desert"]}
# mesa
summon marker -40 26 -129 {Tags:["flag_spot", "mesa"]}
summon marker -37 31 -61 {Tags:["flag_spot", "mesa"]}
summon marker -67 29 -47 {Tags:["flag_spot", "mesa"]}
summon marker -138 39 -77 {Tags:["flag_spot", "mesa"]}
summon marker -89 29 -150 {Tags:["flag_spot", "mesa"]}
# ice
summon marker 29 27 130 {Tags:["flag_spot", "ice"]}
summon marker 118 30 98 {Tags:["flag_spot", "ice"]}
summon marker 180 29 93 {Tags:["flag_spot", "ice"]}
summon marker 59 28 59 {Tags:["flag_spot", "ice"]}
summon marker 20 27 56 {Tags:["flag_spot", "ice"]}
# forest
summon marker -46 27 97 {Tags:["flag_spot", "forest"]}
summon marker -50 30 61 {Tags:["flag_spot", "forest"]}
summon marker -39 30 26 {Tags:["flag_spot", "forest"]}
summon marker -117 27 28 {Tags:["flag_spot", "forest"]}
summon marker -124 27 89 {Tags:["flag_spot", "forest"]}

function ctf:flag/update_sidebar