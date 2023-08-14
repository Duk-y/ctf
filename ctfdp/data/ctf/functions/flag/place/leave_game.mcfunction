execute store result score $condition_check var run function ctf:flag/place/condition_check

# 0 means a successful condition check; numbers 1-4 correspond to various error messages
execute if score $condition_check var matches 0 run function ctf:flag/place/place_sequence
execute if score $condition_check var matches 0 run return 0

execute if predicate ctf:in_mesa at @e[tag=flag_spot, tag=mesa, sort=nearest, limit=1] run function ctf:flag/place/place_sequence
execute if predicate ctf:in_cherry at @e[tag=flag_spot, tag=cherry, sort=nearest, limit=1] run function ctf:flag/place/place_sequence
execute if predicate ctf:in_desert at @e[tag=flag_spot, tag=desert, sort=nearest, limit=1] run function ctf:flag/place/place_sequence
execute if predicate ctf:in_ice at @e[tag=flag_spot, tag=ice, sort=nearest, limit=1] run function ctf:flag/place/place_sequence
execute if predicate ctf:in_forest at @e[tag=flag_spot, tag=forest, sort=nearest, limit=1] run function ctf:flag/place/place_sequence

data modify entity @e[tag=carried, limit=1, sort=nearest] PickupDelay set value 0 
tag @e[tag=carried, limit=1, sort=nearest] remove carried
execute on passengers run kill @s
kill @s