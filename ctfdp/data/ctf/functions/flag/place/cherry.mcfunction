execute if score $game_started_timer var matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:pink_candle", Count:1b}, Tags:["flag"], PickupDelay:1, Owner:[I;0,0,0,0], Age:-32768, Team: "cherry"}
execute if score $game_started_timer var matches 1.. run summon item ~ ~ ~ {Item:{id:"minecraft:pink_candle", Count:1b}, Tags:["flag", "game_start_flag"], PickupDelay:1, Age:-32768, Team: "cherry"}
function ctf:flag/update_sidebar