# ハッキング

# 常時実行
    execute if score @s ui_uses matches 2 run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2.0 0
    execute if score @s ui_uses matches 6 run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2.0 0
    execute if score @s ui_uses matches 10 run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2.0 0
    execute if score @s ui_uses matches 14.. run tag @s add ui_237_sub_explode

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/122/end