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

execute if score $blue wool_count matches 1.. run tellraw @a ["",{"text":"青チーム: "},{"score":{"name":"$blue","objective":"wool_count"},"color":"aqua"},{"text":"P (","color":"aqua"},{"score":{"name":"$blue_p","objective":"wool_count"},"color":"aqua"},{"text":"%)","color":"aqua"}]
execute if score $red wool_count matches 1.. run tellraw @a ["",{"text":"赤チーム: "},{"score":{"name":"$red","objective":"wool_count"},"color":"light_purple"},{"text":"P (","color":"light_purple"},{"score":{"name":"$red_p","objective":"wool_count"},"color":"light_purple"},{"text":"%)","color":"light_purple"}]
execute if score $yellow wool_count matches 1.. run tellraw @a ["",{"text":"黄チーム: "},{"score":{"name":"$yellow","objective":"wool_count"},"color":"yellow"},{"text":"P (","color":"yellow"},{"score":{"name":"$yellow_p","objective":"wool_count"},"color":"yellow"},{"text":"%)","color":"yellow"}]
execute if score $green wool_count matches 1.. run tellraw @a ["",{"text":"緑チーム: "},{"score":{"name":"$green","objective":"wool_count"},"color":"green"},{"text":"P (","color":"green"},{"score":{"name":"$green_p","objective":"wool_count"},"color":"green"},{"text":"%)","color":"green"}]

execute unless score $gamemode ui_world matches 1.. if score $blue wool_count > $red wool_count if score $blue wool_count > $yellow wool_count if score $blue wool_count > $green wool_count run tag @e[scores={ui_team=1}] add win
execute unless score $gamemode ui_world matches 1.. if score $red wool_count > $blue wool_count if score $red wool_count > $yellow wool_count if score $red wool_count > $green wool_count run tag @e[scores={ui_team=2}] add win
execute unless score $gamemode ui_world matches 1.. if score $yellow wool_count > $blue wool_count if score $yellow wool_count > $red wool_count if score $yellow wool_count > $green wool_count run tag @e[scores={ui_team=3}] add win
execute unless score $gamemode ui_world matches 1.. if score $green wool_count > $blue wool_count if score $green wool_count > $red wool_count if score $green wool_count > $yellow wool_count run tag @e[scores={ui_team=4}] add win

execute if score $blue_p wool_count matches 100.. run advancement grant @a only ui:hidden/misc/too_small
execute if score $red_p wool_count matches 100.. run advancement grant @a only ui:hidden/misc/too_small
execute if score $yellow_p wool_count matches 100.. run advancement grant @a only ui:hidden/misc/too_small
execute if score $green_p wool_count matches 100.. run advancement grant @a only ui:hidden/misc/too_small

execute if score $blue wool_count matches 0 if score $red wool_count matches 0 if score $yellow wool_count matches 0 if score $green wool_count matches 0 run advancement grant @a only ui:hidden/misc/white_out

# デフォルトの色を戻す
scoreboard players set $default_color ui_temp 2

schedule function ui:game/end/11.after_count 1s append
