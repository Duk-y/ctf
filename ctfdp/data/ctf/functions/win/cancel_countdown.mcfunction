scoreboard players set $started_win_countdown var 0
bossbar set win_timer visible false
tellraw @a ""
tellraw @a [{"text":"A flag was "},{"text":"STOLEN","color":"gold"},{"text":" so the win countdown has been disabled."}]
tellraw @a ""