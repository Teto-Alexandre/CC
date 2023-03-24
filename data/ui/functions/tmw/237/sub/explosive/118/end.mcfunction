# チョコレートボム

# ダメージを与える
    data modify storage ui:temp Name set value '{"text":"チョコレートボム・ホワイト","color":"white"}'
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 60
    execute at @e[distance=3..6,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 360
    execute at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker

# パーティクルで描画、演出
    function ui:template/sphere_particle/5
    execute at @e[tag=ui_temp_particle] run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute at @e[tag=ui_temp_particle] run particle block white_concrete ~ ~ ~ 0 0 0 0 1 force
    execute at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ white_wool replace #ui:wools_include_black
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.5 0
    particle flash ~ ~ ~ 0 0 0 0 1 force

# パーティクルと本体を消去
    scoreboard players set $Cache ui_temp 1
    kill @s

#
scoreboard players set $paint ui_temp 0
scoreboard players set $team ui_temp -1
