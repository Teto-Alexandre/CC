# スコア化
    scoreboard players set $id ui_temp 0
    scoreboard players set $team ui_temp 3
    execute store result score $input ui_temp run data get storage ui:common input.Var
    #execute if score $input ui_temp matches ..-1 if entity @s run scoreboard players operation $id ui_temp = @s ui_id
    execute if entity @s run scoreboard players operation $team ui_temp = @s ui_team

#
    summon marker ~ ~ ~ {Tags:["entity","entity.core","entity.core.unpower"]}
    execute if data storage ui:common input.Num run function ui:common/entity/summon/num.start

#
    execute as @e[tag=entity.core.unpower] run function ui:common/entity/summon/temp_unpower
    execute if data storage ui:common input.Rand run function ui:common/entity/summon/rand
    execute as @e[tag=entity.core.unpower] at @s run function ui:common/entity/init/
    tag @e[tag=entity.core.unpower] remove entity.core.unpower

# SSロジック
    schedule function ui:entity/ss 1t append