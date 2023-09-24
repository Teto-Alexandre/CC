execute store result score $temp ui_temp run fill ~-5 ~ ~-5 ~5 ~ ~5 stripped_dark_oak_log replace light_blue_wool
fill ~-5 ~ ~-5 ~5 ~ ~5 light_blue_wool replace stripped_dark_oak_log
scoreboard players operation $area_blue ui_temp += $temp ui_temp
execute store result score $temp ui_temp run fill ~-5 ~ ~-5 ~5 ~ ~5 stripped_dark_oak_log replace yellow_wool
fill ~-5 ~ ~-5 ~5 ~ ~5 yellow_wool replace stripped_dark_oak_log
scoreboard players operation $area_yellow ui_temp += $temp ui_temp
fill ~-5 ~ ~-5 ~5 ~ ~5 gray_wool replace black_wool