# その場に爆発を生成
summon marker ~ ~ ~ {Tags:["tmw237_killeffect","ui_temp"]}
teleport @e[tag=ui_temp] ~ ~ ~ ~ ~
scoreboard players set @e[tag=ui_temp] ui_hpart 413
scoreboard players operation @e[tag=ui_temp] ui_id = @s ui_id
scoreboard players operation @e[tag=ui_temp] ui_team = @s ui_team
tag @e[tag=ui_temp] remove ui_temp
schedule function ui:tmw/237/projectile/kill.effect 1t append
