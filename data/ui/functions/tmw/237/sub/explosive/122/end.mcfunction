# ハッキングボム

# ダメージを与える
    execute if score $team ui_temp matches 1 run data modify storage ui:temp Name set value '{"text":"ハッキングボム","color":"aqua"}'
    execute if score $team ui_temp matches 2 run data modify storage ui:temp Name set value '{"text":"ハッキングボム","color":"light_purple"}'
    execute if score $team ui_temp matches 3 run data modify storage ui:temp Name set value '{"text":"ハッキングボム","color":"yellow"}'
    execute if score $team ui_temp matches 4 run data modify storage ui:temp Name set value '{"text":"ハッキングボム","color":"green"}'
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 30
    execute at @e[distance=..6,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute as @a[distance=..6,tag=!ui_temp_team] run scoreboard players set @s ui_tmw237_title_jammer 200
    execute as @a[distance=..6,tag=!ui_temp_team] if score $module ui_world matches 1 run scoreboard players set @s[scores={module=40}] ui_tmw237_title_jammer 300

# パーティクルで描画、演出
    function ui:template/sphere_particle/1.5
    function ui:tmw/237/misc/particle_paint
    particle firework ~ ~ ~ 0.5 0.5 0.5 0.1 20 force
    playsound entity.generic.explode player @a ~ ~ ~ 1 1.8 0
    playsound entity.guardian.attack player @a ~ ~ ~ 1 0.5 0
    
# 塗りポイント加算
    execute if entity @s[tag=!tmw237_sub_nopoint] as @a if score @s ui_id = $id ui_temp run function ui:tmw/237/misc/player_paint

# パーティクルと本体を消去
    scoreboard players set $Cache ui_temp 1
    kill @s