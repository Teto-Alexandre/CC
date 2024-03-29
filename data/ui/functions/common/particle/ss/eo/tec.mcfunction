#> ui:common/particle/ss/eo/tec
#
# #負荷軽減用に Team が一致するパーティクルを一元管理する
#
# @within function ui:common/particle/ss/eo/s_team_id

# チームを認識して敵味方の識別タグを付与する
scoreboard players operation $team ui_temp = @s ui_team
execute as @e[tag=ui_tec] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team_control
execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

#
#tellraw @a [{"text":"Team> "},{"text":": "},{"selector":"@e[tag=ui_temp_team]"}]
#tellraw @a [{"text":"TeamOperation> "},{"score":{"name": "$team","objective": "ui_temp"},"color": "green"},{"text":": "},{"selector":"@e[tag=ui_temp_team_control]"}]
execute as @e[tag=ui_temp_team_control] at @s run function ui:common/particle/ss/downer/particle_d

# 一時タグ削除
tag @e[tag=ui_temp_team_control] remove ui_tec
tag @e[tag=ui_temp_team_control] remove ui_temp_team_control
tag @e[tag=ui_temp_team] remove ui_temp_team

# 再帰
execute if entity @e[tag=ui_tec] as @e[limit=1,tag=ui_tec] run function ui:common/particle/ss/eo/tec
