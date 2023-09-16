execute as @e[tag=ui_18_rad4] at @s run fill ~-4 ~ ~-4 ~4 ~ ~4 yellow_wool replace #ui:wools_include_black
execute as @e[tag=ui_18_rad5] at @s run fill ~-5 ~ ~-5 ~5 ~ ~5 yellow_wool replace #ui:wools_include_black
execute as @e[tag=ui_18_rad6] at @s run fill ~-6 ~ ~-6 ~6 ~ ~6 yellow_wool replace #ui:wools_include_black
execute as @e[tag=ui_18_rad7] at @s run fill ~-7 ~ ~-7 ~7 ~ ~7 yellow_wool replace #ui:wools_include_black
execute as @e[tag=ui_18_rad8] at @s run fill ~-8 ~ ~-8 ~8 ~ ~8 yellow_wool replace #ui:wools_include_black

execute as @e[tag=ui_18] at @s run particle flash ~ ~ ~ 0 0 0 1 5 force
execute as @e[tag=ui_18] at @s run playsound entity.player.levelup player @a ~ ~ ~ 1 2 0

scoreboard players set $area_color ui_temp -2
scoreboard players add $area_progress_boost ui_temp 2

tellraw @a [{"text":"黄チームがエリアを確保！","color": "yellow"}]