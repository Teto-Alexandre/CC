# 進捗

#
execute if entity @s[tag=tmw_237_notitle,tag=tmw_237_nolaser,tag=tmw_237_noboost,tag=tmw_237_noresparticle] run advancement grant @s only ui:hidden/misc/optimizer

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

#
execute if entity @a[scores={ui_r_game=1..}] unless entity @s[tag=spectator_unlocked] run function ui:unlock/spectator
execute if entity @a[scores={ui_r_game=2..}] unless entity @s[tag=auto_ready_unlocked] run function ui:unlock/auto_ready
execute if entity @a[scores={ui_r_game=3..}] unless entity @s[tag=setting_unlocked] run function ui:unlock/setting
execute if entity @a[scores={ui_r_game=6..}] unless entity @s[tag=record_unlocked] run function ui:unlock/record
execute if entity @a[scores={ui_r_game=8..}] run advancement grant @s only ui:hidden/misc/party_time
