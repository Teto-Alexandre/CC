#見た目
    data modify storage ui:temp Name set value '{"text":"爆風","color":"gray"}'
    execute if data entity @s data.DisplayName run data modify storage ui:temp Name set from entity @s data.DisplayName
    function ui:template/sphere_particle/4
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 25
    execute at @e[distance=3.2..4,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 40
    execute at @e[distance=2.5..3.2,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 70
    execute at @e[distance=1.9..2.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 80
    execute at @e[distance=..1.9,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    function ui:tmw/237/misc/particle_paint
    kill @e[tag=ui_temp_particle]
    playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.2 0.6 0
    particle flash ~ ~ ~ 0 0 0 0 1 force
