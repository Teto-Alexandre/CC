# トラップ

# ダメージを与える
    execute if score $team ui_temp matches 1 run data modify storage ui:temp Name set value '{"text":"トラップ","color":"aqua"}'
    execute if score $team ui_temp matches 2 run data modify storage ui:temp Name set value '{"text":"トラップ","color":"light_purple"}'
    execute if score $team ui_temp matches 3 run data modify storage ui:temp Name set value '{"text":"トラップ","color":"yellow"}'
    execute if score $team ui_temp matches 4 run data modify storage ui:temp Name set value '{"text":"トラップ","color":"green"}'
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 60
    execute at @e[distance=3..5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 150
    execute at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute as @e[distance=..5,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_resistance,nbt=!{Invulnerable:1b},tag=!tds_nolog,tag=!module19] run effect give @s glowing 4 0
    execute as @e[distance=..5,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_resistance,nbt=!{Invulnerable:1b},tag=!tds_nolog,tag=module19] run effect give @s glowing 2 0

# パーティクルで描画、演出
    function ui:template/sphere_particle/3.5
    function ui:tmw/237/misc/particle_paint
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.8 0
    particle flash ~ ~ ~ 0 0 0 0 1 force

# 塗りポイント加算
    execute as @a if score @s ui_id = $id ui_temp run function ui:tmw/237/misc/player_paint
    execute as @a if score @s ui_id = $id ui_temp run playsound block.note_block.bell player @s ~ ~ ~ 0.8 1 0.8

# パーティクルと本体を消去
    scoreboard players set $Cache ui_temp 1
    kill @s