# 見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/109/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/109/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/109/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/109/4

# 当たり判定拡張
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^0.4 ^ ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^0.6 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^-0.4 ^ ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^-0.6 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^0.4 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^0.6 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^-0.4 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^-0.6 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit

#
    execute at @s positioned ~ ~-1 ~ run effect give @e[distance=..1.5,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!tds_nolog,tag=!module19] glowing 6 0 false
    execute at @s positioned ~ ~-1 ~ run effect give @e[distance=..1.5,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!tds_nolog,tag=!module19] fire_resistance 6 0 false
    execute at @s positioned ~ ~-1 ~ run effect give @e[distance=..1.5,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!tds_nolog,tag=module19] glowing 3 0 false
    execute at @s positioned ~ ~-1 ~ run effect give @e[distance=..1.5,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!tds_nolog,tag=module19] fire_resistance 3 0 false

#
    execute store result score $rotation_x ui_temp run data get entity @s Rotation.[0]
    scoreboard players set $success ui_temp 0
    execute at @s[tag=!tmw237_reflected] unless block ~ ~0.75 ~ #ui:nocol store result entity @s Rotation.[1] float -1 store success score $success ui_temp run data get entity @s Rotation.[1]
    execute at @s[tag=!tmw237_reflected] unless block ~ ~-0.75 ~ #ui:nocol store result entity @s Rotation.[1] float -1 store success score $success ui_temp run data get entity @s Rotation.[1]
    execute at @s[tag=!tmw237_reflected] unless block ~0.75 ~ ~ #ui:nocol store result entity @s Rotation.[0] float -1 store success score $success ui_temp run scoreboard players get $rotation_x ui_temp
    execute at @s[tag=!tmw237_reflected] unless block ~-0.75 ~ ~ #ui:nocol store result entity @s Rotation.[0] float -1 store success score $success ui_temp run scoreboard players get $rotation_x ui_temp
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~0.75 #ui:nocol store result score $rotation_x ui_temp run data get entity @s Rotation.[0] -1
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~0.75 #ui:nocol store result entity @s Rotation.[0] float 1 store success score $success ui_temp run scoreboard players operation $rotation_x ui_temp -= #180 ui_num
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~-0.75 #ui:nocol store result score $rotation_x ui_temp run data get entity @s Rotation.[0] -1
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~-0.75 #ui:nocol store result entity @s Rotation.[0] float 1 store success score $success ui_temp run scoreboard players operation $rotation_x ui_temp -= #180 ui_num
    #execute store result score $rotation_x ui_temp run data get entity @s Rotation.[0]
    #execute store result score $rotation_y ui_temp run data get entity @s Rotation.[1]
    #execute if score $success ui_temp matches 1 run tellraw @a [{"score":{"name":"$rotation_x","objective":"ui_temp"}},{"text":","},{"score":{"name":"$rotation_y","objective":"ui_temp"}}]
    tag @s[tag=tmw237_reflected] remove tmw237_reflected
    execute if score $success ui_temp matches 1 run tag @s add tmw237_reflected
    execute if entity @s[tag=tmw237_reflected] run function ui:tmw/237/projectile/move/109/reflect

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
