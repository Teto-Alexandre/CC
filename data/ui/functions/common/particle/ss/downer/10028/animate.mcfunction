#Particles Generated with: Cloud Wolf's Particle Grapher
teleport @s ~ ~ ~ ~30 0
scoreboard objectives add cw_particleplot dummy
function ui:common/particle/ss/downer/10028/l1/l1_0
scoreboard players add @s cw_particleplot 1

#
scoreboard players operation $team ui_temp = @s ui_team
function ui:common/particle/ss/downer/10028/particle_paint_3
execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp

#
#execute if score $is ui_temp matches 300.. run kill @s