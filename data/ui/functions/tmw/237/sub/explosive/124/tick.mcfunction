# テレポート

# 常時実行
    execute if score @s ui_uses matches 2 run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 0.5 0
    execute if score @s ui_uses matches 6 run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 0.5 0
    execute if score @s ui_uses matches 10 run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 0.5 0
    execute if score @s ui_uses matches 2 run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.5 0
    execute if score @s ui_uses matches 6 run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.5 0
    execute if score @s ui_uses matches 10 run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.5 0
    execute if score @s ui_uses matches 2 as @a if score @s ui_id = $id ui_temp at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1.5 0
    execute if score @s ui_uses matches 6 as @a if score @s ui_id = $id ui_temp at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1.5 0
    execute if score @s ui_uses matches 10 as @a if score @s ui_id = $id ui_temp at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1.5 0
    execute if score @s ui_uses matches 2 run particle witch ~ ~ ~ 0 0 0 0.1 10 force
    execute if score @s ui_uses matches 6 run particle witch ~ ~ ~ 0 0 0 0.1 10 force
    execute if score @s ui_uses matches 10 run particle witch ~ ~ ~ 0 0 0 0.1 10 force
    execute if score @s ui_uses matches 14.. run tag @s add ui_237_sub_explode

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/124/end