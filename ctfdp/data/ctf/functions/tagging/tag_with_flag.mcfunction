scoreboard players set $valid_tag var 0

execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 0
tellraw @s [{"text":"[!] ","color":"red"},{"text":"You cannot tag while carrying a flag!","color":"#FF9294"}]
