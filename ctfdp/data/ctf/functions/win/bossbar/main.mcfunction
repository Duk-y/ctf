execute if score $win_countdown var matches 0..419 run function ctf:win/bossbar/tree/0..419
execute if score $win_countdown var matches 420..839 run function ctf:win/bossbar/tree/420..839
execute if score $win_countdown var matches 840..1799 run function ctf:win/bossbar/tree/840..1799
execute if score $win_countdown var matches 1800..5999 run function ctf:win/bossbar/tree/1800..5999
execute if score $win_countdown var matches 6000.. run bossbar set minecraft:win_timer name ["",{"text":"Game Over","bold":true,"color":"dark_red"}," in more than 5 minutes"]
