kill @e[tag=height_check]
execute unless block ~ ~ ~ #ctf:flag_sky_exceptions run return 0
summon marker ~ ~ ~ {Tags:["height_check"]}
execute store result score $height_check var run data get entity @e[tag=height_check, limit=1, distance=..0.00001] Pos[1]
execute if score $height_check var matches 130.. run return 1
execute positioned ~ ~1 ~ store result score $flag_ray_check var run function ctf:flag/place/raycast/ray