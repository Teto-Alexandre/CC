tag @s add tmw237.temp.is_macro

$execute positioned ~-0.5 ~-0.5 ~-0.5 positioned ~$(posx) ~$(posy) ~$(posx) as @e[dx=1,dy=1,dz=1,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @e[tag=tmw237.temp.self,limit=1] positioned ~0.5 ~0.5 ~0.5 positioned ~$(negx) ~$(negy) ~$(negx) if entity @s[dx=-1,dy=-1,dz=-1] run tag @s add tmw237.temp.hit
execute if entity @e[tag=tmw237.temp.hit] run function ui:tmw/237/projectile/hit
tag @e[tag=tmw237.temp.hit] remove tmw237.temp.hit
tag @a[tag=tmw237.temp.hit] remove tmw237.temp.hit

$execute positioned ~-0.5 ~-0.5 ~-0.5 positioned ~$(posx) ~$(posy) ~$(posx) as @e[dx=1,dy=1,dz=1,tag=ui_17_3] at @e[tag=tmw237.temp.self,limit=1] positioned ~0.5 ~0.5 ~0.5 positioned ~$(negx) ~$(negy) ~$(negx) if entity @s[dx=-1,dy=-1,dz=-1] run tag @e[tag=tmw237.temp.self,limit=1] add tmw_237_proj_del