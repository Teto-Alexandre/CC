# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

item replace entity @s enderchest.0 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}



item replace entity @s enderchest.4 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}







item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}



item replace entity @s enderchest.18 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}



item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}



item replace entity @s enderchest.1 with lime_stained_glass_pane{display:{Name:'{"text":"+1","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 1 run scoreboard players add $ke2 party_mode 1
item replace entity @s enderchest.10 with creeper_head{display:{Name:'{"text":"ランダムバレット","color": "gold","italic": false}',Lore:['{"text":"※クリックして初期化","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if score $slot ui_temp matches 10 run scoreboard players set $ke2 party_mode 0
execute if score $ke2 party_mode matches 1.. run item replace entity @s enderchest.19 with lime_stained_glass_pane{display:{Name:'{"text":"-1","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $ke2 party_mode matches 0 run item replace entity @s enderchest.19 with red_stained_glass_pane{display:{Name:'{"text":"-1","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 19 if score $ke2 party_mode matches 1.. run scoreboard players remove $ke2 party_mode 1
scoreboard players operation $time.display ui_world = $ke2 party_mode
item modify entity @s enderchest.1 ui:setting_none
item modify entity @s enderchest.19 ui:setting_none

item replace entity @s enderchest.2 with lime_stained_glass_pane{display:{Name:'{"text":"+10%","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 2 run scoreboard players add $dmg party_mode 1
item replace entity @s enderchest.11 with zombie_head{display:{Name:'{"text":"ランダムダメージ","color": "gold","italic": false}',Lore:['{"text":"※クリックして初期化","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if score $slot ui_temp matches 11 run scoreboard players set $dmg party_mode 0
execute if score $dmg party_mode matches 1.. run item replace entity @s enderchest.20 with lime_stained_glass_pane{display:{Name:'{"text":"-10%","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $dmg party_mode matches 0 run item replace entity @s enderchest.20 with red_stained_glass_pane{display:{Name:'{"text":"-10%","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 20 if score $dmg party_mode matches 1.. run scoreboard players remove $dmg party_mode 1
scoreboard players operation $time.display ui_world = $dmg party_mode
scoreboard players operation $time.display ui_world *= #10 ui_num
item modify entity @s enderchest.2 ui:setting_percentage
item modify entity @s enderchest.20 ui:setting_percentage

execute if score $def party_mode matches ..9 run item replace entity @s enderchest.3 with lime_stained_glass_pane{display:{Name:'{"text":"+10%","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $def party_mode matches 10 run item replace entity @s enderchest.3 with red_stained_glass_pane{display:{Name:'{"text":"+10%","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 3 if score $def party_mode matches ..9 run scoreboard players add $def party_mode 1
item replace entity @s enderchest.12 with shield{display:{Name:'{"text":"固定ダメージカット","color": "gold","italic": false}',Lore:['{"text":"※クリックして初期化","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if score $slot ui_temp matches 12 run scoreboard players set $def party_mode 0
execute if score $def party_mode matches 1.. run item replace entity @s enderchest.21 with lime_stained_glass_pane{display:{Name:'{"text":"-10%","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $def party_mode matches 0 run item replace entity @s enderchest.21 with red_stained_glass_pane{display:{Name:'{"text":"-10%","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 21 if score $def party_mode matches 1.. run scoreboard players remove $def party_mode 1
scoreboard players operation $time.display ui_world = $def party_mode
scoreboard players operation $time.display ui_world *= #10 ui_num
item modify entity @s enderchest.3 ui:setting_percentage
item modify entity @s enderchest.21 ui:setting_percentage
execute if score $slot ui_temp matches 3 if score $def party_mode matches 10 if entity @s[advancements={ui:hidden/misc/peaceful=false}] run advancement grant @s only ui:hidden/misc/peaceful

execute if score $slot ui_temp matches 5 run scoreboard players add $gear_off party_mode 1
execute if score $slot ui_temp matches 5 if score $gear_off party_mode matches 2.. run scoreboard players set $gear_off party_mode 0
execute if score $gear_off party_mode matches 1 run item replace entity @s enderchest.5 with lime_stained_glass_pane{display:{Name:'{"text":"ギア読み込み無効化: ON","italic": false}'},ui:{ismenu:1}}
execute unless score $gear_off party_mode matches 1 run item replace entity @s enderchest.5 with red_stained_glass_pane{display:{Name:'{"text":"ギア読み込み無効化: OFF","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 5 unless score $gear_off party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がギア読み込み無効化を無効化しました","color": "gray"}]
execute if score $slot ui_temp matches 5 if score $gear_off party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がギア読み込み無効化を有効化しました","color": "gray"}]

execute if score $slot ui_temp matches 6 run scoreboard players add $sub_quick_cancel party_mode 1
execute if score $slot ui_temp matches 6 if score $sub_quick_cancel party_mode matches 2.. run scoreboard players set $sub_quick_cancel party_mode 0
execute if score $sub_quick_cancel party_mode matches 1 run item replace entity @s enderchest.6 with lime_stained_glass_pane{display:{Name:'{"text":"サブウェポン・クイックキャンセルバグ: ON","italic": false}'},ui:{ismenu:1}}
execute unless score $sub_quick_cancel party_mode matches 1 run item replace entity @s enderchest.6 with red_stained_glass_pane{display:{Name:'{"text":"サブウェポン・クイックキャンセルバグ: OFF","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 6 unless score $sub_quick_cancel party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がサブウェポン・クイックキャンセルバグを無効化しました","color": "gray"}]
execute if score $slot ui_temp matches 6 if score $sub_quick_cancel party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がサブウェポン・クイックキャンセルバグを有効化しました","color": "gray"}]

execute if score $slot ui_temp matches 7 run scoreboard players add $swap_save party_mode 1
execute if score $slot ui_temp matches 7 if score $swap_save party_mode matches 2.. run scoreboard players set $swap_save party_mode 0
execute if score $swap_save party_mode matches 1 run item replace entity @s enderchest.7 with lime_stained_glass_pane{display:{Name:'{"text":"持ち替えデータ保存バグ: ON","italic": false}'},ui:{ismenu:1}}
execute unless score $swap_save party_mode matches 1 run item replace entity @s enderchest.7 with red_stained_glass_pane{display:{Name:'{"text":"持ち替えデータ保存バグ: OFF","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 7 unless score $swap_save party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が持ち替えデータ保存バグを無効化しました","color": "gray"}]
execute if score $slot ui_temp matches 7 if score $swap_save party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が持ち替えデータ保存バグを有効化しました","color": "gray"}]

execute if score $slot ui_temp matches 8 run scoreboard players add $sp_fusion party_mode 1
execute if score $slot ui_temp matches 8 if score $sp_fusion party_mode matches 2.. run scoreboard players set $sp_fusion party_mode 0
execute if score $sp_fusion party_mode matches 1 run item replace entity @s enderchest.8 with lime_stained_glass_pane{display:{Name:'{"text":"ランダムメイン・スペシャル融合バグ: ON","italic": false}'},ui:{ismenu:1}}
execute unless score $sp_fusion party_mode matches 1 run item replace entity @s enderchest.8 with red_stained_glass_pane{display:{Name:'{"text":"ランダムメイン・スペシャル融合バグ: OFF","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 8 unless score $sp_fusion party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がランダムメイン・スペシャル融合バグを無効化しました","color": "gray"}]
execute if score $slot ui_temp matches 8 if score $sp_fusion party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がランダムメイン・スペシャル融合バグを有効化しました","color": "gray"}]

execute if score $slot ui_temp matches 14 run scoreboard players add $ref_limit party_mode 1
execute if score $slot ui_temp matches 14 if score $ref_limit party_mode matches 2.. run scoreboard players set $ref_limit party_mode 0
execute if score $ref_limit party_mode matches 1 run item replace entity @s enderchest.14 with lime_stained_glass_pane{display:{Name:'{"text":"リフレクター反射制限の解除: ON","italic": false}'},ui:{ismenu:1}}
execute unless score $ref_limit party_mode matches 1 run item replace entity @s enderchest.14 with red_stained_glass_pane{display:{Name:'{"text":"リフレクター反射制限の解除: OFF","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 14 unless score $ref_limit party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がリフレクター反射制限の解除を無効化しました","color": "gray"}]
execute if score $slot ui_temp matches 14 if score $ref_limit party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がリフレクター反射制限の解除を有効化しました","color": "gray"}]

execute if score $slot ui_temp matches 15 run scoreboard players add $sub_quick party_mode 1
execute if score $slot ui_temp matches 15 if score $sub_quick party_mode matches 2.. run scoreboard players set $sub_quick party_mode 0
execute if score $sub_quick party_mode matches 1 run item replace entity @s enderchest.15 with lime_stained_glass_pane{display:{Name:'{"text":"全サブスペのクイック化: ON","italic": false}'},ui:{ismenu:1}}
execute unless score $sub_quick party_mode matches 1 run item replace entity @s enderchest.15 with red_stained_glass_pane{display:{Name:'{"text":"全サブスペのクイック化: OFF","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 15 unless score $sub_quick party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が全サブスペのクイック化を無効化しました","color": "gray"}]
execute if score $slot ui_temp matches 15 if score $sub_quick party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が全サブスペのクイック化を有効化しました","color": "gray"}]

execute if score $slot ui_temp matches 16 run scoreboard players add $wall_levitation party_mode 1
execute if score $slot ui_temp matches 16 if score $wall_levitation party_mode matches 2.. run scoreboard players set $wall_levitation party_mode 0
execute if score $wall_levitation party_mode matches 1 run item replace entity @s enderchest.16 with lime_stained_glass_pane{display:{Name:'{"text":"降下モード・壁上りぶっ飛びバグ: ON","italic": false}'},ui:{ismenu:1}}
execute unless score $wall_levitation party_mode matches 1 run item replace entity @s enderchest.16 with red_stained_glass_pane{display:{Name:'{"text":"降下モード・壁上りぶっ飛びバグ: OFF","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 16 unless score $wall_levitation party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が降下モード・壁上りぶっ飛びバグを無効化しました","color": "gray"}]
execute if score $slot ui_temp matches 16 if score $wall_levitation party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が降下モード・壁上りぶっ飛びバグを有効化しました","color": "gray"}]

execute if score $slot ui_temp matches 17 unless score $secondary ui_world matches 1 run scoreboard players set $secondary ui_world 3
execute if score $slot ui_temp matches 17 if score $secondary ui_world matches 1 run scoreboard players set $secondary ui_world 0
execute if score $slot ui_temp matches 17 if score $secondary ui_world matches 3 run scoreboard players set $secondary ui_world 1
execute unless score $secondary ui_world matches 1 run item replace entity @s enderchest.17 with red_stained_glass_pane{display:{Name:'{"text":"セカンダリウェポン: OFF","italic": false}'},ui:{ismenu:1}}
execute if score $secondary ui_world matches 1 run item replace entity @s enderchest.17 with lime_stained_glass_pane{display:{Name:'{"text":"セカンダリウェポン: ON","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 17 unless score $secondary ui_world matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がセカンダリウェポンを無効化しました","color": "gray"}]
execute if score $slot ui_temp matches 17 if score $secondary ui_world matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がセカンダリウェポンを有効化しました","color": "gray"}]

execute if score $slot ui_temp matches 24 run scoreboard players add $fusion_plus party_mode 1
execute if score $slot ui_temp matches 24 if score $fusion_plus party_mode matches 2.. run scoreboard players set $fusion_plus party_mode 0
execute if score $fusion_plus party_mode matches 1 run item replace entity @s enderchest.24 with lime_stained_glass_pane{display:{Name:'{"text":"超サブスペ融合（未実装）: ON","italic": false}'},ui:{ismenu:1}}
execute unless score $fusion_plus party_mode matches 1 run item replace entity @s enderchest.24 with red_stained_glass_pane{display:{Name:'{"text":"超サブスペ融合（未実装）: OFF","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 24 unless score $fusion_plus party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が超サブスペ融合を無効化しました","color": "gray"}]
execute if score $slot ui_temp matches 24 if score $fusion_plus party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が超サブスペ融合を有効化しました","color": "gray"}]

execute if score $slot ui_temp matches 25 run scoreboard players add $limited_weapon party_mode 1
execute if score $slot ui_temp matches 25 if score $limited_weapon party_mode matches 4.. run scoreboard players set $limited_weapon party_mode 0
execute if score $limited_weapon party_mode matches 3 run item replace entity @s enderchest.25 with lime_stained_glass_pane{display:{Name:'{"text":"制限武器使用許可: LEVEL III","italic": false}'},ui:{ismenu:1}}
execute if score $limited_weapon party_mode matches 2 run item replace entity @s enderchest.25 with yellow_stained_glass_pane{display:{Name:'{"text":"制限武器使用許可: LEVEL II","italic": false}'},ui:{ismenu:1}}
execute if score $limited_weapon party_mode matches 1 run item replace entity @s enderchest.25 with orange_stained_glass_pane{display:{Name:'{"text":"制限武器使用許可: LEVEL I","italic": false}'},ui:{ismenu:1}}
execute unless score $limited_weapon party_mode matches 1.. run item replace entity @s enderchest.25 with red_stained_glass_pane{display:{Name:'{"text":"制限武器使用許可: Null","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 25 unless score $limited_weapon party_mode matches 1.. run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が制限武器使用許可を無効化しました","color": "gray"}]
execute if score $slot ui_temp matches 25 if score $limited_weapon party_mode matches 1 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が制限武器使用許可を有効化しました","color": "gray"}]
execute if score $slot ui_temp matches 25 if score $limited_weapon party_mode matches 2..3 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が制限武器使用許可を拡大しました","color": "gray"}]

item replace entity @s enderchest.26 with cave_spider_spawn_egg{display:{Name:'{"text":"カオスチームになる","bold": true,"color": "red","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 26 run scoreboard players set @s ui_team 101
execute if score $slot ui_temp matches 26 run tellraw @s [{"text":"> ","color": "gray"},{"text":"爆発がカラフルになります ゲームには参加できません","color": "red"}]

item replace entity @s enderchest.9 with nether_star{display:{Name:'{"text":"パーティー設定を終える","bold": true,"color": "white","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 9 run tag @s remove setting_party
