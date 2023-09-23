#自チームにテレポート
execute if entity @e[tag=temp_respawn] if score @s ui_team matches 1 run tp @s @e[tag=temp_respawn_blue,limit=1]
execute if entity @e[tag=temp_respawn] if score @s ui_team matches 2 run tp @s @e[tag=temp_respawn_red,limit=1]
execute if entity @e[tag=temp_respawn] if score @s ui_team matches 3 run tp @s @e[tag=temp_respawn_yellow,limit=1]
execute if entity @e[tag=temp_respawn] if score @s ui_team matches 4 run tp @s @e[tag=temp_respawn_green,limit=1]

#その場にマーカーを出してidとゲームモード書き込み
execute at @s run summon marker ~ ~ ~ {Tags:["ui","ui_respawn","ui_respawn_unpower","ui_respawn_tmw237"]}
execute as @e[tag=ui_respawn_unpower] run scoreboard players operation @s ui_id = @a[tag=ui_temp_this] ui_id

execute as @e[tag=ui_respawn_unpower] if entity @a[tag=ui_temp_this,gamemode=survival] run scoreboard players set @s ui_is 0
execute as @e[tag=ui_respawn_unpower] if entity @a[tag=ui_temp_this,gamemode=creative] run scoreboard players set @s ui_is 1
execute as @e[tag=ui_respawn_unpower] if entity @a[tag=ui_temp_this,gamemode=adventure] run scoreboard players set @s ui_is 2
execute as @e[tag=ui_respawn_unpower] if entity @a[tag=ui_temp_this,gamemode=spectator] run scoreboard players set @s ui_is 3

tag @e[tag=ui_respawn_unpower] remove ui_respawn_unpower

#タイトル表示時間
title @s times 0 20 10
effect give @s blindness 1 0 true
effect give @a night_vision 1000000 0 true
execute if score $module ui_world matches 1 as @a if score @s module matches 7 run effect clear @s night_vision

#ゲームモード変更
gamemode spectator @s