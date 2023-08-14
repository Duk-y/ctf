# pafisb = player and flag in same biome
# run as and at player
execute if entity @s[predicate=ctf:in_mesa] as @e[tag=flag, sort=nearest, limit=1, tag=!carried] if entity @s[predicate=ctf:in_mesa] run return 1
execute if entity @s[predicate=ctf:in_cherry] as @e[tag=flag, sort=nearest, limit=1, tag=!carried] if entity @s[predicate=ctf:in_cherry] run return 1
execute if entity @s[predicate=ctf:in_desert] as @e[tag=flag, sort=nearest, limit=1, tag=!carried] if entity @s[predicate=ctf:in_desert] run return 1
execute if entity @s[predicate=ctf:in_ice] as @e[tag=flag, sort=nearest, limit=1, tag=!carried] if entity @s[predicate=ctf:in_ice] run return 1
execute if entity @s[predicate=ctf:in_forest] as @e[tag=flag, sort=nearest, limit=1, tag=!carried] if entity @s[predicate=ctf:in_forest] run return 1
execute if entity @s[predicate=ctf:in_plains] as @e[tag=flag, sort=nearest, limit=1, tag=!carried] if entity @s[predicate=ctf:in_plains] run return 1
# if the function made it this far, none of the other conditions returned true, so the player and the flag must be in different biomes
return 0