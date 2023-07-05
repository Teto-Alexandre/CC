# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

# OMD から取得
function oh_my_dat:please
data modify storage ui:text_board temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].text_board

item replace entity @s enderchest.0 with lime_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.1 with gray_stained_glass_pane{CustomModelData:123007,display:{Name:'{"text":"1ピクセル右へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.2 with gray_stained_glass_pane{CustomModelData:123007,display:{Name:'{"text":"2ピクセル右へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.3 with gray_stained_glass_pane{CustomModelData:123007,display:{Name:'{"text":"4ピクセル右へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.4 with gray_stained_glass_pane{CustomModelData:123007,display:{Name:'{"text":"8ピクセル右へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.5 with gray_stained_glass_pane{CustomModelData:123007,display:{Name:'{"text":"16ピクセル右へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.6 with gray_stained_glass_pane{CustomModelData:123007,display:{Name:'{"text":"32ピクセル右へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.7 with gray_stained_glass_pane{CustomModelData:123007,display:{Name:'{"text":"64ピクセル右へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.8 with lime_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.9 with lime_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.10 with gray_stained_glass_pane{CustomModelData:123007,display:{Name:'{"text":"128ピクセル右へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.11 with gray_stained_glass_pane{CustomModelData:123007,display:{Name:'{"text":"256ピクセル右へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.12 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:123001,display:{Name:'{"text":"全角スペース","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.14 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.15 with gray_stained_glass_pane{CustomModelData:123008,display:{Name:'{"text":"1ピクセル左へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.16 with gray_stained_glass_pane{CustomModelData:123008,display:{Name:'{"text":"2ピクセル左へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.17 with lime_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.18 with lime_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.19 with gray_stained_glass_pane{CustomModelData:123008,display:{Name:'{"text":"4ピクセル左へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.20 with gray_stained_glass_pane{CustomModelData:123008,display:{Name:'{"text":"8ピクセル左へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.21 with gray_stained_glass_pane{CustomModelData:123008,display:{Name:'{"text":"16ピクセル左へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:123008,display:{Name:'{"text":"32ピクセル左へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:123008,display:{Name:'{"text":"64ピクセル左へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.24 with gray_stained_glass_pane{CustomModelData:123008,display:{Name:'{"text":"128ピクセル左へ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.25 with gray_stained_glass_pane{CustomModelData:123008,display:{Name:'{"text":"256ピクセル左へ","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 1 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123007,Data:1}
execute if score $slot ui_temp matches 2 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123007,Data:2}
execute if score $slot ui_temp matches 3 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123007,Data:3}
execute if score $slot ui_temp matches 4 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123007,Data:4}
execute if score $slot ui_temp matches 5 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123007,Data:5}
execute if score $slot ui_temp matches 6 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123007,Data:6}
execute if score $slot ui_temp matches 7 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123007,Data:7}
execute if score $slot ui_temp matches 10 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123007,Data:8}
execute if score $slot ui_temp matches 11 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123007,Data:9}

execute if score $slot ui_temp matches 13 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123001,Data:11}

execute if score $slot ui_temp matches 15 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123008,Data:13}
execute if score $slot ui_temp matches 16 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123008,Data:14}
execute if score $slot ui_temp matches 19 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123008,Data:15}
execute if score $slot ui_temp matches 20 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123008,Data:16}
execute if score $slot ui_temp matches 21 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123008,Data:17}
execute if score $slot ui_temp matches 22 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123008,Data:18}
execute if score $slot ui_temp matches 23 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123008,Data:19}
execute if score $slot ui_temp matches 24 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123008,Data:20}
execute if score $slot ui_temp matches 25 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123008,Data:21}
execute if score $slot ui_temp matches 26 run data modify storage ui:text_board temp.node set value {}

execute if score $slot ui_temp matches 1..26 unless score $slot ui_temp matches 12 unless score $slot ui_temp matches 14 if score @s title_whole matches 1 run function ui:tmw/243/core/panel/title/node2_title
execute if score $slot ui_temp matches 1..26 unless score $slot ui_temp matches 12 unless score $slot ui_temp matches 14 if score @s title_whole matches 2 run function ui:tmw/243/core/panel/title/node2_subtitle
execute if score $slot ui_temp matches 1..26 unless score $slot ui_temp matches 12 unless score $slot ui_temp matches 14 if score @s title_whole matches 3 run function ui:tmw/243/core/panel/title/node2_actionbar

item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":"何も設定せずに戻る","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 1..26 unless score $slot ui_temp matches 12 unless score $slot ui_temp matches 14 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 0.8 2 0
execute if score $slot ui_temp matches 1..26 unless score $slot ui_temp matches 12 unless score $slot ui_temp matches 14 run scoreboard players set @s title_data 0
execute if score $slot ui_temp matches 1..26 unless score $slot ui_temp matches 12 unless score $slot ui_temp matches 14 run scoreboard players set @s title_node 0

# OMD に送信
data remove storage ui:text_board temp.node
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].text_board set from storage ui:text_board temp

data remove storage ui:text_board temp
