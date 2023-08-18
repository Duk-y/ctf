# runs as and at any player currently carrying a flag whilst NOT in their own biome
tp @e[type=armor_stand, tag=flag_mount, distance=..5, sort=nearest, limit=1] ~ ~2 ~
effect give @s glowing 1 0 true
title @s actionbar [{"text":"Bring the flag back to ","color":"#B1FF89"},{"text":"safety","color":"green"},{"text":" without being tagged!","color":"#B1FF89"}]
particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 1 1 force
particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0 1 force