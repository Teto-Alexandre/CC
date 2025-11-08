# グレートバリア
tag @e[tag=ui_c_hitbox,distance=6..7,tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] add tmw237.temp.hit
execute at @e[tag=ui_c_hitbox,distance=6..7,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit
playsound item.shield.block player @a ~ ~ ~ 0.6 1.2 0
particle crit ~ ~ ~ 0 0 0 1 10 force
execute if entity @e[tag=tmw237.temp.hit] run tag @e[tag=tmw237.temp.hit] remove tmw237.temp.hit
execute if entity @a[tag=tmw237.temp.hit] run tag @a[tag=tmw237.temp.hit] remove tmw237.temp.hit