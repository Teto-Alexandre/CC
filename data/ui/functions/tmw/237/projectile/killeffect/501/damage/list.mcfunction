#say b

data modify storage ui:temp temp.explodion.damage.list set from storage ui:gun temp3.BulletData.Explodion.damage
data modify storage ui:temp temp.explodion.range.list set from storage ui:gun temp3.BulletData.Explodion.range

execute store result score #count_damage_list ui_temp run data get storage ui:temp temp.explodion.list
execute if score #count_damage_list ui_temp matches 1.. run function ui:tmw/237/projectile/killeffect/501/damage/list.lp

scoreboard players reset #count_damage_list ui_temp