# runs every tick as and at every invincible player
scoreboard players remove @s invincibility 1
scoreboard players operation @s invincibility_display = @s invincibility
scoreboard players operation @s invincibility_display /= 20 const
title @s actionbar [{"text":"INVINCIBLE for","color":"#BCFFE0"},{"text":" "},{"score":{"name":"@s","objective":"invincibility_display"},"color":"#69FFEE"},{"text":" seconds!","color":"#BCFFE0"}]
particle scrape ~ ~1 ~ 0.5 0.5 0.5 1 3 force