#Particles Generated with: Cloud Wolf's Particle Grapher
teleport @s ~ ~ ~ ~5.5 0
scoreboard objectives add cw_particleplot dummy
function ui:common/particle/ss/downer/10023/l1/l1_0
scoreboard players add @s cw_particleplot 1
execute if score @s cw_particleplot matches 20.. run scoreboard players set @s cw_particleplot 0

#
scoreboard players operation $team ui_temp = @s ui_team
function ui:tmw/237/misc/particle_paint

#
#execute if score $is ui_temp matches 300.. run kill @s