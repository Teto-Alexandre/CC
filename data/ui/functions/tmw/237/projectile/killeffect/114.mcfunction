#見た目
    data modify storage ui:temp Name set value '{"text":"ウルトラハンコ","color":"gold"}'
    function ui:template/sphere_particle/3.5
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 180
    execute at @e[distance=..3.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    function ui:tmw/237/misc/particle_paint
    kill @e[tag=ui_temp_particle]
    playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 1.6 0.8 0
    particle flash ~ ~ ~ 0 0 0 0 1 force