# これです
    tag @s add ui_temp_this
# 移動維持
    execute at @s run teleport @s ~ ~ ~ ~ ~5
    scoreboard players set @s ui_bcp 0
# 当たり判定拡張
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^0.4 ^ ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^0.6 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^-0.4 ^ ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^-0.6 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^0.4 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^0.6 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^-0.4 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^-0.6 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^ ^0.4 positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^0.6 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^ ^-0.4 positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^-0.6 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
# 見た目
    scoreboard players reset $paint.total
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/13/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/13/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/13/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/13/4
    scoreboard players operation $paint.total ui_temp += $paint ui_temp
# 時間カウント
    scoreboard players add @s ui_is 5
# 壁接触時
    execute store result score $rotation_x ui_temp run data get entity @s Rotation.[0]
    scoreboard players set $success ui_temp 0
    execute at @s[tag=!tmw237_reflected] unless block ~ ~0.5 ~ #ui:nocol store result entity @s Rotation.[1] float 1 store success score $success ui_temp run data get entity @s Rotation.[1]
    execute at @s[tag=!tmw237_reflected] unless block ~ ~-0.5 ~ #ui:nocol run teleport @s ~ ~ ~ ~ ~1
    execute at @s[tag=!tmw237_reflected] unless block ~ ~-0.5 ~ #ui:nocol store result entity @s Rotation.[1] float -0.9 store success score $success ui_temp run data get entity @s Rotation.[1]
    execute at @s[tag=!tmw237_reflected] unless block ~0.5 ~ ~ #ui:nocol store result entity @s Rotation.[0] float -1 store success score $success ui_temp run scoreboard players get $rotation_x ui_temp
    execute at @s[tag=!tmw237_reflected] unless block ~-0.5 ~ ~ #ui:nocol store result entity @s Rotation.[0] float -1 store success score $success ui_temp run scoreboard players get $rotation_x ui_temp
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~0.5 #ui:nocol store result score $rotation_x ui_temp run data get entity @s Rotation.[0] -1
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~0.5 #ui:nocol store result entity @s Rotation.[0] float 1 store success score $success ui_temp run scoreboard players operation $rotation_x ui_temp -= #180 ui_num
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~-0.5 #ui:nocol store result score $rotation_x ui_temp run data get entity @s Rotation.[0] -1
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~-0.5 #ui:nocol store result entity @s Rotation.[0] float 1 store success score $success ui_temp run scoreboard players operation $rotation_x ui_temp -= #180 ui_num
    tag @s[tag=tmw237_reflected] remove tmw237_reflected
    execute if score $success ui_temp matches 1 run tag @s add tmw237_reflected
    execute if score $success ui_temp matches 1 if score $team ui_temp matches 1 store result score $paint ui_temp run fill ~-0.7 ~-1.2 ~-0.7 ~0.7 ~0.7 ~0.7 light_blue_wool replace #ui:wools
    execute if score $success ui_temp matches 1 if score $team ui_temp matches 2 store result score $paint ui_temp run fill ~-0.7 ~-1.2 ~-0.7 ~0.7 ~0.7 ~0.7 pink_wool replace #ui:wools
    execute if score $success ui_temp matches 1 if score $team ui_temp matches 3 store result score $paint ui_temp run fill ~-0.7 ~-1.2 ~-0.7 ~0.7 ~0.7 ~0.7 yellow_wool replace #ui:wools
    execute if score $success ui_temp matches 1 if score $team ui_temp matches 4 store result score $paint ui_temp run fill ~-0.7 ~-1.2 ~-0.7 ~0.7 ~0.7 ~0.7 lime_wool replace #ui:wools
    scoreboard players operation $paint.total ui_temp += $paint ui_temp
# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
    execute if score @s[tag=tmw237_reflected] ui_is matches 500.. run function ui:tmw/237/projectile/kill
#
    tag @s remove ui_temp_this