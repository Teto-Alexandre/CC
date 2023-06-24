# ダメージを無効化して吸収
execute store result score $drained_damage ui_temp run data get storage tds: temp.Damage 10
scoreboard players operation @s ui_tmw237_drained_damage += $drained_damage ui_temp
#一旦CO
#function ui:tmw/237/misc/setdata
#execute store result score $drain.ink.add ui_temp run scoreboard players operation $drained_damage ui_temp /= #3 ui_num
#scoreboard players operation $ink ui_temp += $drain.ink.add ui_temp
#scoreboard players operation $ink ui_temp < $ink.max ui_temp
#function ui:tmw/237/changed/core
effect give @s resistance 1 5 false
playsound block.note_block.xylophone player @a ~ ~ ~ 1 1 0
particle crit ~ ~1 ~ 0.4 0.6 0.4 0.3 15 force
scoreboard players set $drain ui_temp 1