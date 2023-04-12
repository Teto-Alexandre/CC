# 進捗

#
execute if entity @s[tag=tmw_237_notitle,tag=tmw_237_nolaser,tag=tmw_237_noboost,tag=tmw_237_noresparticle,tag=tmw_237_nokilllog,tag=tmw_237_nochargelog,tag=tmw_237_nosplog,tag=tmw_237_nomisclog] run advancement grant @s only ui:hidden/misc/optimizer

#
execute if score @s ui_r_game matches 1.. run advancement grant @s only ui:main/game/game1
execute if score @s ui_r_game matches 5.. run advancement grant @s only ui:main/game/game5
execute if score @s ui_r_game matches 10.. run advancement grant @s only ui:main/game/game10
execute if score @s ui_r_game matches 20.. run advancement grant @s only ui:main/game/game20
execute if score @s ui_r_game matches 30.. run advancement grant @s only ui:main/game/game30
execute if score @s ui_r_game matches 40.. run advancement grant @s only ui:main/game/game40
execute if score @s ui_r_game matches 50.. run advancement grant @s only ui:main/game/game50
execute if score @s ui_r_game matches 100.. run advancement grant @s only ui:main/game/game100

execute if score @s ui_r_kill matches 1.. run advancement grant @s only ui:main/kill/1
execute if score @s ui_r_kill matches 5.. run advancement grant @s only ui:main/kill/5
execute if score @s ui_r_kill matches 10.. run advancement grant @s only ui:main/kill/10
execute if score @s ui_r_kill matches 25.. run advancement grant @s only ui:main/kill/25
execute if score @s ui_r_kill matches 50.. run advancement grant @s only ui:main/kill/50
execute if score @s ui_r_kill matches 75.. run advancement grant @s only ui:main/kill/75
execute if score @s ui_r_kill matches 100.. run advancement grant @s only ui:main/kill/100
execute if score @s ui_r_kill matches 250.. run advancement grant @s only ui:main/kill/250

execute if score @s ui_r_paint matches 1000.. run advancement grant @s only ui:main/paint/1000
execute if score @s ui_r_paint matches 5000.. run advancement grant @s only ui:main/paint/5000
execute if score @s ui_r_paint matches 10000.. run advancement grant @s only ui:main/paint/10000
execute if score @s ui_r_paint matches 25000.. run advancement grant @s only ui:main/paint/25000
execute if score @s ui_r_paint matches 50000.. run advancement grant @s only ui:main/paint/50000
execute if score @s ui_r_paint matches 75000.. run advancement grant @s only ui:main/paint/75000
execute if score @s ui_r_paint matches 100000.. run advancement grant @s only ui:main/paint/100000
execute if score @s ui_r_paint matches 250000.. run advancement grant @s only ui:main/paint/250000

execute if score @s ui_r_assist matches 1.. run advancement grant @s only ui:main/assist/1
execute if score @s ui_r_assist matches 3.. run advancement grant @s only ui:main/assist/3
execute if score @s ui_r_assist matches 5.. run advancement grant @s only ui:main/assist/5
execute if score @s ui_r_assist matches 10.. run advancement grant @s only ui:main/assist/10
execute if score @s ui_r_assist matches 20.. run advancement grant @s only ui:main/assist/20
execute if score @s ui_r_assist matches 30.. run advancement grant @s only ui:main/assist/30
execute if score @s ui_r_assist matches 50.. run advancement grant @s only ui:main/assist/50
execute if score @s ui_r_assist matches 100.. run advancement grant @s only ui:main/assist/100

execute if score @s ui_r_q matches 10.. run advancement grant @s only ui:main/sub/10
execute if score @s ui_r_q matches 50.. run advancement grant @s only ui:main/sub/50
execute if score @s ui_r_q matches 100.. run advancement grant @s only ui:main/sub/100
execute if score @s ui_r_q matches 250.. run advancement grant @s only ui:main/sub/250
execute if score @s ui_r_q matches 500.. run advancement grant @s only ui:main/sub/500
execute if score @s ui_r_q matches 1000.. run advancement grant @s only ui:main/sub/1000
execute if score @s ui_r_q matches 2500.. run advancement grant @s only ui:main/sub/2500
execute if score @s ui_r_q matches 5000.. run advancement grant @s only ui:main/sub/5000

execute if score @s ui_r_f matches 1.. run advancement grant @s only ui:main/sp/1
execute if score @s ui_r_f matches 5.. run advancement grant @s only ui:main/sp/5
execute if score @s ui_r_f matches 10.. run advancement grant @s only ui:main/sp/10
execute if score @s ui_r_f matches 25.. run advancement grant @s only ui:main/sp/25
execute if score @s ui_r_f matches 50.. run advancement grant @s only ui:main/sp/50
execute if score @s ui_r_f matches 100.. run advancement grant @s only ui:main/sp/100
execute if score @s ui_r_f matches 250.. run advancement grant @s only ui:main/sp/250
execute if score @s ui_r_f matches 500.. run advancement grant @s only ui:main/sp/500

execute if score @s ui_r_kill_streak matches 2.. run advancement grant @s only ui:main/kill_streak/2
execute if score @s ui_r_kill_streak matches 3.. run advancement grant @s only ui:main/kill_streak/3
execute if score @s ui_r_kill_streak matches 4.. run advancement grant @s only ui:main/kill_streak/4
execute if score @s ui_r_kill_streak matches 5.. run advancement grant @s only ui:main/kill_streak/5
execute if score @s ui_r_kill_streak matches 6.. run advancement grant @s only ui:main/kill_streak/6
execute if score @s ui_r_kill_streak matches 8.. run advancement grant @s only ui:main/kill_streak/8
execute if score @s ui_r_kill_streak matches 10.. run advancement grant @s only ui:main/kill_streak/10
execute if score @s ui_r_kill_streak matches 15.. run advancement grant @s only ui:main/kill_streak/15

execute if score @s advancements matches 35.. if entity @s[tag=!adv35] run tellraw @s [{"text":"Module","color": "gray"},{"text":"> ","color": "gold"},{"text":"[","color": "white"},{"text":"冷たくなった心臓","color": "aqua","bold": false},{"text":"]","color": "white"},{"text":"を獲得しました","color": "gray"}]
execute if score @s advancements matches 40.. if entity @s[tag=!adv40] run tellraw @s [{"text":"Module","color": "gray"},{"text":"> ","color": "gold"},{"text":"[","color": "white"},{"text":"アップビート","color": "red","bold": false},{"text":"]","color": "white"},{"text":"を獲得しました","color": "gray"}]
execute if score @s advancements matches 45.. if entity @s[tag=!adv45] run tellraw @s [{"text":"Module","color": "gray"},{"text":"> ","color": "gold"},{"text":"[","color": "white"},{"text":"グリッターエッセンス","color": "gold","bold": false},{"text":"]","color": "white"},{"text":"を獲得しました","color": "gray"}]
execute if score @s advancements matches 50.. if entity @s[tag=!adv50] run tellraw @s [{"text":"Module","color": "gray"},{"text":"> ","color": "gold"},{"text":"[","color": "white"},{"text":"アンチマーカーシステム","color": "dark_purple","bold": true},{"text":"]","color": "white"},{"text":"を獲得しました","color": "gray"}]
execute if score @s advancements matches 55.. if entity @s[tag=!adv55] run tellraw @s [{"text":"Module","color": "gray"},{"text":"> ","color": "gold"},{"text":"[","color": "white"},{"text":"足袋","color": "dark_aqua","bold": true},{"text":"]","color": "white"},{"text":"を獲得しました","color": "gray"}]
execute if score @s advancements matches 60.. if entity @s[tag=!adv60] run tellraw @s [{"text":"Module","color": "gray"},{"text":"> ","color": "gold"},{"text":"[","color": "white"},{"text":"スリッパ","color": "#66cc00","bold": true},{"text":"]","color": "white"},{"text":"を獲得しました","color": "gray"}]
execute if score @s advancements matches 65.. if entity @s[tag=!adv65] run tellraw @s [{"text":"Module","color": "gray"},{"text":"> ","color": "gold"},{"text":"[","color": "white"},{"text":"深淵の呼び声","color": "#0066cc","bold": true},{"text":"]","color": "white"},{"text":"を獲得しました","color": "gray"}]
execute if score @s advancements matches 70.. if entity @s[tag=!adv70] run tellraw @s [{"text":"Module","color": "gray"},{"text":"> ","color": "gold"},{"text":"[","color": "white"},{"text":"エコバッグ","color": "#999900","bold": true},{"text":"]","color": "white"},{"text":"を獲得しました","color": "gray"}]
execute if score @s advancements matches 75.. if entity @s[tag=!adv75] run tellraw @s [{"text":"Module","color": "gray"},{"text":"> ","color": "gold"},{"text":"[","color": "white"},{"text":"13スコープ","color": "#9966ff","bold": false},{"text":"]","color": "white"},{"text":"を獲得しました","color": "gray"}]
execute if score @s advancements matches 80.. if entity @s[tag=!adv80] run tellraw @s [{"text":"Module","color": "gray"},{"text":"> ","color": "gold"},{"text":"[","color": "white"},{"text":"半死のトーテム","color": "yellow","bold": false},{"text":"]","color": "white"},{"text":"を獲得しました","color": "gray"}]
execute if score @s advancements matches 35.. if entity @s[tag=!adv35] run tag @s add adv35
execute if score @s advancements matches 40.. if entity @s[tag=!adv40] run tag @s add adv40
execute if score @s advancements matches 45.. if entity @s[tag=!adv45] run tag @s add adv45
execute if score @s advancements matches 50.. if entity @s[tag=!adv50] run tag @s add adv50
execute if score @s advancements matches 55.. if entity @s[tag=!adv55] run tag @s add adv55
execute if score @s advancements matches 60.. if entity @s[tag=!adv60] run tag @s add adv60
execute if score @s advancements matches 65.. if entity @s[tag=!adv65] run tag @s add adv65
execute if score @s advancements matches 70.. if entity @s[tag=!adv70] run tag @s add adv70
execute if score @s advancements matches 75.. if entity @s[tag=!adv75] run tag @s add adv75
execute if score @s advancements matches 80.. if entity @s[tag=!adv80] run tag @s add adv80

#
execute if entity @a[scores={ui_r_game=1..}] unless entity @s[tag=spectator_unlocked] run function ui:unlock/spectator
execute if entity @a[scores={ui_r_game=2..}] unless entity @s[tag=auto_ready_unlocked] run function ui:unlock/auto_ready
execute if entity @a[scores={ui_r_game=3..}] unless entity @s[tag=setting_unlocked] run function ui:unlock/setting
execute if entity @a[scores={ui_r_game=4..}] unless entity @s[tag=record_unlocked] run function ui:unlock/record
execute if entity @a[scores={ui_r_game=6..}] run advancement grant @s only ui:hidden/misc/party_time
