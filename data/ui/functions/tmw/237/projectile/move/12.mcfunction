# これです
    tag @s add ui_temp_this

# 初期衝撃波
    execute if entity @s[tag=!tmw_237_proj_first] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}

    #リフレク不可
        execute if entity @s[tag=!tmw_237_proj_first] run tag @e[tag=ui_temp_unpower] add ui_refd
        execute if entity @s[tag=!tmw_237_proj_first] run tag @e[tag=ui_temp_unpower] add tmw_237_noref
    
    # 弾にデータを込める
        execute if entity @s[tag=!tmw_237_proj_first] run data modify storage ui_temp: Unpower set value {Damage:0,Range:0,RangeType:1,Speed:2000,FlyParticle:18,EndParticle:-1,Name:'',Pierce:1b}
        execute if entity @s[tag=!tmw_237_proj_first] store result storage ui_temp: Unpower.Damage int 1 run scoreboard players get @s ui_fhd
        execute if entity @s[tag=!tmw_237_proj_first] store result storage ui_temp: Unpower.Range int 1 run scoreboard players get @s ui_fhl
        execute if entity @s[tag=!tmw_237_proj_first] run data modify storage ui_temp: Unpower.Name set from entity @s ArmorItems.[0].tag.display.Name
        execute if entity @s[tag=!tmw_237_proj_first] run function ui:tmw/237/misc/unpower

    execute if entity @s[tag=!tmw_237_proj_first] run tag @s add tmw_237_proj_first
    
#
    tag @s remove ui_temp_this

# 当たり判定拡張
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^0.4 ^ run function ui:tmw/237/projectile/hit.search
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^-0.4 ^ run function ui:tmw/237/projectile/hit.search
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^0.8 ^ run function ui:tmw/237/projectile/hit.search
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^-0.8 ^ run function ui:tmw/237/projectile/hit.search
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^1.2 ^ run function ui:tmw/237/projectile/hit.search
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^ ^-1.2 ^ run function ui:tmw/237/projectile/hit.search

# 見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/12/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/12/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/12/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/12/4

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
