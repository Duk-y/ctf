execute as @e[type=marker, tag=jail.center, tag=ice, limit=1] at @s run function ctf:jail/jailbreak/jailbreak_start
scoreboard players set $jail.break.ice.timer var 200
scoreboard players set $jail.break.cooldown.ice var 1200
function ctf:invincibility/start_invincibility

tellraw @a ""

execute if entity @s[team=mesa] run tellraw @a [[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has jailbroken "},[{"nbt":"ice","storage":"colors","interpret":true},"ICE"],{"color": "white","text": "!"}]
execute if entity @s[team=desert] run tellraw @a [[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has jailbroken "},[{"nbt":"ice","storage":"colors","interpret":true},"ICE"],{"color": "white","text": "!"}]
execute if entity @s[team=cherry] run tellraw @a [[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has jailbroken "},[{"nbt":"ice","storage":"colors","interpret":true},"ICE"],{"color": "white","text": "!"}]
execute if entity @s[team=forest] run tellraw @a [[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has jailbroken "},[{"nbt":"ice","storage":"colors","interpret":true},"ICE"],{"color": "white","text": "!"}]

tellraw @a ""