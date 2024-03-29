# ポイズン

# 常時実行
    scoreboard players operation $temp ui_temp = @s ui_team
    execute as @a unless score @s ui_team = $temp ui_temp run tag @s add ui_temp_temp_team
    execute if score @s ui_uses matches 10.. as @e[type=!#ui:notmob,distance=..5] unless score @s ui_team = $temp ui_temp run function ui:tmw/237/sub/explosive/109/give
    execute if score @s ui_uses matches 10.. run particle dragon_breath ~ ~ ~ 2.5 2.5 2.5 0 15 force
    execute if score @s ui_uses matches 10 run particle dust 0.8 0 0.8 4 ~ ~ ~ 2.5 2.5 2.5 0 60 force @a[tag=ui_temp_temp_team]
    execute if score @s ui_uses matches 50 run particle dust 0.8 0 0.8 4 ~ ~ ~ 2.5 2.5 2.5 0 60 force @a[tag=ui_temp_temp_team]
    execute if score @s ui_uses matches 90 run particle dust 0.8 0 0.8 4 ~ ~ ~ 2.5 2.5 2.5 0 60 force @a[tag=ui_temp_temp_team]
    execute if score @s ui_uses matches 130 run particle dust 0.8 0 0.8 4 ~ ~ ~ 2.5 2.5 2.5 0 60 force @a[tag=ui_temp_temp_team]
    execute if score @s ui_uses matches 170 run particle dust 0.8 0 0.8 4 ~ ~ ~ 2.5 2.5 2.5 0 60 force @a[tag=ui_temp_temp_team]
    execute if score @s ui_uses matches 170.. run tag @s add ui_237_sub_explode

#
    tag @a[tag=ui_temp_temp_team] remove ui_temp_temp_team

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/109/end