# インクタレット

# 最初idがないなら生成
    execute unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id

# idを共有
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id

# 同idにタグ付与
    execute as @e if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_obj

# 常時実行
    execute if score @s ui_uses matches 2 run playsound block.lever.click player @a ~ ~ ~ 1 0.9 0
    execute if score @s ui_uses matches 20 run scoreboard players set @s ui_is 300
    execute if score @s ui_uses matches 20 run scoreboard players set @s[tag=ui_237_thrown_by_module41] ui_is 450
    execute if score @s ui_uses matches 20 run playsound block.end_portal_frame.fill player @a ~ ~ ~ 2 0.8 0
    #execute if score @s ui_is matches 1.. run teleport @s ~ ~0.5 ~ ~ ~
    execute if score @s ui_is matches 1.. if score $team ui_temp matches 1 run particle dust 0.5 1 1 2 ~ ~0.5 ~ 0.3 0.3 0.3 0 1 force
    execute if score @s ui_is matches 1.. if score $team ui_temp matches 2 run particle dust 1 0.5 1 2 ~ ~0.5 ~ 0.3 0.3 0.3 0 1 force
    execute if score @s ui_is matches 1.. if score $team ui_temp matches 3 run particle dust 1 1 0.5 2 ~ ~0.5 ~ 0.3 0.3 0.3 0 1 force
    execute if score @s ui_is matches 1.. if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 2 ~ ~0.5 ~ 0.3 0.3 0.3 0 1 force
    execute if entity @s[tag=ui_237_sub_stop] if score @s ui_is matches ..0 run tag @s add ui_237_sub_explode

# 処理終了
    execute if score @s ui_uses matches 20 run tag @s add ui_237_sub_stop
    execute store result score $time ui_temp run time query gametime
    scoreboard players operation $time ui_temp %= #20 ui_num
    execute as @s[tag=ui_237_sub_stop] if score $time ui_temp matches 0 run scoreboard players remove @s ui_is 20
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0001d,0.0d]}
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run summon iron_golem ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_116_1","tmw_237_sub_mult","ui_temp_obj","tds_nolog","ui_temp_team"],NoAI:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000,ShowParticles:false}],DeathLootTable:"none",Attributes:[{Name:"generic.max_health",Base:1000}],Health:1000f,Silent:1}
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_116_2","ui_temp_obj","ui_temp_team"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:192002}}]}
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run summon armor_stand ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub_116_3","ui_temp_obj","ui_temp_team"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:192003}}]}
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run summon armor_stand ~ ~-0.4 ~ {Tags:["ui_temp_this","tmw_237_sub_116_4","ui_temp_obj","ui_temp_team"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:192004}}]}
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run tag @s add ui_refd
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run tag @s add ui_237_sub_first
    #idコピー
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_id = $id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_obj_id = $obj_id ui_temp
    execute as @e[tag=ui_temp_this] run scoreboard players operation @s ui_team = $team ui_temp
    #設置数上限デストロイ
    scoreboard players set $count ui_temp 0
    execute as @e[tag=tmw_237_sub_mult,tag=!ui_no_count_as_mult] if score @s ui_id = $id ui_temp run scoreboard players add $count ui_temp 1
    execute if score $count ui_temp matches 2.. run function ui:tmw/237/sub/explosive/mult_lim
    tag @e[tag=ui_temp_this] remove ui_temp_this
    #ダメージ計算
    execute if entity @s[tag=ui_237_sub_first] store result score $temp ui_temp run data get entity @e[tag=ui_temp_obj,tag=tmw_237_sub_116_1,limit=1] Health 10
    execute if entity @s[tag=ui_237_sub_first] run scoreboard players remove $temp ui_temp 10000
    execute if entity @s[tag=ui_237_sub_first] run scoreboard players operation @s ui_is += $temp ui_temp
    execute if entity @s[tag=ui_237_sub_first] run data merge entity @e[tag=ui_temp_obj,tag=tmw_237_sub_116_1,limit=1] {Health:1000f}

# 射撃
    execute if entity @s[tag=ui_237_sub_stop] run tag @e[distance=6..25,tag=!ui_temp_team,predicate=ui:load_unhurtable,nbt=!{ActiveEffects:[{Id:14}]},sort=nearest,limit=1] add ui_temp_target
    execute if entity @s[tag=ui_237_sub_stop] unless entity @e[tag=ui_temp_target] run teleport @s ~ ~ ~ ~2 -15
    execute if entity @s[tag=ui_237_sub_stop] if entity @e[tag=ui_temp_target] positioned ~ ~5 ~ facing entity @e[tag=ui_temp_target,limit=1] eyes run teleport @s ~ ~-5 ~ ~ ~-20
    execute if entity @s[tag=ui_237_sub_stop] if score $time ui_temp matches 0 positioned ^0.65 ^1.4 ^-0.1 rotated ~ ~ run function ui:tmw/237/sub/explosive/116/rain
    execute if entity @s[tag=ui_237_sub_stop] if score $time ui_temp matches 3 positioned ^-0.65 ^1.4 ^-0.1 rotated ~ ~ run function ui:tmw/237/sub/explosive/116/rain

# 角度変更
    data modify entity @e[tag=ui_temp_obj,tag=tmw_237_sub_116_3,limit=1] Pose merge value {Head:[0.0f,1.0f,0.0f]}
    data modify entity @e[tag=ui_temp_obj,tag=tmw_237_sub_116_4,limit=1] Pose merge value {Head:[0.0f,1.0f,0.0f]}
    data modify entity @e[tag=ui_temp_obj,tag=tmw_237_sub_116_3,limit=1] Pose.Head[1] set from entity @s Rotation[0]
    data modify entity @e[tag=ui_temp_obj,tag=tmw_237_sub_116_4,limit=1] Pose.Head[1] set from entity @s Rotation[0]
    data modify entity @e[tag=ui_temp_obj,tag=tmw_237_sub_116_4,limit=1] Pose.Head[0] set from entity @s Rotation[1]

# 処理終了（消える）
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/116/end
    tag @e[tag=ui_temp_obj] remove ui_temp_obj
    tag @e[tag=ui_temp_target] remove ui_temp_target