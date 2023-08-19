execute facing entity @s feet rotated ~ 0 run tp @s ^ ^ ^6
playsound entity.enderman.teleport master @s
tellraw @s [{"text":"[!]","color":"red"},{"text":" You cannot enter your own jail!","color":"#FF9294"}]
