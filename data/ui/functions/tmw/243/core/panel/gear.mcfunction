# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

# OMD から取得
function oh_my_dat:please
data modify storage ui:gear temp.Gears set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears

execute if score $slot ui_temp matches 26 run tag @s remove setting_gear

item replace entity @s enderchest.0 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.1 with gray_stained_glass_pane{CustomModelData:122005,display:{Name:'{"text":"HPアップ +1","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.2 with gray_stained_glass_pane{CustomModelData:122016,display:{Name:'{"text":"移動形態HP回復効率 +10%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.3 with gray_stained_glass_pane{CustomModelData:122011,display:{Name:'{"text":"射撃形態移動速度 +3%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.4 with gray_stained_glass_pane{CustomModelData:122008,display:{Name:'{"text":"移動形態移動速度 +6%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.5 with gray_stained_glass_pane{CustomModelData:122002,display:{Name:'{"text":"爆発ダメージ軽減 +8%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.6 with gray_stained_glass_pane{CustomModelData:122009,display:{Name:'{"text":"総合ダメージ増加 +2%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.7 with gray_stained_glass_pane{CustomModelData:122013,display:{Name:'{"text":"サブダメージ増加 +3%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.8 with gray_stained_glass_pane{CustomModelData:122015,display:{Name:'{"text":"対物ダメージ増加 +15%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.10 with gray_stained_glass_pane{CustomModelData:122003,display:{Name:'{"text":"チャージ加速 +5%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.11 with gray_stained_glass_pane{CustomModelData:122001,display:{Name:'{"text":"爆発ダメージ増加 +4%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.12 with gray_stained_glass_pane{CustomModelData:122010,display:{Name:'{"text":"リスポーン加速 +10%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:122004,display:{Name:'{"text":"死亡時SPキープ +5%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.14 with gray_stained_glass_pane{CustomModelData:122012,display:{Name:'{"text":"SPチャージ加速 +5%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.15 with gray_stained_glass_pane{CustomModelData:122006,display:{Name:'{"text":"インク回復効率 +5%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.16 with gray_stained_glass_pane{CustomModelData:122007,display:{Name:'{"text":"メインインク効率 +5%","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.17 with gray_stained_glass_pane{CustomModelData:122014,display:{Name:'{"text":"サブインク効率 +5%","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 1 run data modify storage ui:gear temp.Gears append value {id:1,item:{CustomModelData:122005,display:{Name:'{"text":"HPアップ +1","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 2 run data modify storage ui:gear temp.Gears append value {id:16,item:{CustomModelData:122016,display:{Name:'{"text":"移動形態HP回復効率 +10%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 3 run data modify storage ui:gear temp.Gears append value {id:2,item:{CustomModelData:122011,display:{Name:'{"text":"射撃形態移動速度 +3%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 4 run data modify storage ui:gear temp.Gears append value {id:3,item:{CustomModelData:122008,display:{Name:'{"text":"移動形態移動速度 +6%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 5 run data modify storage ui:gear temp.Gears append value {id:4,item:{CustomModelData:122002,display:{Name:'{"text":"爆発ダメージ軽減 +8%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 6 run data modify storage ui:gear temp.Gears append value {id:5,item:{CustomModelData:122009,display:{Name:'{"text":"総合ダメージ増加 +2%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 7 run data modify storage ui:gear temp.Gears append value {id:6,item:{CustomModelData:122013,display:{Name:'{"text":"サブダメージ増加 +3%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 8 run data modify storage ui:gear temp.Gears append value {id:7,item:{CustomModelData:122015,display:{Name:'{"text":"対物ダメージ増加 +15%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 10 run data modify storage ui:gear temp.Gears append value {id:15,item:{CustomModelData:122003,display:{Name:'{"text":"チャージ加速 +5%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 11 run data modify storage ui:gear temp.Gears append value {id:8,item:{CustomModelData:122001,display:{Name:'{"text":"爆発ダメージ増加 +4%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 12 run data modify storage ui:gear temp.Gears append value {id:9,item:{CustomModelData:122010,display:{Name:'{"text":"リスポーン加速 +10%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 13 run data modify storage ui:gear temp.Gears append value {id:10,item:{CustomModelData:122004,display:{Name:'{"text":"死亡時SPキープ +5%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 14 run data modify storage ui:gear temp.Gears append value {id:11,item:{CustomModelData:122012,display:{Name:'{"text":"SPチャージ加速 +5%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 15 run data modify storage ui:gear temp.Gears append value {id:12,item:{CustomModelData:122006,display:{Name:'{"text":"インク回復効率 +5%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 16 run data modify storage ui:gear temp.Gears append value {id:13,item:{CustomModelData:122007,display:{Name:'{"text":"メインインク効率 +5%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 17 run data modify storage ui:gear temp.Gears append value {id:14,item:{CustomModelData:122014,display:{Name:'{"text":"サブインク効率 +5%","italic": false}'},ui:{ismenu:1}}}
execute if score $slot ui_temp matches 1..8 run data remove storage ui:gear temp.Gears[0]
execute if score $slot ui_temp matches 10..17 run data remove storage ui:gear temp.Gears[0]

item replace entity @s enderchest.18 with gray_stained_glass_pane{CustomModelData:122000,display:{Name:'{"text":"空のギア","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.19 with gray_stained_glass_pane{CustomModelData:122000,display:{Name:'{"text":"空のギア","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.20 with gray_stained_glass_pane{CustomModelData:122000,display:{Name:'{"text":"空のギア","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.21 with gray_stained_glass_pane{CustomModelData:122000,display:{Name:'{"text":"空のギア","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:122000,display:{Name:'{"text":"空のギア","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:122000,display:{Name:'{"text":"空のギア","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.24 with gray_stained_glass_pane{CustomModelData:122000,display:{Name:'{"text":"空のギア","italic": false}'},ui:{ismenu:1}}
item modify entity @s enderchest.18 ui:gear0
item modify entity @s enderchest.19 ui:gear1
item modify entity @s enderchest.20 ui:gear2
item modify entity @s enderchest.21 ui:gear3
item modify entity @s enderchest.22 ui:gear4
item modify entity @s enderchest.23 ui:gear5
item modify entity @s enderchest.24 ui:gear6
item modify entity @s enderchest.18 ui:gun/add_glow
item modify entity @s enderchest.19 ui:gun/add_glow
item modify entity @s enderchest.20 ui:gun/add_glow
item modify entity @s enderchest.21 ui:gun/add_glow
item modify entity @s enderchest.22 ui:gun/add_glow
item modify entity @s enderchest.23 ui:gun/add_glow
item modify entity @s enderchest.24 ui:gun/add_glow

item replace entity @s enderchest.9 with yellow_stained_glass_pane{display:{Name:'{"text":"ギアをリセットする","color": "yellow","bold": true,"italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 9 run data modify storage ui:gear temp.Gears set value [{item:{display:{Name:'{"text":"空のギア","italic":false}'},ui:{ismenu:1}}},{item:{display:{Name:'{"text":"空のギア","italic":false}'},ui:{ismenu:1}}},{item:{display:{Name:'{"text":"空のギア","italic":false}'},ui:{ismenu:1}}},{item:{display:{Name:'{"text":"空のギア","italic":false}'},ui:{ismenu:1}}},{item:{display:{Name:'{"text":"空のギア","italic":false}'},ui:{ismenu:1}}},{item:{display:{Name:'{"text":"空のギア","italic":false}'},ui:{ismenu:1}}},{item:{display:{Name:'{"text":"空のギア","italic":false}'},ui:{ismenu:1}}}]

item replace entity @s enderchest.25 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":"ギア設定を終える","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 26 run function ui:tmw/243/core/gear_reader/
execute if score $slot ui_temp matches 26 run particle firework ~ ~0.9 ~ 0.5 0.5 0.5 0.1 10 force
execute if score $slot ui_temp matches 26 run playsound entity.player.levelup player @a ~ ~ ~ 0.8 2 0
execute if score $slot ui_temp matches 26 run function ui:template/stats/shoot_speed
execute if score $slot ui_temp matches 26 run item replace entity @s enderchest.0 with air

# OMD に送信
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears set from storage ui:gear temp.Gears

data remove storage ui:gear temp
