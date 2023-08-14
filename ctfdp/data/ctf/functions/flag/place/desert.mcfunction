execute if score $game_started_timer var matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_candle", Count:1b}, Tags:["flag"], PickupDelay:1, Owner:[I;0,0,0,0], Age:-32768}
execute if score $game_started_timer var matches 1.. run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_candle", Count:1b}, Tags:["flag"], PickupDelay:1, Age:-32768}
team join desert @e[type=item, sort=nearest, limit=1, tag=flag]
function ctf:flag/update_sidebar