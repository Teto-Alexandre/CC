#見た目
    data modify storage ui:temp Name set value '{"text":"ジェットパック","color":"gold"}'
    function ui:template/sphere_particle/2.5
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 100
    execute at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    function ui:tmw/237/misc/particle_paint
    kill @e[tag=ui_temp_particle]
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound entity.generic.explode player @a ~ ~ ~ 0.8 1.6 0
    playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.8 0.8 0
