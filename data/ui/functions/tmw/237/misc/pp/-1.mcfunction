# 青色で塗り、ポイントを加算する
execute at @e[tag=ui_temp_particle] run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=ui_temp_particle] run particle block white_concrete ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ white_wool replace #ui:wools_include_black