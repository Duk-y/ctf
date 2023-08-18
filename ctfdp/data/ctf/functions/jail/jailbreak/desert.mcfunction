fill ~4 ~2 ~4 ~-5 ~ ~-5 air replace iron_trapdoor
scoreboard players set $jail.break.desert.timer var 200
tag @e[tag=jail.center, tag=desert, limit=1] add jailbroken
execute as @a at @s run playsound block.glass.break block @s ~ ~ ~ 10 0 
scoreboard players set $jail.break.cooldown.desert var 1200
scoreboard players add @a[distance=..8, tag=in_jail] invincibility 200

tellraw @a ""

execute if entity @s[team=mesa] run tellraw @a [[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has jailbroken "},[{"nbt":"desert","storage":"colors","interpret":true},"DESERT"],{"color": "white","text": "!"}]
execute if entity @s[team=cherry] run tellraw @a [[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has jailbroken "},[{"nbt":"desert","storage":"colors","interpret":true},"DESERT"],{"color": "white","text": "!"}]
execute if entity @s[team=ice] run tellraw @a [[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has jailbroken "},[{"nbt":"desert","storage":"colors","interpret":true},"DESERT"],{"color": "white","text": "!"}]
execute if entity @s[team=forest] run tellraw @a [[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has jailbroken "},[{"nbt":"desert","storage":"colors","interpret":true},"DESERT"],{"color": "white","text": "!"}]

tellraw @a ""