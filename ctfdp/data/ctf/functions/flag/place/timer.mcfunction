scoreboard players remove @s place_timer 1
scoreboard players operation $place_timer_display var = @s place_timer
scoreboard players operation $place_timer_display var /= 20 const
scoreboard players operation $place_timer_display var += 1 const
scoreboard players operation $place_timer_math var = @s place_timer
scoreboard players operation $place_timer_math var %= 200 const
execute if score $place_timer_math var matches 199 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 0.5
execute if score $place_timer_math var matches 199 if score $place_timer_display var matches 30.. run tellraw @s [{"text":"You have ","color":"#FFC772"},{"score":{"name":"$place_timer_display","objective":"var"},"color":"gold"},{"text":" seconds","color":"gold"},{"text":" to place down the flag!","color":"#FFC772"}]
execute if score $place_timer_math var matches 199 if score $place_timer_display var matches ..29 run tellraw @s [{"text":"You have ","color":"#FFC772"},{"score":{"name":"$place_timer_display","objective":"var"},"color":"gold"},{"text":" seconds","color":"gold"},{"text":" to place down the flag!","color":"#FFC772"},{"text":"\n"},{"text":"Otherwise, the flag will ","italic":true,"color":"gray"},{"text":"automatically teleport","italic":true,"color":"#767676"},{"text":" to the nearest predetermined location in your current biome.","italic":true,"color":"gray"}]
execute if score @s place_timer matches 1 at @s run function ctf:flag/place/out_of_time