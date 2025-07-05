#$say $(command)
execute unless data storage ui:gun temp3.BulletData.Explosion.damage[0] run data modify storage ui:temp temp.explodion.damage set from storage ui:gun temp3.BulletData.Explosion.damage
execute store result score $damage ui_temp run data get storage ui:temp temp.explodion.damage 10

$execute at @e[distance=..$(range),tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!tmw237_explode_attacked] run function ui:tmw/237/projectile/hit.marker
$execute as @e[distance=..$(range),tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!tmw237_explode_attacked] run tag @s add tmw237_explode_attacked