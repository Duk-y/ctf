function ctf:flag/place/cherry

# when the player runs out of time to place the flag, this function is run AS them but AT the nearest acceptable flag location
# to account for this, we can't take the player's position as it won't necessarily be where the flag is, but instead we summon a marker here and take its position
function ctf:flag/place/get_coordinates/main

execute if entity @s[team=mesa] run tellraw @a ["\n",[{"nbt":"mesa","storage":"colors","interpret":true},"MESA"], [{"text": " has CAPTURED the ", "color": "white"}], [{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"], [{"text":" flag!\n", "color": "white"}]]
execute if entity @s[team=cherry] run tellraw @a ["\n",[{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"], [{"text": " has CAPTURED the ", "color": "white"}], [{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"], [{"text":" flag!\n", "color": "white"}]]
execute if entity @s[team=desert] run tellraw @a ["\n",[{"nbt":"desert","storage":"colors","interpret":true},"DESERT"], [{"text": " has CAPTURED the ", "color": "white"}], [{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"], [{"text":" flag!\n", "color": "white"}]]
execute if entity @s[team=ice] run tellraw @a ["\n",[{"nbt":"ice","storage":"colors","interpret":true},"ICE"], [{"text": " has CAPTURED the ", "color": "white"}], [{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"], [{"text":" flag!\n", "color": "white"}]]
execute if entity @s[team=forest] run tellraw @a ["\n",[{"nbt":"forest","storage":"colors","interpret":true},"FOREST"], [{"text": " has CAPTURED the ", "color": "white"}], [{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"], [{"text":" flag!\n", "color": "white"}]]

tag @s remove carrying_cherry
execute if entity @s[team=mesa] run tellraw @a[team=mesa] ["\n",[{"nbt":"mesa","storage":"colors","interpret":true},{"selector":"@s"}], [{"text": " has hidden the ", "color": "white"}], [{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"], [{"text":" flag at coordinates (", "color": "white"},{"score":{"name":"cherry","objective":"placed_flag.x"},"color":"green"},{"text":", ", "color": "white"},{"score":{"name":"cherry","objective":"placed_flag.z"},"color":"green"},{"text":")."}], {"text":"\nOnly your team can see this message.\n","italic":true,"color":"gray"}]
execute if entity @s[team=cherry] run tellraw @a[team=cherry] ["\n",[{"nbt":"cherry","storage":"colors","interpret":true},{"selector":"@s"}], [{"text": " has hidden the ", "color": "white"}], [{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"], [{"text":" flag at coordinates (", "color": "white"},{"score":{"name":"cherry","objective":"placed_flag.x"},"color":"green"},{"text":", ", "color": "white"},{"score":{"name":"cherry","objective":"placed_flag.z"},"color":"green"},{"text":")."}], {"text":"\nOnly your team can see this message.\n","italic":true,"color":"gray"}]
execute if entity @s[team=desert] run tellraw @a[team=desert] ["\n",[{"nbt":"desert","storage":"colors","interpret":true},{"selector":"@s"}], [{"text": " has hidden the ", "color": "white"}], [{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"], [{"text":" flag at coordinates (", "color": "white"},{"score":{"name":"cherry","objective":"placed_flag.x"},"color":"green"},{"text":", ", "color": "white"},{"score":{"name":"cherry","objective":"placed_flag.z"},"color":"green"},{"text":")."}], {"text":"\nOnly your team can see this message.\n","italic":true,"color":"gray"}]
execute if entity @s[team=ice] run tellraw @a[team=ice] ["\n",[{"nbt":"ice","storage":"colors","interpret":true},{"selector":"@s"}], [{"text": " has hidden the ", "color": "white"}], [{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"], [{"text":" flag at coordinates (", "color": "white"},{"score":{"name":"cherry","objective":"placed_flag.x"},"color":"green"},{"text":", ", "color": "white"},{"score":{"name":"cherry","objective":"placed_flag.z"},"color":"green"},{"text":")."}], {"text":"\nOnly your team can see this message.\n","italic":true,"color":"gray"}]
execute if entity @s[team=forest] run tellraw @a[team=forest] ["\n",[{"nbt":"forest","storage":"colors","interpret":true},{"selector":"@s"}], [{"text": " has hidden the ", "color": "white"}], [{"nbt":"cherry","storage":"colors","interpret":true},"CHERRY"], [{"text":" flag at coordinates (", "color": "white"},{"score":{"name":"cherry","objective":"placed_flag.x"},"color":"green"},{"text":", ", "color": "white"},{"score":{"name":"cherry","objective":"placed_flag.z"},"color":"green"},{"text":")."}], {"text":"\nOnly your team can see this message.\n","italic":true,"color":"gray"}]