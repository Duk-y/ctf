execute as @e[type=marker, tag=jail.center, tag=cherry, limit=1] at @s run function ctf:jail/jailbreak/jailbreak_start
scoreboard players set $jail.break.cherry.timer var 200
scoreboard players set $jail.break.cooldown.cherry var 1200
function ctf:invincibility/start_invincibility

tellraw @a ""

execute if entity @s[team=mesa] run tellraw @a [[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has jailbroken "},[{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"],{"color": "white","text": "!"}]
execute if entity @s[team=desert] run tellraw @a [[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has jailbroken "},[{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"],{"color": "white","text": "!"}]
execute if entity @s[team=ice] run tellraw @a [[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has jailbroken "},[{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"],{"color": "white","text": "!"}]
execute if entity @s[team=forest] run tellraw @a [[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has jailbroken "},[{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"],{"color": "white","text": "!"}]

tellraw @a ""