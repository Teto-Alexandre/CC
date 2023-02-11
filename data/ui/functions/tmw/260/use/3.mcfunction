#
execute if score $mode ui_temp matches 1 store result score $color ui_temp run scoreboard players get @e[tag=map_core,sort=nearest,limit=1] map_default_color
execute if score $mode ui_temp matches 1 run scoreboard players add $color ui_temp 1
execute if score $mode ui_temp matches 1 if score $color ui_temp matches 6 run scoreboard players set $color ui_temp 0
execute if score $mode ui_temp matches 1 if score $color ui_temp matches 0 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"スタート時の色: 白","color":"white"}]
execute if score $mode ui_temp matches 1 if score $color ui_temp matches 1 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"スタート時の色: 薄灰","color":"white"}]
execute if score $mode ui_temp matches 1 if score $color ui_temp matches 2 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"スタート時の色: 灰","color":"white"}]
execute if score $mode ui_temp matches 1 if score $color ui_temp matches 3 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"スタート時の色: 黒","color":"white"}]
execute if score $mode ui_temp matches 1 if score $color ui_temp matches 4 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"スタート時の色: 緑","color":"white"}]
execute if score $mode ui_temp matches 1 if score $color ui_temp matches 5 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"スタート時の色: 茶色","color":"white"}]
execute if score $mode ui_temp matches 1 run scoreboard players operation @e[tag=map_core,sort=nearest,limit=1] map_default_color = $color ui_temp
