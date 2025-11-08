execute if entity @s[tag=!tmw_237_proj_first] run data modify entity @s ArmorItems[3] set value {id:carrot_on_a_stick,Count:1b,tag:{CustomModelData:110878}}
#execute if entity @s[tag=!tmw_237_proj_first] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
#execute if entity @s[tag=!tmw_237_proj_first] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
execute if entity @s[tag=!tmw_237_proj_first] run tag @s add tmw_237_proj_first

particle dust 1 1 0.5 0.8 ~ ~ ~ 0 0 0 0 1 force
particle block yellow_concrete ~ ~ ~ 0 0 0 0 1 force
execute store result score $paint ui_temp run fill ~ ~ ~ ~ ~-1 ~ yellow_wool replace #ui:wools