tag Cokica add t_leader
tag Dabbycat add t_leader
tag GearShift17 add t_leader
tag _Kenadian_ add t_leader
tag MrCube6 add t_leader

scoreboard players operation $start_game_timer_check var = $start_game var
scoreboard players operation $start_game_timer_check var %= 20 const
scoreboard players operation $start_game_display var = $start_game var
scoreboard players operation $start_game_display var /= 20 const
execute if score $start_game_timer_check var matches 0 run tellraw @a ["",{"text":"Get to your biome!","bold":true,"color":"red"},{"text":" Game starts in "},{"score":{"name":"$start_game_display","objective":"var"},"italic":true,"color":"light_purple"},{"text":" seconds","italic":true,"color":"light_purple"},{"text":"!"}]
execute if score $start_game_timer_check var matches 0 as @a at @s run playsound block.note_block.bit master @s
scoreboard players remove $start_game var 1


execute if score $start_game var matches 0 run function ctf:tp_to_game
