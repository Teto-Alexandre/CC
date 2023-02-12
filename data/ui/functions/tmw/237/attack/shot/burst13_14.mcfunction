#
    execute if score $basetype ui_temp matches 1 run function ui:tmw/237/basetype/burst_alt_13/1
    execute if score $basetype ui_temp matches 2 run function ui:tmw/237/basetype/burst_alt_13/2
    execute if score $basetype ui_temp matches 3 run function ui:tmw/237/basetype/burst_alt_13/3
    execute if score $basetype ui_temp matches -1 run function ui:tmw/237/basetype/burst_alt_13/sp
    execute if score $basetype ui_temp matches -2 run function ui:tmw/237/basetype/burst_alt_13/sub

# 共通
    scoreboard players operation $burst.max_temp ui_temp = $burst.max ui_temp
    scoreboard players operation $burst.max_temp ui_temp *= #10 ui_num
    scoreboard players operation $burst.max_temp ui_temp /= $burst.mult ui_temp
    scoreboard players add $burst.max_temp ui_temp 0
    scoreboard players operation $burst.per ui_temp = $burst ui_temp
    scoreboard players operation $burst.per ui_temp *= #100 ui_num
    scoreboard players operation $burst.per ui_temp /= $burst.max_temp ui_temp
    scoreboard players add $burst.per ui_temp 30
    scoreboard players operation $burst.per ui_temp < #100 ui_num
    scoreboard players operation $burst.per ui_temp > #50 ui_num

# 汎用
    execute if score $burst_alt.id ui_temp matches 10001 run function ui:tmw/237/attack/shot/burst13/10001
