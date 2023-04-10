# 一秒にやること

#
    #item replace entity @a hotbar.1 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text": ""}'}}
    #item replace entity @a hotbar.2 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text": ""}'}}
    #item replace entity @a hotbar.3 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text": ""}'}}
    #item replace entity @a hotbar.4 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text": ""}'}}
    #item replace entity @a hotbar.5 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text": ""}'}}
    #item replace entity @a hotbar.6 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text": ""}'}}
    #item replace entity @a hotbar.7 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text": ""}'}}
    #item replace entity @a hotbar.8 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text": ""}'}}

# オフハンドに持つんじゃない
    execute as @a if entity @s[scores={ui_tmw_id2=1..}] at @s run function ui:tmw/237/anti.offhand/text

# 死（液体に入ったら死ぬ）
    execute as @a[gamemode=!spectator,tag=!immune_water] at @s if block ~ ~ ~ #ui:liq if entity @e[type=player,dx=0] run function ui:common/highdamage

# チームカラーに合わせたチームにぶち込み
    execute as @a if score @s ui_team matches 1 run team join blue @s
    execute as @a if score @s ui_team matches 2 run team join red @s
    execute as @a if score @s ui_team matches 3 run team join yellow @s
    execute as @a if score @s ui_team matches 4 run team join green @s
    execute if score $module ui_world matches 1 as @a if score @s module matches 5 run team join rainbow @s
    execute if score $module ui_world matches 1 as @a if score @s module matches 5 run effect give @s glowing 2 0 true
    execute if score $module ui_world matches 1 as @a if score @s module matches 14 run scoreboard players set @s ui_tmw237_sprint_particle 25
    tag @a[tag=module19] remove module19
    execute if score $module ui_world matches 1 as @a if score @s module matches 19 run tag @s add module19
    execute as @a[tag=spectate] run team join spectate @s

# 殴り合い防止
    effect give @a[nbt=!{Inventory:[]}] weakness 2 127 true
    effect give @a[nbt={Inventory:[]}] strength 2 0 true
    execute if score $module ui_world matches 1 as @a if score @s module matches 6 run effect clear @s weakness
    execute if score $module ui_world matches 1 as @a if score @s module matches 6 run effect give @s strength 2 0 true

# 進捗
    execute as @a[gamemode=!spectator] if entity @s[advancements={ui:hidden/misc/beyond_the_sky=false}] at @s run function ui:advancements/beyond_the_sky
    execute as @a[gamemode=!spectator] if entity @s[advancements={ui:hidden/misc/enemy_base=false}] at @s run function ui:advancements/enemy_base
    execute as @a[scores={advancements=81..}] run advancement grant @s only ui:complete/root

# タイムカウント
    #execute store result bossbar minecraft:time value run scoreboard players remove $time ui_world 1
    #function ui:game/end/0.scheduler

#
scoreboard players set $world ui_tc 1
