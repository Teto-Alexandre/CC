#
function ui:common/particle/ss/downer/10028/particle

#
function ui:tmw/237/misc/particle_paint
execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp