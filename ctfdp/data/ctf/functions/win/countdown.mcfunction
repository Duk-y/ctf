execute store result bossbar win_timer value run scoreboard players remove $win_countdown var 1
function ctf:win/bossbar/main
execute if score $win_countdown var matches 0 run function ctf:win/game_end