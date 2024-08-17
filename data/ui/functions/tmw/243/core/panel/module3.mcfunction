# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender

execute if score $slot ui_temp matches 26 run tag @s remove setting_module

item replace entity @s enderchest.0 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

item replace entity @s enderchest.1 with leather_chestplate{display:{color:16743548,Name:'{"text":"灰塵のベスト","color": "red","bold": true,"italic": false}',Lore:['{"text":"被爆発属性ダメージ半減","color": "gray","italic": false}']},HideFlags:255,ui:{ismenu:1}}
item replace entity @s enderchest.2 with minecraft:carrot_on_a_stick{CustomModelData:111301,display:{Name:'{"text":"きぐるみ","color":"white","italic":false}',Lore:['[{"text":"被れる","color":"gray","italic":false}]','[{"text":"当たり判定は大きくならない","color":"gray","italic":false}]']},HideFlags:4,ui:{ismenu:1}}
item replace entity @s enderchest.3 with minecraft:light_gray_dye{display:{Name:'{"text":"所属不明","color":"white","italic":false}',Lore:['[{"text":"防具を身に着けない","color":"gray","italic":false}]','[{"text":"ある意味初期環境","color":"gray","italic":false}]']},HideFlags:4,ui:{ismenu:1}}
item replace entity @s enderchest.4 with phantom_membrane{display:{Name:'{"text":"ふわふわ","color":"aqua","italic":false}',Lore:['[{"text":"常時低速落下を得る","color":"gray","italic":false}]','[{"text":"最大体力が4減る","color":"gray","italic":false}]']},ui:{ismenu:1}}
item replace entity @s enderchest.5 with apple{display:{Name:'{"text":"ゾンビゾンビ","color":"dark_green","italic":false}',Lore:['[{"text":"死亡後にちょっとだけ行動できる","color":"gray","italic":false}]','[{"text":"*おいしくてぞんびになる*","color":"dark_gray","italic":false}]']},ui:{ismenu:1}}
item replace entity @s enderchest.6 with gold_ingot{CustomModelData:215003,display:{Name:'{"text":"オートリローダー","color":"light_purple","italic":false}',Lore:['[{"text":"最後のギアの効果を３倍にする","color":"gray","italic":false}]']},ui:{ismenu:1}}
item replace entity @s enderchest.7 with repeater{CustomModelData:215003,display:{Name:'{"text":"技術研究所","color":"yellow","italic":false}',Lore:['[{"text":"攻撃者と自身のキル数の差を参照","color":"gray","italic":false}]','[{"text":"被ダメージ時、差に応じて増減する","color":"gray","italic":false}]','[{"text":"自分より少ない敵から受けるダメージは増加する","color":"red","italic":false}]']},ui:{ismenu:1}}

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

item replace entity @s enderchest.10 with carrot_on_a_stick{CustomModelData:110006,display:{Name:'{"text":"アカシックレコード","color":"light_purple","italic":false}',Lore:['[{"text":"サブのインク効率とダメージが40%増加する","color":"gray","italic":false}]','[{"text":"サブ以外のインク効率とダメージが40%減少し、サブを使うたび4ダメージ受ける","color":"gray","italic":false}]']},ui:{ismenu:1}}
item replace entity @s enderchest.11 with smithing_table{display:{Name:'{"text":"動く固定砲台","color":"white","italic":false}',Lore:['[{"text":"チャージ完了後の射程が伸びる","color":"gray","italic":false}]','[{"text":"チャージ中、チャージ後に移動速度が低下する","color":"gray","italic":false}]','[{"text":"対応していないチャージ武器も多い","color":"green","italic":false}]']},HideFlags:4,ui:{ismenu:1}}
item replace entity @s enderchest.12 with leather_boots{display:{Name:'{"text":"風の靴","color":"aqua","italic":false}',Lore:['[{"text":"攻撃時相手より上にいるほどダメージ増加","color":"gray","italic":false}]','[{"text":"相手より下にいるとダメージ減少","color":"red","italic":false}]','[{"text":"スペクテイター中は無効","color":"green","italic":false}]'],color:65535},HideFlags:255,ui:{ismenu:1}} 1
item replace entity @s enderchest.13 with cookie{CustomModelData:170011,display:{Name:'{"text":"スノースライム甘口","color":"green","italic":false}',Lore:['[{"text":"爆発により与えるダメージが50%増加","color":"gray","italic":false}]','[{"text":"それ以外は50%減少","color":"gray","italic":false}]']},ui:{ismenu:1}}
item replace entity @s enderchest.14 with netherite_upgrade_smithing_template{display:{Name:'{"text":"リ・チャージ","color":"gold","italic":false}',Lore:['[{"text":"射撃で敵を倒した時即座にチャージを完了させる","color":"gray","italic":false}]','[{"text":"チャージ速度が10%減少する","color":"gray","italic":false}]']},ui:{ismenu:1},HideFlags:255}
item replace entity @s enderchest.15 with iron_chestplate{display:{Name:'{"text":"装備せよ","color":"green","italic":false}',Lore:['[{"text":"鉄のチェストプレートを装備する","color":"gray","italic":false}]']},ui:{ismenu:1},HideFlags:255}
item replace entity @s enderchest.16 with heart_pottery_sherd{display:{Name:'{"text":"生命維持装置","color":"light_purple","italic":false}',Lore:['[{"text":"射撃形態時に体力が回復する","color":"gray","italic":false}]','[{"text":"ただし射撃形態時にインクが回復しなくなる","color":"gray","italic":false}]']},ui:{ismenu:1}}

execute if score $slot ui_temp matches 10 run scoreboard players set @s module 50
execute if score $slot ui_temp matches 10 run scoreboard players set @s main_eff_acc 60
execute if score $slot ui_temp matches 10 run scoreboard players set @s sub_damage 140
execute if score $slot ui_temp matches 10 run scoreboard players set @s sub_eff_acc 140
execute if score $slot ui_temp matches 11 run scoreboard players set @s module 51
execute if score $slot ui_temp matches 12 run scoreboard players set @s module 52
execute if score $slot ui_temp matches 13 run scoreboard players set @s module 53
execute if score $slot ui_temp matches 13 run scoreboard players set @s blast_damage 150
execute if score $slot ui_temp matches 14 run scoreboard players set @s module 54
execute if score $slot ui_temp matches 14 run scoreboard players set @s charge_acc -10
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

item replace entity @s enderchest.19 with player_head{display:{Name:'{"text":"スペランカー","color":"yellow","italic":false}',Lore:['[{"text":"体力が1に固定され、地形ダメージでも死に至る","color":"gray","italic":false}]','[{"text":"全てのギアの効力が3倍になる","color":"gray","italic":false}]','[{"text":"一種類につき9個分までしか効果がない","color":"gray","italic":false}]']},ui:{ismenu:1}}
item replace entity @s enderchest.20 with paper{display:{Name:'{"text":"インク銀行券","color":"yellow","italic":false}',Lore:['[{"text":"定額返済率 2%/秒","color":"gray","italic":false}]','[{"text":"あなたのインク回復で返済できます","color":"gray","italic":false}]','[{"text":"メイン武器のインク消費を代替する","color":"blue","italic":false}]','[{"text":"メインインク消費が10%増える","color":"red","italic":false}]']},ui:{ismenu:1}}
item replace entity @s enderchest.21 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.24 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.25 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 19 run scoreboard players set @s module 57
execute if score $slot ui_temp matches 19 run scoreboard players set @s health -199
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
