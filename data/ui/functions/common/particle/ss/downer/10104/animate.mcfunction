#Particles Generated with: Cloud Wolf's Particle Grapher
scoreboard objectives add cw_particleplot dummy
execute unless score @s cw_particleplot matches 0.. run scoreboard players set @s cw_particleplot 0
function ui:common/particle/ss/downer/10104/l1/l1_0
scoreboard players add @s cw_particleplot 1

scoreboard players operation $team ui_temp = @s ui_team
function ui:tmw/237/misc/particle_paint

#
execute if score $is ui_temp matches 1 run playsound entity.generic.explode player @a ~ ~ ~ 1 1 0
scoreboard players operation $is2 ui_temp = @s ui_is2
execute if score $is2 ui_temp matches 1 if score $is ui_temp matches 3 run data merge storage ui:common {input:{Mode:"create",Var:-10103,Var2:1}}
execute if score $is2 ui_temp matches 2 if score $is ui_temp matches 3 run data merge storage ui:common {input:{Mode:"create",Var:-10105,Var2:2}}
execute if score $is2 ui_temp matches 1..2 if score $is ui_temp matches 3 run function ui:common/particle
execute if score $is ui_temp matches 10.. run kill @s

# 爆風
    execute if score $is ui_temp matches 2 run data modify storage ui:temp Name set value '{"text":"ミアレブレイバー・Ｒ","color":"gold"}'
    execute if score $is ui_temp matches 2 run scoreboard players set $damage_type ui_temp 3
    execute if score $is ui_temp matches 2 run scoreboard players set $damage ui_temp 45
    execute if score $is ui_temp matches 2 run execute at @e[distance=..2,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
