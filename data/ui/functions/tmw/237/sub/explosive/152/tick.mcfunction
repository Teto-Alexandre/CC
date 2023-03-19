# アメフラシ

# 常時実行
    execute if score @s ui_uses matches 2 run playsound block.lever.click player @a ~ ~ ~ 1 0.9 0
    execute if score @s ui_uses matches 20 run playsound entity.firework_rocket.launch player @a ~ ~ ~ 2 0.6 0
    #execute if score @s ui_is matches 1.. run teleport @s ~ ~0.5 ~ ~ ~
    execute if score @s ui_is matches 40.. run tag @s add ui_237_sub_stop2
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 1 run particle dust 0.5 1 1 3 ~ ~ ~ 4 1 4 0 10 force
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 2 run particle dust 1 0.5 1 3 ~ ~ ~ 4 1 4 0 10 force
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 3 run particle dust 1 1 0.5 3 ~ ~ ~ 4 1 4 0 10 force
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 3 ~ ~ ~ 4 1 4 0 10 force
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 1 run particle block light_blue_concrete ~ ~-3 ~ 4 2 4 0 10 force
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 2 run particle block pink_concrete ~ ~-3 ~ 4 2 4 0 10 force
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 3 run particle block yellow_concrete ~ ~-3 ~ 4 2 4 0 10 force
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 4 run particle block lime_concrete ~ ~-3 ~ 4 2 4 0 10 force
    execute if score @s ui_is2 matches 1.. run teleport @s ^ ^ ^0.14 ~ 0
    execute if score @s ui_is2 matches 1.. run function ui:template/circle_particle/8
    scoreboard players set $temp ui_temp 0
    execute if score @s ui_is2 matches 1.. positioned ~ ~-10 ~ as @a[distance=..8] unless score @s ui_team = $temp ui_temp run scoreboard players operation @s tds_recent_attacked_by = $id ui_temp
    #execute if score @s ui_is2 matches 1.. at @e[tag=ui_temp_particle,sort=random,limit=3] rotated ~ 90 run function ui:tmw/237/sub/explosive/152/rain
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 1 at @e[tag=ui_temp_particle,sort=random,limit=1] store result score $temp ui_temp run fill ~ ~ ~ ~ ~-25 ~ light_blue_wool replace #ui:wools
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 2 at @e[tag=ui_temp_particle,sort=random,limit=1] store result score $temp ui_temp run fill ~ ~ ~ ~ ~-25 ~ pink_wool replace #ui:wools
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 3 at @e[tag=ui_temp_particle,sort=random,limit=1] store result score $temp ui_temp run fill ~ ~ ~ ~ ~-25 ~ yellow_wool replace #ui:wools
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 4 at @e[tag=ui_temp_particle,sort=random,limit=1] store result score $temp ui_temp run fill ~ ~ ~ ~ ~-25 ~ lime_wool replace #ui:wools
    scoreboard players operation $paint ui_temp = $temp ui_temp
    scoreboard players set $temp ui_temp 0
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 1 at @e[tag=ui_temp_particle,sort=random,limit=1] store result score $temp ui_temp run fill ~ ~ ~ ~ ~-25 ~ light_blue_wool replace #ui:wools
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 2 at @e[tag=ui_temp_particle,sort=random,limit=1] store result score $temp ui_temp run fill ~ ~ ~ ~ ~-25 ~ pink_wool replace #ui:wools
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 3 at @e[tag=ui_temp_particle,sort=random,limit=1] store result score $temp ui_temp run fill ~ ~ ~ ~ ~-25 ~ yellow_wool replace #ui:wools
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 4 at @e[tag=ui_temp_particle,sort=random,limit=1] store result score $temp ui_temp run fill ~ ~ ~ ~ ~-25 ~ lime_wool replace #ui:wools
    scoreboard players operation $paint ui_temp += $temp ui_temp
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp
    execute if score @s ui_is2 matches 1.. run kill @e[tag=ui_temp_particle]
    execute if score @s ui_is2 matches 400.. run tag @s add ui_237_sub_explode

# 処理終了
    execute if score @s ui_uses matches 20.. run tag @s add ui_237_sub_stop
    execute as @s[tag=ui_237_sub_stop] run scoreboard players add @s ui_is 1
    execute as @s[tag=ui_237_sub_stop,scores={ui_is=1..20}] run data merge entity @s {NoGravity:1b,Motion:[0.0d,0.6d,0.0d]}
    execute as @s[tag=ui_237_sub_stop2] run scoreboard players add @s ui_is2 1
    execute as @s[tag=ui_237_sub_stop2,scores={ui_is2=1}] run data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0001d,0.0d]}

# 処理終了（消える）
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/152/end