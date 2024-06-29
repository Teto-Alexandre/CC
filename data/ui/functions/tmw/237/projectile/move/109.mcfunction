# 見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/109/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/109/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/109/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/109/4

#
    scoreboard players set #success ui_temp 0
    execute at @s[tag=!tmw237_reflected] unless block ~ ~0.75 ~ #ui:nocol_excludes_irons store success score #success ui_temp run tag @s add tmw237_reflected.up
    execute at @s[tag=!tmw237_reflected] unless block ~ ~-0.75 ~ #ui:nocol_excludes_irons store success score #success ui_temp run tag @s add tmw237_reflected.down
    execute at @s[tag=!tmw237_reflected] unless block ~0.75 ~ ~ #ui:nocol_excludes_irons store success score #success ui_temp run tag @s add tmw237_reflected.east
    execute at @s[tag=!tmw237_reflected] unless block ~-0.75 ~ ~ #ui:nocol_excludes_irons store success score #success ui_temp run tag @s add tmw237_reflected.west
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~0.75 #ui:nocol_excludes_irons store success score #success ui_temp run tag @s add tmw237_reflected.south
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~-0.75 #ui:nocol_excludes_irons store success score #success ui_temp run tag @s add tmw237_reflected.north
    #execute store result score $rotation_x ui_temp run data get entity @s Rotation.[0]
    #execute store result score $rotation_y ui_temp run data get entity @s Rotation.[1]
    #execute if score #success ui_temp matches 1 run tellraw @a [{"score":{"name":"$rotation_x","objective":"ui_temp"}},{"text":","},{"score":{"name":"$rotation_y","objective":"ui_temp"}}]
    tag @s[tag=tmw237_reflected] remove tmw237_reflected
    execute if score #success ui_temp matches 1 run tag @s add tmw237_reflected
    execute if entity @s[tag=tmw237_reflected] at @s run function ui:tmw/237/projectile/move/109/reflect
    scoreboard players add @s ui_is2 1
    execute if score @s ui_is2 matches 30.. run tag @s add tmw_237_proj_del

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
