scoreboard players set @s captured 1
execute as @a at @s run playsound block.amethyst_block.chime master @s ~ ~ ~ 1000 0.5
execute as @a at @s run playsound block.amethyst_block.resonate master @s ~ ~ ~ 1000
execute as @a at @s run playsound block.amethyst_block.step master @s ~ ~ ~ 1000
# set the time limit on how long they have to place the flag to prevent players from just keeping the flag on them, preventing anyone else from capturing it
scoreboard players operation @s place_timer = $time_to_place_flag const