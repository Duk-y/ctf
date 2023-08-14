execute as @e[tag=jail.center, sort=nearest, limit=1] if entity @s[tag=jailbroken] run scoreboard players set $jail.failed_conditions var 1
execute unless score $jail.failed_conditions var matches 1 run function ctf:jail/particles
scoreboard players set $jail.failed_conditions var 0