# スペシャルポイントが減少する
scoreboard players operation @s ui_paint *= @s death_sp
scoreboard players operation @s ui_paint /= #100 ui_num
execute if score $module ui_world matches 1 if score @s module matches 23 run scoreboard players operation @s ui_paint > #90 ui_num
execute if score $module ui_world matches 1 if score @s module matches 32 run scoreboard players set @s ui_paint 0
execute if score $module ui_world matches 1 if score @s module matches 39 run scoreboard players operation @s ui_paint -= @s ui_tmw237_energy_charge_penalty
execute if score $module ui_world matches 1 if score @s module matches 39 run scoreboard players operation @s ui_paint > #0 ui_num

# またはゲージリセット
scoreboard players set $subtime ui_temp 0
scoreboard players set $sptime ui_temp 0

# タグ消し
tag @s remove tmw_237_tag_spdec
scoreboard players reset @s ui_tmw237_energy_charge_penalty