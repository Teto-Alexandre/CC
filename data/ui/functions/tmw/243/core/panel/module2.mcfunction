# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

execute if score $slot ui_temp matches 26 run tag @s remove setting_module

item replace entity @s enderchest.0 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.1 with carrot_on_a_stick{CustomModelData:110022,display:{Name:'{"text":"チャージアップ！","color": "red","bold": true,"italic": false}',Lore:['{"text":"ゲーム開始時からSPゲージが最大","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.2 with knowledge_book{display:{Name:'{"text":"最低保障プログラム","color": "blue","bold": true,"italic": false}',Lore:['{"text":"ゲーム開始時、死亡時に有効化","color": "gray","italic": false}','{"text":"SPゲージが半分まで溜まる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.3 with carrot_on_a_stick{CustomModelData:110255,display:{Name:'{"text":"達人の間合い10","color": "white","bold": true,"italic": false}',Lore:['{"text":"攻撃命中時、相手との距離が10mなら","color": "gray","italic": false}','{"text":"ダメージが2倍になる","color": "gray","italic": false}','{"text":"少しズレてもある程度ダメージは増える","color": "gray","italic": false}','{"text":"それ以外のダメージは減少する","color": "red","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.4 with carrot_on_a_stick{CustomModelData:110256,display:{Name:'{"text":"達人の間合い15","color": "white","bold": true,"italic": false}',Lore:['{"text":"攻撃命中時、相手との距離が15mなら","color": "gray","italic": false}','{"text":"ダメージが2倍になる","color": "gray","italic": false}','{"text":"少しズレてもある程度ダメージは増える","color": "gray","italic": false}','{"text":"それ以外のダメージは減少する","color": "red","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.5 with carrot_on_a_stick{CustomModelData:110257,display:{Name:'{"text":"達人の間合い20","color": "white","bold": true,"italic": false}',Lore:['{"text":"攻撃命中時、相手との距離が20mなら","color": "gray","italic": false}','{"text":"ダメージが2倍になる","color": "gray","italic": false}','{"text":"少しズレてもある程度ダメージは増える","color": "gray","italic": false}','{"text":"それ以外のダメージは減少する","color": "red","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.6 with cooked_chicken{display:{Name:'{"text":"びっくりチキン","color": "yellow","bold": true,"italic": false}',Lore:['{"text":"攻撃命中時、相手との距離が25mに近いほど","color": "gray","italic": false}','{"text":"ダメージが上昇する","color": "gray","italic": false}','{"text":"25mより遠くなると威力は激減","color": "red","italic": false}','{"text":"15mより近くても激減する","color": "red","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.7 with clay_ball{display:{Name:'{"text":"アンターボチャージャー","color": "green","bold": true,"italic": false}',Lore:['{"text":"徐々にSPゲージが上昇する","color": "gray","italic": false}']},ui:{ismenu:1}}

execute if score $slot ui_temp matches 1 run scoreboard players set @s module 22
execute if score $slot ui_temp matches 2 run scoreboard players set @s module 23
execute if score $slot ui_temp matches 3 run scoreboard players set @s module 24
execute if score $slot ui_temp matches 4 run scoreboard players set @s module 25
execute if score $slot ui_temp matches 5 run scoreboard players set @s module 26
execute if score $slot ui_temp matches 6 run scoreboard players set @s module 27
execute if score $slot ui_temp matches 7 run scoreboard players set @s module 28

execute if score @s module matches 22 run item modify entity @s enderchest.1 ui:gun/add_glow
execute if score @s module matches 23 run item modify entity @s enderchest.2 ui:gun/add_glow
execute if score @s module matches 24 run item modify entity @s enderchest.3 ui:gun/add_glow
execute if score @s module matches 25 run item modify entity @s enderchest.4 ui:gun/add_glow
execute if score @s module matches 26 run item modify entity @s enderchest.5 ui:gun/add_glow
execute if score @s module matches 27 run item modify entity @s enderchest.6 ui:gun/add_glow
execute if score @s module matches 28 run item modify entity @s enderchest.7 ui:gun/add_glow

item replace entity @s enderchest.8 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.9 with arrow{display:{Name:'{"text":"前のページ","color":"white","italic":false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 9 run scoreboard players set @s module_page 1

item replace entity @s enderchest.16 with gray_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.10 with golden_chestplate{HideFlags:2,display:{Name:'{"text":"ライトニングコア","color": "yellow","bold": false,"italic": false}',Lore:['{"text":"緊急自爆時にダメージを伴う爆発を起こす","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.11 with shulker_shell{display:{Name:'{"text":"外付けインクドライブ","color": "dark_purple","bold": true,"italic": false}',Lore:['{"text":"インク回復効率が200%上昇するが","color": "gray","italic": false}','{"text":"移動形態になる能力を失う","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.12 with golden_boots{HideFlags:2,display:{Name:'{"text":"ホバーブーツ","color": "dark_red","bold": true,"italic": false}',Lore:['{"text":"スーパーブーストが浮遊機能に変化する","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.13 with popped_chorus_fruit{display:{Name:'{"text":"加速度ペレット","color": "light_purple","bold": true,"italic": false}',Lore:['{"text":"2000ブロック塗ると、","color": "gray","italic": false}','{"text":"以降ダメージを30%軽減する","color": "gray","italic": false}','{"text":"死亡時にSPゲージがリセットされる","color": "red","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.14 with pink_dye{display:{Name:'{"text":"風船ガム","color": "#ffbbaa","bold": true,"italic": false}',Lore:['{"text":"最大体力が20増える","color": "gray","italic": false}','{"text":"インク回復効率が50%下がる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.15 with lantern{display:{Name:'{"text":"復讐の標","color": "#ff9933","bold": false,"italic": false}',Lore:['{"text":"被弾時攻撃者を3秒間発光させる","color": "gray","italic": false}']},ui:{ismenu:1}}

execute if score $slot ui_temp matches 10 run scoreboard players set @s module 29
execute if score $slot ui_temp matches 11 run scoreboard players set @s module 30
execute if score $slot ui_temp matches 11 run scoreboard players add @s ink_regen 100
execute if score $slot ui_temp matches 12 run scoreboard players set @s module 31
execute if score $slot ui_temp matches 13 run scoreboard players set @s module 32
execute if score $slot ui_temp matches 14 run scoreboard players set @s module 33
execute if score $slot ui_temp matches 14 run scoreboard players add @s health 200
execute if score $slot ui_temp matches 14 run scoreboard players remove @s ink_regen 50
execute if score $slot ui_temp matches 15 run scoreboard players set @s module 34
execute if score $slot ui_temp matches 16 run scoreboard players set @s module 35

execute if score @s module matches 29 run item modify entity @s enderchest.10 ui:gun/add_glow
execute if score @s module matches 30 run item modify entity @s enderchest.11 ui:gun/add_glow
execute if score @s module matches 31 run item modify entity @s enderchest.12 ui:gun/add_glow
execute if score @s module matches 32 run item modify entity @s enderchest.13 ui:gun/add_glow
execute if score @s module matches 33 run item modify entity @s enderchest.14 ui:gun/add_glow
execute if score @s module matches 34 run item modify entity @s enderchest.15 ui:gun/add_glow
execute if score @s module matches 35 run item modify entity @s enderchest.16 ui:gun/add_glow

item replace entity @s enderchest.17 with arrow{display:{Name:'{"text":"次のページ","color":"white","italic":false}'},ui:{ismenu:1}}

item replace entity @s enderchest.19 with gray_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.20 with gray_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.21 with gray_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.22 with gray_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with gray_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.24 with gray_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.25 with gray_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}

#item replace entity @s enderchest.19 with echo_shard{display:{Name:'{"text":"深淵の呼び声","color": "#0066cc","bold": true,"italic": false}',Lore:['{"text":"リスポーン時間が半分になる","color": "gray","italic": false}']},ui:{ismenu:1}}
#item replace entity @s enderchest.20 with carrot_on_a_stick{CustomModelData:180029,display:{Name:'{"text":"エコバッグ","color": "#999900","bold": true,"italic": false}',Lore:['{"text":"インク最大値が10%増える","color": "gray","italic": false}']},ui:{ismenu:1}}
#item replace entity @s enderchest.21 with iron_boots{HideFlags:2,display:{Name:'{"text":"スリッパ","color": "#66cc00","bold": true,"italic": false}',Lore:['{"text":"移動速度が10%上がる","color": "gray","italic": false}']},ui:{ismenu:1}}
#item replace entity @s enderchest.22 with heart_of_the_sea{display:{Name:'{"text":"冷たくなった心臓","color": "aqua","bold": false,"italic": false}',Lore:['{"text":"最大体力が20%上がる","color": "gray","italic": false}']},ui:{ismenu:1}}
#item replace entity @s enderchest.23 with elytra{display:{Name:'{"text":"アンチマーカーシステム","color": "dark_purple","bold": true,"italic": false}',Lore:['{"text":"発光の持続時間が半減する","color": "gray","italic": false}']},ui:{ismenu:1}}
#item replace entity @s enderchest.24 with spyglass{display:{Name:'{"text":"13スコープ","color": "#9966ff","bold": false,"italic": false}',Lore:['{"text":"チャージ完了時の光を消す","color": "gray","italic": false}']},ui:{ismenu:1}}
#item replace entity @s enderchest.25 with gold_block{display:{Name:'{"text":"物語の終わり","color": "#ffcc66","bold": true,"italic": false}',Lore:['{"text":"攻撃時に15%の確率でダメージ2倍","color": "gray","italic": false}']},ui:{ismenu:1}}
#
#execute if score $slot ui_temp matches 19 run scoreboard players set @s module 15
#execute if score $slot ui_temp matches 20 run scoreboard players set @s module 16
#execute if score $slot ui_temp matches 21 run scoreboard players set @s module 17
#execute if score $slot ui_temp matches 21 run attribute @s generic.movement_speed modifier add 2a93cf3d-b14d-4538-87cc-5fd0119eac2c "module17" 0.1 multiply
#execute unless score $slot ui_temp matches -1 unless score $slot ui_temp matches 26 unless score $slot ui_temp matches 21 run attribute @s generic.movement_speed modifier remove 2a93cf3d-b14d-4538-87cc-5fd0119eac2c
#execute if score $slot ui_temp matches 22 run scoreboard players set @s module 18
#execute if score $slot ui_temp matches 22 run attribute @s generic.max_health modifier add 2a93cf3d-b14d-4538-87cc-5fd0119eac2d "module18" 0.2 multiply
#execute unless score $slot ui_temp matches -1 unless score $slot ui_temp matches 26 unless score $slot ui_temp matches 22 run attribute @s generic.max_health modifier remove 2a93cf3d-b14d-4538-87cc-5fd0119eac2d
#execute if score $slot ui_temp matches 23 run scoreboard players set @s module 19
#execute if score $slot ui_temp matches 24 run scoreboard players set @s module 20
#execute if score $slot ui_temp matches 25 run scoreboard players set @s module 21
#
#execute if score @s module matches 15 run item modify entity @s enderchest.19 ui:gun/add_glow
#execute if score @s module matches 16 run item modify entity @s enderchest.20 ui:gun/add_glow
#execute if score @s module matches 17 run item modify entity @s enderchest.21 ui:gun/add_glow
#execute if score @s module matches 18 run item modify entity @s enderchest.22 ui:gun/add_glow
#execute if score @s module matches 19 run item modify entity @s enderchest.23 ui:gun/add_glow
#execute if score @s module matches 20 run item modify entity @s enderchest.24 ui:gun/add_glow
#execute if score @s module matches 21 run item modify entity @s enderchest.25 ui:gun/add_glow

item replace entity @s enderchest.18 with white_stained_glass_pane{display:{Name:'{"text":"選択解除","color": "gray","bold": true,"italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 18 run scoreboard players reset @s module

item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":"モジュール設定を終える","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 26 run item replace entity @s enderchest.0 with air
