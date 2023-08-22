execute if entity @s[tag=carrying, gamemode=!spectator] run scoreboard players set $carrier_exists var 1

execute if score $carrier_exists var matches 1 run tag @s add carrier
execute if score $carrier_exists var matches 0 run function ctf:flag/remove_carrying_tags
