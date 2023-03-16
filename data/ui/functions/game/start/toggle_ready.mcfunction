# 今の状態を観測
    scoreboard players set $temp ui_temp 0
    execute if entity @s[tag=game.ready] run scoreboard players set $temp ui_temp 1

# 共通

# 有効化
    execute if score $temp ui_temp matches 0 run playsound entity.player.levelup player @a ~ ~ ~ 1 2 0
    execute if score $temp ui_temp matches 0 run tag @s add game.ready

# 無効化
    execute if score $temp ui_temp matches 1 run playsound block.dispenser.fail player @a ~ ~ ~ 1 0.8 0
    execute if score $temp ui_temp matches 1 run tag @s remove game.ready
