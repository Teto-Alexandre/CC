#
scoreboard players operation $now_pl ui_temp *= $now_pl ui_temp
scoreboard players operation $now_pl ui_temp /= #10 ui_num
scoreboard players add $now_pl ui_temp 20
