# 初期衝撃波
    execute if entity @s[tag=tmw_237_proj_del] if predicate ui:percentage/10 run function ui:tmw/237/projectile/move/117/shot

#見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/117/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/117/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/117/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/117/4

# 当たり判定拡張
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^0.4 ^ ^0.2 run function ui:tmw/237/projectile/hit.search
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^-0.4 ^ ^0.2 run function ui:tmw/237/projectile/hit.search
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^0.4 ^0.2 run function ui:tmw/237/projectile/hit.search
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^-0.4 ^0.2 run function ui:tmw/237/projectile/hit.search

# 消す
    #execute if entity @s[tag=!proj_func_end] run ride @p dismount
    #execute if entity @s[tag=!proj_func_end] run ride @p mount @s
    tag @s add proj_func_end
    execute if entity @s[tag=tmw_237_proj_del] at @s run teleport @s ^ ^ ^-0.5
    execute if entity @s[tag=tmw_237_proj_del] run scoreboard players add @s ui_is 1
    execute if entity @s[tag=tmw_237_proj_del] run scoreboard players operation @s ui_br += @s ui_bm
    execute if entity @s[tag=tmw_237_proj_del] if block ~ ~ ~ #ui:nocol_excludes_irons if score @s ui_is matches 60.. run function ui:tmw/237/projectile/kill
    execute if entity @s[tag=tmw_237_proj_del] if score @s ui_is matches 200.. run function ui:tmw/237/projectile/kill
