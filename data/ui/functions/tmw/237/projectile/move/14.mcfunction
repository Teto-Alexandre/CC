
# 当たり判定拡張
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^0.2 ^ run function ui:tmw/237/projectile/hit.search
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^-0.2 ^ ^ run function ui:tmw/237/projectile/hit.search
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^-0.4 ^ run function ui:tmw/237/projectile/hit.search

# 見た目
    scoreboard players operation $temp ui_temp = $world ui_tc
    scoreboard players operation $temp ui_temp %= #2 ui_num
    execute if score $temp ui_temp matches 0 if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/14/1
    execute if score $temp ui_temp matches 0 if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/14/2
    execute if score $temp ui_temp matches 0 if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/14/3
    execute if score $temp ui_temp matches 0 if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/14/4

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
