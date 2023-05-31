# 死んだ人に実行

# タグ取り
    tag @s add ui_temp_this

# 既存のマーカーをタグ付け
    scoreboard players set $temp ui_temp 0
    scoreboard players operation $id ui_temp = @s ui_id
    execute as @e[tag=ui_respawn_tmw237] if score @s ui_id = $id ui_temp run scoreboard players set $temp ui_temp 1

# リスポーンしたら
    execute as @e[type=player,tag=ui_temp_this] if score $temp ui_temp matches 0 run function ui:misc/dead/tmw237/respawn.first

# タイトルとカウントダウン
    scoreboard players remove @s ui_rst 1

# TP座標固定
    execute unless score $life ui_world matches 0.. as @e[tag=ui_respawn_tmw237] positioned as @s rotated as @e[tag=ui_temp_this] if score @s ui_id = $id ui_temp run teleport @e[tag=ui_temp_this] ~ ~ ~ ~ ~
    execute if score $life ui_world matches 0.. unless score $phase game_state matches 1.. as @e[tag=ui_respawn_tmw237] positioned as @s rotated as @e[tag=ui_temp_this] if score @s ui_id = $id ui_temp run teleport @e[tag=ui_temp_this] ~ ~ ~ ~ ~
    execute if score $life ui_world matches 0.. if score $phase game_state matches 1.. unless score @s life matches ..-1 as @e[tag=ui_respawn_tmw237] positioned as @s rotated as @e[tag=ui_temp_this] if score @s ui_id = $id ui_temp run teleport @e[tag=ui_temp_this] ~ ~ ~ ~ ~

# サブタイ
    execute if score @s ui_rst matches 0 run title @s title {"text":""}
    execute if score @s ui_rst matches 0 run title @s subtitle ""

# マーカー消し
    execute if score @s ui_rst matches 0 as @e[tag=ui_respawn_tmw237] if score @s ui_id = $id ui_temp run scoreboard players operation $temp2 ui_temp = @s ui_is
    execute if score @s ui_rst matches 0 as @e[tag=ui_respawn_tmw237] if score @s ui_id = $id ui_temp run kill @s
    execute if score @s ui_rst matches 0 if score $temp2 ui_temp matches 0 run gamemode adventure @s
    execute if score @s ui_rst matches 0 if score $temp2 ui_temp matches 1 run gamemode creative @s
    execute if score @s ui_rst matches 0 if score $temp2 ui_temp matches 2 run gamemode adventure @s
    execute if score @s ui_rst matches 0 run effect give @s resistance 5 127 false
    execute if score @s ui_rst matches 0 run tag @s add tmw_237_tag_inkfill
    execute if score @s ui_rst matches 0 run tag @s add tmw_237_tag_spdec
    execute if score @s ui_rst matches 0 run tag @s add tmw_237_readtag

# タグ消し
    execute if score @s ui_rst matches 0 run tag @s remove tmw_237_respawning
    tag @s remove ui_temp_this

# ss管理: 復活待ち人数が減る
    execute if score @s ui_rst matches 0 run scoreboard players remove $tmw237 ui_rst 1
    execute if score @s ui_rst matches 0 run scoreboard players reset @s ui_rst