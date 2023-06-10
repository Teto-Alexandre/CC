# その場に爆発を生成
summon marker ~ ~ ~ {Tags:["tmw237_killeffect","ui_temp"]}
teleport @e[tag=ui_temp] ~ ~ ~ ~ ~
scoreboard players operation $hpart ui_temp = @s ui_hpart
scoreboard players set @e[tag=ui_temp] ui_hpart 412
scoreboard players set @e[tag=ui_temp] ui_id -1
scoreboard players operation @e[tag=ui_temp] ui_team = $team ui_temp
scoreboard players set @e[tag=ui_temp] ui_is 6
tag @e[tag=ui_temp] remove ui_temp
schedule function ui:tmw/237/projectile/kill.effect 1t append

tag @s add 1_exploded
scoreboard players add @s ui_is 40