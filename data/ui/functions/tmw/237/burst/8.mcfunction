# 秒数制限取得
    execute if score $basetype ui_temp matches 1 run function ui:tmw/237/basetype/burstmax/1
    execute if score $basetype ui_temp matches 2 run function ui:tmw/237/basetype/burstmax/2
    execute if score $basetype ui_temp matches 3 run function ui:tmw/237/basetype/burstmax/3
    execute if score $basetype ui_temp matches -1 run function ui:tmw/237/basetype/burstmax/sp
    execute if score $basetype ui_temp matches -2 run function ui:tmw/237/basetype/burstmax/sub
    
    execute if score $basetype ui_temp matches 1 run function ui:tmw/237/basetype/burstmin/1
    execute if score $basetype ui_temp matches 2 run function ui:tmw/237/basetype/burstmin/2
    execute if score $basetype ui_temp matches 3 run function ui:tmw/237/basetype/burstmin/3
    execute if score $basetype ui_temp matches -1 run function ui:tmw/237/basetype/burstmin/sp
    execute if score $basetype ui_temp matches -2 run function ui:tmw/237/basetype/burstmin/sub
    scoreboard players operation $burst.min ui_temp > #3 ui_num

# 押すと書き込み
    execute if score $ishold ui_temp matches 2.. if score $burst.min ui_temp <= $ishold ui_temp as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst/8_2

# タメ
    execute if score $ishold ui_temp matches 1.. if score @s ui_st2 matches 0 run function ui:tmw/237/burst/hold