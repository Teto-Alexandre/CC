# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

execute if score $slot ui_temp matches 26 run tag @s remove setting_game

item replace entity @s enderchest.0 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.2 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.4 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.5 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.6 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.7 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.9 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.11 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.14 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.15 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.16 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

execute unless entity @s[tag=module_unlocked] run item replace entity @s enderchest.18 with red_stained_glass_pane{display:{Name:'{"text":"未開放","italic": false,"color": "red"}'},ui:{ismenu:1}}
execute if entity @s[tag=module_unlocked] unless score $module ui_world matches 1 run item replace entity @s enderchest.18 with light_blue_stained_glass_pane{display:{Name:'{"text":"モジュールの有効化","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=module_unlocked] if score $module ui_world matches 1 run item replace entity @s enderchest.18 with white_stained_glass_pane{display:{Name:'{"text":"モジュールの無効化","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=module_unlocked] if score $slot ui_temp matches 18 unless score $module ui_world matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がモジュールを有効化しました","color": "gray"}]
execute if entity @s[tag=module_unlocked] if score $slot ui_temp matches 18 unless score $module ui_world matches 1 run scoreboard players set $module ui_world 2
execute if entity @s[tag=module_unlocked] if score $slot ui_temp matches 18 if score $module ui_world matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がモジュールを無効化しました","color": "gray"}]
execute if entity @s[tag=module_unlocked] if score $slot ui_temp matches 18 if score $module ui_world matches 1 run scoreboard players set $module ui_world 0
execute if entity @s[tag=module_unlocked] if score $slot ui_temp matches 18 if score $module ui_world matches 2 run scoreboard players set $module ui_world 1
execute unless entity @s[tag=module_unlocked] if score $slot ui_temp matches 18 run tellraw @s [{"text":"> ","color": "gray"},{"text":"この項目は未開放です","color": "red"}]

item replace entity @s enderchest.20 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.24 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.25 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.1 with lime_stained_glass_pane{display:{Name:'{"text":"1秒延長","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 1 if score $respawntime ui_world matches ..180 run scoreboard players add $respawntime ui_world 20
item replace entity @s enderchest.10 with bone{display:{Name:'{"text":"リスポーン待機時間","color": "gold","italic": false}',Lore:['{"text":"※クリックして初期化","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if score $slot ui_temp matches 10 run scoreboard players set $respawntime ui_world 100
item replace entity @s enderchest.19 with lime_stained_glass_pane{display:{Name:'{"text":"1秒短縮","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 19 if score $respawntime ui_world matches 40.. run scoreboard players remove $respawntime ui_world 20
scoreboard players operation $time.display ui_world = $respawntime ui_world
scoreboard players operation $time.display ui_world /= #20 ui_num
item modify entity @s enderchest.1 ui:setting_sec
item modify entity @s enderchest.19 ui:setting_sec

item replace entity @s enderchest.3 with lime_stained_glass_pane{display:{Name:'{"text":"30秒延長","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 3 run scoreboard players add $time.max ui_world 600
item replace entity @s enderchest.12 with clock{display:{Name:'{"text":"制限時間","color": "gold","italic": false}',Lore:['{"text":"※クリックして初期化","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if score $slot ui_temp matches 12 run scoreboard players set $time.max ui_world 3600
item replace entity @s enderchest.21 with lime_stained_glass_pane{display:{Name:'{"text":"30秒短縮","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 21 if score $time.max ui_world matches 1200.. run scoreboard players remove $time.max ui_world 600
scoreboard players operation $time.display ui_world = $time.max ui_world
scoreboard players operation $time.display ui_world /= #20 ui_num
item modify entity @s enderchest.3 ui:setting_sec
item modify entity @s enderchest.21 ui:setting_sec

item replace entity @s enderchest.8 with orange_stained_glass_pane{display:{Name:'{"text":"ゲーム設定をリセット","color": "red","italic": false}',Lore:['{"text":"※クリックして初期化","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if score $slot ui_temp matches 8 run scoreboard players set $respawntime ui_world 100
execute if score $slot ui_temp matches 8 run scoreboard players set $time.max ui_world 3600

execute if entity @s[tag=!party_unlocked] run item replace entity @s enderchest.17 with red_stained_glass_pane{display:{Name:'{"text":"未開放","italic": false,"color": "red"}'},ui:{ismenu:1}}
execute if entity @s[tag=!party_unlocked] if score $slot ui_temp matches 17 run tellraw @s [{"text":"> ","color": "gray"},{"text":"この項目は未開放です","color": "red"}]
execute if entity @s[tag=party_unlocked] run item replace entity @s enderchest.17 with dragon_egg{display:{Name:'{"text":"パーティーモード","color": "white","bold": true,"italic": false}',Lore:['{"text":"※※※ DANGER ※※※","color": "red","italic": false}','{"text":"甚大なラグ、混沌注意","color": "red","italic": false}']},ui:{ismenu:1}}
execute if entity @s[tag=party_unlocked] if score $slot ui_temp matches 17 run tag @s add setting_party

item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":"ゲーム設定を終える","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 26 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がゲーム設定を閉じました","color": "gray"}]

execute if score $slot ui_temp matches 26 run item replace entity @s enderchest.0 with air
