
scoreboard players set $changed ui_temp 1
scoreboard players set @s module_shot 0
scoreboard players reset @s ui_tmw237_boost

execute run tellraw @s [{"text":"モジュール射撃モード","color":"white"},{"text":":","color":"gray"},{"text":"OFF","color":"red"},{"text":" 残弾","color":"white"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"module_temp"},"color":"gray"}]

execute at @s run playsound block.iron_trapdoor.close player @a ~ ~ ~ 1 1 0
execute at @s run particle dust 1 0.5 0.5 1 ~ ~1 ~ 0.5 0.5 0.5 0 20 force @s