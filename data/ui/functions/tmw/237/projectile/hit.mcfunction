# サブダメージ
    execute if entity @s[tag=subdamage] run scoreboard players set $subdamage ui_temp 1

# 命中処理
    execute unless entity @s[tag=Pierce] as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!ui_resistance,nbt=!{Invulnerable:1b},type=player] as @a if score @s ui_id = $id ui_temp at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.7 1.2 0
    execute unless entity @s[tag=Pierce] as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!ui_resistance,nbt=!{Invulnerable:1b},type=!player] as @a if score @s ui_id = $id ui_temp at @s run playsound block.note_block.basedrum player @s ~ ~ ~ 0.7 1.0 0
    data modify storage ui:temp Name set from entity @s ArmorItems.[0].tag.display.Name
    execute unless entity @s[tag=Pierce] as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/237/projectile/hit_ent

# 貫通命中処理
    execute if entity @s[tag=Pierce] as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=tmw_237_pierce_hit] at @s run tag @s add tmw_237_pierce_temp
    execute if entity @s[tag=Pierce] if entity @e[tag=tmw_237_pierce_temp] run tag @s add tmw_237_pierce_unattacked
    execute as @e[tag=tmw_237_pierce_temp] run tag @s remove tmw_237_pierce_temp

    execute if entity @s[tag=Pierce] as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!tmw_237_pierce_hit,tag=!ui_resistance,nbt=!{Invulnerable:1b},type=player] as @a if score @s ui_id = $id ui_temp at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.7 1.2 0
    execute if entity @s[tag=Pierce] as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!tmw_237_pierce_hit,tag=!ui_resistance,nbt=!{Invulnerable:1b},type=!player] as @a if score @s ui_id = $id ui_temp at @s run playsound block.note_block.basedrum player @s ~ ~ ~ 0.7 1.0 0
    execute if entity @s[tag=Pierce] as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!tmw_237_pierce_hit] at @s run function ui:tmw/237/projectile/hit_ent
    execute if entity @s[tag=Pierce] as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!tmw_237_pierce_hit] run tag @s add tmw_237_pierce_temp
    execute if entity @s[tag=Pierce] as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!tmw_237_pierce_hit] run tag @s add tmw_237_pierce_hit
    execute if entity @e[tag=tmw_237_pierce_temp] run tag @s add tmw_237_pierce_attacked
    execute if entity @e[tag=tmw_237_pierce_temp] run tag @s add tmw_237_pierce_unattacked
    execute if entity @e[tag=tmw_237_pierce_temp] if score @s ui_bpart matches 109 run scoreboard players add @s ui_is 1
    execute if entity @e[tag=tmw_237_pierce_temp] if score @s ui_bpart matches 109 run function ui:tmw/237/projectile/killeffect/3
    execute if entity @e[tag=tmw_237_pierce_temp] if score @s ui_bpart matches 109 run scoreboard players set @s ui_br_temp 0
    execute if entity @e[tag=tmw_237_pierce_temp] if score @s ui_bpart matches 109 if score @s ui_is matches 5.. run tag @s add tmw_237_proj_del
    execute as @e[tag=tmw_237_pierce_temp] run tag @s remove tmw_237_pierce_temp

# 消失
    execute unless entity @s[tag=Pierce] run tag @s add tmw_237_proj_del

#
    scoreboard players reset $subdamage ui_temp