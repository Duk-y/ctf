# run as attacker
# always runs after ctm:tagging/get_hit_by_player function
advancement revoke @s only ctf:hit_player

tag @s add attacker

# store name and biome
execute if entity @s[team=mesa] run data modify storage ctf:temp attacker set value '[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@a[tag=attacker,limit=1]"}]'
execute if entity @s[team=mesa] run scoreboard players set $tagging.attacker.biome var 1
execute if entity @s[team=cherry] run data modify storage ctf:temp attacker set value '[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@a[tag=attacker,limit=1]"}]'
execute if entity @s[team=cherry] run scoreboard players set $tagging.attacker.biome var 2
execute if entity @s[team=desert] run data modify storage ctf:temp attacker set value '[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@a[tag=attacker,limit=1]"}]'
execute if entity @s[team=desert] run scoreboard players set $tagging.attacker.biome var 3
execute if entity @s[team=ice] run data modify storage ctf:temp attacker set value '[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@a[tag=attacker,limit=1]"}]'
execute if entity @s[team=ice] run scoreboard players set $tagging.attacker.biome var 4
execute if entity @s[team=forest] run data modify storage ctf:temp attacker set value '[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@a[tag=attacker,limit=1]"}]'
execute if entity @s[team=forest] run scoreboard players set $tagging.attacker.biome var 5

# check tag validity
scoreboard players set $valid_tag var 1

execute if score $in_lobby var matches 1 run scoreboard players set $valid_tag var 0
execute if entity @s[tag=!player] run scoreboard players set $valid_tag var 0
execute if entity @s[tag=in_jail] run scoreboard players set $valid_tag var 0
execute if entity @s[tag=carrying] run function ctf:tagging/tag_with_flag
execute if score @s tag_cooldown matches 1.. run function ctf:tagging/tag_on_cooldown

# do more checks as the target, store biome type, and tp if successful
execute if score $valid_tag var matches 1 as @a[tag=target, limit=1] run function ctf:tagging/target/main

# messages
execute if score $tagged_while_invincible var matches 1 run tellraw @s [{"text":"[!]","color":"red"},{"text":" You tried to tag ","color":"#FF9294"},[{"nbt":"color","storage":"ctf:temp","interpret":true},{"selector":"@a[tag=target, sort=nearest, limit=1]"}],{"text":", but they were invincible!","color":"#FF9294"}]
execute if score $tagged_near_flag var matches 1 run tellraw @s [{"text":"[!]","color":"red"},{"text":" You tried to tag ","color":"#FF9294"},[{"nbt":"color","storage":"ctf:temp","interpret":true},{"selector":"@a[tag=target, sort=nearest, limit=1]"}],{"text":", but they're too close to a flag!","color":"#FF9294"}]

tag @s remove attacker
tag @a remove target
