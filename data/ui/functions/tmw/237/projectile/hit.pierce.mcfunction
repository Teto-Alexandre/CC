# 貫通命中処理
    execute if score $sub352 ui_temp matches 1 at @e[tag=tmw237.temp.hit,sort=nearest,limit=1] if entity @e[tag=ui_c_hitbox,distance=0] at @s run tag @s add tmw_237_pierce_hit_hitbox

    execute as @e[tag=tmw237.temp.hit] if entity @s[tag=tmw_237_pierce_hit] at @s run tag @s add tmw_237_pierce_temp
    execute if entity @e[tag=tmw_237_pierce_temp] run tag @s add tmw_237_pierce_unattacked
    execute if entity @e[tag=tmw_237_pierce_temp] run tag @e[tag=tmw_237_pierce_temp] add tmw_237_pierce_unhit
    tag @e[tag=tmw_237_pierce_temp] remove tmw_237_pierce_temp

    execute if entity @s[tag=!tmw_237_pierce_hit_hitbox] as @e[tag=tmw237.temp.hit] if entity @s[tag=!tmw_237_pierce_hit,tag=!ui_resistance,nbt=!{Invulnerable:1b},type=player] as @a if score @s ui_id = $id ui_temp at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.7 1.2 0
    execute if entity @s[tag=!tmw_237_pierce_hit_hitbox] as @e[tag=tmw237.temp.hit] if entity @s[tag=!tmw_237_pierce_hit,tag=!ui_resistance,nbt=!{Invulnerable:1b},type=!player] as @a if score @s ui_id = $id ui_temp at @s run playsound block.note_block.basedrum player @s ~ ~ ~ 0.7 1.0 0
    execute if entity @s[tag=!tmw_237_pierce_hit_hitbox] as @e[tag=tmw237.temp.hit] if entity @s[tag=!tmw_237_pierce_hit] at @s run function ui:tmw/237/projectile/hit_ent
    execute if entity @s[tag=!tmw_237_pierce_hit_hitbox] as @e[tag=tmw237.temp.hit] if entity @s[tag=!tmw_237_pierce_hit] run tag @s add tmw_237_pierce_temp
    execute if entity @s[tag=!tmw_237_pierce_hit_hitbox] as @e[tag=tmw237.temp.hit] run tag @s add tmw_237_hit_at_this_move

    execute if entity @s[tag=tmw_237_pierce_hit_hitbox] as @e[tag=ui_c_hitbox,tag=tmw237.temp.hit,sort=nearest,limit=1] if entity @s[tag=!tmw_237_pierce_hit,tag=!ui_resistance,nbt=!{Invulnerable:1b},type=player] as @a if score @s ui_id = $id ui_temp at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.7 1.2 0
    execute if entity @s[tag=tmw_237_pierce_hit_hitbox] as @e[tag=ui_c_hitbox,tag=tmw237.temp.hit,sort=nearest,limit=1] if entity @s[tag=!tmw_237_pierce_hit,tag=!ui_resistance,nbt=!{Invulnerable:1b},type=!player] as @a if score @s ui_id = $id ui_temp at @s run playsound block.note_block.basedrum player @s ~ ~ ~ 0.7 1.0 0
    execute if entity @s[tag=tmw_237_pierce_hit_hitbox] as @e[tag=ui_c_hitbox,tag=tmw237.temp.hit,sort=nearest,limit=1] if entity @s[tag=!tmw_237_pierce_hit] at @s run function ui:tmw/237/projectile/hit_ent
    execute if entity @s[tag=tmw_237_pierce_hit_hitbox] as @e[tag=ui_c_hitbox,tag=tmw237.temp.hit,sort=nearest,limit=1] if entity @s[tag=!tmw_237_pierce_hit] run tag @s add tmw_237_pierce_temp
    execute if entity @s[tag=tmw_237_pierce_hit_hitbox] as @e[tag=ui_c_hitbox,tag=tmw237.temp.hit,sort=nearest,limit=1] run tag @s add tmw_237_hit_at_this_move

    execute if entity @e[tag=tmw_237_pierce_temp] run tag @e[tag=tmw_237_pierce_temp] add tmw_237_pierce_hit
    execute if entity @e[tag=tmw_237_pierce_temp] run tag @e[tag=tmw_237_pierce_temp] add tmw_237_pierce_unhit
    execute if entity @e[tag=tmw_237_pierce_temp] run tag @s add tmw_237_pierce_attacked
    execute if entity @e[tag=tmw_237_pierce_temp] run tag @s add tmw_237_pierce_unattacked
    execute if entity @e[tag=tmw_237_pierce_temp] if score @s ui_bpart matches 109 run scoreboard players set @s ui_br_temp 0
    execute if entity @e[tag=tmw_237_pierce_temp] if score @s ui_bpart matches 109 run scoreboard players set @s ui_is2 0
    tag @s remove tmw_237_pierce_hit_hitbox
    tag @e[tag=tmw_237_pierce_temp] remove tmw_237_pierce_temp