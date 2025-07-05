#say b

data modify storage ui:temp temp.explodion.list set from storage ui:gun temp3.BulletData.Explosion.command

execute store result score #count_command_list ui_temp run data get storage ui:temp temp.explodion.list
execute if score #count_command_list ui_temp matches 1.. run function ui:tmw/237/projectile/killeffect/501/command/list.lp

scoreboard players reset #count_command_list ui_temp
data remove storage ui:temp temp.explodion