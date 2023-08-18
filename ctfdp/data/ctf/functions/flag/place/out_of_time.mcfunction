execute if entity @s[team=mesa] as @e[tag=flag_spot, tag=mesa] at @s unless entity @e[tag=flag, tag=!carried, distance=..25] run tag @s add valid_spot
execute if entity @s[team=cherry] as @e[tag=flag_spot, tag=cherry] at @s unless entity @e[tag=flag, tag=!carried, distance=..25] run tag @s add valid_spot
execute if entity @s[team=desert] as @e[tag=flag_spot, tag=desert] at @s unless entity @e[tag=flag, tag=!carried, distance=..25] run tag @s add valid_spot
execute if entity @s[team=ice] as @e[tag=flag_spot, tag=ice] at @s unless entity @e[tag=flag, tag=!carried, distance=..25] run tag @s add valid_spot
execute if entity @s[team=forest] as @e[tag=flag_spot, tag=forest] at @s unless entity @e[tag=flag, tag=!carried, distance=..25] run tag @s add valid_spot

execute at @e[tag=valid_spot,sort=nearest,limit=1] run function ctf:flag/place/place_sequence
tag @e remove valid_spot
