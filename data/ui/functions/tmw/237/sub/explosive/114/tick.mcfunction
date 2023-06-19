# カーリングボム

# 常時実行
    execute if score @s ui_uses matches 2 run playsound block.lever.click player @a ~ ~ ~ 1 0.9 0
    execute if score @s ui_uses matches 25 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1.5 1.5 0
    execute if score @s ui_uses matches 30 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1.5 1.5 0
    execute if score @s ui_uses matches 35 run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1.5 1.5 0
    execute if score @s ui_uses matches 40.. run tag @s add ui_237_sub_explode
    execute if score @s ui_uses matches 3.. positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0,dy=0,dz=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] run tag @s add ui_237_sub_explode

# 反射
    execute store result score $rotation_x ui_temp run data get entity @s Rotation.[0]
    scoreboard players set $success ui_temp 0
    execute at @s[tag=!tmw237_reflected] unless block ~0.5 ~0.5 ~ #ui:nocol store result entity @s Rotation.[0] float -1 store success score $success ui_temp run scoreboard players get $rotation_x ui_temp
    execute at @s[tag=!tmw237_reflected] unless block ~-0.5 ~0.5 ~ #ui:nocol store result entity @s Rotation.[0] float -1 store success score $success ui_temp run scoreboard players get $rotation_x ui_temp
    execute at @s[tag=!tmw237_reflected] unless block ~ ~0.5 ~0.5 #ui:nocol store result score $rotation_x ui_temp run data get entity @s Rotation.[0] -1
    execute at @s[tag=!tmw237_reflected] unless block ~ ~0.5 ~0.5 #ui:nocol store result entity @s Rotation.[0] float 1 store success score $success ui_temp run scoreboard players operation $rotation_x ui_temp -= #180 ui_num
    execute at @s[tag=!tmw237_reflected] unless block ~ ~0.5 ~-0.5 #ui:nocol store result score $rotation_x ui_temp run data get entity @s Rotation.[0] -1
    execute at @s[tag=!tmw237_reflected] unless block ~ ~0.5 ~-0.5 #ui:nocol store result entity @s Rotation.[0] float 1 store success score $success ui_temp run scoreboard players operation $rotation_x ui_temp -= #180 ui_num
    tag @s[tag=tmw237_reflected] remove tmw237_reflected
    execute if score $success ui_temp matches 1 run tag @s add tmw237_reflected

# 加速
    execute if score @s ui_uses matches 3.. rotated ~ 30 run function ui:template/accelerator/1
    #ride @p mount @s

#
    execute if score $team ui_temp matches 1 store result score $paint ui_temp run fill ~-0.1 ~ ~-0.1 ~0.1 ~-3 ~0.1 light_blue_wool replace #ui:wools
    execute if score $team ui_temp matches 2 store result score $paint ui_temp run fill ~-0.1 ~ ~-0.1 ~0.1 ~-3 ~0.1 pink_wool replace #ui:wools
    execute if score $team ui_temp matches 3 store result score $paint ui_temp run fill ~-0.1 ~ ~-0.1 ~0.1 ~-3 ~0.1 yellow_wool replace #ui:wools
    execute if score $team ui_temp matches 4 store result score $paint ui_temp run fill ~-0.1 ~ ~-0.1 ~0.1 ~-3 ~0.1 lime_wool replace #ui:wools
    execute if entity @s[tag=!tmw237_sub_nopoint] as @a if score @s ui_id = $id ui_temp run function ui:tmw/237/misc/player_paint
    execute if entity @s[tag=tmw237_sub_nopoint] as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/114/end