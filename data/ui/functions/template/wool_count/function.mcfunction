# これを実行したところから
scoreboard players operation $map_id ui_temp = @s map_id
execute as @e[tag=map_core] if score @s map_id = $map_id ui_temp run scoreboard players operation $default_color ui_temp = @s map_default_color
execute as @e[tag=map_size_lower] if score @s map_id = $map_id ui_temp run tag @s add lower
execute as @e[tag=map_size_upper] if score @s map_id = $map_id ui_temp run tag @s add upper

execute store result score $x1 ui_temp run data get entity @e[tag=lower,limit=1] Pos[0] 1
execute store result score $y1 ui_temp run data get entity @e[tag=lower,limit=1] Pos[1] 1
execute store result score $z1 ui_temp run data get entity @e[tag=lower,limit=1] Pos[2] 1
execute store result score $x2 ui_temp run data get entity @e[tag=upper,limit=1] Pos[0] 1
execute store result score $y2 ui_temp run data get entity @e[tag=upper,limit=1] Pos[1] 1
execute store result score $z2 ui_temp run data get entity @e[tag=upper,limit=1] Pos[2] 1

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

execute at @e[tag=lower] run summon marker ~ ~ ~ {Tags:["ui_temp_obj","count","count1"]}

tag @e[tag=lower] remove lower
tag @e[tag=upper] remove upper

say カウント開始
function ui:template/wool_count/ss
