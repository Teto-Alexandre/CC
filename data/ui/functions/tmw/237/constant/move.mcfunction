# 移動形態になる

# チャージキープ
    execute if score $ishold ui_temp matches 2.. run function ui:tmw/237/constant/charge_cancel
    execute if score $bursttype ui_temp matches 11 if score $shotmode ui_temp matches 2 run function ui:tmw/237/burst/burst11.mode_2_to_1
    execute if score $bursttype ui_temp matches 11 if score $shotmode ui_temp matches 2 run scoreboard players set $shottime ui_temp 0
    execute if score $bursttype ui_temp matches 12 if score $multibullet ui_temp matches 1.. run function ui:tmw/237/constant/charge_cancel
    execute if score @s ui_tmw237_speedcover matches 1.. run scoreboard players remove @s ui_tmw237_speedcover 1
    execute if score @s ui_tmw237_speedcover matches 1.. run effect give @s glowing 1 0 false

# 特殊効果
    effect clear @s slowness
    #effect give @s speed 1 25 true
    effect give @s jump_boost 1 3 true
    effect give @s invisibility 1 0 true
    execute unless score @s ui_tmw237_heal_cooldown matches 1.. run function ui:tmw/237/constant/regen/
    execute if score $burst ui_temp matches 1.. store result score $ct ui_temp run data get entity @s SelectedItem.tag.tmw.main.BurstCT
    execute if score $burst ui_temp matches 1.. run execute store result score $cooltime ui_temp run time query gametime
    execute if score $burst ui_temp matches 1.. run scoreboard players operation $cooltime ui_temp += $ct ui_temp
    execute if score $burst ui_temp matches 1.. run scoreboard players set $burst ui_temp 0
    scoreboard players set @s ui_use2 0

#
    execute as @s[tag=speedtype_shoot] run function ui:template/stats/move_speed

# チームカラーに合わせた防具を削除
    item replace entity @s[nbt={Inventory:[{Slot:103b}]}] armor.head with air
    item replace entity @s[nbt={Inventory:[{Slot:102b}]}] armor.chest with air
    item replace entity @s[nbt={Inventory:[{Slot:101b}]}] armor.legs with air
    item replace entity @s[nbt={Inventory:[{Slot:100b}]}] armor.feet with air

# ストレージにモデルデータを隔離
    item modify entity @s weapon.mainhand ui:gun/value/model_air

# HP最大なら攻撃を受けた状態をリセット
    execute store result score $health.max ui_temp run attribute @s generic.max_health get 10
    execute store result score $health ui_temp run data get entity @s Health 10
    scoreboard players operation $health ui_temp *= #100 ui_num
    scoreboard players operation $health ui_temp /= $health.max ui_temp

    execute if score $health ui_temp matches 100.. run scoreboard players reset @s tds_recent_attacked_by

# エフェクト
    scoreboard players operation $temp ui_temp = @s ui_move_s
    scoreboard players operation $temp ui_temp += @s ui_move_d
    scoreboard players set @s ui_move_s 0
    scoreboard players set @s ui_move_d 0
    execute if score $temp ui_temp matches 1.. if score $team ui_temp matches 1 unless score @s ui_tmw237_sprint_particle matches 1.. run particle block light_blue_concrete ~ ~0.2 ~ 0.1 0.1 0.1 0 1 force
    execute if score $temp ui_temp matches 1.. if score $team ui_temp matches 2 unless score @s ui_tmw237_sprint_particle matches 1.. run particle block pink_concrete ~ ~0.2 ~ 0.1 0.1 0.1 0 1 force
    execute if score $temp ui_temp matches 1.. if score $team ui_temp matches 3 unless score @s ui_tmw237_sprint_particle matches 1.. run particle block yellow_concrete ~ ~0.2 ~ 0.1 0.1 0.1 0 1 force
    execute if score $temp ui_temp matches 1.. if score $team ui_temp matches 4 unless score @s ui_tmw237_sprint_particle matches 1.. run particle block lime_concrete ~ ~0.2 ~ 0.1 0.1 0.1 0 1 force
    execute if score $world ui_tc matches 1 if score $module ui_world matches 1 unless entity @s[scores={module=42}] run playsound block.honey_block.step player @a ~ ~ ~ 0.8 1.2 0
    execute if score $world ui_tc matches 1 unless score $module ui_world matches 1 run playsound block.honey_block.step player @a ~ ~ ~ 0.8 1.2 0

# 素早く坂を上る挙動
    execute as @s if score $fall ui_temp matches 0 rotated ~ 0 unless block ~ ~ ~ #ui:slabs unless block ^ ^ ^0.5 #ui:nocol unless block ^ ^ ^0.5 #ui:nocol if block ^ ^1 ^0.5 #ui:nocol if block ^0.4 ^1 ^0.5 #ui:nocol if block ^-0.4 ^1 ^0.5 #ui:nocol if block ^ ^1 ^0.9 #ui:nocol unless block ^ ^ ^0.5 #ui:slabs unless block ^ ^ ^0.5 #ui:nocol run teleport @s ^ ^1 ^0.4

# 移動形態になるとダブルジャンプが復活
    tag @s[tag=tmw_237_jumped] remove tmw_237_jumped

# タグを返す
    tag @s add ui_temp_move
    tag @s add ui_temp_move_nexttick
