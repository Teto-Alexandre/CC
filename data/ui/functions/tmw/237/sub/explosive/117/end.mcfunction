# チョコレートボム

# ダメージを与える
    data modify storage ui:temp Name set value '{"text":"チョコレートボム・ブラック","color":"white"}'
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 180
    execute at @e[distance=2.5..4,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 720
    execute at @e[distance=..2.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker

# パーティクルで描画、演出
    function ui:template/sphere_particle/3
    execute at @e[tag=ui_temp_particle] run particle dust 0 0 0 1 ~ ~ ~ 0 0 0 0 1 force
    execute at @e[tag=ui_temp_particle] run particle block black_concrete ~ ~ ~ 0 0 0 0 1 force
    execute at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ black_wool replace #ui:wools
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.6 0
    particle flash ~ ~ ~ 0 0 0 0 1 force

# パーティクルと本体を消去
    kill @s
