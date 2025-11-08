# -3.モジュール

# モジュールの射撃タイプを入力
    #execute if score @s module matches 59 run scoreboard players set $bursttype ui_temp 1
    execute if score @s module matches 59 run scoreboard players set $burst ui_temp 1

# インク消費、回復を0にする
    scoreboard players set $ink.main ui_temp 0
    scoreboard players set $ink.max ui_temp 0

scoreboard players remove @s module_temp 1

# クリック回数リセット
    tag @s[tag=tmw_use_n] remove tmw_use_n
    tag @s[tag=tmw_use_s] remove tmw_use_s
    scoreboard players set @s ui_use1 0

scoreboard players set $changed ui_temp 1