scoreboard players operation @s player_x_old = @s player_x
scoreboard players operation @s player_y_old = @s player_y
scoreboard players operation @s player_z_old = @s player_z
execute store result score @s player_x run data get entity @s Pos[0] 10
execute store result score @s player_y run data get entity @s Pos[1] 10
execute store result score @s player_z run data get entity @s Pos[2] 10

scoreboard players operation #x_temp ui_temp = @s player_x_old
scoreboard players operation #y_temp ui_temp = @s player_y_old
scoreboard players operation #z_temp ui_temp = @s player_z_old
scoreboard players operation #x_temp ui_temp -= @s player_x
scoreboard players operation #y_temp ui_temp -= @s player_y
scoreboard players operation #z_temp ui_temp -= @s player_z
scoreboard players operation #x_temp ui_temp *= #x_temp ui_temp
scoreboard players operation #y_temp ui_temp *= #y_temp ui_temp
scoreboard players operation #z_temp ui_temp *= #z_temp ui_temp
scoreboard players operation #x_temp ui_temp += #y_temp ui_temp
scoreboard players operation #x_temp ui_temp += #z_temp ui_temp

data merge storage ui:common {input:{Mode:"sqrt",Var:1}}
execute store result storage ui:common input.Var int 1 run scoreboard players get #x_temp ui_temp
function ui:common/distance

scoreboard players operation @s monitor_player_speed = $Return ui_temp
