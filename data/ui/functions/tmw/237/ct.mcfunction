# データ取り
    execute store result score $time ui_temp run time query gametime
    scoreboard players operation $cooltime.temp ui_temp = $cooltime ui_temp
    scoreboard players operation $cooltime.temp ui_temp -= $time ui_temp

# 書き込み
    #tellraw @a {"score":{"name":"$cooltime","objective":"ui_temp"}}
    execute unless score $cooltime.temp ui_temp matches ..-1 as @s[tag=tmw237.cooldown_skip] store success score $changed ui_temp run scoreboard players set $cooltime ui_temp 0
    execute if score $cooltime.temp ui_temp matches ..-1 store success score $changed ui_temp run scoreboard players set $cooltime ui_temp 0
    #execute at @s run playsound block.note_block.hat player @a ~ ~ ~ 0.5 2 0

# スキップタグは消去
    tag @s[tag=tmw237.cooldown_skip] remove tmw237.cooldown_skip