# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

execute if score $slot ui_temp matches 26 run tag @s remove setting_module

item replace entity @s enderchest.0 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.1 with feather{display:{Name:'{"text":"飛んで行けるなら","color": "aqua","bold": true,"italic": false}',Lore:['{"text":"ブーストのリチャージが速くなり","color": "gray","italic": false}','{"text":"ブースト時の移動力も向上する","color": "gray","italic": false}','{"text":"ブースト後の硬直が1秒減少する","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.2 with tripwire_hook{display:{Name:'{"text":"最強トリック","color": "gold","bold": true,"italic": false}',Lore:['{"text":"一度だけインク消費量を無視して","color": "gray","italic": false}','{"text":"サブウェポンを使用できる","color": "gray","italic": false}','{"text":"この効果は1分でリチャージされる","color": "blue","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.3 with barrier{display:{Name:'{"text":"404 not found","color": "dark_red","bold": true,"italic": false}',Lore:['{"text":"最初のリスポーン地点が他のチームになる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.4 with oak_boat{display:{Name:'{"text":"誤安全に","color": "green","bold": true,"italic": false}',Lore:['{"text":"悪性地形影響を無効化する","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.5 with music_disc_13{display:{Name:'{"text":"フィーバー","color": "light_purple","bold": true,"italic": false}',Lore:['{"text":"チームのテンションが上がる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.6 with stick{display:{Name:'{"text":"エクスペリアームズ","color": "yellow","bold": true,"italic": false}',Lore:['{"text":"敵を殴れるようになる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.7 with cactus{display:{Name:'{"text":"最適家気取り","color": "dark_green","bold": true,"italic": false}',Lore:['{"text":"ゲーム中の暗視をオフにする","color": "gray","italic": false}']},ui:{ismenu:1}}

execute if score $slot ui_temp matches 1 run scoreboard players set @s module 1
execute if score $slot ui_temp matches 2 run scoreboard players set @s module 2
execute if score $slot ui_temp matches 3 run scoreboard players set @s module 3
execute if score $slot ui_temp matches 4 run scoreboard players set @s module 4
execute if score $slot ui_temp matches 5 run scoreboard players set @s module 5
execute if score $slot ui_temp matches 6 run scoreboard players set @s module 6
execute if score $slot ui_temp matches 7 run scoreboard players set @s module 7

execute if score @s module matches 1 run item modify entity @s enderchest.1 ui:gun/add_glow
execute if score @s module matches 2 run item modify entity @s enderchest.2 ui:gun/add_glow
execute if score @s module matches 3 run item modify entity @s enderchest.3 ui:gun/add_glow
execute if score @s module matches 4 run item modify entity @s enderchest.4 ui:gun/add_glow
execute if score @s module matches 5 run item modify entity @s enderchest.5 ui:gun/add_glow
execute if score @s module matches 6 run item modify entity @s enderchest.6 ui:gun/add_glow
execute if score @s module matches 7 run item modify entity @s enderchest.7 ui:gun/add_glow

item replace entity @s enderchest.8 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.9 with arrow{display:{Name:'{"text":"前のページ","color":"white","italic":false}'},ui:{ismenu:1}}

item replace entity @s enderchest.10 with tnt{display:{Name:'{"text":"裏切りはナシ","color": "red","bold": true,"italic": false}',Lore:['{"text":"死亡時爆発が自チームの色になる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.11 with white_wool{display:{Name:'{"text":"BLEACH","color": "white","bold": true,"italic": false}',Lore:['{"text":"死亡時爆発が白色になる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.12 with squid_spawn_egg{display:{Name:'{"text":"イカ泳法","color": "blue","bold": true,"italic": false}',Lore:['{"text":"水を泳げるようになる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.13 with cookie{CustomModelData:170002,display:{Name:'{"text":"アップビート","color": "red","bold": false,"italic": false}',Lore:['{"text":"攻撃力が10%上がる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.14 with cookie{CustomModelData:170006,display:{Name:'{"text":"グリッターエッセンス","color": "gold","bold": false,"italic": false}',Lore:['{"text":"攻撃対象を発光させる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.15 with totem_of_undying{display:{Name:'{"text":"半死のトーテム","color": "yellow","bold": false,"italic": false}',Lore:['{"text":"死ぬたびに一度だけ","color": "gray","italic": false}','{"text":"攻撃を無効化するシールドを張る","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.16 with ink_sac{display:{Name:'{"text":"足袋","color": "dark_aqua","bold": true,"italic": false}',Lore:['{"text":"移動形態の際に飛沫が散らなくなる","color": "gray","italic": false}']},ui:{ismenu:1}}

execute if score $slot ui_temp matches 10 run scoreboard players set @s module 8
execute if score $slot ui_temp matches 11 run scoreboard players set @s module 9
execute if score $slot ui_temp matches 12 run scoreboard players set @s module 10
execute if score $slot ui_temp matches 13 run scoreboard players set @s module 11
execute if score $slot ui_temp matches 14 run scoreboard players set @s module 12
execute if score $slot ui_temp matches 15 run scoreboard players set @s module 13
execute if score $slot ui_temp matches 16 run scoreboard players set @s module 14

execute if score @s module matches 8 run item modify entity @s enderchest.10 ui:gun/add_glow
execute if score @s module matches 9 run item modify entity @s enderchest.11 ui:gun/add_glow
execute if score @s module matches 10 run item modify entity @s enderchest.12 ui:gun/add_glow
execute if score @s module matches 11 run item modify entity @s enderchest.13 ui:gun/add_glow
execute if score @s module matches 12 run item modify entity @s enderchest.14 ui:gun/add_glow
execute if score @s module matches 13 run item modify entity @s enderchest.15 ui:gun/add_glow
execute if score @s module matches 14 run item modify entity @s enderchest.16 ui:gun/add_glow

item replace entity @s enderchest.17 with arrow{display:{Name:'{"text":"次のページ","color":"white","italic":false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 17 run scoreboard players set @s module_page 2

item replace entity @s enderchest.19 with echo_shard{display:{Name:'{"text":"深淵の呼び声","color": "#0066cc","bold": true,"italic": false}',Lore:['{"text":"リスポーン時間が半分になる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.20 with carrot_on_a_stick{CustomModelData:180029,display:{Name:'{"text":"エコバッグ","color": "#999900","bold": true,"italic": false}',Lore:['{"text":"インク最大値が10%増える","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.21 with iron_boots{HideFlags:2,display:{Name:'{"text":"スリッパ","color": "#66cc00","bold": true,"italic": false}',Lore:['{"text":"移動速度が10%(0.01)上がる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.22 with heart_of_the_sea{display:{Name:'{"text":"冷たくなった心臓","color": "aqua","bold": false,"italic": false}',Lore:['{"text":"最大体力が20%(+4)上がる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.23 with elytra{display:{Name:'{"text":"アンチマーカーシステム","color": "dark_purple","bold": true,"italic": false}',Lore:['{"text":"発光の持続時間が半減する","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.24 with spyglass{display:{Name:'{"text":"13スコープ","color": "#9966ff","bold": false,"italic": false}',Lore:['{"text":"チャージ完了時の光を消す","color": "gray","italic": false}','{"text":"射線も見えなくなる","color": "gray","italic": false}']},ui:{ismenu:1}}
item replace entity @s enderchest.25 with gold_block{display:{Name:'{"text":"物語の終わり","color": "#ffcc66","bold": true,"italic": false}',Lore:['{"text":"攻撃時に15%の確率でダメージ2倍","color": "gray","italic": false}']},ui:{ismenu:1}}

execute if score $slot ui_temp matches 19 run scoreboard players set @s module 15
execute if score $slot ui_temp matches 20 run scoreboard players set @s module 16
execute if score $slot ui_temp matches 21 run scoreboard players set @s module 17
execute if score $slot ui_temp matches 21 run attribute @s generic.movement_speed modifier add 2a93cf3d-b14d-4538-87cc-5fd0119eac2c "module17" 0.01 add
execute unless score $slot ui_temp matches -1 unless score $slot ui_temp matches 26 unless score $slot ui_temp matches 21 run attribute @s generic.movement_speed modifier remove 2a93cf3d-b14d-4538-87cc-5fd0119eac2c
execute if score $slot ui_temp matches 22 run scoreboard players set @s module 18
execute if score $slot ui_temp matches 22 run attribute @s generic.max_health modifier add 2a93cf3d-b14d-4538-87cc-5fd0119eac2d "module18" 4 add
execute unless score $slot ui_temp matches -1 unless score $slot ui_temp matches 26 unless score $slot ui_temp matches 22 run attribute @s generic.max_health modifier remove 2a93cf3d-b14d-4538-87cc-5fd0119eac2d
execute if score $slot ui_temp matches 23 run scoreboard players set @s module 19
execute if score $slot ui_temp matches 24 run scoreboard players set @s module 20
execute if score $slot ui_temp matches 25 run scoreboard players set @s module 21

execute if score @s module matches 15 run item modify entity @s enderchest.19 ui:gun/add_glow
execute if score @s module matches 16 run item modify entity @s enderchest.20 ui:gun/add_glow
execute if score @s module matches 17 run item modify entity @s enderchest.21 ui:gun/add_glow
execute if score @s module matches 18 run item modify entity @s enderchest.22 ui:gun/add_glow
execute if score @s module matches 19 run item modify entity @s enderchest.23 ui:gun/add_glow
execute if score @s module matches 20 run item modify entity @s enderchest.24 ui:gun/add_glow
execute if score @s module matches 21 run item modify entity @s enderchest.25 ui:gun/add_glow

item replace entity @s enderchest.18 with white_stained_glass_pane{display:{Name:'{"text":"選択解除","color": "gray","bold": true,"italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 18 run scoreboard players reset @s module

item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":"モジュール設定を終える","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 26 run item replace entity @s enderchest.0 with air
