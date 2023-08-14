clear @s #candles
scoreboard players set @s captured 0

# carrying means carrying [the flag]
tag @s add carrying
summon armor_stand ~ ~ ~ {Tags:["flag_mount"], Invisible:1b, Marker:1b}
summon item ~ ~ ~ {Item:{id:"minecraft:stone", Count:1b}, PickupDelay:-32768, Age:-32768, Tags:["flag", "carried"]}

execute if score @s picked_up.mesa matches 1.. run data modify entity @e[tag=flag, limit=1, sort=nearest] Item.id set value "minecraft:orange_candle"
execute if score @s picked_up.cherry matches 1.. run data modify entity @e[tag=flag, limit=1, sort=nearest] Item.id set value "minecraft:pink_candle"
execute if score @s picked_up.desert matches 1.. run data modify entity @e[tag=flag, limit=1, sort=nearest] Item.id set value "minecraft:yellow_candle"
execute if score @s picked_up.ice matches 1.. run data modify entity @e[tag=flag, limit=1, sort=nearest] Item.id set value "minecraft:light_blue_candle"
execute if score @s picked_up.forest matches 1.. run data modify entity @e[tag=flag, limit=1, sort=nearest] Item.id set value "minecraft:green_candle"

tag @s remove carrying_mesa
tag @s remove carrying_cherry
tag @s remove carrying_desert
tag @s remove carrying_ice
tag @s remove carrying_forest

execute if score @s picked_up.mesa matches 1.. run tag @s add carrying_mesa
execute if score @s picked_up.cherry matches 1.. run tag @s add carrying_cherry
execute if score @s picked_up.desert matches 1.. run tag @s add carrying_desert
execute if score @s picked_up.ice matches 1.. run tag @s add carrying_ice
execute if score @s picked_up.forest matches 1.. run tag @s add carrying_forest

execute if score @s picked_up.mesa matches 1.. run tag @e[tag=flag_mount, sort=nearest, limit=1] add carrying_mesa
execute if score @s picked_up.cherry matches 1.. run tag @e[tag=flag_mount, sort=nearest, limit=1] add carrying_cherry
execute if score @s picked_up.desert matches 1.. run tag @e[tag=flag_mount, sort=nearest, limit=1] add carrying_desert
execute if score @s picked_up.ice matches 1.. run tag @e[tag=flag_mount, sort=nearest, limit=1] add carrying_ice
execute if score @s picked_up.forest matches 1.. run tag @e[tag=flag_mount, sort=nearest, limit=1] add carrying_forest

scoreboard players set @s picked_up.mesa 0
scoreboard players set @s picked_up.cherry 0
scoreboard players set @s picked_up.desert 0
scoreboard players set @s picked_up.ice 0
scoreboard players set @s picked_up.forest 0

#self.c_f stands for self.collect_flag so as not to be confused with any other self tag
tag @s add self.c_f
ride @e[tag=flag, limit=1, sort=nearest] mount @e[tag=flag_mount, sort=nearest, limit=1]
clear @s #candles
function ctf:flag/update_sidebar

playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.25
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5

tellraw @a ""

execute if entity @s[team=cherry] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:yellow_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"desert","storage":"colors","interpret":true},"DESERT"],{"color": "white","text": " flag! "}]
execute if entity @s[team=cherry] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:light_blue_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"ice","storage":"colors","interpret":true},"ICE"],{"color": "white","text": " flag! "}]
execute if entity @s[team=cherry] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:orange_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"mesa","storage":"colors","interpret":true},"MESA"],{"color": "white","text": " flag! "}]
execute if entity @s[team=cherry] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:green_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"forest","storage":"colors","interpret":true},"FOREST"],{"color": "white","text": " flag! "}]
execute if entity @s[team=cherry] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:pink_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"],{"color": "white","text": " flag! "}]

execute if entity @s[team=desert] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:pink_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"],{"color": "white","text": " flag! "}]
execute if entity @s[team=desert] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:light_blue_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"ice","storage":"colors","interpret":true},"ICE"],{"color": "white","text": " flag! "}]
execute if entity @s[team=desert] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:orange_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"mesa","storage":"colors","interpret":true},"MESA"],{"color": "white","text": " flag! "}]
execute if entity @s[team=desert] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:green_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"forest","storage":"colors","interpret":true},"FOREST"],{"color": "white","text": " flag! "}]
execute if entity @s[team=desert] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:yellow_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"desert","storage":"colors","interpret":true},"DESERT"],{"color": "white","text": " flag! "}]

execute if entity @s[team=ice] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:pink_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"],{"color": "white","text": " flag! "}]
execute if entity @s[team=ice] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:yellow_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"desert","storage":"colors","interpret":true},"DESERT"],{"color": "white","text": " flag! "}]
execute if entity @s[team=ice] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:orange_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"mesa","storage":"colors","interpret":true},"MESA"],{"color": "white","text": " flag! "}]
execute if entity @s[team=ice] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:green_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"forest","storage":"colors","interpret":true},"FOREST"],{"color": "white","text": " flag! "}]
execute if entity @s[team=ice] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:light_blue_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"ice","storage":"colors","interpret":true},"ICE"],{"color": "white","text": " flag! "}]

execute if entity @s[team=mesa] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:pink_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"],{"color": "white","text": " flag! "}]
execute if entity @s[team=mesa] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:yellow_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"desert","storage":"colors","interpret":true},"DESERT"],{"color": "white","text": " flag! "}]
execute if entity @s[team=mesa] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:light_blue_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"ice","storage":"colors","interpret":true},"ICE"],{"color": "white","text": " flag! "}]
execute if entity @s[team=mesa] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:green_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"forest","storage":"colors","interpret":true},"FOREST"],{"color": "white","text": " flag! "}]
execute if entity @s[team=mesa] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:orange_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"mesa","storage":"colors","interpret":true},"MESA"],{"color": "white","text": " flag! "}]

execute if entity @s[team=forest] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:pink_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"],{"color": "white","text": " flag! "}]
execute if entity @s[team=forest] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:yellow_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"desert","storage":"colors","interpret":true},"DESERT"],{"color": "white","text": " flag! "}]
execute if entity @s[team=forest] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:light_blue_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"ice","storage":"colors","interpret":true},"ICE"],{"color": "white","text": " flag! "}]
execute if entity @s[team=forest] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:orange_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"mesa","storage":"colors","interpret":true},"MESA"],{"color": "white","text": " flag! "}]
execute if entity @s[team=forest] as @e[tag=flag, type=item, sort=nearest, limit=1] if entity @s[nbt={Item:{id:"minecraft:green_candle"}}] as @a[tag=self.c_f] run tellraw @a [{"color": "gray","text": "["},{"color": "white","text": "🏴"},{"text": "] "},[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@s"}],{"color": "white","text": " has picked up the "},[{"nbt":"forest","storage":"colors","interpret":true},"FOREST"],{"color": "white","text": " flag! "}]

tellraw @a ""
tag @a remove self.c_f