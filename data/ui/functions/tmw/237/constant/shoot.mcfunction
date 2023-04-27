# 射撃形態になる

# タグチェック
    execute if entity @s[tag=tmw_237_king] run function ui:tmw/237/amp/king

# レーザーサイト
    execute if data storage ui:gun temp{Model:110811} run function ui:tmw/237/constant/laser

# エフェクトクリア
    effect clear @s speed
    effect clear @s[nbt={ActiveEffects:[{Id:8,Amplifier:3b}]}] jump_boost
    effect clear @s[nbt={ActiveEffects:[{Id:8,Amplifier:8b}]}] jump_boost
    effect clear @s[nbt={ActiveEffects:[{Id:25,Amplifier:7b}]}] levitation
    effect clear @s[nbt={ActiveEffects:[{Id:25,Amplifier:3b}]}] levitation
    effect clear @s[nbt={ActiveEffects:[{Id:25,Amplifier:0b}]}] levitation
    effect clear @s[nbt={ActiveEffects:[{Id:25,Amplifier:-1b}]}] levitation
    effect clear @s[nbt={ActiveEffects:[{Id:25,Amplifier:-5b}]}] levitation
    effect clear @s[nbt={ActiveEffects:[{Id:25,Amplifier:-9b}]}] levitation
    effect clear @s[nbt={ActiveEffects:[{Id:25,Amplifier:-128b,Duration:15}]}] levitation
    execute if block ~ ~-0.3 ~ slime_block run effect give @s jump_boost 1 8 true
    effect clear @s invisibility
    effect clear @s regeneration
    scoreboard players set @s ui_st2 0
    scoreboard players set @s[tag=ui_temp_move] ui_gct 19
    scoreboard players set @s[scores={ui_st=1..,ui_gct=0..18}] ui_gct 19

#
    #execute as @s[tag=speedtype_move] run function ui:template/stats/shoot_speed

# チームカラーに合わせた防具を装備
    execute if score $team ui_temp matches 1 if entity @s[nbt=!{Inventory:[{Slot:100b,tag:{display:{color:8247039}}}]}] run function ui:tmw/237/constant/armor/eq1
    execute if score $team ui_temp matches 2 if entity @s[nbt=!{Inventory:[{Slot:100b,tag:{display:{color:16752832}}}]}] run function ui:tmw/237/constant/armor/eq2
    execute if score $team ui_temp matches 3 if entity @s[nbt=!{Inventory:[{Slot:100b,tag:{display:{color:16646013}}}]}] run function ui:tmw/237/constant/armor/eq3
    execute if score $team ui_temp matches 4 if entity @s[nbt=!{Inventory:[{Slot:100b,tag:{display:{color:10551208}}}]}] run function ui:tmw/237/constant/armor/eq4

#
    execute store result score $temp ui_temp run data get entity @s ActiveEffects[{Id:11}].Amplifier
    execute if score $time ui_world matches 1.. if score $temp ui_temp matches 4.. run particle dust 1 0.6 0 1.2 ~ ~0.9 ~ 0.5 0.5 0.5 0 5 force @a[distance=1..,tag=!tmw_237_noresparticle]

# ストレージのモデルデータを読み込み
    data modify storage ui:gun temp.value set from storage ui:gun temp.Model
    execute if score $subtype ui_temp matches 461 if score $subtime ui_temp matches 1.. run data modify storage ui:gun temp.value set value 110912
    execute if score $sptype ui_temp matches 461 if score $sptime ui_temp matches 1.. run data modify storage ui:gun temp.value set value 110912
    execute if score $subtype ui_temp matches 401 if score $subtime ui_temp matches 1.. run data modify storage ui:gun temp.value set value 110913
    execute if score $sptype ui_temp matches 401 if score $sptime ui_temp matches 1.. run data modify storage ui:gun temp.value set value 110913
    execute if score $subtype ui_temp matches 451 if score $subtime ui_temp matches 1.. run data modify storage ui:gun temp.value set value 110914
    execute if score $sptype ui_temp matches 451 if score $sptime ui_temp matches 1.. run data modify storage ui:gun temp.value set value 110914
    execute if score $subtype ui_temp matches 452 if score $subtime ui_temp matches 1.. run data modify storage ui:gun temp.value set value 110916
    execute if score $sptype ui_temp matches 452 if score $sptime ui_temp matches 1.. run data modify storage ui:gun temp.value set value 110916
    execute if score $subtype ui_temp matches 454 if score $subtime ui_temp matches 1.. run data modify storage ui:gun temp.value set value 110918
    execute if score $sptype ui_temp matches 454 if score $sptime ui_temp matches 1.. run data modify storage ui:gun temp.value set value 110918
    execute if score $subtype ui_temp matches 458 if score $subtime ui_temp matches 1.. run data modify storage ui:gun temp.value set value 110915
    execute if score $sptype ui_temp matches 458 if score $sptime ui_temp matches 1.. run data modify storage ui:gun temp.value set value 110915
    execute if score $subtype ui_temp matches 459 if score $subtime ui_temp matches 1.. run data modify storage ui:gun temp.value set value 110917
    execute if score $sptype ui_temp matches 459 if score $sptime ui_temp matches 1.. run data modify storage ui:gun temp.value set value 110917
    item modify entity @s weapon.mainhand ui:gun/value/model

# オフハンド装備
    #item replace entity @s weapon.offhand with air
    #execute if data storage ui:gun temp{value:110886} run item replace entity @s weapon.offhand with carrot_on_a_stick
    #item modify entity @s weapon.offhand ui:gun/value/model
