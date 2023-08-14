scoreboard players remove $win_countdown var 1
execute store result bossbar win_timer value run scoreboard players get $win_countdown var
execute if score $win_countdown var matches 0 run function ctf:win/game_end