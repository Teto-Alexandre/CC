execute store result score $cooltime ui_temp run time query gametime
scoreboard players add $cooltime ui_temp 0
scoreboard players set $changed ui_temp 1
scoreboard players set @s module_shot 1
execute at @s run playsound block.iron_trapdoor.open player @a ~ ~ ~ 1 1 0
execute at @s run particle dust 0.5 1 0.5 1 ~ ~1 ~ 0.5 0.5 0.5 0 20 force @s
execute if score @s module_temp matches 1.. run tellraw @s [{"text":"モジュール射撃モード","color":"white"},{"text":":","color":"gray"},{"text":"ON","color":"green"},{"text":" 残弾","color":"white"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"module_temp"},"color":"gold"}]
execute if score @s module_temp matches ..0 run tellraw @s [{"text":"モジュール射撃モード","color":"white"},{"text":":","color":"gray"},{"text":"OFF","color":"red"},{"text":" 残弾","color":"white"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"module_temp"},"color":"gray"}]
scoreboard players add @s ui_tmw237_boost 50
execute if score @s module_temp matches ..0 run scoreboard players set @s module_shot 0
execute if score @s module_temp matches ..0 run scoreboard players reset @s ui_tmw237_boost
