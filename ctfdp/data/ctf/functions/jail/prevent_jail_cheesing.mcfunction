tag @s remove return_to_jail
tag @s add in_jail
execute at @e[type=marker, tag=jail.center, sort=nearest, limit=1] facing entity @s feet rotated ~ 0 run tp @s[gamemode=!spectator] ^ ^ ^3
