scoreboard players set $valid_tag var 0
scoreboard players set $tagged_while_invincible var 1

playsound block.conduit.attack.target hostile @s ~ ~ ~ 2 1
tellraw @s {"text":"You were tagged, but you're invincible!","color":"#BCFFE0"}
