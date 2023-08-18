execute if entity @s[team=mesa] run data modify storage ctf:temp color set from storage minecraft:colors mesa
execute if entity @s[team=cherry] run data modify storage ctf:temp color set from storage minecraft:colors cherry
execute if entity @s[team=desert] run data modify storage ctf:temp color set from storage minecraft:colors desert
execute if entity @s[team=ice] run data modify storage ctf:temp color set from storage minecraft:colors ice
execute if entity @s[team=forest] run data modify storage ctf:temp color set from storage minecraft:colors forest

# target cannot be tagged if they are invincible
scoreboard players set $tagged_while_invincible var 0
execute if entity @s[scores={invincibility=1..}] at @s run function ctf:tagging/target/tagged_while_invincible

# target cannot be tagged if they near a flag item
scoreboard players set $tagged_near_flag var 0
execute at @s if entity @e[type=item, tag=flag, tag=!carried, distance=..8, limit=1] run function ctf:tagging/target/tagged_near_flag

# target cannot be tagged if they are on their home turf
execute if entity @s[predicate=ctf:in_own_biome] run scoreboard players set $valid_tag var 0
execute if entity @s[tag=in_jail] run scoreboard players set $valid_tag var 0


# teleport to jail if the tagging was valid
execute if score $valid_tag var matches 1 run function ctf:jail/tp
