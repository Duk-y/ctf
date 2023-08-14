# run as attacker, tag=victim is player being attacked
tag @s add attacker
tag @a[tag=victim] remove tagged

# add the player's tag cooldown as specified by const [at the time of writing this, it's 100 ticks]
scoreboard players operation @s tag_cooldown = $tag_cooldown const
playsound block.beacon.deactivate master @a[tag=victim] ~ ~ ~ 50000 1 1
execute at @s run playsound entity.player.levelup master @s 
execute as @e[tag=victim, limit=1, sort=nearest] if entity @s[tag=carrying] run function ctf:flag/transfer

execute at @a[tag=victim] run particle totem_of_undying ~ ~1 ~ 0 0 0 0.2 100 force
execute at @a[tag=victim] run particle totem_of_undying ~ ~1 ~ 0 0 0 0.4 80 force
execute at @a[tag=victim] run particle totem_of_undying ~ ~1 ~ 0 0 0 0.6 60 force
execute at @a[tag=victim] run particle totem_of_undying ~ ~1 ~ 0 0 0 0.8 40 force
execute at @a[tag=victim] run particle totem_of_undying ~ ~1 ~ 0 0 0 1 20 force

execute if entity @s[team=cherry] at @e[tag=jail.center, tag=cherry, limit=1] run tp @a[tag=victim] ~3 ~ ~
execute if entity @s[team=desert] at @e[tag=jail.center, tag=desert, limit=1] run tp @a[tag=victim] ~3 ~ ~
execute if entity @s[team=ice] at @e[tag=jail.center, tag=ice, limit=1] run tp @a[tag=victim] ~3 ~ ~
execute if entity @s[team=mesa] at @e[tag=jail.center, tag=mesa, limit=1] run tp @a[tag=victim] ~3 ~ ~
execute if entity @s[team=forest] at @e[tag=jail.center, tag=forest, limit=1] run tp @a[tag=victim] ~3 ~ ~

execute if entity @a[team=cherry, tag=victim] if entity @s[team=desert] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=cherry, tag=victim] if entity @s[team=ice] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=cherry, tag=victim] if entity @s[team=mesa] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=cherry, tag=victim] if entity @s[team=forest] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@s"}]]

execute if entity @a[team=desert, tag=victim] if entity @s[team=cherry] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=desert, tag=victim] if entity @s[team=ice] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=desert, tag=victim] if entity @s[team=mesa] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=desert, tag=victim] if entity @s[team=forest] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@s"}]]

execute if entity @a[team=ice, tag=victim] if entity @s[team=cherry] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=ice, tag=victim] if entity @s[team=desert] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=ice, tag=victim] if entity @s[team=mesa] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=ice, tag=victim] if entity @s[team=forest] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@s"}]]

execute if entity @a[team=mesa, tag=victim] if entity @s[team=cherry] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=mesa, tag=victim] if entity @s[team=desert] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=mesa, tag=victim] if entity @s[team=ice] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=mesa, tag=victim] if entity @s[team=forest] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@s"}]]

execute if entity @a[team=forest, tag=victim] if entity @s[team=cherry] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=forest, tag=victim] if entity @s[team=desert] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=forest, tag=victim] if entity @s[team=ice] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@s"}]]
execute if entity @a[team=forest, tag=victim] if entity @s[team=mesa] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@a[tag=victim]"}],{"color": "white","text": " was tagged by "},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@s"}]]

tag @a remove victim
tag @a remove attacker