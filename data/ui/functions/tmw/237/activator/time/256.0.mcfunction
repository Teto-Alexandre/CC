# チャクチ

# ダメージを与える
    data modify storage ui:temp Name set value '{"text":"スーパーチャクチ","color":"gold"}'
    function ui:tmw/237/misc/temp_team
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 60
    execute at @e[distance=6.5..8,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 160
    execute at @e[distance=5..6.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 540
    execute at @e[distance=..5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    tag @e[tag=ui_temp_team] remove ui_temp_team

# パーティクルで描画、演出
    function ui:template/sphere_particle/6
    function ui:tmw/237/misc/particle_paint
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.8 0

# 無敵解除
    effect clear @s resistance

# スペシャル解除
    execute if score $activator_type ui_temp matches 1 run scoreboard players set $subtime ui_temp 0
    execute if score $activator_type ui_temp matches 2 run scoreboard players set $sptime ui_temp 0