# 見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/106/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/106/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/106/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/106/4

#
    data modify storage ui:temp Effect set value [{id:"glowing",duration:100,amplifier:0b}]
    execute at @s positioned ~ ~-1 ~ as @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!tds_nolog] run function ui:tmw/237/misc/giveeffect/

#
    execute store result score $rotation_x ui_temp run data get entity @s Rotation.[0]
    scoreboard players set $success ui_temp 0
    execute at @s[tag=!tmw237_reflected] unless block ~ ~0.5 ~ #ui:nocol_excludes_irons store result entity @s Rotation.[1] float -1 store success score $success ui_temp run data get entity @s Rotation.[1]
    execute at @s[tag=!tmw237_reflected] unless block ~ ~-0.5 ~ #ui:nocol_excludes_irons store result entity @s Rotation.[1] float -1 store success score $success ui_temp run data get entity @s Rotation.[1]
    execute at @s[tag=!tmw237_reflected] unless block ~0.5 ~ ~ #ui:nocol_excludes_irons store result entity @s Rotation.[0] float -1 store success score $success ui_temp run scoreboard players get $rotation_x ui_temp
    execute at @s[tag=!tmw237_reflected] unless block ~-0.5 ~ ~ #ui:nocol_excludes_irons store result entity @s Rotation.[0] float -1 store success score $success ui_temp run scoreboard players get $rotation_x ui_temp
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~0.5 #ui:nocol_excludes_irons store result score $rotation_x ui_temp run data get entity @s Rotation.[0] -1
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~0.5 #ui:nocol_excludes_irons store result entity @s Rotation.[0] float 1 store success score $success ui_temp run scoreboard players operation $rotation_x ui_temp -= #180 ui_num
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~-0.5 #ui:nocol_excludes_irons store result score $rotation_x ui_temp run data get entity @s Rotation.[0] -1
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~-0.5 #ui:nocol_excludes_irons store result entity @s Rotation.[0] float 1 store success score $success ui_temp run scoreboard players operation $rotation_x ui_temp -= #180 ui_num
    #execute store result score $rotation_x ui_temp run data get entity @s Rotation.[0]
    #execute store result score $rotation_y ui_temp run data get entity @s Rotation.[1]
    #execute if score $success ui_temp matches 1 run tellraw @a [{"score":{"name":"$rotation_x","objective":"ui_temp"}},{"text":","},{"score":{"name":"$rotation_y","objective":"ui_temp"}}]
    tag @s[tag=tmw237_reflected] remove tmw237_reflected
    execute if score $success ui_temp matches 1 run tag @s add tmw237_reflected

    execute if entity @s[tag=tmw237_reflected] run function ui:tmw/237/projectile/killeffect/11
    execute as @a if score @s ui_id = $id ui_temp run function ui:tmw/237/misc/player_paint

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
