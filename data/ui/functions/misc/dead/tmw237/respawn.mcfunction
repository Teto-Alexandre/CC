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

# メインタイトル
    execute unless score @s ui_rst matches 0 if score #tmw237_txt ui_rst matches 0..1 run title @s title {"text":"Puddled in color","color":"aqua","bold":true,"italic":false}
    execute unless score @s ui_rst matches 0 if score #tmw237_txt ui_rst matches 2..3 run title @s title {"text":"Crashed by colors","color":"aqua","bold":true,"italic":false}
    execute unless score @s ui_rst matches 0 if score #tmw237_txt ui_rst matches 4..5 run title @s title {"text":"SPLATTED!","color":"light_purple","bold":true,"italic":true}
    execute unless score @s ui_rst matches 0 if score #tmw237_txt ui_rst matches 6..7 run title @s title {"text":"CRASHED!","color":"light_purple","bold":true,"italic":true}
    execute unless score @s ui_rst matches 0 if score #tmw237_txt ui_rst matches 8..9 run title @s title {"text":"Wasted","color":"green","bold":true,"italic":false}
    execute unless score @s ui_rst matches 0 if score #tmw237_txt ui_rst matches 10..11 run title @s title {"text":"Crashed","color":"green","bold":true,"italic":false}
    execute unless score @s ui_rst matches 0 if score #tmw237_txt ui_rst matches 12..13 run title @s title {"text":"Prepare for next fight","color":"yellow","bold":true,"italic":true}
    execute unless score @s ui_rst matches 0 if score #tmw237_txt ui_rst matches 14..15 run title @s title {"text":"To the next crash","color":"yellow","bold":true,"italic":true}
    execute unless score @s ui_rst matches 0 if score #tmw237_txt ui_rst matches 16..17 run title @s title {"text":"Respawning ...","color":"red","bold":true,"italic":false}
    execute unless score @s ui_rst matches 0 if score #tmw237_txt ui_rst matches 18..19 run title @s title {"text":"You crashed ...","color":"red","bold":true,"italic":false}
    execute unless score @s ui_rst matches 0 if score #tmw237_txt ui_rst matches 20 run title @s title {"text":"Ooh Unlucky","color":"gold","bold":true,"italic":true}
    execute unless score @s ui_rst matches 0 if score #tmw237_txt ui_rst matches 21 run title @s title {"text":"Launcher isn't ready yet","color":"gray","bold":true,"italic":false}
    execute unless score @s ui_rst matches 0 if score #tmw237_txt ui_rst matches 22 run function ui:misc/dead/tmw237/respawn.11

# サブタイ
    execute if score @s ui_rst matches 0 run title @s title {"text":""}
    execute if score @s ui_rst matches 0 run title @s subtitle ""
    execute if score @s ui_rst matches 1..20 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"1","color":"aqua"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 21..40 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"2","color":"green"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 41..60 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"3","color":"green"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 61..80 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"4","color":"yellow"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 81..100 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"5","color":"yellow"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 101..120 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"6","color":"gold"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 121..140 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"7","color":"gold"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 141..160 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"8","color":"gold"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 161..180 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"9","color":"gold"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 181..200 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"10","color":"gold"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 201..220 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"11","color":"red"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 221..240 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"12","color":"red"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 241..260 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"13","color":"red"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 261..280 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"14","color":"red"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 281..300 run title @s subtitle [{"text":"Revive - ","color":"gray"},{"text":"15","color":"red"},{"text":" -","color":"gray"}]
    execute if score @s ui_rst matches 0.. if score $life ui_world matches 0.. if score $phase game_state matches 1.. if score @s life matches ..-1 run title @s title {"text":""}
    execute if score @s ui_rst matches 0.. if score $life ui_world matches 0.. if score $phase game_state matches 1.. if score @s life matches ..-1 run title @s subtitle {"text":"残基がなくなりました  観戦中です"}

# マーカー消し
    execute if score @s ui_rst matches 0 as @e[tag=ui_respawn_tmw237] if score @s ui_id = $id ui_temp run scoreboard players operation $temp2 ui_temp = @s ui_is
    execute if score @s ui_rst matches 0 as @e[tag=ui_respawn_tmw237] if score @s ui_id = $id ui_temp run kill @s
    execute if score @s ui_rst matches 0 if score $temp2 ui_temp matches 0 run gamemode adventure @s
    execute if score @s ui_rst matches 0 if score $temp2 ui_temp matches 1 run gamemode creative @s
    execute if score @s ui_rst matches 0 if score $temp2 ui_temp matches 2 run gamemode adventure @s
    execute if score @s ui_rst matches 0 run tp @s @s
    execute if score @s ui_rst matches 0 run effect give @s resistance 5 127 false
    execute if score @s ui_rst matches 0 run effect give @s instant_health 3 10 false
    execute if score @s ui_rst matches 0 if data storage ui:map {mode:"Boss"} run effect clear @s resistance
    execute if score @s ui_rst matches 0 if score $module ui_world matches 1 if score @s module matches 13 run scoreboard players set @s ui_tmw237_survive 600
    execute if score @s ui_rst matches 0 run tag @s add tmw_237_tag_inkfill
    execute if score @s ui_rst matches 0 run tag @s add tmw_237_tag_spdec
    execute if score @s ui_rst matches 0 run tag @s add tmw_237_readtag
    execute if score @s ui_rst matches 0 run scoreboard players remove @s health 1

# タグ消し
    execute if score @s ui_rst matches 0 run tag @s remove tmw_237_respawning
    execute if score @s ui_rst matches 0 run tag @s remove deadmans_immune
    tag @s remove ui_temp_this

# ss管理: 復活待ち人数が減る
    execute if score @s ui_rst matches 0 run scoreboard players remove $tmw237 ui_rst 1
    execute if score @s ui_rst matches 0 run scoreboard players reset @s ui_rst