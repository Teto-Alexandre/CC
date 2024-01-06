# イルカライド

# ダメージを与える
    execute if score $team ui_temp matches 1 run data modify storage ui:temp Name set value '{"text":"イルカライド","color":"aqua"}'
    execute if score $team ui_temp matches 2 run data modify storage ui:temp Name set value '{"text":"イルカライド","color":"light_purple"}'
    execute if score $team ui_temp matches 3 run data modify storage ui:temp Name set value '{"text":"イルカライド","color":"yellow"}'
    execute if score $team ui_temp matches 4 run data modify storage ui:temp Name set value '{"text":"イルカライド","color":"green"}'
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 80
    execute at @e[distance=4..6,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 240
    execute at @e[distance=2..4,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 660
    execute at @e[distance=..2,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker

# パーティクルで描画、演出
    ride @p dismount
    function ui:template/sphere_particle/5
    function ui:tmw/237/misc/particle_paint
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.6 0
    particle flash ~ ~ ~ 0 0 0 0 1 force

# 塗りポイント加算
    execute if entity @s[tag=!tmw237_sub_nopoint] as @a if score @s ui_id = $id ui_temp run function ui:tmw/237/misc/player_paint

# パーティクルと本体を消去
    scoreboard players set $Cache ui_temp 1
    teleport @e[tag=ui_temp_obj] ~ -300 ~
    kill @e[tag=ui_temp_obj]