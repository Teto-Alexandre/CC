# Qキー

#tellraw @a [{"score":{"objective":"ui_temp","name":"$qf"}}]

#
scoreboard players set $success ui_temp 0
scoreboard players set $quick_use ui_temp 0
scoreboard players set $fatal_weapon ui_temp 0

#
execute if score $subtype ui_temp matches 202 run scoreboard players set $quick_use ui_temp 1
execute if score $subtype ui_temp matches 203 run scoreboard players set $quick_use ui_temp 1
execute unless entity @s[tag=drain] if score $subtype ui_temp matches 1013 run scoreboard players set $quick_use ui_temp 1

#
execute if score $sub_quick party_mode matches 1 run scoreboard players set $quick_use ui_temp 1

# クイック - サブウェポン２発動
execute if score $quick_use ui_temp matches 1 if score $success ui_temp matches 0 if score $qf ui_temp matches 1..2 if score $ink ui_temp < $ink.sub ui_temp run function ui:tmw/237/sub/fail_lim
execute if score $quick_use ui_temp matches 1 if score $success ui_temp matches 0 if score $qf ui_temp matches 1..2 if score $ink ui_temp >= $ink.sub ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sub/core

# クイック - スペシャルウェポン発動
execute if score $quick_use ui_temp matches 1 if score $success ui_temp matches 0 if score $qf ui_temp matches 3 if score @s ui_paint < $spneed ui_temp run function ui:tmw/237/sp/fail
execute if score $quick_use ui_temp matches 1 if score $success ui_temp matches 0 if score $qf ui_temp matches 3 if score @s ui_paint = $spneed ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sp/core_sub

# クイック - ペアサブ発動
execute if score $quick_use ui_temp matches 1 if score $success ui_temp matches 0 if score $subtype ui_temp matches 1001.. if score $sptype ui_temp matches 1001.. if score $ink ui_temp < $ink.sub ui_temp run function ui:tmw/237/sub/fail_lim
execute if score $quick_use ui_temp matches 1 if score $success ui_temp matches 0 if score $subtype ui_temp matches 1001.. if score $sptype ui_temp matches 1001.. if score $ink ui_temp >= $ink.sub ui_temp at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sub/core

# サブウェポン２発動
execute if score $quick_use ui_temp matches 0 if score $success ui_temp matches 0 if score $qf ui_temp matches 1..2 if score $ink ui_temp < $ink.sub ui_temp if score $cooltime ui_temp matches 0 run function ui:tmw/237/sub/fail_lim
execute if score $quick_use ui_temp matches 0 if score $success ui_temp matches 0 if score $qf ui_temp matches 1..2 if score $ink ui_temp >= $ink.sub ui_temp if score $cooltime ui_temp matches 0 at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sub/core

# スペシャルウェポン発動
execute if score $quick_use ui_temp matches 0 if score $success ui_temp matches 0 if score $qf ui_temp matches 3 if score @s ui_paint < $spneed ui_temp if score $cooltime ui_temp matches 0 run function ui:tmw/237/sp/fail
execute if score $quick_use ui_temp matches 0 if score $success ui_temp matches 0 if score $qf ui_temp matches 3 if score @s ui_paint = $spneed ui_temp if score $cooltime ui_temp matches 0 at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sp/core_sub

# ペアサブ発動
execute if score $quick_use ui_temp matches 0 if score $success ui_temp matches 0 if score $subtype ui_temp matches 1001.. if score $sptype ui_temp matches 1001.. if score $ink ui_temp < $ink.sub ui_temp if score $cooltime ui_temp matches 0 run function ui:tmw/237/sub/fail_lim
execute if score $quick_use ui_temp matches 0 if score $success ui_temp matches 0 if score $subtype ui_temp matches 1001.. if score $sptype ui_temp matches 1001.. if score $ink ui_temp >= $ink.sub ui_temp if score $cooltime ui_temp matches 0 at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/sub/core

scoreboard players reset $fatal_weapon ui_temp