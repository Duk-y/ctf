tag @e[tag=check_spot] add checked
tag @e remove check_spot

execute if entity @s[team=mesa] as @e[tag=flag_spot, tag=mesa, sort=nearest, limit=1, tag=!check_spot, tag=!checked] run tag @s add check_spot
execute if entity @s[team=cherry] as @e[tag=flag_spot, tag=cherry, sort=nearest, limit=1, tag=!check_spot, tag=!checked] run tag @s add check_spot
execute if entity @s[team=desert] as @e[tag=flag_spot, tag=desert, sort=nearest, limit=1, tag=!check_spot, tag=!checked] run tag @s add check_spot
execute if entity @s[team=ice] as @e[tag=flag_spot, tag=ice, sort=nearest, limit=1, tag=!check_spot, tag=!checked] run tag @s add check_spot
execute if entity @s[team=forest] as @e[tag=flag_spot, tag=forest, sort=nearest, limit=1, tag=!check_spot, tag=!checked] run tag @s add check_spot

execute at @e[tag=check_spot] if entity @e[tag=flag, tag=!carried, distance=..25] run function ctf:flag/place/out_of_time

execute at @e[tag=check_spot] unless entity @e[tag=flag, tag=!carried, distance=..25] run function ctf:flag/place/place_sequence

tag @e remove check_spot
tag @e remove checked