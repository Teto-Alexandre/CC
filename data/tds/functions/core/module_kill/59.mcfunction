scoreboard players set @s module_killcount 0
scoreboard players add @s module_temp 1
execute if score @s module_temp matches 5.. run scoreboard players set @s module_temp 4

execute at @s run playsound block.brewing_stand.brew player @s ~ ~ ~ 1 2 0
execute at @s run particle dust 1 1 0.5 1 ~ ~1 ~ 0.5 0.5 0.5 0 20 force @s
tellraw @s [{"text":"モジュール補充","color":"yellow"},{"text":" 残弾","color":"white"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"module_temp"},"color":"gold"}]