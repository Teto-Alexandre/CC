# 他人のデータ書き換え前に必ず実行
scoreboard players operation $store.ink ui_temp = $ink ui_temp
scoreboard players operation $store.ink.max ui_temp = $ink.max ui_temp
scoreboard players operation $store.spneed ui_temp = $spneed ui_temp
scoreboard players operation $store.ink.m ui_temp = $ink.m ui_temp
scoreboard players operation $store.ink.s ui_temp = $ink.s ui_temp
scoreboard players operation $store.cooltime ui_temp = $cooltime ui_temp
scoreboard players operation $store.subtype ui_temp = $subtype ui_temp
scoreboard players operation $store.subtime ui_temp = $subtime ui_temp
scoreboard players operation $store.subtime.max ui_temp = $subtime.max ui_temp
scoreboard players operation $store.sp ui_temp = $sp ui_temp
scoreboard players operation $store.sptype ui_temp = $sptype ui_temp
scoreboard players operation $store.sptime ui_temp = $sptime ui_temp
scoreboard players operation $store.sptime.max ui_temp = $sptime.max ui_temp
scoreboard players operation $store.amp ui_temp = $amp ui_temp
scoreboard players operation $store.qf ui_temp = $qf ui_temp
scoreboard players operation $store.lasttime ui_temp = $lasttime ui_temp
scoreboard players operation $store.burst ui_temp = $burst ui_temp
scoreboard players operation $store.ishold ui_temp = $ishold ui_temp
scoreboard players operation $store.speed ui_temp = $speed ui_temp
data modify storage ui:temp temp.storedata.now set from storage ui:gun temp.now
data modify storage ui:temp temp.storedata.Name set from storage ui:gun temp.Name