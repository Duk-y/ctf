scoreboard players operation $jail.break.cooldown.desert.math var = $jail.break.cooldown.desert var
scoreboard players operation $jail.break.cooldown.desert.math var /= 20 const

execute if score $jail.break.cooldown.desert var matches 1.. if score $jail.break.cooldown.desert.cooldown var matches 0 run tellraw @s [{"text":"[","color":"red"},{"text":"!"},{"text":"]","color":"red"},{"text":" Jailbreak is on cooldown! Try again in ","color":"#FF9294"},{"score":{"name":"$jail.break.cooldown.desert.math","objective":"var"}}," seconds",{"text":".","color":"#FF9294"}]
execute if score $jail.break.cooldown.desert var matches 1.. if score $jail.break.cooldown.desert.cooldown var matches 0 run scoreboard players set $jail.break.cooldown.desert.cooldown var 100

execute unless score $jail.break.cooldown.desert var matches 1.. run function ctf:jail/jailbreak/desert