# 今の状態を観測
    scoreboard players set $temp ui_temp 0
    execute if entity @s[tag=game.ready] run scoreboard players set $temp ui_temp 1

# 有効化
    execute if score $temp ui_temp matches 0 run playsound entity.player.levelup player @a ~ ~ ~ 1 2 0
    execute if score $temp ui_temp matches 0 run tag @s add game.ready

# 共通
    scoreboard players set $temp2 ui_temp 0
    scoreboard players set $temp3 ui_temp 0
    execute as @a[tag=!spectate,tag=game.ready] run scoreboard players add $temp2 ui_temp 1
    execute as @a[tag=!spectate] run scoreboard players add $temp3 ui_temp 1
    execute if score $temp ui_temp matches 0 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が準備完了しました","color": "gray"},{"text":" (","color": "gray"},{"score":{"name": "$temp2","objective": "ui_temp"},"color": "gray"},{"text":"/","color": "gray"},{"score":{"name": "$temp3","objective": "ui_temp"},"color": "gray"},{"text":")","color": "gray"}]

# 無効化
    execute if score $temp ui_temp matches 1 run playsound block.dispenser.fail player @a ~ ~ ~ 1 0.8 0
    execute if score $temp ui_temp matches 1 run tag @s remove game.ready
