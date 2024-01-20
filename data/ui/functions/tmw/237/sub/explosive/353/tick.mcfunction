# イルカライド

tag @s add ui_temp_this_iruka
execute as @a if score @s ui_id = $id ui_temp run tag @s add ui_temp_player_iruka

# 最初idがないなら生成
    execute unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id

# idを共有
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id

# 同idにタグ付与
    execute as @e if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_obj

#
    execute if score @s ui_is matches 1 run data modify storage ui:temp Effect set value [{id:"resistance",duration:60,amplifier:4b}]
    execute if score @s ui_is matches 1 run execute as @a[tag=ui_temp_player_iruka] run function ui:tmw/237/misc/giveeffect/
    execute as @s[tag=!ui_237_sub_first] run playsound block.beacon.activate player @a ~ ~ ~ 1 2 0
    execute as @s[tag=!ui_237_sub_first] run data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0001d,0.0d],Item:{id:"gray_stained_glass_pane",tag:{CustomModelData:120001}}}
    execute as @s[tag=!ui_237_sub_first] run summon dolphin ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_353_1","tmw_237_sub_mult","ui_temp_obj","tds_nolog","ui_temp_team"],DeathLootTable:"none",Invulnerable:1b,Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.attack_damage",Base:0}],Health:1000f,Silent:1}
    execute as @s[tag=!ui_237_sub_first] run ride @a[tag=ui_temp_player_iruka,limit=1] mount @e[tag=ui_temp_this,tag=tmw_237_sub_353_1,sort=nearest,limit=1]
    execute as @s[tag=!ui_237_sub_first] run tag @s add ui_237_sub_first
    #idコピー
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_id = $id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_obj_id = $obj_id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_team = $team ui_temp
    execute as @e[tag=ui_temp_this] if score $team ui_temp matches 1 run team join blue @s
    execute as @e[tag=ui_temp_this] if score $team ui_temp matches 2 run team join red @s
    execute as @e[tag=ui_temp_this] if score $team ui_temp matches 3 run team join yellow @s
    execute as @e[tag=ui_temp_this] if score $team ui_temp matches 4 run team join green @s
    execute as @e[tag=ui_temp_this] if score $team ui_temp matches 1 rotated ~ ~ run function ui:tmw/237/sub/explosive/353/1
    execute as @e[tag=ui_temp_this] if score $team ui_temp matches 2 rotated ~ ~ run function ui:tmw/237/sub/explosive/353/2
    execute as @e[tag=ui_temp_this] if score $team ui_temp matches 3 rotated ~ ~ run function ui:tmw/237/sub/explosive/353/3
    execute as @e[tag=ui_temp_this] if score $team ui_temp matches 4 rotated ~ ~ run function ui:tmw/237/sub/explosive/353/4
    tag @e[tag=ui_temp_this] remove ui_temp_this
    #ダメージ計算
    scoreboard players add @s ui_is 1

# 常時実行
    #execute if score @s ui_is matches 8.. if entity @e[distance=..1.9,tag=!ui_temp_team,predicate=ui:load_unhurtable] run tag @s add ui_237_sub_explode

# 反射
    execute store result score $rotation_x ui_temp run data get entity @s Rotation.[0]
    scoreboard players set $success ui_temp 0
    tag @s add ui_237_sub_explode
    execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_353_1] on passengers run tag @e[tag=ui_temp_this_iruka] remove ui_237_sub_explode
    execute if score @s ui_is matches 60.. run tag @s add ui_237_sub_explode
    #execute if score @s ui_is matches 7.. unless block ~ ~2.5 ~ #ui:nocol run tag @s add ui_237_sub_explode
    #execute if score @s ui_is matches 7.. unless block ~0.5 ~0.5 ~ #ui:nocol run tag @s add ui_237_sub_explode
    #execute if score @s ui_is matches 7.. unless block ~-0.5 ~0.5 ~ #ui:nocol run tag @s add ui_237_sub_explode
    #execute if score @s ui_is matches 7.. unless block ~ ~-0.5 ~-0.5 #ui:nocol run tag @s add ui_237_sub_explode
    #execute if score @s ui_is matches 7.. unless block ~ ~0.5 ~-0.5 #ui:nocol run tag @s add ui_237_sub_explode
    tag @s[tag=tmw237_reflected] remove tmw237_reflected
    execute if score $success ui_temp matches 1 run tag @s add tmw237_reflected
    teleport @e[tag=ui_temp_obj,tag=tmw_237_sub_353_1] @s
    execute as @e[tag=ui_temp_obj,tag=!ui_237_sub_explode,tag=tmw_237_sub_353_1] at @s rotated as @a[tag=ui_temp_player_iruka] run teleport @s ~ ~0.5 ~ ~ 0

tag @s remove ui_temp_this_iruka

# 加速
    execute if score @s ui_is matches 3 run playsound entity.warden.sonic_boom player @a ~ ~ ~ 1 1.5 0
    execute if score @s ui_is matches 3 run particle firework ~ ~ ~ 1 1 1 0.02 100 force
    execute if score @s ui_is matches 3.. rotated ~ ~ run function ui:template/accelerator/1.5
    #execute if score @s ui_is matches 3.. run data merge entity @s {NoGravity:0b}
    execute if score @s ui_is matches 4.. run playsound block.stone.break player @a ~ ~ ~ 1 1 0
    execute if score @s ui_is matches 4.. run particle sweep_attack ~ ~0.1 ~ 1 0 1 0 1 force
#
    execute if score $team ui_temp matches 1 store result score $paint ui_temp run fill ~-0.5 ~1 ~-0.5 ~0.5 ~-4 ~0.5 light_blue_wool replace #ui:wools
    execute if score $team ui_temp matches 2 store result score $paint ui_temp run fill ~-0.5 ~1 ~-0.5 ~0.5 ~-4 ~0.5 pink_wool replace #ui:wools
    execute if score $team ui_temp matches 3 store result score $paint ui_temp run fill ~-0.5 ~1 ~-0.5 ~0.5 ~-4 ~0.5 yellow_wool replace #ui:wools
    execute if score $team ui_temp matches 4 store result score $paint ui_temp run fill ~-0.5 ~1 ~-0.5 ~0.5 ~-4 ~0.5 lime_wool replace #ui:wools
    execute if entity @s[tag=!tmw237_sub_nopoint] as @a[tag=ui_temp_player_iruka] run function ui:tmw/237/misc/player_paint
    execute if entity @s[tag=tmw237_sub_nopoint] as @a[tag=ui_temp_player_iruka] run scoreboard players operation @s ui_s_paint += $paint ui_temp

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/353/end
    tag @e[tag=ui_temp_obj] remove ui_temp_obj

tag @a[tag=ui_temp_player_iruka] remove ui_temp_player_iruka