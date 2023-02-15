# チョコレートボム

# 常時実行
    scoreboard players operation $temp ui_temp = @s ui_team
    execute if score @s ui_uses matches 10 run particle dust 0 0 0 2 ~ ~0.3 ~ 0.5 0.5 0.5 0 10 force
    execute if score @s ui_uses matches 10 run playsound block.redstone_torch.burnout player @a ~ ~ ~ 1 1.8 0
    execute if score @s ui_uses matches 20 run particle dust 0 0 0 2 ~ ~0.3 ~ 0.5 0.5 0.5 0 10 force
    execute if score @s ui_uses matches 20 run playsound block.redstone_torch.burnout player @a ~ ~ ~ 1 1.8 0
    execute if score @s ui_uses matches 30 run particle dust 0 0 0 2 ~ ~0.3 ~ 0.5 0.5 0.5 0 10 force
    execute if score @s ui_uses matches 30 run playsound block.redstone_torch.burnout player @a ~ ~ ~ 1 1.8 0
    execute if score @s ui_uses matches 40 run particle dust 0 0 0 2 ~ ~0.3 ~ 0.5 0.5 0.5 0 10 force
    execute if score @s ui_uses matches 40 run playsound block.redstone_torch.burnout player @a ~ ~ ~ 1 1.8 0
    execute if score @s ui_uses matches 45 run particle crit ~ ~0.3 ~ 0.5 0.5 0.5 1 20 force
    execute if score @s ui_uses matches 45 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.5 0
    execute if score @s ui_uses matches 50 run particle crit ~ ~0.3 ~ 0.5 0.5 0.5 1 20 force
    execute if score @s ui_uses matches 50 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.5 0
    execute if score @s ui_uses matches 55 run particle crit ~ ~0.3 ~ 0.5 0.5 0.5 1 20 force
    execute if score @s ui_uses matches 55 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.5 0
    execute if score @s ui_uses matches 60.. run tag @s add ui_237_sub_explode

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] rotated ~ 0 run function ui:tmw/237/sub/explosive/117/end