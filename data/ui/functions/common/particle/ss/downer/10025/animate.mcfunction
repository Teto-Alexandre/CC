#Particles Generated with: Cloud Wolf's Particle Grapher
teleport @s ~ ~ ~ ~5.5 0
scoreboard objectives add cw_particleplot dummy
function ui:common/particle/ss/downer/10025/l1/l1_0
scoreboard players add @s cw_particleplot 1
execute if score @s cw_particleplot matches 20.. run scoreboard players set @s cw_particleplot 0

#
function ui:tmw/237/misc/particle_paint
execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp

#
#execute if score $is ui_temp matches 300.. run kill @s