# ナイスダマ

# ダメージを与える
    execute if score $team ui_temp matches 1 run data modify storage ui:temp Name set value '{"text":"ナイスダマ","color":"gold"}'
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 35
    execute if score @s ui_is matches 1..2 run execute at @e[distance=..2.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 3..4 run execute at @e[distance=..2.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 5..6 run execute at @e[distance=..3.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 7..8 run execute at @e[distance=..3.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 9..10 run execute at @e[distance=..4.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 11..12 run execute at @e[distance=..4.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 13..14 run execute at @e[distance=..5.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 15..16 run execute at @e[distance=..5.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 17..18 run execute at @e[distance=..6.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 19..20 run execute at @e[distance=..6.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker

# パーティクルで描画、演出
    execute if score @s ui_is matches 1..2 run function ui:template/sphere_particle/1.5
    execute if score @s ui_is matches 3..4 run function ui:template/sphere_particle/2
    execute if score @s ui_is matches 5..6 run function ui:template/sphere_particle/2.5
    execute if score @s ui_is matches 7..8 run function ui:template/sphere_particle/3
    execute if score @s ui_is matches 9..10 run function ui:template/sphere_particle/3.5
    execute if score @s ui_is matches 11..12 run function ui:template/sphere_particle/4
    execute if score @s ui_is matches 13..14 run function ui:template/sphere_particle/4.5
    execute if score @s ui_is matches 15..16 run function ui:template/sphere_particle/5
    execute if score @s ui_is matches 17..18 run function ui:template/sphere_particle/5.5
    execute if score @s ui_is matches 19..20 run function ui:template/sphere_particle/6
    function ui:tmw/237/misc/particle_paint
    execute if score @s ui_is matches 1..20 as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp
    playsound entity.generic.explode player @a ~ ~ ~ 1 1.5 0

# 塗りポイント加算

# パーティクルと本体を消去