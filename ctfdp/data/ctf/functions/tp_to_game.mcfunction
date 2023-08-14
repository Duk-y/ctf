title @a title {"text":"1 MINUTE","bold":true,"color":"gold"}
title @a subtitle "to hide your flag! Strategize with your team leader!"

tp @a[team=mesa] @e[tag=spawnpoint.mesa, limit=1]
tp @a[team=cherry] @e[tag=spawnpoint.cherry, limit=1]
tp @a[team=desert] @e[tag=spawnpoint.desert, limit=1]
tp @a[team=ice] @e[tag=spawnpoint.ice, limit=1]
tp @a[team=forest] @e[tag=spawnpoint.forest, limit=1]
execute as @a[tag=t_leader] at @s rotated as @s run tp @s ^ ^ ^2
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