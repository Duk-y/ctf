# runs as and at any player currently carrying a flag whilst IN their own biome
tp @e[type=armor_stand, tag=flag_mount, distance=..5, sort=nearest, limit=1] ~ ~2 ~
title @s actionbar [{"text":"Use the ","color":"#B1FF89"},{"text":"green ✖","color":"green"},{"text":" in your inventory to place down the flag!","color":"#B1FF89"}]
particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 1 1 force
particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0 1 force