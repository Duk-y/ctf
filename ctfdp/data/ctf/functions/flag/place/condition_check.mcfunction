scoreboard players set @s carrot_click 0

# RETURN ERROR KEY
# 0 = acceptable location
# 1 = ERROR: not on solid ground
# 2 = ERROR: requires 3x3x3 space
# 3 = ERROR: under a roof
# 4 = ERROR: bad floor: trees
# 5 = ERROR: bad floor: slabs
# 6 = ERROR: bad floor: bridge
# 7 = ERROR: bad floor: liquid
# 8 = ERROR: too close to another flag
# 9 = ERROR: bad floor: other/extra/generic

# check if on solid ground
execute if block ~ ~-1 ~ air run return 1

# check if flag has a flat 3x3 space
# 1) check if ground is flat
execute if block ~-1 ~-1 ~-1 air run return 2
execute if block ~-1 ~-1 ~ air run return 2
execute if block ~-1 ~-1 ~1 air run return 2
execute if block ~ ~-1 ~-1 air run return 2
execute if block ~ ~-1 ~1 air run return 2
execute if block ~1 ~-1 ~-1 air run return 2
execute if block ~1 ~-1 ~ air run return 2
execute if block ~1 ~-1 ~1 air run return 2

# 2) check if surrounding 3x3 is open
execute unless block ~1 ~ ~-1 #ctf:flag_ok_surroundings run return 2
execute unless block ~1 ~ ~ #ctf:flag_ok_surroundings run return 2
execute unless block ~1 ~ ~1 #ctf:flag_ok_surroundings run return 2
execute unless block ~ ~ ~-1 #ctf:flag_ok_surroundings run return 2
execute unless block ~ ~ ~ #ctf:flag_ok_surroundings run return 2
execute unless block ~ ~ ~1 #ctf:flag_ok_surroundings run return 2
execute unless block ~-1 ~ ~-1 #ctf:flag_ok_surroundings run return 2
execute unless block ~-1 ~ ~ #ctf:flag_ok_surroundings run return 2
execute unless block ~-1 ~ ~1 #ctf:flag_ok_surroundings run return 2

execute unless block ~1 ~1 ~-1 #ctf:flag_ok_surroundings run return 2
execute unless block ~1 ~1 ~ #ctf:flag_ok_surroundings run return 2
execute unless block ~1 ~1 ~1 #ctf:flag_ok_surroundings run return 2
execute unless block ~ ~1 ~-1 #ctf:flag_ok_surroundings run return 2
execute unless block ~ ~1 ~ #ctf:flag_ok_surroundings run return 2
execute unless block ~ ~1 ~1 #ctf:flag_ok_surroundings run return 2
execute unless block ~-1 ~1 ~-1 #ctf:flag_ok_surroundings run return 2
execute unless block ~-1 ~1 ~ #ctf:flag_ok_surroundings run return 2
execute unless block ~-1 ~1 ~1 #ctf:flag_ok_surroundings run return 2

execute unless block ~1 ~2 ~-1 #ctf:flag_ok_surroundings run return 2
execute unless block ~1 ~2 ~ #ctf:flag_ok_surroundings run return 2
execute unless block ~1 ~2 ~1 #ctf:flag_ok_surroundings run return 2
execute unless block ~ ~2 ~-1 #ctf:flag_ok_surroundings run return 2
execute unless block ~ ~2 ~ #ctf:flag_ok_surroundings run return 2
execute unless block ~ ~2 ~1 #ctf:flag_ok_surroundings run return 2
execute unless block ~-1 ~2 ~-1 #ctf:flag_ok_surroundings run return 2
execute unless block ~-1 ~2 ~ #ctf:flag_ok_surroundings run return 2
execute unless block ~-1 ~2 ~1 #ctf:flag_ok_surroundings run return 2

# check if the sky is open by using a raycast
execute store result score $flag_ray_check var run function ctf:flag/place/raycast/main
execute if score $flag_ray_check var matches 0 run return 3

# check if the 3x3 floor contains any invalid blocks
execute if block ~-1 ~-1 ~-1 #ctf:bad_floors/trees run return 4
execute if block ~-1 ~-1 ~ #ctf:bad_floors/trees run return 4
execute if block ~-1 ~-1 ~1 #ctf:bad_floors/trees run return 4
execute if block ~ ~-1 ~-1 #ctf:bad_floors/trees run return 4
execute if block ~ ~-1 ~1 #ctf:bad_floors/trees run return 4
execute if block ~1 ~-1 ~-1 #ctf:bad_floors/trees run return 4
execute if block ~1 ~-1 ~ #ctf:bad_floors/trees run return 4
execute if block ~1 ~-1 ~1 #ctf:bad_floors/trees run return 4

execute if block ~-1 ~-1 ~-1 #slabs run return 5
execute if block ~-1 ~-1 ~ #slabs run return 5
execute if block ~-1 ~-1 ~1 #slabs run return 5
execute if block ~ ~-1 ~-1 #slabs run return 5
execute if block ~ ~-1 ~1 #slabs run return 5
execute if block ~1 ~-1 ~-1 #slabs run return 5
execute if block ~1 ~-1 ~ #slabs run return 5
execute if block ~1 ~-1 ~1 #slabs run return 5

execute if block ~-1 ~-1 ~-1 #ctf:bad_floors/bridge run return 6
execute if block ~-1 ~-1 ~ #ctf:bad_floors/bridge run return 6
execute if block ~-1 ~-1 ~1 #ctf:bad_floors/bridge run return 6
execute if block ~ ~-1 ~-1 #ctf:bad_floors/bridge run return 6
execute if block ~ ~-1 ~1 #ctf:bad_floors/bridge run return 6
execute if block ~1 ~-1 ~-1 #ctf:bad_floors/bridge run return 6
execute if block ~1 ~-1 ~ #ctf:bad_floors/bridge run return 6
execute if block ~1 ~-1 ~1 #ctf:bad_floors/bridge run return 6

execute if block ~-1 ~-1 ~-1 #ctf:bad_floors/liquid run return 7
execute if block ~-1 ~-1 ~ #ctf:bad_floors/liquid run return 7
execute if block ~-1 ~-1 ~1 #ctf:bad_floors/liquid run return 7
execute if block ~ ~-1 ~-1 #ctf:bad_floors/liquid run return 7
execute if block ~ ~-1 ~1 #ctf:bad_floors/liquid run return 7
execute if block ~1 ~-1 ~-1 #ctf:bad_floors/liquid run return 7
execute if block ~1 ~-1 ~ #ctf:bad_floors/liquid run return 7
execute if block ~1 ~-1 ~1 #ctf:bad_floors/liquid run return 7

execute if entity @e[tag=flag, tag=!carried, distance=..25] run return 8

execute if block ~-1 ~-1 ~-1 #ctf:bad_floors/extras run return 9
execute if block ~-1 ~-1 ~ #ctf:bad_floors/extras run return 9
execute if block ~-1 ~-1 ~1 #ctf:bad_floors/extras run return 9
execute if block ~ ~-1 ~-1 #ctf:bad_floors/extras run return 9
execute if block ~ ~-1 ~1 #ctf:bad_floors/extras run return 9
execute if block ~1 ~-1 ~-1 #ctf:bad_floors/extras run return 9
execute if block ~1 ~-1 ~ #ctf:bad_floors/extras run return 9
execute if block ~1 ~-1 ~1 #ctf:bad_floors/extras run return 9

# if the function hasn't returned anything else by this point, then this is an OK spot to place the flag.
return 0