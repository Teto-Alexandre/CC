# バンブーピアサー
    execute if score $burst_alt ui_temp matches 13.. run scoreboard players add $damage ui_temp 31
    scoreboard players operation $burst_alt ui_temp *= #18 ui_num
    scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    scoreboard players operation $ink.add ui_temp > #85 ui_num
    scoreboard players operation $burst_alt ui_temp *= #2 ui_num
    scoreboard players operation $burst_alt ui_temp /= #18 ui_num
    scoreboard players operation $range ui_temp += $burst_alt ui_temp
    scoreboard players operation $burst_alt ui_temp *= #4 ui_num
    scoreboard players operation $damage ui_temp += $burst_alt ui_temp