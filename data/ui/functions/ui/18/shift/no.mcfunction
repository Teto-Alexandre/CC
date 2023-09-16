execute as @e[tag=ui_18] at @s run particle dust 0 0 0 2 ~ ~1 ~ 3 1 3 1 50 force
execute as @e[tag=ui_18] at @s run playsound block.beacon.deactivate player @a ~ ~ ~ 1 1 0

scoreboard players set $area_color ui_temp 0
scoreboard players add $area_progress_boost ui_temp 2

tellraw @a [{"text":"エリアが開放された！","color": "white"}]