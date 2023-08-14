tag @s remove jail_verify
execute at @e[tag=jail.center, sort=nearest, limit=1] run tp @s ~ ~ ~7
playsound entity.enderman.teleport master @s
tellraw @s [{"text":"[!]","color":"red"},{"text":" You cannot enter your own jail!","color":"#FF9294"}]
