# チーム選択
execute as @e[tag=map_core,tag=!4teams,sort=random,limit=1] store result score $map ui_world run scoreboard players get @s map_id

# 準備フェーズ
scoreboard players set @a life 0
scoreboard players set $phase game_state 1

#
playsound entity.ender_dragon.growl master @a ~ ~ ~ 0.5 1 0.5

# 増え鬼でうっかり全員同じチーム
execute if score $gamemode ui_world matches 2 unless entity @a[tag=!spactate,scores={ui_team=1}] unless entity @a[tag=!spactate,scores={ui_team=2}] unless entity @a[tag=!spactate,scores={ui_team=3}] run function ui:game/team2
execute if score $gamemode ui_world matches 2 unless entity @a[tag=!spactate,scores={ui_team=4}] unless entity @a[tag=!spactate,scores={ui_team=2}] unless entity @a[tag=!spactate,scores={ui_team=3}] run function ui:game/team2
execute if score $gamemode ui_world matches 2 unless entity @a[tag=!spactate,scores={ui_team=1}] unless entity @a[tag=!spactate,scores={ui_team=4}] unless entity @a[tag=!spactate,scores={ui_team=3}] run function ui:game/team2
execute if score $gamemode ui_world matches 2 unless entity @a[tag=!spactate,scores={ui_team=1}] unless entity @a[tag=!spactate,scores={ui_team=2}] unless entity @a[tag=!spactate,scores={ui_team=4}] run function ui:game/team2

# 開始通知、無敵、復活、スペ化（二回）、ダメテス殺し
tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"5秒後にテレポートします・・・","color":"gold"}]
schedule function ui:game/start/1.ready 5s

#
tag @a[tag=!auto_ready,tag=!spectate] remove game.ready
