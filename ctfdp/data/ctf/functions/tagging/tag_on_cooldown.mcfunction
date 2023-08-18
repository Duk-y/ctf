scoreboard players set $valid_tag var 0

execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 0
scoreboard players operation @s tag_cooldown_display = @s tag_cooldown
scoreboard players operation @s tag_cooldown_display /= 20 const
execute unless score @s tag_cooldown_display matches 0 run tellraw @s [{"text":"[!] ","color":"red"},{"text":"Tag is on cooldown for ","color":"#FF9294"},{"score":{"name":"@s","objective":"tag_cooldown_display"},"color":"red"},{"text":" seconds!","color":"#FF9294"}]
execute if score @s tag_cooldown_display matches 0 run tellraw @s [{"text":"[!] ","color":"red"},{"text":"Tag is on cooldown for ","color":"#FF9294"},{"text":"less than one","color":"red"},{"text":" second!","color":"#FF9294"}]
