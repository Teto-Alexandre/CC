#見た目
    data modify storage ui:temp Name set value '{"text":"デッドリーチャージ","color":"gold"}'
    function ui:template/sphere_particle/7
    scoreboard players set $damage_type ui_temp 3
    #summon zombie ~ ~ ~ {NoAI:1b,Glowing:1b}
    scoreboard players set $damage ui_temp 160
    execute at @e[distance=5.5..8,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 480
    execute at @e[distance=..5.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    function ui:tmw/237/misc/particle_paint
    kill @e[tag=ui_temp_particle]
    playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 2 0.7 0
    playsound entity.generic.explode player @a ~ ~ ~ 2 0.7 0
    particle flash ~ ~ ~ 0 0 0 0 1 force