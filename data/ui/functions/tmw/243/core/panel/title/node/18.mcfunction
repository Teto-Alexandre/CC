# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

# OMD から取得
function oh_my_dat:please
data modify storage ui:text_board temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].text_board

item replace entity @s enderchest.0 with lime_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.1 with red_stained_glass{CustomModelData:123007,display:{Name:'{"text":"四角三色表示のみ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.2 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.3 with orange_stained_glass{CustomModelData:123007,display:{Name:'{"text":"四角 + 文字表示オプション","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.4 with yellow_stained_glass{CustomModelData:123007,display:{Name:'{"text":"四角 + 50%表示オプション","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.5 with lime_stained_glass{CustomModelData:123007,display:{Name:'{"text":"四角 + 文字 + 50%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.6 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.7 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.8 with lime_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.9 with lime_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.10 with light_gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.11 with light_gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.12 with light_gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.13 with light_gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.14 with light_gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.15 with light_gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.16 with light_gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.17 with lime_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.18 with lime_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.19 with light_gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.20 with light_gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.21 with light_gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.22 with light_gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with light_gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.24 with light_gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.25 with light_gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 1 run data modify storage ui:text_board temp.node set value {ID:18,CustomModelData:123020,Data:1}

execute if score $slot ui_temp matches 3 run data modify storage ui:text_board temp.node set value {ID:18,CustomModelData:123020,Data:2}
execute if score $slot ui_temp matches 4 run data modify storage ui:text_board temp.node set value {ID:18,CustomModelData:123020,Data:3}
execute if score $slot ui_temp matches 5 run data modify storage ui:text_board temp.node set value {ID:18,CustomModelData:123020,Data:4}

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
