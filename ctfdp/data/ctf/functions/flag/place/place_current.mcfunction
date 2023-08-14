execute store result score $condition_check var run function ctf:flag/place/condition_check

# 0 means a successful condition check; numbers 1-4 correspond to various error messages
execute if score $condition_check var matches 0 run function ctf:flag/place/place_sequence

execute unless score $condition_check var matches 0 run playsound entity.wandering_trader.no master @s

execute if score $condition_check var matches 1 run tellraw @s [{"text":"The flag must be placed on ","color":"#FF9294"},{"text":"solid ground","color":"red"},{"text":"!","color":"#FF9294"}]
execute if score $condition_check var matches 2 run tellraw @s [{"text":"The flag requires a flat ","color":"#FF9294"},{"text":"3x3x3 open space","color":"red"},{"text":" to be placed!","color":"#FF9294"}]
execute if score $condition_check var matches 3 run tellraw @s [{"text":"The flag requires ","color":"#FF9294"},{"text":"open sky access","color":"red"},{"text":"!","color":"#FF9294"}]
execute if score $condition_check var matches 4 run tellraw @s [{"text":"The flag can't be placed on a ","color":"#FF9294"},{"text":"tree","color":"red"},{"text":"!","color":"#FF9294"}]
execute if score $condition_check var matches 5 run tellraw @s [{"text":"The flag can't be placed on a ","color":"#FF9294"},{"text":"slab","color":"red"},{"text":"!","color":"#FF9294"}]
execute if score $condition_check var matches 6 run tellraw @s [{"text":"The flag can't be placed on this ","color":"#FF9294"},{"text":"bridge","color":"red"},{"text":"!","color":"#FF9294"}]
execute if score $condition_check var matches 7 run tellraw @s [{"text":"The flag can't be placed on a ","color":"#FF9294"},{"text":"liquid","color":"red"},{"text":"!","color":"#FF9294"}]
execute if score $condition_check var matches 8 run tellraw @s [{"text":"The flag can't be placed within ","color":"#FF9294"},{"text":"25 blocks","color":"red"},{"text":" of another flag!","color":"#FF9294"}]
execute if score $condition_check var matches 9 run tellraw @s [{"text":"The flag can't be placed here!","color":"#FF9294"}]
