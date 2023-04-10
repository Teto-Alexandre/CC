#
scoreboard players operation $mod ui_calc1 = $ke2 party_mode
scoreboard players operation $mod ui_calc1 *= #2 ui_num
scoreboard players add $mod ui_calc1 2

function ui:common/rand

scoreboard players operation $temp ui_temp = $rand ui_calc1
scoreboard players operation $temp ui_temp -= $ke2 party_mode
scoreboard players remove $temp ui_temp 1

scoreboard players operation @s ui_hpart += $temp ui_temp