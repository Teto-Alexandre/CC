# 黄色で塗り、ポイントを加算する
execute at @e[tag=ui_temp_particle] run particle dust 1 1 0.5 1 ~ ~ ~ 0.2 0.2 0.2 0 2 force
execute at @e[tag=ui_temp_particle] run particle block yellow_concrete ~ ~ ~ 0.2 0.2 0.2 0 2 force
execute at @e[tag=ui_temp_particle] store result score $paint.add ui_temp run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 yellow_wool replace #ui:wools
execute at @e[tag=ui_temp_particle] run scoreboard players operation $paint ui_temp += $paint.add ui_temp