kill @s
execute store result score $height_check var run data get entity @s Pos[1]
function ctf:flag/place/raycast/ray
scoreboard players remove $height_check var 1
