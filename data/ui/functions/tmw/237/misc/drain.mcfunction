# ダメージを無効化して吸収
scoreboard players operation $Damage tds_dmg /= #1000 ui_num
scoreboard players operation @s ui_tmw237_drained_damage += $Damage tds_dmg
playsound block.note_block.xylophone player @a ~ ~ ~ 1 1 0
particle crit ~ ~1 ~ 0.4 0.6 0.4 0.3 15 force
scoreboard players set $drain ui_temp 1
tag @s add tmw237_drained