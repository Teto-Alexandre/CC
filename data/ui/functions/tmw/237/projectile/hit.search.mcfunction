function ui:tmw/237/projectile/hit.calc
tag @s add tmw237.temp.self
execute unless entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/hit.macro with storage ui:gun temp3.BulletData.hitbox
tag @s remove tmw237.temp.self