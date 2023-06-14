# ダメージを無効化して吸収
execute store result score $drained_damage ui_temp run data get storage tds: temp.Damage 10
scoreboard players operation @s ui_tmw237_drained_damage += $drained_damage ui_temp
playsound block.note_block.xylophone player @a ~ ~ ~ 1 1 0
particle crit ~ ~1 ~ 0.4 0.6 0.4 0.3 15 force
scoreboard players set $drain ui_temp 1