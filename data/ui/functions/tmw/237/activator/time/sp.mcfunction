# スペシャルウェポン時間経過

#
    scoreboard players set $activator_type ui_temp 2

# 隔離
    scoreboard players operation $time ui_temp = $sptime ui_temp
    scoreboard players operation $activator ui_temp = $sptype ui_temp

# マスター
    function ui:tmw/237/activator/time/master

# 時間減少
    execute if score $qf ui_temp matches 1 run scoreboard players set @s ui_paint 0
    execute if score $qf ui_temp matches 3 run scoreboard players set @s ui_paint 0
    scoreboard players remove $sptime ui_temp 1
    scoreboard players set $changed ui_temp 1