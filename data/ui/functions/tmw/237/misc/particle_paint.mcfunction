# パーティクルで描画、演出
    scoreboard players set $paint ui_temp 0
    execute if score $team ui_temp matches 1 run function ui:tmw/237/misc/pp/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/misc/pp/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/misc/pp/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/misc/pp/4
    execute if score $team ui_temp matches 101 at @e[tag=ui_temp_particle] run function ui:tmw/237/misc/pp/101/

# パーティクルを消去
    kill @e[tag=ui_temp_particle]