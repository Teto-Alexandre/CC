#当たり判定拡張
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^0.7 ^ ^ run function ui:tmw/237/projectile/hit.search
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^-0.7 ^ ^ run function ui:tmw/237/projectile/hit.search

#見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/3/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/3/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/3/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/3/4

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
