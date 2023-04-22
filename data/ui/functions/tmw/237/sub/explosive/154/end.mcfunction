# インクタレット

# ダメージを与える
    data modify storage ui:temp Name set value '{"text":"ガトリングタレット","color":"gold"}'
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 60
    execute at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker

# パーティクルで描画、演出
    function ui:template/sphere_particle/2
    function ui:tmw/237/misc/particle_paint
    particle crit ~ ~1 ~ 0.5 0.5 0.5 0.5 30 force
    playsound entity.shulker_bullet.hurt player @a ~ ~ ~ 1 1.2 0
    playsound entity.generic.explode player @a ~ ~ ~ 1 2 0

# 塗りポイント加算
    execute if entity @s[tag=!tmw237_sub_nopoint] as @a if score @s ui_id = $id ui_temp run function ui:tmw/237/misc/player_paint

# パーティクルと本体を消去
    scoreboard players set $Cache ui_temp 1
    teleport @e[tag=ui_temp_obj] ~ -300 ~
    kill @e[tag=ui_temp_obj]
