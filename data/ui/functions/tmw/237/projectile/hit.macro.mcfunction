tag @s add tmw237.temp.is_macro

$execute positioned ~-1 ~-1 ~-1 positioned ~$(posx) ~$(posy) ~$(posx) as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @e[tag=tmw237.temp.self,limit=1] positioned ~$(negx) ~$(negy) ~$(negx) if entity @s[dx=0] run tag @s add tmw237.temp.hit
execute if entity @e[tag=tmw237.temp.hit] run function ui:tmw/237/projectile/hit
execute if entity @e[tag=tmw237.temp.hit] run tag @e[tag=tmw237.temp.hit] remove tmw237.temp.hit
execute if entity @a[tag=tmw237.temp.hit] run tag @a[tag=tmw237.temp.hit] remove tmw237.temp.hit

$execute positioned ~-1 ~-1 ~-1 positioned ~$(posx) ~$(posy) ~$(posx) as @e[dx=0,tag=ui_17_3] at @e[tag=tmw237.temp.self,limit=1] positioned ~$(negx) ~$(negy) ~$(negx) if entity @s[dx=0] run tag @e[tag=tmw237.temp.self,limit=1] add tmw_237_proj_del