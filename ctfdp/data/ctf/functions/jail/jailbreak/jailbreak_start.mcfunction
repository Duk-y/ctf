execute as @a at @s run playsound block.glass.break block @s ~ ~ ~ 10 0 
execute as @a[distance=..8, tag=in_jail] run function ctf:invincibility/start_invincibility
tag @a[distance=..8, tag=in_jail] remove in_jail

fill ~-5 ~ ~-5 ~4 ~2 ~4 air replace iron_trapdoor

execute on vehicle run data merge entity @s[type=item_display,tag=jail.forcefield] {transformation:{scale:[0f,0f,0f],left_rotation:{axis:[0f,1f,0f],angle:3.14159f},translation:[0f,1.5f,0f]},start_interpolation:0,interpolation_duration:10}

tag @s add jailbroken
