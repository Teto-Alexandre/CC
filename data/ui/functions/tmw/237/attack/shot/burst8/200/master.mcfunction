# ピアサー汎用

#
    scoreboard players operation $burst_percent ui_temp = $burst_alt ui_temp
    scoreboard players remove $burst_percent ui_temp 4
    scoreboard players operation $burst_percent ui_temp *= #100 ui_num
    scoreboard players operation $burst.max_temp ui_temp = $burst.max ui_temp
    scoreboard players remove $burst.max_temp ui_temp 3
    scoreboard players operation $burst_percent ui_temp /= $burst.max_temp ui_temp
    scoreboard players operation $burst_percent ui_temp > #0 ui_num
    scoreboard players set $burst_percent.i ui_temp 100
    scoreboard players operation $burst_percent.i ui_temp -= $burst_percent ui_temp

#
    execute if score $damage ui_temp matches 0 run function ui:tmw/237/attack/shot/burst8/200/damage
    execute if score $range ui_temp matches 0 run function ui:tmw/237/attack/shot/burst8/200/range
    execute if score $speed ui_temp matches 0 run function ui:tmw/237/attack/shot/burst8/200/speed

#
    function ui:tmw/237/attack/shot/burst8/200/ink
