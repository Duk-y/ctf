# run as victim, tag=attacker is player that did the tag
tag @s remove carrying
scoreboard players set @a[tag=attacker, limit=1] captured 0
scoreboard players set @s place_timer 0

data modify storage ctf:temp flag_item set from entity @e[type=item, tag=flag, distance=..10, sort=nearest, limit=1] Item
execute if data storage ctf:temp {flag_item:{id:"minecraft:orange_candle"}} run tag @a[tag=attacker, limit=1] add carrying_mesa
execute if data storage ctf:temp {flag_item:{id:"minecraft:pink_candle"}} run tag @a[tag=attacker, limit=1] add carrying_cherry
execute if data storage ctf:temp {flag_item:{id:"minecraft:yellow_candle"}} run tag @a[tag=attacker, limit=1] add carrying_desert
execute if data storage ctf:temp {flag_item:{id:"minecraft:light_blue_candle"}} run tag @a[tag=attacker, limit=1] add carrying_ice
execute if data storage ctf:temp {flag_item:{id:"minecraft:green_candle"}} run tag @a[tag=attacker, limit=1] add carrying_forest
tag @a[tag=attacker,limit=1] add carrying

tp @e[type=armor_stand, tag=flag_mount, distance=..10, sort=nearest, limit=1] @a[tag=attacker, limit=1]

tellraw @s [{"text":"[!]","color":"red"},{"text":" You were TAGGED, so the flag was transferred to ", "color": "white"},{"nbt":"attacker","storage":"ctf:temp","interpret":true},{"text":"!","color": "white"}]
tellraw @a[tag=!target] ["",{"nbt":"target","storage":"ctf:temp","interpret":true}," was TAGGED, so the flag was transferred to ",{"nbt":"attacker","storage":"ctf:temp","interpret":true},"!"]
