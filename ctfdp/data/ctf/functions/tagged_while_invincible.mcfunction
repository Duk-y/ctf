playsound block.conduit.attack.target hostile @s ~ ~ ~ 2 1
scoreboard players set @e[tag=self, limit=1] valid_tag 0
tellraw @s {"text":"You were tagged, but you're invincible!","color":"#BCFFE0"}
