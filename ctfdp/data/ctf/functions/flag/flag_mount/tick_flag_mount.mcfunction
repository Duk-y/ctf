scoreboard players set $carrier_exists var 0
execute on passengers on origin run function ctf:flag/flag_mount/verify_carrier

execute if score $carrier_exists var matches 0 run function ctf:flag/flag_mount/carrying_player_left_game
execute if score $carrier_exists var matches 0 run return 0

execute positioned as @a[tag=carrier, limit=1] run tp @s ~ ~2 ~
execute on passengers on origin run tag @s remove carrier
