# ロボットボム

# ダメージを与える
    execute if score $team ui_temp matches 1 run data modify storage ui:temp Name set value '{"text":"ロボットボム","color":"aqua"}'
    execute if score $team ui_temp matches 2 run data modify storage ui:temp Name set value '{"text":"ロボットボム","color":"light_purple"}'
    execute if score $team ui_temp matches 3 run data modify storage ui:temp Name set value '{"text":"ロボットボム","color":"yellow"}'
    execute if score $team ui_temp matches 4 run data modify storage ui:temp Name set value '{"text":"ロボットボム","color":"green"}'
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 80
    execute positioned as @e[tag=ui_temp_obj,tag=tmw_237_sub_113_1] at @e[distance=2..3.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 300
    execute positioned as @e[tag=ui_temp_obj,tag=tmw_237_sub_113_1] at @e[distance=..2,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker

# パーティクルで描画、演出
    execute positioned as @e[tag=ui_temp_obj,tag=tmw_237_sub_113_1] run function ui:template/sphere_particle/2.5
    function ui:tmw/237/misc/particle_paint
    execute positioned as @e[tag=ui_temp_obj,tag=tmw_237_sub_113_1] run playsound entity.generic.explode player @a ~ ~ ~ 1 0.8 0
    execute positioned as @e[tag=ui_temp_obj,tag=tmw_237_sub_113_1] run particle flash ~ ~ ~ 0 0 0 0 1 force

# 塗りポイント加算
    execute if entity @s[tag=!tmw237_sub_nopoint] as @a if score @s ui_id = $id ui_temp run function ui:tmw/237/misc/player_paint

# パーティクルと本体を消去
    scoreboard players set $Cache ui_temp 1
    teleport @e[tag=ui_temp_obj] ~ -300 ~
    kill @e[tag=ui_temp_obj]