# store name
execute if entity @s[team=mesa] run data modify storage ctf:temp target set value '[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@a[tag=target,limit=1]"}]'
execute if entity @s[team=cherry] run data modify storage ctf:temp target set value '[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@a[tag=target,limit=1]"}]'
execute if entity @s[team=desert] run data modify storage ctf:temp target set value '[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@a[tag=target,limit=1]"}]'
execute if entity @s[team=ice] run data modify storage ctf:temp target set value '[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@a[tag=target,limit=1]"}]'
execute if entity @s[team=forest] run data modify storage ctf:temp target set value '[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@a[tag=target,limit=1]"}]'

# target cannot be tagged if they are invincible
execute if entity @s[tag=invincible] at @s run function ctf:tagging/target/tagged_while_invincible

# target cannot be tagged if they near a flag item
execute at @s if entity @e[type=item, tag=flag, tag=!carried, distance=..8, limit=1] run function ctf:tagging/target/tagged_near_flag

# target cannot be tagged if they are on their home turf
execute if entity @s[predicate=ctf:in_own_biome] run scoreboard players set $valid_tag var 0
execute if entity @s[tag=in_jail] run scoreboard players set $valid_tag var 0

# teleport to jail if the tagging was valid
execute if score $valid_tag var matches 1 at @s run function ctf:tagging/target/tp_to_jail
