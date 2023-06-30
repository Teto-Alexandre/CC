# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

# OMD から取得
function oh_my_dat:please
data modify storage ui:text_board temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].text_board

item replace entity @s enderchest.0 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.1 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"1個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.2 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"2個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.3 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"3個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.4 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"4個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.5 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"5個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.6 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"6個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.7 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"7個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.8 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.9 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.10 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"8個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.11 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"9個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.12 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"10個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"11個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.14 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"12個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.15 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"13個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.16 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"14個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.17 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.18 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.19 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"15個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.20 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"16個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.21 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"17個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"18個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"19個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.24 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"20個目","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.25 with gray_stained_glass_pane{CustomModelData:123000,display:{Name:'{"text":"21個目","italic": false}'},ui:{ismenu:1}}

execute if score @s title_whole matches 1 run function ui:tmw/243/core/panel/title/node_display_title
execute if score @s title_whole matches 2 run function ui:tmw/243/core/panel/title/node_display_subtitle
execute if score @s title_whole matches 3 run function ui:tmw/243/core/panel/title/node_display_actionbar

execute if score $slot ui_temp matches 1 run scoreboard players set @s title_node 1
execute if score $slot ui_temp matches 2 run scoreboard players set @s title_node 2
execute if score $slot ui_temp matches 3 run scoreboard players set @s title_node 3
execute if score $slot ui_temp matches 4 run scoreboard players set @s title_node 4
execute if score $slot ui_temp matches 5 run scoreboard players set @s title_node 5
execute if score $slot ui_temp matches 6 run scoreboard players set @s title_node 6
execute if score $slot ui_temp matches 7 run scoreboard players set @s title_node 7
execute if score $slot ui_temp matches 10 run scoreboard players set @s title_node 8
execute if score $slot ui_temp matches 11 run scoreboard players set @s title_node 9
execute if score $slot ui_temp matches 12 run scoreboard players set @s title_node 10
execute if score $slot ui_temp matches 13 run scoreboard players set @s title_node 11
execute if score $slot ui_temp matches 14 run scoreboard players set @s title_node 12
execute if score $slot ui_temp matches 15 run scoreboard players set @s title_node 13
execute if score $slot ui_temp matches 16 run scoreboard players set @s title_node 14
execute if score $slot ui_temp matches 19 run scoreboard players set @s title_node 15
execute if score $slot ui_temp matches 20 run scoreboard players set @s title_node 16
execute if score $slot ui_temp matches 21 run scoreboard players set @s title_node 17
execute if score $slot ui_temp matches 22 run scoreboard players set @s title_node 18
execute if score $slot ui_temp matches 23 run scoreboard players set @s title_node 19
execute if score $slot ui_temp matches 24 run scoreboard players set @s title_node 20
execute if score $slot ui_temp matches 25 run scoreboard players set @s title_node 21

item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":"場所選択に戻る","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 26 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 0.8 2 0
execute if score $slot ui_temp matches 26 run scoreboard players set @s title_whole 0

# OMD に送信
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].text_board set from storage ui:text_board temp

data remove storage ui:text_board temp
