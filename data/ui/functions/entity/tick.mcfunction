#> ui:entity/tick
#
# エンティティオブジェクトの汎用tick
#
# @public

# 所属エンティティの認識
scoreboard players operation $id ui_temp = @s ui_id
scoreboard players operation $obj_id ui_temp = @s ui_obj_id
execute as @e[tag=entity] if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_obj

# 個別処理（コア座標情報の他への同期）
execute if score @s ui_gpc matches 1 run function ui:entity/1.test_sampler/tick

# 同じオブジェクトIDを持つ各tag持ちパーツの体力を合算し、差分からダメージを受ける
scoreboard players set $temp ui_temp 0
execute as @e[tag=ui_temp_obj,tag=entity.hitbox] run function ui:entity/damage/hitbox
execute if score @s armor_old matches 1.. run function ui:entity/damage/shield
execute if entity @s[tag=entity.modifier] run function ui:entity/damage/modifier/
scoreboard players operation @s health -= $temp ui_temp

# 同じオブジェクトIDを持つエンティティ全てと同時に破壊される
execute if score @s health matches ..0 run playsound entity.generic.explode player @a ~ ~ ~ 1 0.5 0
execute if score @s health matches ..0 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute if score @s health matches ..0 run summon firework_rocket ~ ~ ~ {Tags:["ui_17_yellow"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
execute if score @s health matches ..0 run tellraw @a {"text":"レイドボスが死亡しました","color":"yellow","bold":true}
execute if score @s health matches ..0 run kill @e[tag=ui_temp_obj]
execute if score @s health matches ..0 run kill @e[tag=ui_temp_obj]

# 最後
tag @e[tag=ui_temp_obj] remove ui_temp_obj