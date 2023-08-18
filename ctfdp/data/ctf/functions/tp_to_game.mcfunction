title @a title {"text":"1 MINUTE","bold":true,"color":"gold"}
title @a subtitle "to hide your flag! Strategize with your team leader!"

tp @a[team=mesa] -81.50 32.00 -60.50 0.00 0.00
tp @a[team=cherry] 89.50 32.00 -168.50 0.00 0.00
tp @a[team=desert] 131.50 29.00 -20.50 0.00 0.00
tp @a[team=ice] 102.50 44.00 159.50 0.00 0.00
tp @a[team=forest] -115.50 15.00 57.50 0.00 0.00
execute as @a[tag=t_leader] at @s rotated ~ 0 run tp @s ^ ^ ^2
# Gives team leaders time to pick up flags at game start
scoreboard players set $game_started_timer var 10
clear @a warped_fungus_on_a_stick
tp @a[tag=!player] 0 100 0
gamemode spectator @a[tag=!player]
scoreboard players set $in_lobby var 0
scoreboard objectives setdisplay sidebar flags

execute as @a[team=mesa, tag=t_leader] at @s run function ctf:flag/place/mesa
execute as @a[team=cherry, tag=t_leader] at @s run function ctf:flag/place/cherry
execute as @a[team=desert, tag=t_leader] at @s run function ctf:flag/place/desert
execute as @a[team=ice, tag=t_leader] at @s run function ctf:flag/place/ice
execute as @a[team=forest, tag=t_leader] at @s run function ctf:flag/place/forest

item replace entity @a[team=mesa] armor.feet with leather_boots{Unbreakable:1b,display:{color:14441728},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @a[team=cherry] armor.feet with leather_boots{Unbreakable:1b,display:{color:16752639},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @a[team=desert] armor.feet with leather_boots{Unbreakable:1b,display:{color:16772471},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @a[team=ice] armor.feet with leather_boots{Unbreakable:1b,display:{color:9694453},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @a[team=forest] armor.feet with leather_boots{Unbreakable:1b,display:{color:6342726},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @a[team=mesa] armor.legs with leather_leggings{Unbreakable:1b,display:{color:14441728},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @a[team=cherry] armor.legs with leather_leggings{Unbreakable:1b,display:{color:16752639},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @a[team=desert] armor.legs with leather_leggings{Unbreakable:1b,display:{color:16772471},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @a[team=ice] armor.legs with leather_leggings{Unbreakable:1b,display:{color:9694453},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @a[team=forest] armor.legs with leather_leggings{Unbreakable:1b,display:{color:6342726},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
