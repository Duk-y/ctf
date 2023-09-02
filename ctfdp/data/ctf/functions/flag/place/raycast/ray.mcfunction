execute unless block ~ ~ ~ #ctf:flag_sky_exceptions run return 0
scoreboard players add $height_check var 1
execute if score $height_check var matches ..130 positioned ~ ~1 ~ run function ctf:flag/place/raycast/ray
