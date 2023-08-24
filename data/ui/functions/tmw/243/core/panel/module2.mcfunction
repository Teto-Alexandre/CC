# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

execute if score $slot ui_temp matches 26 run tag @s remove setting_module

item replace entity @s enderchest.0 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.1 with carrot_on_a_stick{CustomModelData:110022,display:{Name:'{"text":"チャージアップ！","color": "red","bold": true,"italic": false}',Lore:['{"text":"ゲーム開始時からSPゲージが最大","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.2 with knowledge_book{display:{Name:'{"text":"最低保障プログラム","color": "blue","bold": true,"italic": false}',Lore:['{"text":"ゲーム開始時、死亡時に有効化","color": "gray","italic": false}','{"text":"SPゲージが30%まで溜まる","color": "gray","italic": false}']},ui:{ismenu:1}}
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

item replace entity @s enderchest.10 with golden_chestplate{HideFlags:2,display:{Name:'{"text":"ライトニングコア","color": "yellow","bold": false,"italic": false}',Lore:['{"text":"緊急自爆時にダメージを伴う爆発を起こす","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.11 with shulker_shell{display:{Name:'{"text":"外付けインクドライブ","color": "dark_purple","bold": true,"italic": false}',Lore:['{"text":"インク回復効率が200%上昇するが","color": "gray","italic": false}','{"text":"移動形態になる能力を失う","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.12 with golden_boots{HideFlags:2,display:{Name:'{"text":"ホバーブーツ","color": "dark_red","bold": true,"italic": false}',Lore:['{"text":"スーパーブーストが浮遊機能に変化する","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.13 with popped_chorus_fruit{display:{Name:'{"text":"加速度ペレット","color": "light_purple","bold": true,"italic": false}',Lore:['{"text":"1500ブロック塗ると、","color": "gray","italic": false}','{"text":"以降ダメージを30%軽減する","color": "gray","italic": false}','{"text":"死亡時にSPゲージがリセットされる","color": "red","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.14 with pink_dye{display:{Name:'{"text":"風船ガム","color": "#ffbbaa","bold": true,"italic": false}',Lore:['{"text":"最大体力が10増える","color": "gray","italic": false}','{"text":"インク回復効率が50%下がる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.15 with lantern{display:{Name:'{"text":"復讐の標","color": "#ff9933","bold": false,"italic": false}',Lore:['{"text":"被弾時攻撃者を3秒間発光させる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.16 with lapis_block{display:{Name:'{"text":"爆裂インク","color": "blue","bold": true,"italic": false}',Lore:['{"text":"与ダメージ%の確率で、","color": "gray","italic": false}','{"text":"防御力と耐性を貫通する爆発を起こす","color": "gray","italic": false}','{"text":"与ダメージは耐性系に軽減される前の値","color": "green","italic": false}']},ui:{ismenu:1}}

execute if score $slot ui_temp matches 10 run scoreboard players set @s module 29
execute if score $slot ui_temp matches 11 run scoreboard players set @s module 30
execute if score $slot ui_temp matches 11 run scoreboard players set @s ink_regen 300
execute if score $slot ui_temp matches 12 run scoreboard players set @s module 31
execute if score $slot ui_temp matches 13 run scoreboard players set @s module 32
execute if score $slot ui_temp matches 14 run scoreboard players set @s module 33
execute if score $slot ui_temp matches 14 run scoreboard players set @s health 100
execute if score $slot ui_temp matches 14 run scoreboard players set @s ink_regen 50
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
#execute if score $slot ui_temp matches 17 run scoreboard players set @s module_page 3

item replace entity @s enderchest.19 with bone_meal{display:{Name:'{"text":"素材","color": "yellow","bold": false,"italic": false}',Lore:['{"text":"建築上限を撤廃する","color": "gray","italic": false}','{"text":"サブ効率が50%下がる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.20 with potion{display:{Name:'{"text":"リカバー","color":"red","bold": false,"italic": false}',Lore:['{"text":"体力の回復開始までにかかる時間を短縮する","color": "gray","italic": false}']},CustomPotionColor:16711808,HideFlags:255,ui:{ismenu:1}}
item replace entity @s enderchest.21 with bucket{display:{Name:'{"text":"リサイクル","color":"green","bold": false,"italic": false}',Lore:['{"text":"敵を倒した時、倒した敵の残りインク分自身のインクを回復する","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.22 with blaze_powder{display:{Name:'{"text":"エナジーチャージ","color":"gold","bold": true,"italic": false}',Lore:['{"text":"敵を倒した時、10秒間能力が強化される","color": "gray","italic": false}','{"text":"効果時間中にもう一度敵を倒すと効果は重複する","color": "gray","italic": false}','{"text":"効果時間中に死亡すると","color": "red","italic": false}','{"text":"強化回数に応じた復活ペナルティを受ける","color": "red","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.23 with clock{display:{Name:'{"text":"壊れた時計","color":"yellow","bold": true,"italic": false}',Lore:['{"text":"自身にかかる特殊効果の時間を1.5倍にする","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.24 with netherite_scrap{display:{Name:'{"text":"強化パーツ","color":"blue","bold": false,"italic": false}',Lore:['{"text":"設置物の耐久力を50%向上させる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.25 with leather_chestplate{display:{Name:'{"text":"アノティ","color":"white","bold": false,"italic": false}',Lore:['{"text":"潜伏音を消す","color": "gray","italic": false}'],color:12961221},HideFlags:255,ui:{ismenu:1}}

execute if score $slot ui_temp matches 19 run scoreboard players set @s module 36
execute if score $slot ui_temp matches 19 run scoreboard players set @s sub_eff_acc 50
execute if score $slot ui_temp matches 20 run scoreboard players set @s module 37
execute if score $slot ui_temp matches 21 run scoreboard players set @s module 38
execute if score $slot ui_temp matches 22 run scoreboard players set @s module 39
execute if score $slot ui_temp matches 23 run scoreboard players set @s module 40
execute if score $slot ui_temp matches 24 run scoreboard players set @s module 41
execute if score $slot ui_temp matches 25 run scoreboard players set @s module 42
#
execute if score @s module matches 36 run item modify entity @s enderchest.19 ui:gun/add_glow
execute if score @s module matches 37 run item modify entity @s enderchest.20 ui:gun/add_glow
execute if score @s module matches 38 run item modify entity @s enderchest.21 ui:gun/add_glow
execute if score @s module matches 39 run item modify entity @s enderchest.22 ui:gun/add_glow
execute if score @s module matches 40 run item modify entity @s enderchest.23 ui:gun/add_glow
execute if score @s module matches 41 run item modify entity @s enderchest.24 ui:gun/add_glow
execute if score @s module matches 42 run item modify entity @s enderchest.25 ui:gun/add_glow

item replace entity @s enderchest.18 with white_stained_glass_pane{display:{Name:'{"text":"選択解除","color": "gray","bold": true,"italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 18 run scoreboard players reset @s module

item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":"モジュール設定を終える","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 26 run item replace entity @s enderchest.0 with air
