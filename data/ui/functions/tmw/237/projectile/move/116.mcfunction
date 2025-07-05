# ダメージ増加
    execute if entity @s[tag=!tmw_237_proj_first] run scoreboard players operation $id.temp ui_temp = @s ui_id
    execute if entity @s[tag=!tmw_237_proj_first] as @a if score @s ui_id = $id.temp ui_temp run tag @s add tmw237_464_temp
    execute if entity @s[tag=!tmw_237_proj_first] run scoreboard players operation $dmg.temp ui_temp = @a[tag=tmw237_464_temp,limit=1] ui_tmw237_drained_damage
    execute if entity @s[tag=!tmw_237_proj_first] run scoreboard players operation $dmg.temp ui_temp /= #2 ui_num
    execute if entity @s[tag=!tmw_237_proj_first] run scoreboard players operation @s ui_dmg += $dmg.temp ui_temp
    execute if entity @s[tag=!tmw_237_proj_first] run scoreboard players operation #calc ui_temp = $dmg.temp ui_temp
    execute if entity @s[tag=!tmw_237_proj_first] run scoreboard players operation #calc ui_temp += #100 ui_num
    execute if entity @s[tag=!tmw_237_proj_first] store result entity @s ArmorItems.[0].tag.BulletData.Explosion.damage float 0.1 run scoreboard players get #calc ui_temp
    execute if entity @s[tag=!tmw_237_proj_first] run scoreboard players reset @a[tag=tmw237_464_temp,limit=1] ui_tmw237_drained_damage
    execute if entity @s[tag=!tmw_237_proj_first] run tag @a[tag=tmw237_464_temp,limit=1] remove ui_c_inkvac
    execute if entity @s[tag=!tmw_237_proj_first] run data modify storage ui:temp Effect set value [{id:"resistance",Duration:20,Amplifier:2b}]
    execute if entity @s[tag=!tmw_237_proj_first] as @a[tag=tmw237_464_temp,limit=1] run function ui:tmw/237/misc/giveeffect/
    execute if entity @s[tag=!tmw_237_proj_first] run tag @a[tag=tmw237_464_temp,limit=1] remove tmw237_464_temp
    execute if entity @s[tag=!tmw_237_proj_first] run tag @s add tmw_237_proj_first

# 見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/1/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/1/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/1/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/1/4

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
