## string型のIDを数値に置き換える
## こればかりは総当たり

# "minecraft:"プレフィックスは消す
# data stringは1.19.4~の要素なので封印中
# 移行が完了したら外す
#execute store result score $string_length ui_temp run data get storage ui:temp Effect[0].Id
#execute if score $string_length ui_temp matches 10.. run function ui:tmw/237/misc/giveeffect/3.remove_prefix

# 移行が済んだらこの下の処理は消す
data modify storage ui:temp _.Id set from storage ui:temp Effect[0].Id

# 置き換え
execute if data storage ui:temp _{Id:"speed"} run scoreboard players set $potionId ui_temp 1
execute if data storage ui:temp _{Id:"slowness"} run scoreboard players set $potionId ui_temp 2
execute if data storage ui:temp _{Id:"haste"} run scoreboard players set $potionId ui_temp 3
execute if data storage ui:temp _{Id:"mining_fatigue"} run scoreboard players set $potionId ui_temp 4
execute if data storage ui:temp _{Id:"strength"} run scoreboard players set $potionId ui_temp 5
execute if data storage ui:temp _{Id:"instant_health"} run scoreboard players set $potionId ui_temp 6
execute if data storage ui:temp _{Id:"instant_damage"} run scoreboard players set $potionId ui_temp 7
execute if data storage ui:temp _{Id:"jump_boost"} run scoreboard players set $potionId ui_temp 8
execute if data storage ui:temp _{Id:"nausea"} run scoreboard players set $potionId ui_temp 9
execute if data storage ui:temp _{Id:"regeneration"} run scoreboard players set $potionId ui_temp 10
execute if data storage ui:temp _{Id:"resistance"} run scoreboard players set $potionId ui_temp 11
execute if data storage ui:temp _{Id:"fire_resistance"} run scoreboard players set $potionId ui_temp 12
execute if data storage ui:temp _{Id:"water_breathing"} run scoreboard players set $potionId ui_temp 13
execute if data storage ui:temp _{Id:"invisibility"} run scoreboard players set $potionId ui_temp 14
execute if data storage ui:temp _{Id:"blindness"} run scoreboard players set $potionId ui_temp 15
execute if data storage ui:temp _{Id:"night_vision"} run scoreboard players set $potionId ui_temp 16
execute if data storage ui:temp _{Id:"hunger"} run scoreboard players set $potionId ui_temp 17
execute if data storage ui:temp _{Id:"weakness"} run scoreboard players set $potionId ui_temp 18
execute if data storage ui:temp _{Id:"poison"} run scoreboard players set $potionId ui_temp 19
execute if data storage ui:temp _{Id:"wither"} run scoreboard players set $potionId ui_temp 20
execute if data storage ui:temp _{Id:"health_boost"} run scoreboard players set $potionId ui_temp 21
execute if data storage ui:temp _{Id:"absorption"} run scoreboard players set $potionId ui_temp 22
execute if data storage ui:temp _{Id:"saturation"} run scoreboard players set $potionId ui_temp 23
execute if data storage ui:temp _{Id:"glowing"} run scoreboard players set $potionId ui_temp 24
execute if data storage ui:temp _{Id:"levitation"} run scoreboard players set $potionId ui_temp 25
execute if data storage ui:temp _{Id:"luck"} run scoreboard players set $potionId ui_temp 26
execute if data storage ui:temp _{Id:"unluck"} run scoreboard players set $potionId ui_temp 27
execute if data storage ui:temp _{Id:"slow_falling"} run scoreboard players set $potionId ui_temp 28
execute if data storage ui:temp _{Id:"conduit_power"} run scoreboard players set $potionId ui_temp 29
execute if data storage ui:temp _{Id:"dolphins_grace"} run scoreboard players set $potionId ui_temp 30
execute if data storage ui:temp _{Id:"bad_omen"} run scoreboard players set $potionId ui_temp 31
execute if data storage ui:temp _{Id:"hero_of_the_village"} run scoreboard players set $potionId ui_temp 32
execute if data storage ui:temp _{Id:"darkness"} run scoreboard players set $potionId ui_temp 33

# リセット
scoreboard players reset $string_length ui_temp