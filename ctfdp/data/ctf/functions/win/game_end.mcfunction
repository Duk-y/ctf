# started_win_countdown stops the start function from running constantly
scoreboard players set $started_win_countdown var 0

# display title saying "CHERRY HAS WON THE GAME!" or similar
title @a times 10t 300t 100t
execute if score $flags_capt.mesa var matches 3.. run title @a title [{"nbt":"mesa","storage":"colors","interpret":true},{"text": "MESA","bold": true},{"text": " HAS WON THE GAME!","color": "white","bold": true}]
execute if score $flags_capt.cherry var matches 3.. run title @a title [{"nbt":"cherry","storage":"colors","interpret":true},{"text": "CHERRY","bold": true},{"text": " HAS WON THE GAME!","color": "white","bold": true}]
execute if score $flags_capt.desert var matches 3.. run title @a title [{"nbt":"desert","storage":"colors","interpret":true},{"text": "DESERT","bold": true},{"text": " HAS WON THE GAME!","color": "white","bold": true}]
execute if score $flags_capt.ice var matches 3.. run title @a title [{"nbt":"ice","storage":"colors","interpret":true},{"text": "ICE","bold": true},{"text": " HAS WON THE GAME!","color": "white","bold": true}]
execute if score $flags_capt.forest var matches 3.. run title @a title [{"nbt":"forest","storage":"colors","interpret":true},{"text": "FOREST","bold": true},{"text": " HAS WON THE GAME!","color": "white","bold": true}]

execute as @a at @s run playsound entity.ender_dragon.death master @s
scoreboard players set $game_over var 1
scoreboard players set $tp_timer var 200

# stuff that's done in load to reset the game
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
clear @a #candles
scoreboard objectives setdisplay sidebar
bossbar set win_timer visible false
