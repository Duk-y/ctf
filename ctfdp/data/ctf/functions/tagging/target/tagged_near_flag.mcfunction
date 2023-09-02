scoreboard players set $valid_tag var 0
scoreboard players set $tagged_near_flag var 1

playsound block.conduit.attack.target hostile @s ~ ~ ~ 2 1
tellraw @s {"text":"You were tagged, but you're within radius of the flag!","color":"#BCFFE0"}
