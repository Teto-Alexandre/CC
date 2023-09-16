# これを実行したところから
execute store result score $default_color ui_temp run data get storage ui:map map.color

#int値をブロック中央のdoubleに変更
data merge storage ui:map {map:{temp:[0.0d,0.0d,0.0d]}}
execute store result score $x1 ui_temp run data get storage ui:map map.downer[0] 10
execute store result score $y1 ui_temp run data get storage ui:map map.downer[1] 10
execute store result score $z1 ui_temp run data get storage ui:map map.downer[2] 10
scoreboard players add $x1 ui_temp 5
scoreboard players add $y1 ui_temp 5
scoreboard players add $z1 ui_temp 5
execute store result storage ui:map map.temp[0] double 0.1 run scoreboard players get $x1 ui_temp
execute store result storage ui:map map.temp[1] double 0.1 run scoreboard players get $y1 ui_temp
execute store result storage ui:map map.temp[2] double 0.1 run scoreboard players get $z1 ui_temp
#tellraw @a [{"text":"MapData[Downer]: "},{"storage":"ui:map","nbt":"map.downer"},{"text":", TEMP: "},{"storage":"ui:map","nbt":"map.temp"}]

execute store result score $x1 ui_temp run data get storage ui:map map.downer[0] 1
execute store result score $y1 ui_temp run data get storage ui:map map.downer[1] 1
execute store result score $z1 ui_temp run data get storage ui:map map.downer[2] 1
execute store result score $x2 ui_temp run data get storage ui:map map.upper[0] 1
execute store result score $y2 ui_temp run data get storage ui:map map.upper[1] 1
execute store result score $z2 ui_temp run data get storage ui:map map.upper[2] 1

scoreboard players operation $x2 ui_temp -= $x1 ui_temp
scoreboard players operation $y2 ui_temp -= $y1 ui_temp
scoreboard players operation $z2 ui_temp -= $z1 ui_temp
scoreboard players operation #count_x wool_count = $x2 ui_temp
scoreboard players operation #count_y wool_count = $y2 ui_temp
scoreboard players operation #count_z wool_count = $z2 ui_temp

scoreboard players set $wool wool_count 0
scoreboard players set $blue wool_count 0
scoreboard players set $red wool_count 0
scoreboard players set $yellow wool_count 0
scoreboard players set $green wool_count 0

summon marker 0 0 0 {Tags:["ui_temp_obj","count","count1"]}

#data modify entity @e[tag=ui_temp_obj,limit=1] Pos set from storage ui:map map.downer
data modify entity @e[tag=ui_temp_obj,limit=1] Pos set from storage ui:map map.temp

#say カウント開始
function ui:template/wool_count/ss
