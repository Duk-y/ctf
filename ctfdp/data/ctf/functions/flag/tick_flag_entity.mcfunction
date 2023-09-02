# To pick up a flag item, the player needs to be
# - in the same biome as the flag item
# - not carrying a flag
# - not in their own biome

data modify entity @s Owner set value [I;0,0,0,0]
execute if entity @s[predicate=ctf:in_mesa] run data modify entity @s Owner set from entity @a[predicate=ctf:in_mesa, distance=..3, tag=!carrying, predicate=!ctf:in_own_biome, sort=nearest, limit=1] UUID
execute if entity @s[predicate=ctf:in_cherry] run data modify entity @s Owner set from entity @a[predicate=ctf:in_cherry, distance=..3, tag=!carrying, predicate=!ctf:in_own_biome, sort=nearest, limit=1] UUID
execute if entity @s[predicate=ctf:in_desert] run data modify entity @s Owner set from entity @a[predicate=ctf:in_desert, distance=..3, tag=!carrying, predicate=!ctf:in_own_biome, sort=nearest, limit=1] UUID
execute if entity @s[predicate=ctf:in_ice] run data modify entity @s Owner set from entity @a[predicate=ctf:in_ice, distance=..3, tag=!carrying, predicate=!ctf:in_own_biome, sort=nearest, limit=1] UUID
execute if entity @s[predicate=ctf:in_forest] run data modify entity @s Owner set from entity @a[predicate=ctf:in_forest, distance=..3, tag=!carrying, predicate=!ctf:in_own_biome, sort=nearest, limit=1] UUID
execute if entity @s[predicate=ctf:in_plains] run data modify entity @s Owner set from entity @a[predicate=ctf:in_plains, distance=..3, tag=!carrying, predicate=!ctf:in_own_biome, sort=nearest, limit=1] UUID
