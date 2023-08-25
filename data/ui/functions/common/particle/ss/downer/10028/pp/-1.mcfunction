# 青色で塗り、ポイントを加算する
execute at @e[tag=ui_temp_particle] run particle dust 1 1 1 1 ~ ~ ~ 0.2 0.2 0.2 0 2 force
execute at @e[tag=ui_temp_particle] run particle block white_concrete ~ ~ ~ 0.2 0.2 0.2 0 2 force
execute at @e[tag=ui_temp_particle] run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 white_wool replace #ui:wools_include_black