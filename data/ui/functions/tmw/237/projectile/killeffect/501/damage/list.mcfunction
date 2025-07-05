#say b

data modify storage ui:temp temp.explodion.list.damage set from storage ui:gun temp3.BulletData.Explosion.damage
data modify storage ui:temp temp.explodion.list.range set from storage ui:gun temp3.BulletData.Explosion.range

execute store result score #count_damage_list ui_temp run data get storage ui:temp temp.explodion.list.damage

execute if score #count_damage_list ui_temp matches 1.. run function ui:tmw/237/projectile/killeffect/501/damage/list.lp

scoreboard players reset #count_damage_list ui_temp