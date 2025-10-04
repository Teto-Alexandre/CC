#見た目
    data modify storage ui:temp Name set value '{"text":"爆風","color":"gray"}'
    execute if data entity @s data.DisplayName run data modify storage ui:temp Name set from entity @s data.DisplayName
    function ui:template/sphere_particle/2.5
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 30
    execute at @e[distance=..1.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 60
    execute at @e[distance=1.5..2.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 90
    execute at @e[distance=2.5..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run particle explosion ~ ~0.9 ~ 0 0 0 0 1 force
    execute at @e[distance=2.5..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run playsound entity.generic.explode player @a ~ ~ ~ 1 2 0
    execute at @e[distance=2.5..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    function ui:tmw/237/misc/particle_paint
    kill @e[tag=ui_temp_particle]
    playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 0.65 0
    particle flash ~ ~ ~ 0 0 0 0 1 force
