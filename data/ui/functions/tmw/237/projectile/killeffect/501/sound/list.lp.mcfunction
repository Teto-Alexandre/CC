#say c

data modify storage ui:temp temp.explodion.sound set from storage ui:temp temp.explodion.list[0]

function ui:tmw/272/effect/effect_type/sound/simple with storage ui:temp temp.explodion

scoreboard players remove #count_sound_list ui_temp 1
data remove storage ui:temp temp.explodion.list[0]
execute if score #count_sound_list ui_temp matches 1.. run function ui:tmw/237/projectile/killeffect/501/sound/list.lp
