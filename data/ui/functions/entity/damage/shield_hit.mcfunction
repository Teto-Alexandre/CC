# 同じオブジェクトIDを持つ各tag持ちパーツの体力を合算し、差分からダメージを受ける
scoreboard players operation @s armor -= $temp ui_temp
scoreboard players set $temp ui_temp 0
execute if score @s armor matches 0.. run playsound block.glass.break player @a ~ ~ ~ 1 0.5 0
execute if score @s armor matches ..-1 run scoreboard players operation $temp ui_temp -= @s armor
execute if score @s armor matches ..-1 run playsound block.glass.break player @a ~ ~ ~ 2 0.5 0
execute if score @s armor matches ..-1 run playsound entity.generic.explode player @a ~ ~ ~ 2 1 0
execute if score @s armor matches ..-1 run particle end_rod ~ ~ ~ 1 1 1 0.1 50 force
execute if score @s armor matches ..-1 run tag @s[tag=!shield.break] add shield.breaked
execute if score @s armor matches ..-1 run tag @s add shield.break