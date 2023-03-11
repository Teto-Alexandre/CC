#> ui:tmw/237/projectile/idc
#
# 負荷軽減用に ID が一致する飛び道具を一元管理する
#
# @public

#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
scoreboard players operation $team ui_temp = @s ui_team
execute as @e[type=!marker,predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team
execute as @e[tag=tmw_237_ss_1_unpower] if score @s ui_team = $team ui_temp run tag @s add ui_temp_id_control

#
execute as @e[tag=ui_temp_id_control] at @s run function ui:tmw/237/projectile/tick

# 一時タグ削除
tag @e[tag=ui_temp_id_control] remove tmw_237_ss_1_unpower
tag @e[tag=ui_temp_id_control] remove ui_temp_id_control
tag @e[tag=ui_temp_team] remove ui_temp_team

# 再帰
execute if entity @e[tag=tmw_237_ss_1_unpower] as @e[limit=1,tag=tmw_237_ss_1_unpower] run function ui:tmw/237/projectile/idc
