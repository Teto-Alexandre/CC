# グレートバリア

# 最初idがないなら生成
    execute unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id

# idを共有
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id

# 同idにタグ付与
    execute as @e if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_obj

# 常時実行
    execute if score @s ui_uses matches 2 run playsound block.lever.click player @a ~ ~ ~ 1 0.9 0
    execute if score @s ui_uses matches 20 run scoreboard players set @s ui_is 4800
    execute if score @s ui_uses matches 20 run scoreboard players set @s[tag=ui_237_thrown_by_module41] ui_is 7200
    execute if score @s ui_uses matches 20 run playsound block.end_portal_frame.fill player @a ~ ~ ~ 2 0.8 0
    execute store result score $time ui_temp run time query gametime
    scoreboard players operation $time ui_temp %= #3 ui_num
    execute if score $time ui_temp matches 0 run particle portal ~ ~1.5 ~ 0 0 0 3.5 100 force
    execute if entity @s[tag=ui_237_sub_stop] as @e[distance=6..7.5,tag=tmw_237_sub] unless score @s ui_team = $team ui_temp run tag @s add ui_237_sub_explode
    execute if entity @s[tag=ui_237_sub_stop] if score @s ui_is matches ..3600 if score @s ui_is2 matches 3601.. run playsound ui:tmw237_sub_352 player @a ~ ~ ~ 0.4 0.6 0
    execute if entity @s[tag=ui_237_sub_stop] if score @s ui_is matches ..2400 if score @s ui_is2 matches 2401.. run playsound ui:tmw237_sub_352 player @a ~ ~ ~ 0.4 0.6 0
    execute if entity @s[tag=ui_237_sub_stop] if score @s ui_is matches ..1200 if score @s ui_is2 matches 1201.. run playsound ui:tmw237_sub_352 player @a ~ ~ ~ 0.4 0.6 0
    execute if entity @s[tag=ui_237_sub_stop] if score @s ui_is matches ..0 run tag @s add ui_237_sub_explode
    scoreboard players operation @s ui_is2 = @s ui_is

# 処理終了
    tag @s add tmw_237_sub_unmovable
    execute if score @s ui_uses matches 20 run tag @s add ui_237_sub_stop
    execute as @s[tag=ui_237_sub_stop] run scoreboard players remove @s ui_is 8
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0001d,0.0d]}
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run summon husk ~ ~1.5 ~ {Tags:["ui_temp_this","tmw_237_sub_110_1","tmw_237_sub_mult","ui_temp_obj","tds_nolog","ui_temp_team","ui_c_hitbox"],NoAI:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000,ShowParticles:false}],DeathLootTable:"none",Attributes:[{Name:"generic.max_health",Base:1000}],Health:1000f,Silent:1}
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run data merge storage ui:common {input:{Mode:"create",Var:-10025}}
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run function ui:common/particle
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run tag @e[tag=ui_common_particle,sort=nearest,limit=1] add ui_temp_this
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run tag @e[tag=ui_common_particle,sort=nearest,limit=1] add ui_temp_obj
    execute as @s[tag=ui_237_sub_stop,tag=!ui_237_sub_first] run teleport @e[tag=ui_common_particle,sort=nearest,limit=1] ~ ~1.5 ~
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
    execute if entity @s[tag=ui_237_sub_first] store result score $temp ui_temp run data get entity @e[tag=ui_temp_obj,tag=tmw_237_sub_110_1,limit=1] Health 10
    execute if entity @s[tag=ui_237_sub_first] run scoreboard players remove $temp ui_temp 10000
    execute if entity @s[tag=ui_237_sub_first] run scoreboard players operation @s ui_is += $temp ui_temp
    execute if entity @s[tag=ui_237_sub_first] run data merge entity @e[tag=ui_temp_obj,tag=tmw_237_sub_110_1,limit=1] {Health:1000f}

#
    scoreboard players set $paint ui_temp 0

# 処理終了（消える）
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/352/end
    tag @e[tag=ui_temp_obj] remove ui_temp_obj