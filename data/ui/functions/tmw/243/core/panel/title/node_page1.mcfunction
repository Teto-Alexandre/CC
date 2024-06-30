# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

# OMD から取得
function oh_my_dat:please
data modify storage ui:text_board temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].text_board

item replace entity @s enderchest.0 with cyan_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.1 with gray_stained_glass_pane{CustomModelData:123001,display:{Name:'{"text":"表示位置調整","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.2 with gray_stained_glass_pane{CustomModelData:123002,display:{Name:'{"text":"インク残量（デジタル表記３桁）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.3 with gray_stained_glass_pane{CustomModelData:123003,display:{Name:'{"text":"ＳＰゲージ（デジタル表記３桁）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.4 with gray_stained_glass_pane{CustomModelData:123004,display:{Name:'{"text":"インクゲージ（１０ブロック）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.5 with gray_stained_glass_pane{CustomModelData:123005,display:{Name:'{"text":"ＳＰゲージ（１０ブロック）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.6 with gray_stained_glass_pane{CustomModelData:123006,display:{Name:'{"text":"三段階レーダー","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.7 with gray_stained_glass_pane{CustomModelData:123009,display:{Name:'{"text":"サーキュレーター残量（１０ブロック）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.8 with cyan_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.9 with cyan_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.10 with gray_stained_glass_pane{CustomModelData:123010,display:{Name:'{"text":"スピードカバー残量（１０ライン）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.11 with gray_stained_glass_pane{CustomModelData:123011,display:{Name:'{"text":"サヴァイブ残量（１０ライン）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.12 with gray_stained_glass_pane{CustomModelData:123012,display:{Name:'{"text":"カウンターダメージ（デジタル表記３桁）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:123013,display:{Name:'{"text":"ブーストリチャージ（１０ライン）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.14 with gray_stained_glass_pane{CustomModelData:123014,display:{Name:'{"text":"武器チャージ率（１０ライン）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.15 with gray_stained_glass_pane{CustomModelData:123015,display:{Name:'{"text":"硬直（デジタル表記２桁）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.16 with gray_stained_glass_pane{CustomModelData:123016,display:{Name:'{"text":"ＨＰゲージ（１０ライン）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.17 with arrow{display:{Name:'{"text":"次のページ","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.18 with cyan_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.19 with gray_stained_glass_pane{CustomModelData:123017,display:{Name:'{"text":"インク残量（ボリューム）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.20 with gray_stained_glass_pane{CustomModelData:123018,display:{Name:'{"text":"ＳＰゲージ（ボリューム）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.21 with gray_stained_glass_pane{CustomModelData:123019,display:{Name:'{"text":"チャージ完了表示","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:123020,display:{Name:'{"text":"インク残量（サブ使用可能）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:123021,display:{Name:'{"text":"ＳＰゲージ（スペ使用可能）","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.24 with gray_stained_glass_pane{CustomModelData:123022,display:{Name:'{"text":"ＨＰ表示","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.25 with gray_stained_glass_pane{CustomModelData:123023,display:{Name:'{"text":"固有数値表示","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 1 run data modify storage ui:text_board temp.node set value {ID:1,CustomModelData:123001}
execute if score $slot ui_temp matches 2 run data modify storage ui:text_board temp.node set value {ID:2,CustomModelData:123002}
execute if score $slot ui_temp matches 3 run data modify storage ui:text_board temp.node set value {ID:3,CustomModelData:123003}
execute if score $slot ui_temp matches 4 run data modify storage ui:text_board temp.node set value {ID:4,CustomModelData:123004}
execute if score $slot ui_temp matches 5 run data modify storage ui:text_board temp.node set value {ID:5,CustomModelData:123005}
execute if score $slot ui_temp matches 6 run data modify storage ui:text_board temp.node set value {ID:6,CustomModelData:123006}
execute if score $slot ui_temp matches 7 run data modify storage ui:text_board temp.node set value {ID:7,CustomModelData:123009}
execute if score $slot ui_temp matches 10 run data modify storage ui:text_board temp.node set value {ID:8,CustomModelData:123010}
execute if score $slot ui_temp matches 11 run data modify storage ui:text_board temp.node set value {ID:9,CustomModelData:123011}
execute if score $slot ui_temp matches 12 run data modify storage ui:text_board temp.node set value {ID:10,CustomModelData:123012}
execute if score $slot ui_temp matches 13 run data modify storage ui:text_board temp.node set value {ID:11,CustomModelData:123013}
execute if score $slot ui_temp matches 14 run data modify storage ui:text_board temp.node set value {ID:12,CustomModelData:123014}
execute if score $slot ui_temp matches 15 run data modify storage ui:text_board temp.node set value {ID:13,CustomModelData:123015}
execute if score $slot ui_temp matches 16 run data modify storage ui:text_board temp.node set value {ID:14,CustomModelData:123016}
execute if score $slot ui_temp matches 19 run data modify storage ui:text_board temp.node set value {ID:15,CustomModelData:123017}
execute if score $slot ui_temp matches 20 run data modify storage ui:text_board temp.node set value {ID:16,CustomModelData:123018}
execute if score $slot ui_temp matches 21 run data modify storage ui:text_board temp.node set value {ID:17,CustomModelData:123019}
execute if score $slot ui_temp matches 22 run data modify storage ui:text_board temp.node set value {ID:18,CustomModelData:123020}
execute if score $slot ui_temp matches 23 run data modify storage ui:text_board temp.node set value {ID:19,CustomModelData:123021}
execute if score $slot ui_temp matches 24 run data modify storage ui:text_board temp.node set value {ID:20,CustomModelData:123022}
execute if score $slot ui_temp matches 25 run data modify storage ui:text_board temp.node set value {ID:21,CustomModelData:123023}
execute if score $slot ui_temp matches 26 run data modify storage ui:text_board temp.node set value {}

execute if score $slot ui_temp matches 1 run scoreboard players set @s title_data 1
execute if score $slot ui_temp matches 17 run scoreboard players add @s title_node_page 1
execute if score $slot ui_temp matches 22 run scoreboard players set @s title_data 18
execute if score $slot ui_temp matches 23 run scoreboard players set @s title_data 19

execute if score $slot ui_temp matches 1..26 if score @s title_whole matches 1 run function ui:tmw/243/core/panel/title/node2_title
execute if score $slot ui_temp matches 1..26 if score @s title_whole matches 2 run function ui:tmw/243/core/panel/title/node2_subtitle
execute if score $slot ui_temp matches 1..26 if score @s title_whole matches 3 run function ui:tmw/243/core/panel/title/node2_actionbar

item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":"何も設定せずに戻る","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 1..26 unless score $slot ui_temp matches 1 unless score $slot ui_temp matches 9 unless score $slot ui_temp matches 17 unless score $slot ui_temp matches 22 unless score $slot ui_temp matches 23 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 0.8 2 0
execute if score $slot ui_temp matches 1..26 unless score $slot ui_temp matches 1 unless score $slot ui_temp matches 9 unless score $slot ui_temp matches 17 unless score $slot ui_temp matches 22 unless score $slot ui_temp matches 23 run scoreboard players set @s title_node 0

# OMD に送信
data remove storage ui:text_board temp.node
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].text_board set from storage ui:text_board temp

data remove storage ui:text_board temp
