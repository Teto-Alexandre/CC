# これです
    tag @s add ui_temp_this

# 初期衝撃波
    execute if entity @s[tag=!tmw_237_proj_first] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}

    #リフレク不可
        execute if entity @s[tag=!tmw_237_proj_first] run tag @e[tag=ui_temp_unpower] add ui_refd
        execute if entity @s[tag=!tmw_237_proj_first] run tag @e[tag=ui_temp_unpower] add tmw_237_noref
    
    # 弾にデータを込める
        execute if entity @s[tag=!tmw_237_proj_first] as @e[tag=ui_temp_unpower] run function ui:tmw/237/projectile/move/12.1
        execute if entity @s[tag=!tmw_237_proj_first] run scoreboard players operation @e[tag=ui_temp_unpower] ui_id = @s ui_id
        execute if entity @s[tag=!tmw_237_proj_first] run scoreboard players operation @e[tag=ui_temp_unpower] ui_team = @s ui_team
        execute if entity @s[tag=!tmw_237_proj_first] run scoreboard players operation @e[tag=ui_temp_unpower] ui_is = @s ui_is
        execute if entity @s[tag=!tmw_237_proj_first] run scoreboard players operation @e[tag=ui_temp_unpower] ui_br = @s ui_fhl
        execute if entity @s[tag=!tmw_237_proj_first] run scoreboard players operation @e[tag=ui_temp_unpower] ui_dmg = @s ui_fhd
        execute if entity @s[tag=!tmw_237_proj_first] run data modify entity @e[tag=ui_temp_unpower,limit=1] ArmorItems.[0].tag.display.Name set from entity @s ArmorItems.[0].tag.display.Name
        execute if entity @s[tag=!tmw_237_proj_first] run tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
        execute if entity @s[tag=!tmw_237_proj_first] run scoreboard players add $temp ui_temp 10

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
