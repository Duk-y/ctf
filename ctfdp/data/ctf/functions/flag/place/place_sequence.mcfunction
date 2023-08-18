tag @s remove carrying
execute at @s as @e[type=armor_stand, tag=flag_mount, distance=..5, limit=1] on passengers run kill @s
execute at @s run kill @e[type=armor_stand, tag=flag_mount, distance=..5, limit=1]
function ctf:flag/remove_placer_item
scoreboard players reset @s place_timer

execute if entity @s[team=mesa] run playsound entity.firework_rocket.twinkle_far master @a[team=mesa]
execute if entity @s[team=cherry] run playsound entity.firework_rocket.twinkle_far master @a[team=cherry]
execute if entity @s[team=desert] run playsound entity.firework_rocket.twinkle_far master @a[team=desert]
execute if entity @s[team=ice] run playsound entity.firework_rocket.twinkle_far master @a[team=ice]
execute if entity @s[team=forest] run playsound entity.firework_rocket.twinkle_far master @a[team=forest]

execute if entity @s[team=mesa] run playsound entity.ender_dragon.growl master @a[team=!mesa]
execute if entity @s[team=cherry] run playsound entity.ender_dragon.growl master @a[team=!cherry]
execute if entity @s[team=desert] run playsound entity.ender_dragon.growl master @a[team=!desert]
execute if entity @s[team=ice] run playsound entity.ender_dragon.growl master @a[team=!ice]
execute if entity @s[team=forest] run playsound entity.ender_dragon.growl master @a[team=!forest]

execute if entity @s[tag=carrying_mesa] run function ctf:flag/place/mesa_r
execute if entity @s[tag=carrying_cherry] run function ctf:flag/place/cherry_r
execute if entity @s[tag=carrying_desert] run function ctf:flag/place/desert_r
execute if entity @s[tag=carrying_ice] run function ctf:flag/place/ice_r
execute if entity @s[tag=carrying_forest] run function ctf:flag/place/forest_r
