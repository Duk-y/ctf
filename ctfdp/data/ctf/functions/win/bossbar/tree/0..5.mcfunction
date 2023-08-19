execute if score $win_countdown var matches 0..1 run bossbar set minecraft:win_timer name ["",{"text":"Game Over","bold":true,"color":"dark_red"}," in 0.0 seconds"]
execute if score $win_countdown var matches 2..3 run bossbar set minecraft:win_timer name ["",{"text":"Game Over","bold":true,"color":"dark_red"}," in 0.1 seconds"]
execute if score $win_countdown var matches 4..5 run bossbar set minecraft:win_timer name ["",{"text":"Game Over","bold":true,"color":"dark_red"}," in 0.2 seconds"]
