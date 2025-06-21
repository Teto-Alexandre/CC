# 座標を確定し進路レーンを消去する
    execute if entity @e[tag=ui_19_4_aqua,distance=..0.1] at @e[tag=ui_19_4_mid] run setblock ~ ~-1 ~ light_blue_concrete
    execute if entity @e[tag=ui_19_4_aqua,distance=..0.1] at @e[tag=ui_19_4_mid] run scoreboard players add $ashiba_progress_now ui_temp 1
    execute if entity @e[tag=ui_19_4_aqua,distance=..0.1] at @e[tag=ui_19_4_mid] if score $ashiba_progress_aqua ui_temp < $ashiba_progress_now ui_temp run scoreboard players operation $ashiba_progress_aqua ui_temp = $ashiba_progress_now ui_temp

    execute if entity @e[tag=ui_19_4_yellow,distance=..0.1] at @e[tag=ui_19_4_mid] run setblock ~ ~-1 ~ yellow_concrete
    execute if entity @e[tag=ui_19_4_yellow,distance=..0.1] at @e[tag=ui_19_4_mid] run scoreboard players remove $ashiba_progress_now ui_temp 1
    execute if entity @e[tag=ui_19_4_yellow,distance=..0.1] at @e[tag=ui_19_4_mid] if score $ashiba_progress_yellow ui_temp > $ashiba_progress_now ui_temp run scoreboard players operation $ashiba_progress_yellow ui_temp = $ashiba_progress_now ui_temp

    teleport @s @e[tag=ui_19_4_they,distance=..0.1,limit=1]
    kill @e[tag=ui_19_4_they]