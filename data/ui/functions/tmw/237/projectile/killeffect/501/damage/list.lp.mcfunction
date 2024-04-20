#say c

data modify storage ui:temp temp.explodion.damage set from storage ui:temp temp.explodion.list.damage[0]
data modify storage ui:temp temp.explodion.range set from storage ui:temp temp.explodion.list.range[0]

function ui:tmw/237/projectile/killeffect/501/damage/simple with storage ui:temp temp.explodion

scoreboard players remove #count_damage_list ui_temp 1
data remove storage ui:temp temp.explodion.list.damage[0]
data remove storage ui:temp temp.explodion.list.range[0]
execute if score #count_damage_list ui_temp matches 1.. run function ui:tmw/237/projectile/killeffect/501/damage/list.lp
