# ナイスダマ

# ダメージを与える
    execute if score $team ui_temp matches 1 run data modify storage ui:temp Name set value '{"text":"ナイスダマ","color":"gold"}'
    scoreboard players set $damage_type ui_temp 3
    scoreboard players operation $damage ui_temp = @s ui_dmg
    execute if score @s ui_is matches 35 run scoreboard players set $damage ui_temp 250
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
    execute if score @s ui_is matches 36 run execute at @e[distance=..9.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker

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
    execute if score @s ui_is matches 19..20 run kill @e[tag=ui_temp_particle,distance=..5]
    execute if score @s ui_is matches 36 run function ui:template/sphere_particle/9
    execute if score @s ui_is matches 36 run kill @e[tag=ui_temp_particle,distance=..6]
    function ui:tmw/237/misc/particle_paint
    execute if score @s ui_is matches 1..35 as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp
    execute if score @s ui_is matches 1..20 run playsound entity.generic.explode player @a ~ ~ ~ 1 1.5 0
    execute if score @s ui_is matches 20 run playsound block.beacon.activate player @a ~ ~ ~ 1.2 2 0
    execute if score @s ui_is matches 36 run playsound entity.generic.explode player @a ~ ~ ~ 1 1.5 0
    execute if score @s ui_is matches 21 run data merge storage ui:common {input:{Mode:"create",Var:-10028}}
    execute if score @s ui_is matches 21 run function ui:common/particle

# 塗りポイント加算

# パーティクルと本体を消去