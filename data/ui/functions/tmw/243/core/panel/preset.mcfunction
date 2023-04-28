# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

# OMD から取得
function oh_my_dat:please
data modify storage ui:gear temp.Presets set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Presets

execute if score $slot ui_temp matches 26 run tag @s remove setting_preset

item replace entity @s enderchest.0 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.8 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.9 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.17 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.18 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.1 with lime_stained_glass_pane{display:{Name:'{"text":"プリセット1に登録","color": "green","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.2 with lime_stained_glass_pane{display:{Name:'{"text":"プリセット2に登録","color": "green","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.3 with lime_stained_glass_pane{display:{Name:'{"text":"プリセット3に登録","color": "green","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.4 with lime_stained_glass_pane{display:{Name:'{"text":"プリセット4に登録","color": "green","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.5 with lime_stained_glass_pane{display:{Name:'{"text":"プリセット5に登録","color": "green","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.6 with lime_stained_glass_pane{display:{Name:'{"text":"プリセット6に登録","color": "green","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.7 with lime_stained_glass_pane{display:{Name:'{"text":"プリセット7に登録","color": "green","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 1 run data modify storage ui:gear temp.Presets[0].Inventory set from entity @s Inventory
execute if score $slot ui_temp matches 2 run data modify storage ui:gear temp.Presets[1].Inventory set from entity @s Inventory
execute if score $slot ui_temp matches 3 run data modify storage ui:gear temp.Presets[2].Inventory set from entity @s Inventory
execute if score $slot ui_temp matches 4 run data modify storage ui:gear temp.Presets[3].Inventory set from entity @s Inventory
execute if score $slot ui_temp matches 5 run data modify storage ui:gear temp.Presets[4].Inventory set from entity @s Inventory
execute if score $slot ui_temp matches 6 run data modify storage ui:gear temp.Presets[5].Inventory set from entity @s Inventory
execute if score $slot ui_temp matches 7 run data modify storage ui:gear temp.Presets[6].Inventory set from entity @s Inventory
execute if score $slot ui_temp matches 1 run data modify storage ui:gear temp.Presets[0].Gears set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears
execute if score $slot ui_temp matches 2 run data modify storage ui:gear temp.Presets[1].Gears set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears
execute if score $slot ui_temp matches 3 run data modify storage ui:gear temp.Presets[2].Gears set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears
execute if score $slot ui_temp matches 4 run data modify storage ui:gear temp.Presets[3].Gears set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears
execute if score $slot ui_temp matches 5 run data modify storage ui:gear temp.Presets[4].Gears set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears
execute if score $slot ui_temp matches 6 run data modify storage ui:gear temp.Presets[5].Gears set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears
execute if score $slot ui_temp matches 7 run data modify storage ui:gear temp.Presets[6].Gears set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears
execute if score $slot ui_temp matches 1 store result storage ui:gear temp.Presets[0].Module int 1 run scoreboard players get @s module
execute if score $slot ui_temp matches 2 store result storage ui:gear temp.Presets[1].Module int 1 run scoreboard players get @s module
execute if score $slot ui_temp matches 3 store result storage ui:gear temp.Presets[2].Module int 1 run scoreboard players get @s module
execute if score $slot ui_temp matches 4 store result storage ui:gear temp.Presets[3].Module int 1 run scoreboard players get @s module
execute if score $slot ui_temp matches 5 store result storage ui:gear temp.Presets[4].Module int 1 run scoreboard players get @s module
execute if score $slot ui_temp matches 6 store result storage ui:gear temp.Presets[5].Module int 1 run scoreboard players get @s module
execute if score $slot ui_temp matches 7 store result storage ui:gear temp.Presets[6].Module int 1 run scoreboard players get @s module
execute if score $slot ui_temp matches 1..7 run playsound entity.player.levelup player @a ~ ~ ~ 0.8 2 0

item replace entity @s enderchest.10 with red_wool{display:{Name:'{"text":"プリセット1","color": "white","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.11 with orange_wool{display:{Name:'{"text":"プリセット2","color": "white","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.12 with yellow_wool{display:{Name:'{"text":"プリセット3","color": "white","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.13 with lime_wool{display:{Name:'{"text":"プリセット4","color": "white","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.14 with light_blue_wool{display:{Name:'{"text":"プリセット5","color": "white","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.15 with blue_wool{display:{Name:'{"text":"プリセット6","color": "white","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.16 with magenta_wool{display:{Name:'{"text":"プリセット7","color": "white","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 19 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory set from storage ui:gear temp.Presets[0].Inventory
execute if score $slot ui_temp matches 20 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory set from storage ui:gear temp.Presets[1].Inventory
execute if score $slot ui_temp matches 21 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory set from storage ui:gear temp.Presets[2].Inventory
execute if score $slot ui_temp matches 22 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory set from storage ui:gear temp.Presets[3].Inventory
execute if score $slot ui_temp matches 23 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory set from storage ui:gear temp.Presets[4].Inventory
execute if score $slot ui_temp matches 24 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory set from storage ui:gear temp.Presets[5].Inventory
execute if score $slot ui_temp matches 25 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory set from storage ui:gear temp.Presets[6].Inventory
execute if score $slot ui_temp matches 19..25 run function ui:template/inventory/pull
execute if score $slot ui_temp matches 19 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears set from storage ui:gear temp.Presets[0].Gears
execute if score $slot ui_temp matches 20 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears set from storage ui:gear temp.Presets[1].Gears
execute if score $slot ui_temp matches 21 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears set from storage ui:gear temp.Presets[2].Gears
execute if score $slot ui_temp matches 22 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears set from storage ui:gear temp.Presets[3].Gears
execute if score $slot ui_temp matches 23 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears set from storage ui:gear temp.Presets[4].Gears
execute if score $slot ui_temp matches 24 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears set from storage ui:gear temp.Presets[5].Gears
execute if score $slot ui_temp matches 25 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears set from storage ui:gear temp.Presets[6].Gears
execute if score $slot ui_temp matches 19 store result score @s module run data get storage ui:gear temp.Presets[0].Module
execute if score $slot ui_temp matches 20 store result score @s module run data get storage ui:gear temp.Presets[1].Module
execute if score $slot ui_temp matches 21 store result score @s module run data get storage ui:gear temp.Presets[2].Module
execute if score $slot ui_temp matches 22 store result score @s module run data get storage ui:gear temp.Presets[3].Module
execute if score $slot ui_temp matches 23 store result score @s module run data get storage ui:gear temp.Presets[4].Module
execute if score $slot ui_temp matches 24 store result score @s module run data get storage ui:gear temp.Presets[5].Module
execute if score $slot ui_temp matches 25 store result score @s module run data get storage ui:gear temp.Presets[6].Module
execute if score $slot ui_temp matches 19..25 run playsound entity.player.levelup player @a ~ ~ ~ 0.8 1.5 0

item replace entity @s enderchest.19 with orange_stained_glass_pane{display:{Name:'{"text":"プリセット1を適応","color":"gold","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.20 with orange_stained_glass_pane{display:{Name:'{"text":"プリセット2を適応","color":"gold","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.21 with orange_stained_glass_pane{display:{Name:'{"text":"プリセット3を適応","color":"gold","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.22 with orange_stained_glass_pane{display:{Name:'{"text":"プリセット4を適応","color":"gold","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with orange_stained_glass_pane{display:{Name:'{"text":"プリセット5を適応","color":"gold","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.24 with orange_stained_glass_pane{display:{Name:'{"text":"プリセット6を適応","color":"gold","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.25 with orange_stained_glass_pane{display:{Name:'{"text":"プリセット7を適応","color":"gold","italic": false}'},ui:{ismenu:1}}

item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":"プリセットを閉じる","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 26 run item replace entity @s enderchest.0 with air

# OMD に送信
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Presets set from storage ui:gear temp.Presets

data remove storage ui:gear temp
