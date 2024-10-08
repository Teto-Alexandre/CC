# サブダメージ
    execute if entity @s[tag=subdamage] run scoreboard players set $subdamage ui_temp 1

# 重複してヒットしない
    tag @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] add ui_temp_attacked_free

# 命中処理ー消滅しない
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!ui_resistance,nbt=!{Invulnerable:1b},type=player] as @a if score @s ui_id = $id ui_temp at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.7 1.2 0
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!ui_resistance,nbt=!{Invulnerable:1b},tag=entity.hitbox] as @a if score @s ui_id = $id ui_temp at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.7 1.2 0
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!ui_resistance,nbt=!{Invulnerable:1b},type=!player,tag=!entity.hitbox] as @a if score @s ui_id = $id ui_temp at @s run playsound block.note_block.basedrum player @s ~ ~ ~ 0.7 1.0 0
    execute if score @s ui_bpart matches 11 as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!ui_resistance,nbt=!{Invulnerable:1b}] run scoreboard players operation $damage ui_temp = @e[tag=ui_temp_this,limit=1] ui_fhd
    execute if score @s ui_bpart matches -11 as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!ui_resistance,nbt=!{Invulnerable:1b}] run scoreboard players operation $damage ui_temp = @e[tag=ui_temp_this,limit=1] ui_fhd
    execute if score @s ui_bpart matches 17 as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] if entity @s[tag=!ui_resistance,nbt=!{Invulnerable:1b}] as @a if score @s ui_id = $id ui_temp at @s run scoreboard players operation $damage ui_temp /= #2 ui_num
    data modify storage ui:temp Name set from entity @s ArmorItems.[0].tag.display.Name
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run tag @s add tmw237.temp.hit
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/237/projectile/hit_ent
    tag @e[tag=tmw237.temp.hit] remove tmw237.temp.hit

#
    scoreboard players reset $subdamage ui_temp