# 死亡時インク爆発

# ダメージを与える
    scoreboard players operation $Attacker tds_dmg = $id ui_temp
    execute if score $module ui_world matches 1 if entity @s[scores={module=8..9}] run scoreboard players operation $Attacker tds_dmg = @s ui_temp
    tag @e[tag=ui_temp_team] remove ui_temp_team
    execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team
    #data modify storage ui:temp Name set value ""
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 60
    execute at @e[distance=2.5..5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.undeath
    scoreboard players set $damage ui_temp 150
    execute at @e[distance=..2.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.undeath

# パーティクルで描画、演出
    function ui:template/sphere_particle/4.5
    function ui:tmw/237/misc/death_particle_paint
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.8 0

# 塗りポイント加算
    execute as @a if score @s ui_id = $id ui_temp run function ui:tmw/237/misc/player_paint
