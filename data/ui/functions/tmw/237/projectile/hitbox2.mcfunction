# 同じチームの加速検知
execute at @e[tag=ui_c_hitbox,distance=6..7,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit
playsound item.shield.block player @a ~ ~ ~ 0.6 1.2 0
particle crit ~ ~ ~ 0 0 0 1 10 force