# 必要データ収集
    execute store result score $ct ui_temp run data get storage ui:gun temp2.CT
    execute store result score $reach ui_temp run data get storage ui:gun temp2.Reach
    execute store result score $width ui_temp run data get storage ui:gun temp2.Width
    execute store result score $damage ui_temp run data get storage ui:gun temp2.Damage
    execute store result score $speed ui_temp run data get storage ui:gun temp2.Speed
    execute store result score $floor_proof ui_temp run data get storage ui:gun temp2.FloorProof

# id共有

# チームメンバー識別
    execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

# 座標設定
    scoreboard players set $temp ui_temp 1
    scoreboard players set $temp2 ui_temp 1
    scoreboard players operation $reach2 ui_temp = @s ui_use2
    scoreboard players remove $reach2 ui_temp 10
    scoreboard players operation $reach2 ui_temp > #0 ui_num
    execute rotated ~ 0 run function ui:tmw/237/attack/roll/set

# 発射音
    execute store result score $temp ui_temp run data get storage ui:gun temp2.Sound
    execute if score $temp ui_temp matches 1 run playsound block.honey_block.slide player @a ~ ~ ~ 1.5 0.8 0
    #execute if score $temp ui_temp matches 1 run playsound entity.shulker.shoot player @a ~ ~ ~ 1.5 0.8 0
    #execute if score $temp ui_temp matches 1 run playsound entity.iron_golem.hurt player @a ~ ~ ~ 0.8 2 0
    execute if score $temp ui_temp matches 2 run playsound entity.guardian.attack player @a ~ ~ ~ 1 1.4 0

# 加速
    execute if score $speed ui_temp matches -3 run effect give @s slowness 1 2 true
    execute if score $speed ui_temp matches -2 run effect give @s slowness 1 1 true
    execute if score $speed ui_temp matches -1 run effect give @s slowness 1 0 true
    execute if score $speed ui_temp matches 1.. if score @s ui_use2 matches 10.. run effect give @s speed 1 0 true
    execute if score $speed ui_temp matches 2.. if score @s ui_use2 matches 20.. run effect give @s speed 1 1 true
    execute if score $speed ui_temp matches 3.. if score @s ui_use2 matches 30.. run effect give @s speed 1 2 true
    execute if score $speed ui_temp matches 4.. if score @s ui_use2 matches 40.. run effect give @s speed 1 3 true

# 床保護
    execute if score $floor_proof ui_temp matches 1 run tag @s add floor_proof
    scoreboard players reset $floor_proof ui_temp

# クールタイム解除時刻.mod
    execute store result score $cooltime ui_temp run time query gametime
    scoreboard players operation $cooltime ui_temp += $ct ui_temp
    execute if score $burst ui_temp matches 1.. run scoreboard players remove $burst ui_temp 1

#
    tag @e[tag=ui_temp_team] remove ui_temp_team

# 成功
    tag @s add ui_temp_success

# 競合タグ削除
    tag @e[tag=ui_temp_attacked] remove ui_temp_attacked

# 変更した
    scoreboard players set $changed ui_temp 1