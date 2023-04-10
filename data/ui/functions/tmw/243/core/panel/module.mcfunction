# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

execute if score $slot ui_temp matches 26 run tag @s remove setting_module

item replace entity @s enderchest.0 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

execute if entity @s[advancements={ui:hidden/misc/beyond_the_sky=false}] run item replace entity @s enderchest.1 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/fatal_weapon=false}] run item replace entity @s enderchest.2 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/enemy_base=false}] run item replace entity @s enderchest.3 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/too_small=false}] run item replace entity @s enderchest.4 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/party_time=false}] run item replace entity @s enderchest.5 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/pacifist=false}] run item replace entity @s enderchest.6 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/optimizer=false}] run item replace entity @s enderchest.7 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

execute if entity @s[advancements={ui:hidden/misc/beyond_the_sky=true}] run item replace entity @s enderchest.1 with feather{display:{Name:'{"text":"飛んで行けるなら","color": "aqua","bold": true,"italic": false}',Lore:['{"text":"ブーストのリチャージが速くなり","color": "gray","italic": false}','{"text":"ブースト時の移動力も向上する","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/fatal_weapon=true}] run item replace entity @s enderchest.2 with tripwire_hook{display:{Name:'{"text":"最強トリック","color": "gold","bold": true,"italic": false}',Lore:['{"text":"一度だけインク消費量を無視して","color": "gray","italic": false}','{"text":"サブウェポンを使用できる","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/enemy_base=true}] run item replace entity @s enderchest.3 with barrier{display:{Name:'{"text":"404 not found","color": "dark_red","bold": true,"italic": false}',Lore:['{"text":"リスポーン地点が他のチームになる","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/too_small=true}] run item replace entity @s enderchest.4 with oak_boat{display:{Name:'{"text":"誤安全に","color": "green","bold": true,"italic": false}',Lore:['{"text":"悪性地形影響を無効化する","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/party_time=true}] run item replace entity @s enderchest.5 with music_disc_13{display:{Name:'{"text":"フィーバー","color": "light_purple","bold": true,"italic": false}',Lore:['{"text":"チームのテンションが上がる","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/pacifist=true}] run item replace entity @s enderchest.6 with stick{display:{Name:'{"text":"エクスペリアームズ","color": "yellow","bold": true,"italic": false}',Lore:['{"text":"敵を殴れるようになる","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/optimizer=true}] run item replace entity @s enderchest.7 with cactus{display:{Name:'{"text":"最適家気取り","color": "dark_green","bold": true,"italic": false}',Lore:['{"text":"ゲーム中の暗視をオフにする","color": "gray","italic": false}']},ui:{ismenu:1}}

execute if entity @s[advancements={ui:hidden/misc/beyond_the_sky=true}] if score $slot ui_temp matches 1 run scoreboard players set @s module 1
execute if entity @s[advancements={ui:hidden/misc/fatal_weapon=true}] if score $slot ui_temp matches 2 run scoreboard players set @s module 2
execute if entity @s[advancements={ui:hidden/misc/enemy_base=true}] if score $slot ui_temp matches 3 run scoreboard players set @s module 3
execute if entity @s[advancements={ui:hidden/misc/too_small=true}] if score $slot ui_temp matches 4 run scoreboard players set @s module 4
execute if entity @s[advancements={ui:hidden/misc/party_time=true}] if score $slot ui_temp matches 5 run scoreboard players set @s module 5
execute if entity @s[advancements={ui:hidden/misc/pacifist=true}] if score $slot ui_temp matches 6 run scoreboard players set @s module 6
execute if entity @s[advancements={ui:hidden/misc/optimizer=true}] if score $slot ui_temp matches 7 run scoreboard players set @s module 7

execute if score @s module matches 1 run item modify entity @s enderchest.1 ui:gun/add_glow
execute if score @s module matches 2 run item modify entity @s enderchest.2 ui:gun/add_glow
execute if score @s module matches 3 run item modify entity @s enderchest.3 ui:gun/add_glow
execute if score @s module matches 4 run item modify entity @s enderchest.4 ui:gun/add_glow
execute if score @s module matches 5 run item modify entity @s enderchest.5 ui:gun/add_glow
execute if score @s module matches 6 run item modify entity @s enderchest.6 ui:gun/add_glow
execute if score @s module matches 7 run item modify entity @s enderchest.7 ui:gun/add_glow

item replace entity @s enderchest.8 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.9 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

execute if entity @s[advancements={ui:hidden/misc/peaceful=false}] run item replace entity @s enderchest.10 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/white_out=false}] run item replace entity @s enderchest.11 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/go_swimming=false}] run item replace entity @s enderchest.12 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

execute if entity @s[advancements={ui:hidden/misc/peaceful=true}] run item replace entity @s enderchest.10 with tnt{display:{Name:'{"text":"裏切りはナシ","color": "red","bold": true,"italic": false}',Lore:['{"text":"死亡時爆発が自チームの色になる","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/white_out=true}] run item replace entity @s enderchest.11 with white_wool{display:{Name:'{"text":"BLEACH","color": "white","bold": true,"italic": false}',Lore:['{"text":"死亡時爆発が白色になる","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if entity @s[advancements={ui:hidden/misc/go_swimming=true}] run item replace entity @s enderchest.12 with squid_spawn_egg{display:{Name:'{"text":"イカ泳法","color": "blue","bold": true,"italic": false}',Lore:['{"text":"水を泳げるようになる","color": "gray","italic": false}']},ui:{ismenu:1}}

execute if entity @s[advancements={ui:hidden/misc/peaceful=true}] if score $slot ui_temp matches 10 run scoreboard players set @s module 8
execute if entity @s[advancements={ui:hidden/misc/white_out=true}] if score $slot ui_temp matches 11 run scoreboard players set @s module 9
execute if entity @s[advancements={ui:hidden/misc/go_swimming=true}] if score $slot ui_temp matches 12 run scoreboard players set @s module 10

execute if score @s module matches 8 run item modify entity @s enderchest.10 ui:gun/add_glow
execute if score @s module matches 9 run item modify entity @s enderchest.11 ui:gun/add_glow
execute if score @s module matches 10 run item modify entity @s enderchest.12 ui:gun/add_glow

item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.14 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.15 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.16 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.17 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.19 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.20 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.21 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.24 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.25 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.18 with gray_stained_glass_pane{display:{Name:'{"text":"選択解除","color": "gray","bold": true,"italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 18 run scoreboard players reset @s module

item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":"モジュール設定を終える","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 26 run item replace entity @s enderchest.0 with air
