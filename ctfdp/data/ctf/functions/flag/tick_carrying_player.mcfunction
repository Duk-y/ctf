execute unless predicate ctf:in_own_biome run function ctf:flag/stealing_flag

execute store success score @s has_flag_placer run clear @s carrot_on_a_stick 0
execute unless predicate ctf:in_own_biome if score @s has_flag_placer matches 1 run function ctf:flag/remove_placer_item

execute if predicate ctf:in_own_biome run function ctf:flag/carrying_player_in_own_biome
