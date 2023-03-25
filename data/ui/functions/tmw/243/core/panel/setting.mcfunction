# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

execute if score $slot ui_temp matches 26 run tag @s remove setting_game

item replace entity @s enderchest.0 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.2 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.3 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.4 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.5 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.6 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.7 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.8 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.9 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.11 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.12 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.14 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.15 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.16 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.17 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.18 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.20 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.21 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.24 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.25 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.1 with lime_stained_glass_pane{display:{Name:'{"text":"30秒延長","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 1 run scoreboard players add $time.max ui_world 600
item replace entity @s enderchest.10 with clock{display:{Name:'{"text":""}'},ui:{ismenu:1}}
scoreboard players operation $time.display ui_world = $time.max ui_world
scoreboard players operation $time.display ui_world /= #20 ui_num
item modify entity @s enderchest.10 ui:time
execute if score $slot ui_temp matches 10 run scoreboard players set $time.max ui_world 3600
item replace entity @s enderchest.19 with lime_stained_glass_pane{display:{Name:'{"text":"30秒短縮","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 19 if score $time.max ui_world matches 1200.. run scoreboard players remove $time.max ui_world 600

item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":"ゲーム設定を終える","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 26 run item replace entity @s enderchest.0 with air
