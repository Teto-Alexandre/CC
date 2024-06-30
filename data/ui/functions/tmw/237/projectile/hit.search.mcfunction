execute if data storage ui:gun temp3.BulletData.hitbox_x if data storage ui:gun temp3.BulletData.hitbox_y run function ui:tmw/237/projectile/hit.calc
tag @s add tmw237.temp.self
execute if data storage ui:gun temp3.BulletData.hitbox_x if data storage ui:gun temp3.BulletData.hitbox_y unless entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/hit.macro with storage ui:gun temp3.BulletData.hitbox
execute unless entity @s[tag=tmw237.temp.is_macro] unless entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/hit.no_macro
tag @s remove tmw237.temp.self
tag @s remove tmw237.temp.is_macro