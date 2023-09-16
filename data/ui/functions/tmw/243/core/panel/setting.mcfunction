# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

execute if score $slot ui_temp matches 26 run tag @s remove setting_game

item replace entity @s enderchest.0 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}





item replace entity @s enderchest.6 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.7 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.9 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}





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

execute unless score $gamemode ui_world matches 1.. run item replace entity @s enderchest.2 with yellow_stained_glass_pane{display:{Name:'{"text":"現在: ナワバリバトル","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $gamemode ui_world matches 1 run item replace entity @s enderchest.2 with yellow_stained_glass_pane{display:{Name:'{"text":"現在: ガチキング","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $gamemode ui_world matches 2 run item replace entity @s enderchest.2 with yellow_stained_glass_pane{display:{Name:'{"text":"現在: ガチ増え鬼","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $gamemode ui_world matches 3 run item replace entity @s enderchest.2 with yellow_stained_glass_pane{display:{Name:'{"text":"現在: ガチエリア","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $gamemode ui_world matches 4 run item replace entity @s enderchest.2 with yellow_stained_glass_pane{display:{Name:'{"text":"現在: ガチアシバ","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $gamemode ui_world matches 5 run item replace entity @s enderchest.2 with yellow_stained_glass_pane{display:{Name:'{"text":"現在: ガチレイド","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 2 run scoreboard players add $gamemode ui_world 1
item replace entity @s enderchest.11 with crafting_table{display:{Name:'{"text":"ゲームモード","color": "gold","italic": false}',Lore:['{"text":"※クリックして初期化","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if score $slot ui_temp matches 11 run scoreboard players set $gamemode ui_world 0
execute unless score $gamemode ui_world matches 1.. run item replace entity @s enderchest.20 with yellow_stained_glass_pane{display:{Name:'{"text":"現在: ナワバリバトル","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $gamemode ui_world matches 1 run item replace entity @s enderchest.20 with yellow_stained_glass_pane{display:{Name:'{"text":"現在: ガチキング","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $gamemode ui_world matches 2 run item replace entity @s enderchest.20 with yellow_stained_glass_pane{display:{Name:'{"text":"現在: ガチ増え鬼","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $gamemode ui_world matches 3 run item replace entity @s enderchest.20 with yellow_stained_glass_pane{display:{Name:'{"text":"現在: ガチエリア","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $gamemode ui_world matches 4 run item replace entity @s enderchest.20 with yellow_stained_glass_pane{display:{Name:'{"text":"現在: ガチアシバ","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $gamemode ui_world matches 5 run item replace entity @s enderchest.20 with yellow_stained_glass_pane{display:{Name:'{"text":"現在: ガチレイド","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 20 run scoreboard players remove $gamemode ui_world 1
execute if score $gamemode ui_world matches 6.. run scoreboard players set $gamemode ui_world 0
execute if score $gamemode ui_world matches ..-1 run scoreboard players set $gamemode ui_world 5
execute if score $slot ui_temp matches 2 unless score $gamemode ui_world matches 1.. run tellraw @a [{"text":"> ","color": "gray"},{"text":"ゲームモードがナワバリバトルになりました","color": "gray"}]
execute if score $slot ui_temp matches 2 unless score $gamemode ui_world matches 1.. run data merge storage ui:map {mode:"2team"}
execute if score $slot ui_temp matches 2 if score $gamemode ui_world matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"text":"ゲームモードがガチキングになりました","color": "gray"}]
execute if score $slot ui_temp matches 2 if score $gamemode ui_world matches 1 run data merge storage ui:map {mode:"2team"}
execute if score $slot ui_temp matches 2 if score $gamemode ui_world matches 2 run tellraw @a [{"text":"> ","color": "gray"},{"text":"ゲームモードがガチ増え鬼になりました","color": "gray"}]
execute if score $slot ui_temp matches 2 if score $gamemode ui_world matches 2 run data merge storage ui:map {mode:"2team"}
execute if score $slot ui_temp matches 2 if score $gamemode ui_world matches 3 run tellraw @a [{"text":"> ","color": "gray"},{"text":"ゲームモードがガチエリアになりました","color": "gray"}]
execute if score $slot ui_temp matches 2 if score $gamemode ui_world matches 3 run data merge storage ui:map {mode:"Area"}
execute if score $slot ui_temp matches 2 if score $gamemode ui_world matches 4 run tellraw @a [{"text":"> ","color": "gray"},{"text":"ゲームモードがガチアシバになりました","color": "gray"}]
execute if score $slot ui_temp matches 2 if score $gamemode ui_world matches 4 run data merge storage ui:map {mode:"Asiba"}
execute if score $slot ui_temp matches 2 if score $gamemode ui_world matches 4 run function ui:game/team2
execute if score $slot ui_temp matches 2 if score $gamemode ui_world matches 4 run scoreboard players set $teamset ui_world 0
execute if score $slot ui_temp matches 2 if score $gamemode ui_world matches 5 run tellraw @a [{"text":"> ","color": "gray"},{"text":"ゲームモードがガチレイドになりました","color": "gray"}]
execute if score $slot ui_temp matches 2 if score $gamemode ui_world matches 5 run data merge storage ui:map {mode:"Boss"}
execute if score $slot ui_temp matches 2 if score $gamemode ui_world matches 5 run scoreboard players set @a ui_team 1
execute if score $slot ui_temp matches 2 if score $gamemode ui_world matches 5 run scoreboard players set $teamset ui_world 3
execute if score $slot ui_temp matches 20 unless score $gamemode ui_world matches 1.. run tellraw @a [{"text":"> ","color": "gray"},{"text":"ゲームモードがナワバリバトルになりました","color": "gray"}]
execute if score $slot ui_temp matches 20 unless score $gamemode ui_world matches 1.. run data merge storage ui:map {mode:"2team"}
execute if score $slot ui_temp matches 20 if score $gamemode ui_world matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"text":"ゲームモードがガチキングになりました","color": "gray"}]
execute if score $slot ui_temp matches 20 if score $gamemode ui_world matches 1 run data merge storage ui:map {mode:"2team"}
execute if score $slot ui_temp matches 20 if score $gamemode ui_world matches 2 run tellraw @a [{"text":"> ","color": "gray"},{"text":"ゲームモードがガチ増え鬼になりました","color": "gray"}]
execute if score $slot ui_temp matches 20 if score $gamemode ui_world matches 2 run data merge storage ui:map {mode:"2team"}
execute if score $slot ui_temp matches 20 if score $gamemode ui_world matches 3 run tellraw @a [{"text":"> ","color": "gray"},{"text":"ゲームモードがガチエリアになりました","color": "gray"}]
execute if score $slot ui_temp matches 20 if score $gamemode ui_world matches 3 run data merge storage ui:map {mode:"Area"}
execute if score $slot ui_temp matches 20 if score $gamemode ui_world matches 4 run tellraw @a [{"text":"> ","color": "gray"},{"text":"ゲームモードがガチアシバになりました","color": "gray"}]
execute if score $slot ui_temp matches 20 if score $gamemode ui_world matches 4 run data merge storage ui:map {mode:"Asiba"}
execute if score $slot ui_temp matches 20 if score $gamemode ui_world matches 4 run function ui:game/team2
execute if score $slot ui_temp matches 20 if score $gamemode ui_world matches 4 run scoreboard players set $teamset ui_world 0
execute if score $slot ui_temp matches 20 if score $gamemode ui_world matches 5 run tellraw @a [{"text":"> ","color": "gray"},{"text":"ゲームモードがガチレイドになりました","color": "gray"}]
execute if score $slot ui_temp matches 20 if score $gamemode ui_world matches 5 run data merge storage ui:map {mode:"Boss"}
execute if score $slot ui_temp matches 20 if score $gamemode ui_world matches 5 run scoreboard players set @a ui_team 1
execute if score $slot ui_temp matches 20 if score $gamemode ui_world matches 5 run scoreboard players set $teamset ui_world 3

execute unless score $teamset ui_world matches 1.. run item replace entity @s enderchest.3 with yellow_dye{display:{Name:'{"text":"2チーム","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $teamset ui_world matches 1 run item replace entity @s enderchest.3 with pink_dye{display:{Name:'{"text":"3チーム","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $teamset ui_world matches 2 run item replace entity @s enderchest.3 with lime_dye{display:{Name:'{"text":"4チーム","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $teamset ui_world matches 3 run item replace entity @s enderchest.3 with light_blue_dye{display:{Name:'{"text":"全員青","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 3 run scoreboard players add $teamset ui_world 1
execute if score $slot ui_temp matches 3 if score $teamset ui_world matches 4.. run scoreboard players set $teamset ui_world 0
execute if score $slot ui_temp matches 3 unless score $teamset ui_world matches 1.. run function ui:game/team2
execute if score $slot ui_temp matches 3 if score $teamset ui_world matches 1 run function ui:game/team3
execute if score $slot ui_temp matches 3 if score $teamset ui_world matches 2 run function ui:game/team4
execute if score $slot ui_temp matches 3 if score $teamset ui_world matches 3 run scoreboard players set @a ui_team 1
execute if score $slot ui_temp matches 3 unless score $teamset ui_world matches 1.. run data merge storage ui:map {mode:"2team"}
execute if score $slot ui_temp matches 3 if score $teamset ui_world matches 1..2 run data merge storage ui:map {mode:"4team"}
execute if score $slot ui_temp matches 3 if score $teamset ui_world matches 3 run data merge storage ui:map {mode:"2team"}

execute unless score $gamemode ui_world matches 5 run item replace entity @s enderchest.21 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
execute if score $gamemode ui_world matches 5 unless score $difficulty ui_world matches 1.. run item replace entity @s enderchest.21 with lime_wool{display:{Name:'{"text":"難易度: イージー","italic":false,"color": "green"}'},ui:{ismenu:1}}
execute if score $gamemode ui_world matches 5 if score $difficulty ui_world matches 1 run item replace entity @s enderchest.21 with yellow_wool{display:{Name:'{"text":"難易度: プレーン","italic":false,"color": "yellow"}'},ui:{ismenu:1}}
execute if score $gamemode ui_world matches 5 if score $difficulty ui_world matches 2 run item replace entity @s enderchest.21 with orange_wool{display:{Name:'{"text":"難易度: ハザード","italic":false,"color": "gold"}'},ui:{ismenu:1}}
execute if score $gamemode ui_world matches 5 if score $difficulty ui_world matches 3 run item replace entity @s enderchest.21 with red_wool{display:{Name:'{"text":"難易度: ジエンド","italic":false,"color": "red"}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 21 if score $gamemode ui_world matches 5 run scoreboard players add $difficulty ui_world 1
execute if score $slot ui_temp matches 21 if score $gamemode ui_world matches 5 if score $difficulty ui_world matches 3.. run scoreboard players set $difficulty ui_world 0

execute unless score $autoteam ui_world matches 1.. run item replace entity @s enderchest.12 with wooden_axe{display:{Name:'{"text":"チーム固定","color": "gold","italic": false}'},ui:{ismenu:1},HideFlags:2}
execute if score $autoteam ui_world matches 1 run item replace entity @s enderchest.12 with iron_axe{display:{Name:'{"text":"チーム自動変更","color": "gold","italic": false}'},ui:{ismenu:1},HideFlags:2}
execute if score $slot ui_temp matches 12 run scoreboard players add $autoteam ui_world 1
execute if score $slot ui_temp matches 12 if score $autoteam ui_world matches 2.. run scoreboard players set $autoteam ui_world 0

item replace entity @s enderchest.4 with lime_stained_glass_pane{display:{Name:'{"text":"30秒延長","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 4 run scoreboard players add $time.max ui_world 600
item replace entity @s enderchest.13 with clock{display:{Name:'{"text":"制限時間","color": "gold","italic": false}',Lore:['{"text":"※クリックして初期化","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if score $slot ui_temp matches 13 run scoreboard players set $time.max ui_world 3600
item replace entity @s enderchest.22 with lime_stained_glass_pane{display:{Name:'{"text":"30秒短縮","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 22 if score $time.max ui_world matches 1200.. run scoreboard players remove $time.max ui_world 600
scoreboard players operation $time.display ui_world = $time.max ui_world
scoreboard players operation $time.display ui_world /= #20 ui_num
item modify entity @s enderchest.4 ui:setting_sec
item modify entity @s enderchest.22 ui:setting_sec

item replace entity @s enderchest.5 with lime_stained_glass_pane{display:{Name:'{"text":"追加","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 5 run scoreboard players add $life ui_world 1
item replace entity @s enderchest.14 with cobblestone{display:{Name:'{"text":"残基","color": "gold","italic": false}',Lore:['{"text":"※クリックして初期化","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if score $slot ui_temp matches 14 run scoreboard players set $life ui_world -1
item replace entity @s enderchest.23 with lime_stained_glass_pane{display:{Name:'{"text":"削除","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 23 if score $life ui_world matches 0.. run scoreboard players remove $life ui_world 1
scoreboard players operation $time.display ui_world = $life ui_world
item modify entity @s enderchest.5 ui:setting_none
item modify entity @s enderchest.23 ui:setting_none
execute unless score $life ui_world matches 0.. run item replace entity @s enderchest.5 with lime_stained_glass_pane{display:{Name:'{"text":"追加","color": "gold","italic": false}',Lore:['[{"italic":false,"color":"gray","text":"現在の設定: "},{"italic": false,"color": "yellow","text":"無制限復活"}]']},ui:{ismenu:1}}
execute unless score $life ui_world matches 0.. run item replace entity @s enderchest.23 with red_stained_glass_pane{display:{Name:'{"text":"削除","color": "gold","italic": false}',Lore:['[{"italic":false,"color":"gray","text":"現在の設定: "},{"italic": false,"color": "yellow","text":"無制限復活"}]']},ui:{ismenu:1}}

item replace entity @s enderchest.8 with orange_stained_glass_pane{display:{Name:'{"text":"ゲーム設定をリセット","color": "red","italic": false}',Lore:['{"text":"※クリックして初期化","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if score $slot ui_temp matches 8 run scoreboard players set $respawntime ui_world 100
execute if score $slot ui_temp matches 8 run scoreboard players set $time.max ui_world 3600
execute if score $slot ui_temp matches 8 run scoreboard players set $life ui_world -1

execute if entity @s[tag=!party_unlocked] run item replace entity @s enderchest.17 with red_stained_glass_pane{display:{Name:'{"text":"未開放","italic": false,"color": "red"}'},ui:{ismenu:1}}
execute if entity @s[tag=!party_unlocked] if score $slot ui_temp matches 17 run tellraw @s [{"text":"> ","color": "gray"},{"text":"この項目は未開放です","color": "red"}]
execute if entity @s[tag=party_unlocked] run item replace entity @s enderchest.17 with dragon_egg{display:{Name:'{"text":"パーティーモード","color": "white","bold": true,"italic": false}',Lore:['{"text":"※※※ DANGER ※※※","color": "red","italic": false}','{"text":"甚大なラグ、混沌注意","color": "red","italic": false}']},ui:{ismenu:1}}
execute if entity @s[tag=party_unlocked] if score $slot ui_temp matches 17 run tag @s add setting_party

item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":"ゲーム設定を終える","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 26 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がゲーム設定を閉じました","color": "gray"}]

execute if score $slot ui_temp matches 26 run item replace entity @s enderchest.0 with air
