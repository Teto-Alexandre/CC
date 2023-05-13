# これです
    tag @s add ui_temp_this

# 初期衝撃波
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 0.. positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 1.. positioned ^ ^ ^1 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 2.. positioned ^ ^ ^2 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 3.. positioned ^ ^ ^3 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 4.. positioned ^ ^ ^4 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 5.. positioned ^ ^ ^5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 6.. positioned ^ ^ ^6 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 7.. positioned ^ ^ ^7 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 8.. positioned ^ ^ ^8 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 9.. positioned ^ ^ ^9 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 10.. positioned ^ ^ ^10 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 11.. positioned ^ ^ ^11 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 12.. positioned ^ ^ ^12 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 1.. positioned ^ ^ ^1 run particle enchanted_hit ~ ~ ~ 0.3 0.3 0.3 1 10 force
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 3.. positioned ^ ^ ^3 run particle enchanted_hit ~ ~ ~ 0.3 0.3 0.3 1 10 force
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 6.. positioned ^ ^ ^6 run particle enchanted_hit ~ ~ ~ 0.3 0.3 0.3 1 10 force
    execute if entity @s[tag=!tmw_237_proj_first] if score @s ui_fhl matches 10.. positioned ^ ^ ^10 run particle enchanted_hit ~ ~ ~ 0.3 0.3 0.3 1 10 force
    execute if entity @s[tag=!tmw_237_proj_first] run tag @s add tmw_237_proj_first
    
#
    tag @s remove ui_temp_this

# 当たり判定拡張
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^0.4 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^ ^0.4 ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^-0.4 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^ ^-0.4 ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^0.8 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^ ^0.8 ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^-0.8 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^ ^-0.8 ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^1.2 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^ ^1.2 ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^-1.2 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^ ^-1.2 ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit

# 見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/12/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/12/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/12/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/12/4

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
