tag @s add in_jail
execute if predicate ctf:in_own_biome positioned ~-4 ~-3 ~-4 at @e[type=marker, tag=jail.center, dx=7, dy=3, dz=7, limit=1] run function ctf:jail/in_own_jail
