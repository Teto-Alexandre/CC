#見た目2
    data merge storage ui:common {input:{Mode:"create",Var:-10110,Var2:0}}
    #data merge storage ui:common {input:{Mode:"create",Var:-10102,Var2:2}}
    function ui:common/particle
    playsound entity.generic.explode player @a ~ ~ ~ 2 0.8 0
    playsound entity.firework_rocket.blast player @a ~ ~ ~ 2 0.8 0
    particle flash ~ ~ ~ 0 0 0 0 1 force

#見た目
    data modify storage ui:temp Name set value '{"text":"ミアレブレイバー・Ｒ","color":"gold"}'
    function ui:template/sphere_particle/2
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 30
    execute at @e[distance=2..5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 60
    execute at @e[distance=..2,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    function ui:tmw/237/misc/particle_paint
    kill @e[tag=ui_temp_particle]
