# ライトアップ

# 常時実行
    scoreboard players operation $temp ui_temp = @s ui_team
    data modify storage ui:temp Effect set value [{id:"glowing",duration:100,amplifier:0b},{id:"slowness",duration:100,amplifier:0b}]
    execute as @e[predicate=ui:load_unhurtable,tag=!ui_resistance,nbt=!{Invulnerable:1b},distance=..3,tag=!tds_nolog] unless score @s ui_team = $temp ui_temp run function ui:tmw/237/misc/giveeffect/
    execute as @a[distance=..3] unless score @s ui_team = $temp ui_temp run scoreboard players operation @s tds_recent_attacked_by = $id ui_temp
    particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.05 1 force
    execute if score @s ui_uses matches 20.. run tag @s add ui_237_sub_explode

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] rotated ~ 0 run function ui:tmw/237/sub/explosive/104/end