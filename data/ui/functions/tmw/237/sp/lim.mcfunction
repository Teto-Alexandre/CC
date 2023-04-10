# Fキー

#tellraw @a [{"score":{"objective":"ui_temp","name":"$qf"}}]

#
scoreboard players set $success ui_temp 0
scoreboard players set $quick_use ui_temp 0

#
execute if score $sptype ui_temp matches 202 run scoreboard players set $quick_use ui_temp 1
execute if score $sptype ui_temp matches 203 run scoreboard players set $quick_use ui_temp 1

# クイック - スペシャルウェポン発動
execute if score $quick_use ui_temp matches 1 if score $success ui_temp matches 0 if score $qf ui_temp matches 1 if score @s ui_paint < $spneed ui_temp run function ui:tmw/237/sp/fail
execute if score $quick_use ui_temp matches 1 if score $success ui_temp matches 0 if score $qf ui_temp matches 1 if score @s ui_paint = $spneed ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sp/core
execute if score $quick_use ui_temp matches 1 if score $success ui_temp matches 0 if score $qf ui_temp matches 3 if score @s ui_paint < $spneed ui_temp run function ui:tmw/237/sp/fail
execute if score $quick_use ui_temp matches 1 if score $success ui_temp matches 0 if score $qf ui_temp matches 3 if score @s ui_paint = $spneed ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sp/core

# クイック - サブウェポン２発動
execute if score $quick_use ui_temp matches 1 if score $success ui_temp matches 0 if score $qf ui_temp matches 2 if score $ink ui_temp < $ink.sp ui_temp run function ui:tmw/237/sub/fail_lim
execute if score $quick_use ui_temp matches 1 if score $success ui_temp matches 0 if score $qf ui_temp matches 2 if score $ink ui_temp >= $ink.sp ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sub/core_sp

# クイック - ペアサブ発動
execute if score $quick_use ui_temp matches 1 if score $success ui_temp matches 0 if score $subtype ui_temp matches 1001.. if score $sptype ui_temp matches 1001.. if score $ink ui_temp < $ink.sp ui_temp if score $cooltime ui_temp matches 0 run function ui:tmw/237/sub/fail_lim
execute if score $quick_use ui_temp matches 1 if score $success ui_temp matches 0 if score $subtype ui_temp matches 1001.. if score $sptype ui_temp matches 1001.. if score $ink ui_temp >= $ink.sp ui_temp if score $cooltime ui_temp matches 0 at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sub/core_sp

# スペシャルウェポン発動
execute if score $quick_use ui_temp matches 0 if score $success ui_temp matches 0 if score $qf ui_temp matches 1 if score @s ui_paint < $spneed ui_temp if score $cooltime ui_temp matches 0 run function ui:tmw/237/sp/fail
execute if score $quick_use ui_temp matches 0 if score $success ui_temp matches 0 if score $qf ui_temp matches 1 if score @s ui_paint = $spneed ui_temp if score $cooltime ui_temp matches 0 at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sp/core
execute if score $quick_use ui_temp matches 0 if score $success ui_temp matches 0 if score $qf ui_temp matches 3 if score @s ui_paint < $spneed ui_temp if score $cooltime ui_temp matches 0 run function ui:tmw/237/sp/fail
execute if score $quick_use ui_temp matches 0 if score $success ui_temp matches 0 if score $qf ui_temp matches 3 if score @s ui_paint = $spneed ui_temp if score $cooltime ui_temp matches 0 at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sp/core

# サブウェポン２発動
execute if score $quick_use ui_temp matches 0 if score $success ui_temp matches 0 if score $qf ui_temp matches 2 if score $ink ui_temp < $ink.sp ui_temp if score $cooltime ui_temp matches 0 run function ui:tmw/237/sub/fail_lim
execute if score $quick_use ui_temp matches 0 if score $success ui_temp matches 0 if score $qf ui_temp matches 2 if score $ink ui_temp >= $ink.sp ui_temp if score $cooltime ui_temp matches 0 at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sub/core_sp

# ペアサブ発動
execute if score $quick_use ui_temp matches 0 if score $success ui_temp matches 0 if score $subtype ui_temp matches 1001.. if score $sptype ui_temp matches 1001.. if score $ink ui_temp < $ink.sp ui_temp if score $cooltime ui_temp matches 0 run function ui:tmw/237/sub/fail_lim
execute if score $quick_use ui_temp matches 0 if score $success ui_temp matches 0 if score $subtype ui_temp matches 1001.. if score $sptype ui_temp matches 1001.. if score $ink ui_temp >= $ink.sp ui_temp if score $cooltime ui_temp matches 0 at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sub/core_sp
