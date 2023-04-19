# 時限式の設定
scoreboard players operation $hpart2 ui_temp = $hpart ui_temp
scoreboard players operation $hpart ui_temp %= #1000 ui_num
scoreboard players operation $hpart2 ui_temp /= #1000 ui_num