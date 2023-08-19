# run as and at target (hit player)

# add the player's tag cooldown as specified by const [at the time of writing this, it's 100 ticks]
scoreboard players operation @a[tag=attacker,limit=1] tag_cooldown = $tag_cooldown const
playsound block.beacon.deactivate master @s ~ ~ ~ 1 1 1
execute as @a[tag=attacker,limit=1] at @s run playsound entity.player.levelup master @s
execute if entity @s[tag=carrying] run function ctf:tagging/target/transfer_flag

particle totem_of_undying ~ ~1 ~ 0 0 0 0.2 50
particle totem_of_undying ~ ~1 ~ 0 0 0 0.4 40
particle totem_of_undying ~ ~1 ~ 0 0 0 0.6 30
particle totem_of_undying ~ ~1 ~ 0 0 0 0.8 20
particle totem_of_undying ~ ~1 ~ 0 0 0 1 10

execute if score $tagging.attacker.biome var matches 1 positioned as @e[type=marker, tag=jail.center, tag=mesa, limit=1] rotated ~ 0 run tp @s ^ ^ ^3
execute if score $tagging.attacker.biome var matches 2 positioned as @e[type=marker, tag=jail.center, tag=cherry, limit=1] rotated ~ 0 run tp @s ^ ^ ^3
execute if score $tagging.attacker.biome var matches 3 positioned as @e[type=marker, tag=jail.center, tag=desert, limit=1] rotated ~ 0 run tp @s ^ ^ ^3
execute if score $tagging.attacker.biome var matches 4 positioned as @e[type=marker, tag=jail.center, tag=ice, limit=1] rotated ~ 0 run tp @s ^ ^ ^3
execute if score $tagging.attacker.biome var matches 5 positioned as @e[type=marker, tag=jail.center, tag=forest, limit=1] rotated ~ 0 run tp @s ^ ^ ^3

execute if score $tagging.attacker.biome var matches 1 run scoreboard players operation @s invincibility = $jail.break.mesa.timer var
execute if score $tagging.attacker.biome var matches 2 run scoreboard players operation @s invincibility = $jail.break.cherry.timer var
execute if score $tagging.attacker.biome var matches 3 run scoreboard players operation @s invincibility = $jail.break.desert.timer var
execute if score $tagging.attacker.biome var matches 4 run scoreboard players operation @s invincibility = $jail.break.ice.timer var
execute if score $tagging.attacker.biome var matches 5 run scoreboard players operation @s invincibility = $jail.break.forest.timer var
tag @s[scores={invincibility=1..}] add invincible

tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "⚔"},{"text": "] "},{"nbt":"target","storage":"ctf:temp","interpret":true},{"color": "white","text": " was tagged by "},{"nbt":"attacker","storage":"ctf:temp","interpret":true}]
