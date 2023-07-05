# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

execute unless data entity @s EnderItems[0].tag.TextBoard run item replace entity @s enderchest.0 with purple_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}

item replace entity @s enderchest.1 with yellow_stained_glass_pane{display:{Name:'{"text":"タイトル","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.2 with lime_stained_glass_pane{display:{Name:'{"text":"サブタイトル","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.3 with green_stained_glass_pane{display:{Name:'{"text":"アクションバー","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.4 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.5 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.6 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.7 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}

item replace entity @s enderchest.8 with purple_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.9 with purple_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}

item replace entity @s enderchest.10 with black_stained_glass{display:{Name:'{"text":"初期状態に戻す","italic": false}',Lore:[]},ui:{ismenu:1}}
item replace entity @s enderchest.11 with white_stained_glass{display:{Name:'{"text":"旧UIに変更","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.12 with white_stained_glass{display:{Name:'{"text":"新UIに変更","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.13 with white_stained_glass{display:{Name:'{"text":"旧UI-サーキュレーター対応に変更","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.14 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.15 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.16 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}

item replace entity @s enderchest.17 with purple_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.18 with purple_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}

item replace entity @s enderchest.19 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.20 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.21 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.22 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with gray_stained_glass_pane{display:{Name:'{"text":"","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.24 with hopper{display:{Name:'{"text":"インポート","italic": false}',Lore:['{"text":"左上のスロットに入った設定アイテムを読み込む","color": "gray","italic":false}']},ui:{ismenu:1}}
item replace entity @s enderchest.25 with piston{display:{Name:'{"text":"エクスポート","italic": false}',Lore:['{"text":"現在の設定をアイテム化して書き出す","color": "gray","italic":false}']},ui:{ismenu:1}}

execute if score $slot ui_temp matches 1..3 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 0.8 2 0
execute if score $slot ui_temp matches 1 run scoreboard players set @s title_whole 1
execute if score $slot ui_temp matches 2 run scoreboard players set @s title_whole 2
execute if score $slot ui_temp matches 3 run scoreboard players set @s title_whole 3

execute if score $slot ui_temp matches 10 run function ui:tmw/237/title/debug/input3
execute if score $slot ui_temp matches 11 run function ui:tmw/237/title/debug/default
execute if score $slot ui_temp matches 12 run function ui:tmw/237/title/debug/easy
execute if score $slot ui_temp matches 13 run function ui:tmw/237/title/debug/circulator

execute if score $slot ui_temp matches 24 unless data entity @s EnderItems[0].tag.TextBoard run playsound entity.villager.no player @s ~ ~ ~ 1 2 0
execute if score $slot ui_temp matches 24 if data entity @s EnderItems[0].tag.TextBoard run function ui:tmw/243/core/panel/title/whole_act/import
execute if score $slot ui_temp matches 25 if data entity @s EnderItems[0].tag.TextBoard run playsound entity.villager.no player @s ~ ~ ~ 1 2 0
execute if score $slot ui_temp matches 25 unless data entity @s EnderItems[0].tag.TextBoard run function ui:tmw/243/core/panel/title/whole_act/export

item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":"タイトル編集を閉じる","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 26 run item replace entity @s enderchest.0 with air
execute if score $slot ui_temp matches 26 run tag @s remove setting_title
