# ナイスダマ

# ダメージを与える
    data modify storage ui:temp Name set value '{"text":"ナイスダマ","color":"gold"}'
    scoreboard players set $damage_type ui_temp 3
    scoreboard players operation $damage ui_temp = @s ui_dmg
    execute if score @s ui_is matches 1..6 run execute at @e[distance=..1.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 7..12 run execute at @e[distance=..2.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 13..18 run execute at @e[distance=..3.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 19..24 run execute at @e[distance=..4.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 25..30 run execute at @e[distance=..5.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 31..36 run execute at @e[distance=..6.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 37..42 run execute at @e[distance=..7.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 43..48 run execute at @e[distance=..8.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 49..54 run execute at @e[distance=..9.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_is matches 55.. run execute at @e[distance=..10.0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker

# 演出
    execute if score @s ui_is matches 1 run playsound entity.wither.death player @a ~ ~ ~ 0.5 1.5 0
    execute if score @s ui_is matches 1 run playsound block.beacon.activate player @a ~ ~ ~ 1 0.5 0
    execute if score @s ui_is matches 1 run playsound block.beacon.power_select player @a ~ ~ ~ 1.5 1.2 0

# 初期処理
    execute if score @s ui_is matches 1 run data merge storage ui:common {input:{Mode:"create",Var:-10028}}
    execute if score @s ui_is matches 1 run function ui:common/particle
    execute if score @s ui_is matches 1 run tag @e[tag=ui_common_particle,sort=nearest,limit=1] add ui_temp_this
    execute if score @s ui_is matches 1 run tag @e[tag=ui_common_particle,sort=nearest,limit=1] add ui_temp_obj
    execute if score @s ui_is matches 1 run teleport @e[tag=ui_common_particle,sort=nearest,limit=1] ~ ~0.01 ~
    execute if score @s ui_is matches 1 run data merge storage ui:common {input:{Mode:"create",Var:-10028}}
    execute if score @s ui_is matches 1 run function ui:common/particle
    execute if score @s ui_is matches 1 run tag @e[tag=ui_common_particle,sort=nearest,limit=1] add ui_temp_this
    execute if score @s ui_is matches 1 run tag @e[tag=ui_common_particle,sort=nearest,limit=1] add ui_temp_obj
    execute if score @s ui_is matches 1 run teleport @e[tag=ui_common_particle,sort=nearest,limit=1] ~ ~0.01 ~ ~90 ~
    #idコピー
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_id = $id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_obj_id = $obj_id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_team = $team ui_temp
    tag @e[tag=ui_temp_this] remove ui_temp_this