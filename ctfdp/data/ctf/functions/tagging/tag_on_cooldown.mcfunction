scoreboard players set $valid_tag var 0

execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 0
scoreboard players operation $tag_cooldown_display var = @s tag_cooldown
scoreboard players operation $tag_cooldown_display var /= 20 const
execute unless score $tag_cooldown_display var matches 0 run tellraw @s [{"text":"[!] ","color":"red"},{"text":"Tag is on cooldown for ","color":"#FF9294"},{"score":{"name":"$tag_cooldown_display","objective":"var"},"color":"red"},{"text":" seconds!","color":"#FF9294"}]
execute if score $tag_cooldown_display var matches 0 run tellraw @s [{"text":"[!] ","color":"red"},{"text":"Tag is on cooldown for ","color":"#FF9294"},{"text":"less than one","color":"red"},{"text":" second!","color":"#FF9294"}]
