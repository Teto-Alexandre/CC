# スペシャルポイントが減少する
scoreboard players operation @s ui_paint *= @s death_sp
scoreboard players operation @s ui_paint /= #100 ui_num

# またはゲージリセット
scoreboard players set $subtime ui_temp 0
scoreboard players set $sptime ui_temp 0

# タグ消し
tag @s remove tmw_237_tag_spdec