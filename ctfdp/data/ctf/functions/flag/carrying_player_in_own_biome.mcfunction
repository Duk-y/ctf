# particles, actionbar, and teleport fflag above head
function ctf:flag/stolen_flag

# broadcast capture
execute unless score @s captured matches 1 run function ctf:flag/capture

# restore placer item if lost
execute unless score @s has_flag_placer matches 1 run function ctf:flag/give_placer_item

# place flag if placer item is used
execute if entity @s[scores={carrot_click=1..}] run function ctf:flag/place/place_current
