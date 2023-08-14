# run as attacker
tag @s add self
# tag=victim is person being attacked
tag @a[tag=tagged, sort=nearest, limit=1] add victim

advancement revoke @s only ctf:hit

# ensures that people can't tag others whilst the victim is in their home turf or while invincible
scoreboard players set $tagged_near_flag var 0
execute as @a[tag=victim, limit=1, sort=nearest] if entity @s[predicate=!ctf:in_own_biome] run scoreboard players set @a[tag=self] valid_tag 1

execute if entity @a[tag=victim, limit=1, sort=nearest, predicate=!ctf:in_mesa, predicate=!ctf:in_cherry, predicate=!ctf:in_desert, predicate=!ctf:in_ice, predicate=!ctf:in_forest] run scoreboard players set @s valid_tag 1

execute as @a[tag=victim, limit=1, sort=nearest] if entity @s[tag=invincible] at @s run function ctf:tagged_while_invincible 
execute as @a[tag=victim, limit=1, sort=nearest] at @s if entity @e[tag=flag, tag=!carried, distance=..8] run function ctf:tagged_near_flag

execute as @a[tag=victim, limit=1, sort=nearest] if entity @s[tag=invincible, team=mesa] as @e[tag=self, limit=1, sort=nearest] run tellraw @s [{"text":"[!]","color":"red"},{"text":" You tried to tag ","color":"#FF9294"},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@a[tag=victim, sort=nearest, limit=1]"}],{"text":", but they were invincible!","color":"#FF9294"}]
execute as @a[tag=victim, limit=1, sort=nearest] if entity @s[tag=invincible, team=cherry] as @e[tag=self, limit=1, sort=nearest] run tellraw @s [{"text":"[!]","color":"red"},{"text":" You tried to tag ","color":"#FF9294"},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@a[tag=victim, sort=nearest, limit=1]"}],{"text":", but they were invincible!","color":"#FF9294"}]
execute as @a[tag=victim, limit=1, sort=nearest] if entity @s[tag=invincible, team=desert] as @e[tag=self, limit=1, sort=nearest] run tellraw @s [{"text":"[!]","color":"red"},{"text":" You tried to tag ","color":"#FF9294"},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@a[tag=victim, sort=nearest, limit=1]"}],{"text":", but they were invincible!","color":"#FF9294"}]
execute as @a[tag=victim, limit=1, sort=nearest] if entity @s[tag=invincible, team=ice] as @e[tag=self, limit=1, sort=nearest] run tellraw @s [{"text":"[!]","color":"red"},{"text":" You tried to tag ","color":"#FF9294"},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@a[tag=victim, sort=nearest, limit=1]"}],{"text":", but they were invincible!","color":"#FF9294"}]
execute as @a[tag=victim, limit=1, sort=nearest] if entity @s[tag=invincible, team=forest] as @e[tag=self, limit=1, sort=nearest] run tellraw @s [{"text":"[!]","color":"red"},{"text":" You tried to tag ","color":"#FF9294"},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@a[tag=victim, sort=nearest, limit=1]"}],{"text":", but they were invincible!","color":"#FF9294"}]

execute as @a[tag=victim, limit=1, sort=nearest] if score $tagged_near_flag var matches 1 if entity @s[team=mesa] as @e[tag=self, limit=1, sort=nearest] run tellraw @s [{"text":"[!]","color":"red"},{"text":" You tried to tag ","color":"#FF9294"},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@a[tag=victim, sort=nearest, limit=1]"}],{"text":", but they're too close to a flag!","color":"#FF9294"}]
execute as @a[tag=victim, limit=1, sort=nearest] if score $tagged_near_flag var matches 1 if entity @s[team=cherry] as @e[tag=self, limit=1, sort=nearest] run tellraw @s [{"text":"[!]","color":"red"},{"text":" You tried to tag ","color":"#FF9294"},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@a[tag=victim, sort=nearest, limit=1]"}],{"text":", but they're too close to a flag!","color":"#FF9294"}]
execute as @a[tag=victim, limit=1, sort=nearest] if score $tagged_near_flag var matches 1 if entity @s[team=desert] as @e[tag=self, limit=1, sort=nearest] run tellraw @s [{"text":"[!]","color":"red"},{"text":" You tried to tag ","color":"#FF9294"},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@a[tag=victim, sort=nearest, limit=1]"}],{"text":", but they're too close to a flag!","color":"#FF9294"}]
execute as @a[tag=victim, limit=1, sort=nearest] if score $tagged_near_flag var matches 1 if entity @s[team=ice] as @e[tag=self, limit=1, sort=nearest] run tellraw @s [{"text":"[!]","color":"red"},{"text":" You tried to tag ","color":"#FF9294"},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@a[tag=victim, sort=nearest, limit=1]"}],{"text":", but they're too close to a flag!","color":"#FF9294"}]
execute as @a[tag=victim, limit=1, sort=nearest] if score $tagged_near_flag var matches 1 if entity @s[team=forest] as @e[tag=self, limit=1, sort=nearest] run tellraw @s [{"text":"[!]","color":"red"},{"text":" You tried to tag ","color":"#FF9294"},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@a[tag=victim, sort=nearest, limit=1]"}],{"text":", but they're too close to a flag!","color":"#FF9294"}]

execute if entity @s[tag=in_jail] run scoreboard players set @s valid_tag 0
execute as @e[tag=victim] if entity @s[tag=in_jail] run scoreboard players set @s valid_tag 0
execute if score $in_lobby var matches 1 run scoreboard players set valid_tag var 0
execute if entity @s[tag=carrying] run function ctf:tag_with_flag
execute if score @s tag_cooldown matches 1.. run function ctf:tag_on_cooldown

execute if score @s valid_tag matches 1 at @a[tag=victim] run function ctf:jail/tp
tag @s remove self




