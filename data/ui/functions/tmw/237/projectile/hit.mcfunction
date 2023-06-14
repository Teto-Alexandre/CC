# サブダメージ
    execute if entity @s[tag=subdamage] run scoreboard players set $subdamage ui_temp 1

# 命中処理
    execute if entity @s[tag=!Pierce,tag=!SuperPierce] as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!ui_resistance,nbt=!{Invulnerable:1b},type=player] as @a if score @s ui_id = $id ui_temp at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.7 1.2 0
    execute if entity @s[tag=!Pierce,tag=!SuperPierce] as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!ui_resistance,nbt=!{Invulnerable:1b},tag=entity.hitbox] as @a if score @s ui_id = $id ui_temp at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.7 1.2 0
    execute if entity @s[tag=!Pierce,tag=!SuperPierce] as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!ui_resistance,nbt=!{Invulnerable:1b},type=!player,tag=!entity.hitbox] as @a if score @s ui_id = $id ui_temp at @s run playsound block.note_block.basedrum player @s ~ ~ ~ 0.7 1.0 0
    data modify storage ui:temp Name set from entity @s ArmorItems.[0].tag.display.Name
    execute if entity @s[tag=!Pierce,tag=!SuperPierce] as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/237/projectile/hit_ent

# 貫通命中処理
    execute if entity @s[tag=Pierce] run function ui:tmw/237/projectile/hit.pierce
    execute if entity @s[tag=SuperPierce] run function ui:tmw/237/projectile/hit.pierce

# ストライク近接
    execute if score @s ui_bpart matches 18 run playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 0.7 2 0

# 消失
    execute if entity @s[tag=!SuperPierce,tag=!Pierce] run tag @s add tmw_237_proj_del
    execute if entity @s[tag=!SuperPierce,tag=Pierce] if entity @e[type=!player,type=!skeleton,tag=tmw_237_hit_at_this_move] run tag @s add tmw_237_proj_del

#
    scoreboard players reset $subdamage ui_temp