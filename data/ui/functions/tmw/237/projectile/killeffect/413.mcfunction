#見た目
    data modify storage ui:temp Name set value '{"text":"爆裂インク","color":"gold"}'
    function ui:template/sphere_particle/4
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 20
    execute at @e[distance=3..5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.unres
    scoreboard players set $damage ui_temp 40
    execute at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.unres
    function ui:tmw/237/misc/particle_paint
    kill @e[tag=ui_temp_particle]
    playsound entity.generic.explode player @a ~ ~ ~ 2 1.6 0
    particle flash ~ ~ ~ 0 0 0 0 1 force