# 他人のデータ書き換え後に必ず実行
scoreboard players operation $ink ui_temp = $store.ink ui_temp
scoreboard players operation $ink.max ui_temp = $store.ink.max ui_temp
scoreboard players operation $spneed ui_temp = $store.spneed ui_temp
scoreboard players operation $ink.m ui_temp = $store.ink.m ui_temp
scoreboard players operation $ink.s ui_temp = $store.ink.s ui_temp
scoreboard players operation $cooltime ui_temp = $store.cooltime ui_temp
scoreboard players operation $subtype ui_temp = $store.subtype ui_temp
scoreboard players operation $subtime ui_temp = $store.subtime ui_temp
scoreboard players operation $subtime.max ui_temp = $store.subtime.max ui_temp
scoreboard players operation $sp ui_temp = $store.sp ui_temp
scoreboard players operation $sptype ui_temp = $store.sptype ui_temp
scoreboard players operation $sptime ui_temp = $store.sptime ui_temp
scoreboard players operation $sptime.max ui_temp = $store.sptime.max ui_temp
scoreboard players operation $amp ui_temp = $store.amp ui_temp
scoreboard players operation $qf ui_temp = $store.qf ui_temp
scoreboard players operation $lasttime ui_temp = $store.lasttime ui_temp
scoreboard players operation $burst ui_temp = $store.burst ui_temp
scoreboard players operation $ishold ui_temp = $store.ishold ui_temp
scoreboard players operation $speed ui_temp = $store.speed ui_temp
data modify storage ui:gun temp.now set from storage ui:temp temp.storedata
data remove storage ui:temp temp.storedata