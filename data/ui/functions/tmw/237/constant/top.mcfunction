# 移動形態（壁上り形態ver）になる

# チャージキープ
    execute if score $ishold ui_temp matches 2.. run function ui:tmw/237/constant/charge_cancel
    execute if score $bursttype ui_temp matches 12 if score $multibullet ui_temp matches 1.. run function ui:tmw/237/constant/charge_cancel
    execute if score @s ui_tmw237_speedcover matches 1.. run scoreboard players remove @s ui_tmw237_speedcover 1
    execute if score @s ui_tmw237_speedcover matches 1.. run effect give @s glowing 1 0 false

# 特殊効果
    effect clear @s slowness
    effect clear @s levitation
    #effect give @s speed 1 25 true
    effect give @s levitation 1 0 true
    #execute if block ~ ~1.5 ~ air run effect give @s levitation 1 0 true
    effect give @s invisibility 1 0 true
    execute as @e[nbt={HurtTime:0s}] if score @s ui_st2 matches 20.. run function ui:tmw/237/constant/regen/
    scoreboard players set $burst ui_temp 0
    scoreboard players set @s ui_use2 0

#
    execute as @s[tag=speedtype_shoot] run function ui:template/stats/move_speed

# 横方向加速
    #execute rotated ~ 0 positioned ^ ^ ^-0.35 run summon slime ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    #schedule function ui:misc/kill_slime 1t append

# チームカラーに合わせた防具を削除
    item replace entity @s[nbt={Inventory:[{Slot:100b}]}] armor.head with air
    item replace entity @s[nbt={Inventory:[{Slot:100b}]}] armor.chest with air
    item replace entity @s[nbt={Inventory:[{Slot:100b}]}] armor.legs with air
    item replace entity @s[nbt={Inventory:[{Slot:100b}]}] armor.feet with air

# ストレージにモデルデータを隔離
    execute store result score $model ui_temp run data get entity @s SelectedItem.tag.CustomModelData
    item modify entity @s weapon.mainhand ui:gun/value/model_air

# エフェクト
    execute if score $team ui_temp matches 1 unless score @s ui_tmw237_sprint_particle matches 1.. run particle block light_blue_concrete ~ ~1.5 ~ 0.1 0.1 0.1 0 2 normal
    execute if score $team ui_temp matches 2 unless score @s ui_tmw237_sprint_particle matches 1.. run particle block pink_concrete ~ ~1.5 ~ 0.1 0.1 0.1 0 2 normal
    execute if score $team ui_temp matches 3 unless score @s ui_tmw237_sprint_particle matches 1.. run particle block yellow_concrete ~ ~1.5 ~ 0.1 0.1 0.1 0 2 normal
    execute if score $team ui_temp matches 4 unless score @s ui_tmw237_sprint_particle matches 1.. run particle block lime_concrete ~ ~1.5 ~ 0.1 0.1 0.1 0 2 normal
    execute if score $world ui_tc matches 1 if score $module ui_world matches 1 unless entity @s[scores={module=42}] run playsound block.honey_block.step player @a ~ ~ ~ 0.8 1.2 0
    execute if score $world ui_tc matches 1 unless score $module ui_world matches 1 run playsound block.honey_block.step player @a ~ ~ ~ 0.8 1.2 0

# タグを返す
    tag @s add ui_temp_move
    tag @s add ui_temp_move_nexttick
