#> ui:entity/idc
#
# 負荷軽減用に ID が一致するエンティティオブジェクトを一元管理する
#
# @public

#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
scoreboard players operation $team ui_temp = @s ui_team
execute as @e[type=!marker,predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team
execute as @e[tag=entity_ss_clocker] if score @s ui_team = $team ui_temp run tag @s add entity_ss_control

#
execute as @e[tag=entity_ss_control] at @s run function ui:entity/tick

# 一時タグ削除
tag @e[tag=entity_ss_control] remove entity_ss_clocker
tag @e[tag=entity_ss_control] remove entity_ss_control
tag @e[tag=ui_temp_team] remove ui_temp_team

# 再帰
execute if entity @e[tag=entity_ss_clocker] as @e[limit=1,tag=entity_ss_clocker] run function ui:entity/idc
