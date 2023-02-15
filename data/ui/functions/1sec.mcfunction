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
    execute as @a[gamemode=!spectator] at @s if block ~ ~ ~ #ui:liq if entity @e[type=player,dx=0] run function ui:common/highdamage

# チームカラーに合わせたチームにぶち込み
    execute as @a if score @s ui_team matches 1 run team join blue @s
    execute as @a if score @s ui_team matches 2 run team join red @s
    execute as @a if score @s ui_team matches 3 run team join yellow @s
    execute as @a if score @s ui_team matches 4 run team join green @s

#
scoreboard players set $world ui_tc 1
