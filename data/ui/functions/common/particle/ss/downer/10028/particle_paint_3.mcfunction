# パーティクルで描画、演出
    scoreboard players set $paint ui_temp 0
    execute if score $team ui_temp matches 1 run function ui:common/particle/ss/downer/10028/pp/1
    execute if score $team ui_temp matches 2 run function ui:common/particle/ss/downer/10028/pp/2
    execute if score $team ui_temp matches 3 run function ui:common/particle/ss/downer/10028/pp/3
    execute if score $team ui_temp matches 4 run function ui:common/particle/ss/downer/10028/pp/4
    execute if score $team ui_temp matches 101 at @e[tag=ui_temp_particle] run function ui:common/particle/ss/downer/10028/pp/101/

# パーティクルを消去
    kill @e[tag=ui_temp_particle]