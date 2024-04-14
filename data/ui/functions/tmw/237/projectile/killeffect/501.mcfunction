#見た目
    data modify storage ui:temp Name set value '{"text":"爆風","color":"gray"}'

    execute if data storage ui:gun temp3.BulletData.Explodion.name run data modify storage ui:temp Name set from storage ui:gun temp3.BulletData.Explodion.name
    execute unless data storage ui:gun temp3.BulletData.Explodion.name if data storage ui:gun temp3.BulletData.Explodion.Name run data modify storage ui:temp Name set from storage ui:gun temp3.BulletData.Explodion.Name

    execute if data storage ui:gun temp3.BulletData.Explodion.command run function ui:tmw/237/projectile/killeffect/501/command/

    execute if data storage ui:gun temp3.BulletData.Explodion.paint run function ui:tmw/237/projectile/killeffect/501/paint with storage ui:gun temp3.BulletData.Explodion

    scoreboard players set $damage_type ui_temp 3
    execute if data storage ui:gun temp3.BulletData.Explodion.damage if data storage ui:gun temp3.BulletData.Explodion.range run function ui:tmw/237/projectile/killeffect/501/damage/

    function ui:tmw/237/misc/particle_paint

    kill @e[tag=ui_temp_particle]

    execute unless data storage ui:gun temp3.BulletData.Explodion.sound run playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.6 1 0
    execute if data storage ui:gun temp3.BulletData.Explodion.sound run function ui:tmw/237/projectile/killeffect/501/sound/

    particle flash ~ ~ ~ 0 0 0 0 1 force