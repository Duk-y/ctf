fill ~4 ~ ~3 ~4 ~2 ~-4 iron_trapdoor[facing=east,half=bottom,open=true]
fill ~-5 ~ ~-4 ~-5 ~2 ~3 iron_trapdoor[facing=west,half=bottom,open=true]
fill ~-4 ~ ~-5 ~3 ~2 ~-5 iron_trapdoor[facing=north,half=bottom,open=true]
fill ~-4 ~ ~4 ~3 ~2 ~4 iron_trapdoor[facing=south,half=bottom,open=true]

execute on vehicle run data merge entity @s[type=item_display,tag=jail.forcefield] {transformation:{scale:[8f,8f,8f],left_rotation:{axis:[0f,1f,0f],angle:0f},translation:[0f,0f,0f]},start_interpolation:0,interpolation_duration:10}

tag @s remove jailbroken
