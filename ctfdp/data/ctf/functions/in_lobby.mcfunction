tag @a remove player
tag @a[gamemode=adventure] add player
team leave @a[tag=!player]

scoreboard players remove $lobby_loop var 1
execute if score $lobby_loop var matches 0 run scoreboard players set $lobby_loop var 600

execute store result score $players_on var if entity @a[tag=player]
execute store result score $mesa_players var if entity @a[team=mesa]
execute store result score $cherry_players var if entity @a[team=cherry]
execute store result score $desert_players var if entity @a[team=desert]
execute store result score $ice_players var if entity @a[team=ice]
execute store result score $forest_players var if entity @a[team=forest]

title @a[tag=player] actionbar [{"text": "Stand in your ","bold":false},{"text": "OWN BIOME","color": "gold","bold": true},{"text": " to select your team!","bold": false,"color": "white"}]
execute if score $lobby_loop var matches 1 run tellraw @a [{"text":"\nPlayers Online: ["},{"score":{"name":"$players_on","objective":"var"},"color":"#FF7F81"},{"text":"/"},{"text":"100","color":"red"},{"text":"]\nMesa: ["},{"score":{"name":"$mesa_players","objective":"var"},"color":"#EAC677"},{"text":"/"},{"text":"20","color":"gold"},{"text":"]","color":"white"},{"text":"\nCherry: ["},{"score":{"name":"$cherry_players","objective":"var"},"color":"#FF96DD"},{"text":"/"},{"text":"20","color":"#F75CE1"},{"text":"]\nDesert: ["},{"score":{"name":"$desert_players","objective":"var"},"color":"#FDFDA7"},{"text":"/"},{"text":"20","color":"yellow"},{"text":"]\nIce: ["},{"score":{"name":"$ice_players","objective":"var"},"color":"#9DFFFF"},{"text":"/"},{"text":"20","color":"aqua"},{"text":"]\nForest: ["},{"score":{"name":"$forest_players","objective":"var"},"color":"#5ECC5E"},{"text":"/"},{"text":"20","color":"dark_green"},{"text":"]\n"}]
execute as @a[tag=player] at @s run function ctf:lobby/join_team

title @a[tag=player,team=mesa] actionbar ["Stand in your ",{"text": "OWN BIOME","color": "gold","bold": true}," to select your team!",{"text":" | ","color":"gray"},[{"nbt":"mesa","storage":"colors","interpret":true},"MESA"]]
title @a[tag=player,team=cherry] actionbar ["Stand in your ",{"text": "OWN BIOME","color": "gold","bold": true}," to select your team!",{"text":" | ","color":"gray"},[{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"]]
title @a[tag=player,team=desert] actionbar ["Stand in your ",{"text": "OWN BIOME","color": "gold","bold": true}," to select your team!",{"text":" | ","color":"gray"},[{"nbt":"desert","storage":"colors","interpret":true},"DESERT"]]
title @a[tag=player,team=ice] actionbar ["Stand in your ",{"text": "OWN BIOME","color": "gold","bold": true}," to select your team!",{"text":" | ","color":"gray"},[{"nbt":"ice","storage":"colors","interpret":true},"ICE"]]
title @a[tag=player,team=forest] actionbar ["Stand in your ",{"text": "OWN BIOME","color": "gold","bold": true}," to select your team!",{"text":" | ","color":"gray"},[{"nbt":"forest","storage":"colors","interpret":true},"FOREST"]]
