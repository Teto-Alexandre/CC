# 同じチームの加速検知
execute if entity @e[tag=ui_c_hitbox,distance=..5,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hitbox2