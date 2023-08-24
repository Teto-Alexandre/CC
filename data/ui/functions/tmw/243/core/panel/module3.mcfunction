# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

execute if score $slot ui_temp matches 26 run tag @s remove setting_module

item replace entity @s enderchest.0 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.1 with leather_chestplate{display:{color:16743548,Name:'{"text":"灰塵のベスト","color": "red","bold": true,"italic": false}',Lore:['{"text":"被爆発属性ダメージ半減","color": "gray","italic": false}']},HideFlags:2,ui:{ismenu:1}}
item replace entity @s enderchest.2 with minecraft:carrot_on_a_stick{CustomModelData:111301,display:{Name:'{"text":"きぐるみ","color":"white","italic":false}',Lore:['[{"text":"被れる","color":"gray","italic":false}]','[{"text":"当たり判定は大きくならない","color":"gray","italic":false}]']},HideFlags:4,ui:{ismenu:1}}
item replace entity @s enderchest.3 with minecraft:light_gray_dye{display:{Name:'{"text":"所属不明","color":"white","italic":false}',Lore:['[{"text":"防具を身に着けない","color":"gray","italic":false}]','[{"text":"ある意味初期環境","color":"gray","italic":false}]']},HideFlags:4,ui:{ismenu:1}}
item replace entity @s enderchest.4 with phantom_membrane{display:{Name:'{"text":"ふわふわ","color":"aqua","italic":false}',Lore:['[{"text":"常時低速落下を得る","color":"gray","italic":false}]','[{"text":"最大体力が4減る","color":"gray","italic":false}]']},ui:{ismenu:1}}

item replace entity @s enderchest.5 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.6 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.7 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 1 run scoreboard players set @s module 43
execute if score $slot ui_temp matches 2 run scoreboard players set @s module 44
execute if score $slot ui_temp matches 3 run scoreboard players set @s module 45
execute if score $slot ui_temp matches 4 run scoreboard players set @s module 46
execute if score $slot ui_temp matches 4 run scoreboard players set @s health -40
execute if score $slot ui_temp matches 5 run scoreboard players set @s module 47
execute if score $slot ui_temp matches 6 run scoreboard players set @s module 48
execute if score $slot ui_temp matches 7 run scoreboard players set @s module 49

execute if score @s module matches 43 run item modify entity @s enderchest.1 ui:gun/add_glow
execute if score @s module matches 44 run item modify entity @s enderchest.2 ui:gun/add_glow
execute if score @s module matches 45 run item modify entity @s enderchest.3 ui:gun/add_glow
execute if score @s module matches 46 run item modify entity @s enderchest.4 ui:gun/add_glow
execute if score @s module matches 47 run item modify entity @s enderchest.5 ui:gun/add_glow
execute if score @s module matches 48 run item modify entity @s enderchest.6 ui:gun/add_glow
execute if score @s module matches 49 run item modify entity @s enderchest.7 ui:gun/add_glow

item replace entity @s enderchest.8 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.9 with arrow{display:{Name:'{"text":"前のページ","color":"white","italic":false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 9 run scoreboard players set @s module_page 2

item replace entity @s enderchest.10 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.11 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.12 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.14 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.15 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.16 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 10 run scoreboard players set @s module 50
execute if score $slot ui_temp matches 11 run scoreboard players set @s module 51
execute if score $slot ui_temp matches 12 run scoreboard players set @s module 52
execute if score $slot ui_temp matches 13 run scoreboard players set @s module 53
execute if score $slot ui_temp matches 14 run scoreboard players set @s module 54
execute if score $slot ui_temp matches 15 run scoreboard players set @s module 55
execute if score $slot ui_temp matches 16 run scoreboard players set @s module 56

execute if score @s module matches 50 run item modify entity @s enderchest.10 ui:gun/add_glow
execute if score @s module matches 51 run item modify entity @s enderchest.11 ui:gun/add_glow
execute if score @s module matches 52 run item modify entity @s enderchest.12 ui:gun/add_glow
execute if score @s module matches 53 run item modify entity @s enderchest.13 ui:gun/add_glow
execute if score @s module matches 54 run item modify entity @s enderchest.14 ui:gun/add_glow
execute if score @s module matches 55 run item modify entity @s enderchest.15 ui:gun/add_glow
execute if score @s module matches 56 run item modify entity @s enderchest.16 ui:gun/add_glow

item replace entity @s enderchest.17 with arrow{display:{Name:'{"text":"次のページ","color":"white","italic":false}'},ui:{ismenu:1}}
#execute if score $slot ui_temp matches 17 run scoreboard players set @s module_page 3

item replace entity @s enderchest.19 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.20 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.21 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.24 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.25 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 19 run scoreboard players set @s module 57
execute if score $slot ui_temp matches 20 run scoreboard players set @s module 58
execute if score $slot ui_temp matches 21 run scoreboard players set @s module 59
execute if score $slot ui_temp matches 22 run scoreboard players set @s module 60
execute if score $slot ui_temp matches 23 run scoreboard players set @s module 61
execute if score $slot ui_temp matches 24 run scoreboard players set @s module 62
execute if score $slot ui_temp matches 25 run scoreboard players set @s module 63
#
execute if score @s module matches 57 run item modify entity @s enderchest.19 ui:gun/add_glow
execute if score @s module matches 58 run item modify entity @s enderchest.20 ui:gun/add_glow
execute if score @s module matches 59 run item modify entity @s enderchest.21 ui:gun/add_glow
execute if score @s module matches 60 run item modify entity @s enderchest.22 ui:gun/add_glow
execute if score @s module matches 61 run item modify entity @s enderchest.23 ui:gun/add_glow
execute if score @s module matches 62 run item modify entity @s enderchest.24 ui:gun/add_glow
execute if score @s module matches 63 run item modify entity @s enderchest.25 ui:gun/add_glow

item replace entity @s enderchest.18 with white_stained_glass_pane{display:{Name:'{"text":"選択解除","color": "gray","bold": true,"italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 18 run scoreboard players reset @s module

item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":"モジュール設定を終える","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 26 run item replace entity @s enderchest.0 with air
