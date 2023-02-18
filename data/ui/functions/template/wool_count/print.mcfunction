scoreboard players operation $blue_p wool_count = $blue wool_count
scoreboard players operation $red_p wool_count = $red wool_count
scoreboard players operation $yellow_p wool_count = $yellow wool_count
scoreboard players operation $green_p wool_count = $green wool_count
scoreboard players operation $blue_p wool_count *= #100 ui_num
scoreboard players operation $red_p wool_count *= #100 ui_num
scoreboard players operation $yellow_p wool_count *= #100 ui_num
scoreboard players operation $green_p wool_count *= #100 ui_num
scoreboard players operation $blue_p wool_count /= $wool wool_count
scoreboard players operation $red_p wool_count /= $wool wool_count
scoreboard players operation $yellow_p wool_count /= $wool wool_count
scoreboard players operation $green_p wool_count /= $wool wool_count
execute if score $wool wool_count matches 0 run scoreboard players set $blue_p wool_count 100
execute if score $wool wool_count matches 0 run scoreboard players set $red_p wool_count 100
execute if score $wool wool_count matches 0 run scoreboard players set $yellow_p wool_count 100
execute if score $wool wool_count matches 0 run scoreboard players set $green_p wool_count 100

tellraw @a ["",{"text":"青チーム: "},{"score":{"name":"$blue","objective":"wool_count"},"color":"aqua"},{"text":"P (","color":"aqua"},{"score":{"name":"$blue_p","objective":"wool_count"},"color":"aqua"},{"text":"%)","color":"aqua"}]
tellraw @a ["",{"text":"赤チーム: "},{"score":{"name":"$red","objective":"wool_count"},"color":"light_purple"},{"text":"P (","color":"light_purple"},{"score":{"name":"$red_p","objective":"wool_count"},"color":"light_purple"},{"text":"%)","color":"light_purple"}]
tellraw @a ["",{"text":"黄チーム: "},{"score":{"name":"$yellow","objective":"wool_count"},"color":"yellow"},{"text":"P (","color":"yellow"},{"score":{"name":"$yellow_p","objective":"wool_count"},"color":"yellow"},{"text":"%)","color":"yellow"}]
tellraw @a ["",{"text":"緑チーム: "},{"score":{"name":"$green","objective":"wool_count"},"color":"green"},{"text":"P (","color":"green"},{"score":{"name":"$green_p","objective":"wool_count"},"color":"green"},{"text":"%)","color":"green"}]