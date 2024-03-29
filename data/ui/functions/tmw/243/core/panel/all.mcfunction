# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender
execute if score $slot ui_temp matches 5 run tag @s[tag=tmw_237_notitle] add ui_temp_this
execute if score $slot ui_temp matches 5 run tag @s[tag=!tmw_237_notitle] add tmw_237_notitle
execute if score $slot ui_temp matches 5 run tag @s[tag=ui_temp_this] remove tmw_237_notitle
execute if score $slot ui_temp matches 5 run tag @s[tag=ui_temp_this] remove ui_temp_this
execute if score $slot ui_temp matches 6 run tag @s[tag=tmw_237_nolaser] add ui_temp_this
execute if score $slot ui_temp matches 6 run tag @s[tag=!tmw_237_nolaser] add tmw_237_nolaser
execute if score $slot ui_temp matches 6 run tag @s[tag=ui_temp_this] remove tmw_237_nolaser
execute if score $slot ui_temp matches 6 run tag @s[tag=ui_temp_this] remove ui_temp_this
execute if score $slot ui_temp matches 7 run tag @s[tag=tmw_237_noboost] add ui_temp_this
execute if score $slot ui_temp matches 7 run tag @s[tag=!tmw_237_noboost] add tmw_237_noboost
execute if score $slot ui_temp matches 7 run tag @s[tag=ui_temp_this] remove tmw_237_noboost
execute if score $slot ui_temp matches 7 run tag @s[tag=ui_temp_this] remove ui_temp_this
execute if score $slot ui_temp matches 8 run tag @s[tag=tmw_237_noresparticle] add ui_temp_this
execute if score $slot ui_temp matches 8 run tag @s[tag=!tmw_237_noresparticle] add tmw_237_noresparticle
execute if score $slot ui_temp matches 8 run tag @s[tag=ui_temp_this] remove tmw_237_noresparticle
execute if score $slot ui_temp matches 8 run tag @s[tag=ui_temp_this] remove ui_temp_this
execute if score $slot ui_temp matches 9 run function ui:tmw/243/core/tell
execute if score $slot ui_temp matches 14 run tag @s[tag=tmw_237_nokilllog] add ui_temp_this
execute if score $slot ui_temp matches 14 run tag @s[tag=!tmw_237_nokilllog] add tmw_237_nokilllog
execute if score $slot ui_temp matches 14 run tag @s[tag=ui_temp_this] remove tmw_237_nokilllog
execute if score $slot ui_temp matches 14 run tag @s[tag=ui_temp_this] remove ui_temp_this
execute if score $slot ui_temp matches 15 run tag @s[tag=tmw_237_nochargelog] add ui_temp_this
execute if score $slot ui_temp matches 15 run tag @s[tag=!tmw_237_nochargelog] add tmw_237_nochargelog
execute if score $slot ui_temp matches 15 run tag @s[tag=ui_temp_this] remove tmw_237_nochargelog
execute if score $slot ui_temp matches 15 run tag @s[tag=ui_temp_this] remove ui_temp_this
execute if score $slot ui_temp matches 16 run tag @s[tag=tmw_237_nosplog] add ui_temp_this
execute if score $slot ui_temp matches 16 run tag @s[tag=!tmw_237_nosplog] add tmw_237_nosplog
execute if score $slot ui_temp matches 16 run tag @s[tag=ui_temp_this] remove tmw_237_nosplog
execute if score $slot ui_temp matches 16 run tag @s[tag=ui_temp_this] remove ui_temp_this
execute if score $slot ui_temp matches 17 run tag @s[tag=tmw_237_nomisclog] add ui_temp_this
execute if score $slot ui_temp matches 17 run tag @s[tag=!tmw_237_nomisclog] add tmw_237_nomisclog
execute if score $slot ui_temp matches 17 run tag @s[tag=ui_temp_this] remove tmw_237_nomisclog
execute if score $slot ui_temp matches 17 run tag @s[tag=ui_temp_this] remove ui_temp_this

execute if entity @s[tag=!record_unlocked] run item replace entity @s enderchest.10 with red_stained_glass_pane{display:{Name:'{"text":"未開放","italic": false,"color": "red"}'},ui:{ismenu:1}}
execute if entity @s[tag=!record_unlocked] if score $slot ui_temp matches 10 run tellraw @s [{"text":"> ","color": "gray"},{"text":"この項目は未開放です","color": "red"}]
execute if entity @s[tag=record_unlocked] run item replace entity @s enderchest.10 with book{display:{Name:'{"text":"戦績確認","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=record_unlocked] if score $slot ui_temp matches 10 run function ui:tmw/243/core/stats

execute if entity @s[tag=!setting_unlocked] run item replace entity @s enderchest.11 with red_stained_glass_pane{display:{Name:'{"text":"未開放","italic": false,"color": "red"}'},ui:{ismenu:1}}
execute if entity @s[tag=!setting_unlocked] if score $slot ui_temp matches 11 run tellraw @s [{"text":"> ","color": "gray"},{"text":"この項目は未開放です","color": "red"}]
execute if entity @s[tag=setting_unlocked] run item replace entity @s enderchest.11 with nether_star{display:{Name:'{"text":"ゲーム設定","italic": false,"color": "aqua"}'},ui:{ismenu:1}}
execute if entity @s[tag=setting_unlocked] if score $slot ui_temp matches 11 run tag @s add setting_game
execute if entity @s[tag=setting_unlocked] if score $slot ui_temp matches 11 run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"がゲーム設定を開きました","color": "gray"}]

execute if score $slot ui_temp matches 18 if score $phase game_state matches 0 if entity @s[tag=!spectate] run function ui:game/start/toggle_ready
execute if score $slot ui_temp matches 18 if score $phase game_state matches 0 if entity @s[tag=spectate] run playsound block.dispenser.fail player @a ~ ~ ~ 1 0.8 0

execute if entity @s[tag=!auto_ready_unlocked] run item replace entity @s enderchest.19 with red_stained_glass_pane{display:{Name:'{"text":"未開放","italic": false,"color": "red"}'},ui:{ismenu:1}}
execute if entity @s[tag=!auto_ready_unlocked] if score $slot ui_temp matches 19 run tellraw @s [{"text":"> ","color": "gray"},{"text":"この項目は未開放です","color": "red"}]
execute if entity @s[tag=auto_ready_unlocked] if entity @s[tag=!auto_ready] run item replace entity @s enderchest.19 with ender_pearl{display:{Name:'{"text":"ゲームごとに準備完了をリセットする","italic": false,"color": "gray"}'},ui:{ismenu:1},HideFlags:2}
execute if entity @s[tag=auto_ready_unlocked] if entity @s[tag=auto_ready] run item replace entity @s enderchest.19 with ender_eye{display:{Name:'{"text":"準備完了状態を引き継ぐ","italic": false,"color": "white"}'},ui:{ismenu:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:1}
execute if entity @s[tag=auto_ready_unlocked] if score $slot ui_temp matches 19 if score $phase game_state matches 0 run tag @s[tag=auto_ready] add ui_temp_this
execute if entity @s[tag=auto_ready_unlocked] if score $slot ui_temp matches 19 if score $phase game_state matches 0 if entity @s[tag=auto_ready] run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が準備完了をマニュアルにしました","color": "gray"}]
execute if entity @s[tag=auto_ready_unlocked] if score $slot ui_temp matches 19 if score $phase game_state matches 0 if entity @s[tag=!auto_ready] run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が準備完了をオートにしました","color": "gray"}]
execute if entity @s[tag=auto_ready_unlocked] if score $slot ui_temp matches 19 if score $phase game_state matches 0 run tag @s[tag=!auto_ready] add auto_ready
execute if entity @s[tag=auto_ready_unlocked] if score $slot ui_temp matches 19 if score $phase game_state matches 0 run tag @s[tag=ui_temp_this] remove auto_ready
execute if entity @s[tag=auto_ready_unlocked] if score $slot ui_temp matches 19 if score $phase game_state matches 0 run tag @s[tag=ui_temp_this] remove ui_temp_this

execute if entity @s[tag=!spectator_unlocked] run item replace entity @s enderchest.20 with red_stained_glass_pane{display:{Name:'{"text":"未開放","italic": false,"color": "red"}'},ui:{ismenu:1}}
execute if entity @s[tag=!spectator_unlocked] if score $slot ui_temp matches 20 run tellraw @s [{"text":"> ","color": "gray"},{"text":"この項目は未開放です","color": "red"}]
execute if entity @s[tag=spectator_unlocked] if entity @s[tag=!spectate] run item replace entity @s enderchest.20 with emerald{display:{Name:'{"text":"状態: 参戦","italic": false,"color": "white"}'},ui:{ismenu:1},HideFlags:2}
execute if entity @s[tag=spectator_unlocked] if entity @s[tag=spectate] run item replace entity @s enderchest.20 with light_gray_dye{display:{Name:'{"text":"状態: 観戦","italic": false,"color": "gray"}'},ui:{ismenu:1}}
execute if entity @s[tag=spectator_unlocked] if score $slot ui_temp matches 20 if score $phase game_state matches 0 run tag @s[tag=spectate] add ui_temp_this
execute if entity @s[tag=spectator_unlocked] if score $slot ui_temp matches 20 if score $phase game_state matches 0 if entity @s[tag=spectate] run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が観戦を終了しました","color": "gray"}]
execute if entity @s[tag=spectator_unlocked] if score $slot ui_temp matches 20 if score $phase game_state matches 0 if entity @s[tag=!spectate] run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が観戦を始めました","color": "gray"}]
execute if entity @s[tag=spectator_unlocked] if score $slot ui_temp matches 20 if score $phase game_state matches 0 run tag @s[tag=!spectate] add game.ready
execute if entity @s[tag=spectator_unlocked] if score $slot ui_temp matches 20 if score $phase game_state matches 0 run tag @s[tag=!spectate] add spectate
execute if entity @s[tag=spectator_unlocked] if score $slot ui_temp matches 20 if score $phase game_state matches 0 run tag @s[tag=ui_temp_this] remove game.ready
execute if entity @s[tag=spectator_unlocked] if score $slot ui_temp matches 20 if score $phase game_state matches 0 run tag @s[tag=ui_temp_this] remove spectate
execute if entity @s[tag=spectator_unlocked] if score $slot ui_temp matches 20 if score $phase game_state matches 0 run tag @s[tag=ui_temp_this] remove ui_temp_this

execute if score $slot ui_temp matches 4..7 if entity @s[advancements={ui:add/basic/ender_chest=false}] run advancement grant @s only ui:add/basic/ender_chest

# パネル
execute unless score $module ui_world matches 1 run item replace entity @s enderchest.1 with gray_stained_glass_pane{CustomModelData:120009,display:{Name:'{"text":"左に武器をセット","color": "gold","italic": false}'},ui:{ismenu:1}}
execute if score $module ui_world matches 1 if entity @s[tag=module_unlocked] run item replace entity @s enderchest.1 with gray_stained_glass_pane{CustomModelData:120010,display:{Name:'{"text":"左に武器をセット","color": "gold","italic": false}',Lore:['{"text":"ここをクリックしてモジュール設定","color": "gray","italic": false}']},ui:{ismenu:1}}
execute if score $module ui_world matches 1 unless entity @s[tag=module_unlocked] run item replace entity @s enderchest.1 with gray_stained_glass_pane{CustomModelData:120010,display:{Name:'{"text":"左に武器をセット","color": "gold","italic": false}',Lore:['{"text":"モジュール設定は未開放","color": "red","italic": false}']},ui:{ismenu:1}}
execute if score $module ui_world matches 1 if entity @s[tag=module_unlocked] if score $slot ui_temp matches 1 run tag @s add setting_module
execute if score $module ui_world matches 1 unless entity @s[tag=module_unlocked] if score $slot ui_temp matches 1 run tellraw @s [{"text":"> ","color": "gray"},{"text":"この項目は未開放です","color": "red"}]

execute if entity @s[tag=gear_unlocked] run item replace entity @s enderchest.2 with iron_ingot{CustomModelData:211003,display:{Name:'{"text":"ギア設定","color": "gold","italic": false}',Lore:['{"text":"能力をカスタマイズ","color": "gray","italic": false}']},ui:{ismenu:1}}
execute unless entity @s[tag=gear_unlocked] run item replace entity @s enderchest.2 with red_stained_glass_pane{display:{Name:'{"text":"未開放","italic": false,"color": "red"}'},ui:{ismenu:1}}
execute if entity @s[tag=gear_unlocked] if score $slot ui_temp matches 2 run tag @s add setting_gear
execute unless entity @s[tag=gear_unlocked] if score $slot ui_temp matches 2 run tellraw @s [{"text":"> ","color": "gray"},{"text":"この項目は未開放です","color": "red"}]

item replace entity @s enderchest.3 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.4 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_notitle] run item replace entity @s enderchest.5 with red_stained_glass_pane{display:{Name:'{"text":"HUD: 非表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_notitle] run item replace entity @s enderchest.5 with lime_stained_glass_pane{display:{Name:'{"text":"HUD: 表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_nolaser] run item replace entity @s enderchest.6 with red_stained_glass_pane{display:{Name:'{"text":"狙撃射線: 非表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_nolaser] run item replace entity @s enderchest.6 with lime_stained_glass_pane{display:{Name:'{"text":"狙撃射線: 表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_noboost] run item replace entity @s enderchest.7 with red_stained_glass_pane{display:{Name:'{"text":"スーパーブースト: 無効","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_noboost] run item replace entity @s enderchest.7 with lime_stained_glass_pane{display:{Name:'{"text":"スーパーブースト: 有効","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_noresparticle] run item replace entity @s enderchest.8 with red_stained_glass_pane{display:{Name:'{"text":"無敵時間パーティクル表示: 無効","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_noresparticle] run item replace entity @s enderchest.8 with lime_stained_glass_pane{display:{Name:'{"text":"無敵時間パーティクル表示: 有効","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.9 with paper{display:{Name:'{"text":"操作説明","color": "gold","italic": false}'},ui:{ismenu:1}}

item replace entity @s enderchest.12 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_nokilllog] run item replace entity @s enderchest.14 with red_stained_glass_pane{display:{Name:'{"text":"キルログ: 非表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_nokilllog] run item replace entity @s enderchest.14 with lime_stained_glass_pane{display:{Name:'{"text":"キルログ: 表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_nochargelog] run item replace entity @s enderchest.15 with red_stained_glass_pane{display:{Name:'{"text":"スペシャルチャージ完了ログ: 非表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_nochargelog] run item replace entity @s enderchest.15 with lime_stained_glass_pane{display:{Name:'{"text":"スペシャルチャージ完了ログ: 表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_nosplog] run item replace entity @s enderchest.16 with red_stained_glass_pane{display:{Name:'{"text":"スペシャル発動ログ: 非表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_nosplog] run item replace entity @s enderchest.16 with lime_stained_glass_pane{display:{Name:'{"text":"スペシャル発動ログ: 表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_nomisclog] run item replace entity @s enderchest.17 with red_stained_glass_pane{display:{Name:'{"text":"ギア・モジュール通知/その他ログ: 非表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_nomisclog] run item replace entity @s enderchest.17 with lime_stained_glass_pane{display:{Name:'{"text":"ギア・モジュール通知/その他ログ: 表示","italic": false}'},ui:{ismenu:1}}
execute unless entity @s[tag=game.ready] run item replace entity @s enderchest.18 with red_dye{display:{Name:'{"text":"クリックで準備完了する","italic": false,"color": "red"}'},ui:{ismenu:1}}
execute if entity @s[tag=game.ready] run item replace entity @s enderchest.18 with lime_dye{display:{Name:'{"text":"クリックで準備完了解除","italic": false,"color": "green"}'},ui:{ismenu:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:1}
execute if score $phase game_state matches 1.. run item replace entity @s enderchest.18 with orange_dye{display:{Name:'{"text":"開始中・・・","italic": false,"color": "gold"}'},ui:{ismenu:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:1}
execute if entity @s[tag=spectate] run item replace entity @s enderchest.18 with barrier{display:{Name:'{"text":"※観戦モード※","italic": false,"color": "white"}'},ui:{ismenu:1},HideFlags:1}

execute if entity @s[tag=preset_unlocked] run item replace entity @s enderchest.21 with writable_book{display:{Name:'{"text":"統合プリセット","color": "gold","italic": false}',Lore:['{"text":"装備、ギア、モジュールを保存","color": "gray","italic": false}']},ui:{ismenu:1}}
execute unless entity @s[tag=preset_unlocked] run item replace entity @s enderchest.21 with red_stained_glass_pane{display:{Name:'{"text":"未開放","italic": false,"color": "red"}'},ui:{ismenu:1}}
execute if entity @s[tag=preset_unlocked] if score $slot ui_temp matches 21 run tag @s add setting_preset
execute unless entity @s[tag=preset_unlocked] if score $slot ui_temp matches 21 run tellraw @s [{"text":"> ","color": "gray"},{"text":"この項目は未開放です","color": "red"}]

item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 23 run tag @s[tag=tmw_237_random] add ui_temp_this
execute if score $slot ui_temp matches 23 run tag @s[tag=!tmw_237_random] add tmw_237_random
execute if score $slot ui_temp matches 23 run tag @s[tag=ui_temp_this] remove tmw_237_random
execute if score $slot ui_temp matches 23 run tag @s[tag=ui_temp_this] remove ui_temp_this
execute if entity @s[tag=tmw_237_random] run item replace entity @s enderchest.23 with lime_stained_glass_pane{display:{Name:'{"text":"ランダム装備: ON","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_random] run item replace entity @s enderchest.23 with red_stained_glass_pane{display:{Name:'{"text":"ランダム装備: OFF","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 24 run scoreboard players add @s random_main 1
execute if score $slot ui_temp matches 24 unless score $sp_fusion party_mode matches 1 if score @s random_main matches 3.. run scoreboard players set @s random_main 0
execute if score $slot ui_temp matches 24 if score @s random_main matches 4.. run scoreboard players set @s random_main 0
execute if entity @s[tag=tmw_237_random] unless score @s random_main matches 1.. run item replace entity @s enderchest.24 with lime_stained_glass_pane{display:{Name:'{"text":"ランダムメイン: 全て出現","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_random] if score @s random_main matches 1 run item replace entity @s enderchest.24 with red_stained_glass_pane{display:{Name:'{"text":"ランダムメイン: エルドのみ","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_random] if score @s random_main matches 2 run item replace entity @s enderchest.24 with orange_stained_glass_pane{display:{Name:'{"text":"ランダムメイン: 通常モデルのみ","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_random] unless score $fusion_plus party_mode matches 1 if score @s random_main matches 3 run item replace entity @s enderchest.24 with yellow_stained_glass_pane{display:{Name:'{"text":"ランダムメイン: スペシャル融合バグ","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_random] if score $fusion_plus party_mode matches 1 if score @s random_main matches 3 run item replace entity @s enderchest.24 with purple_stained_glass_pane{display:{Name:'{"text":"ランダムメイン: 超スペシャル融合バグ","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_random] run item replace entity @s enderchest.24 with gray_stained_glass_pane{display:{Name:'{"text":"ランダムメイン: Null","color": "gray","italic": false}'},ui:{ismenu:1}}

execute if score $slot ui_temp matches 25 run scoreboard players add @s random_qf 1
execute if score $slot ui_temp matches 25 if score @s random_qf matches 5.. run scoreboard players set @s random_qf 0
execute if entity @s[tag=tmw_237_random] unless score @s random_main matches 3 unless score @s random_qf matches 1.. run item replace entity @s enderchest.25 with green_stained_glass_pane{display:{Name:'{"text":"ランダムサブスペ: 全て出現","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_random] unless score @s random_main matches 3 if score @s random_qf matches 1 run item replace entity @s enderchest.25 with red_stained_glass_pane{display:{Name:'{"text":"ランダムサブスペ: サブスペのみ","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_random] unless score @s random_main matches 3 if score @s random_qf matches 2 run item replace entity @s enderchest.25 with orange_stained_glass_pane{display:{Name:'{"text":"ランダムサブスペ: ダブサブのみ","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_random] unless score @s random_main matches 3 if score @s random_qf matches 3 run item replace entity @s enderchest.25 with yellow_stained_glass_pane{display:{Name:'{"text":"ランダムサブスペ: ダブスペのみ","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_random] unless score @s random_main matches 3 if score @s random_qf matches 4 run item replace entity @s enderchest.25 with lime_stained_glass_pane{display:{Name:'{"text":"ランダムサブスペ: ダブスペ抜き","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_random] if score @s random_main matches 3 run item replace entity @s enderchest.25 with gray_stained_glass_pane{display:{Name:'{"text":"ランダムサブスペ: 融合バグ適用中","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_random] run item replace entity @s enderchest.25 with gray_stained_glass_pane{display:{Name:'{"text":"ランダムサブスペ: Null","color": "gray","italic": false}'},ui:{ismenu:1}}

item replace entity @s enderchest.26 with black_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":"タイトルの編集","italic": false}'},ui:{ismenu:1}}
execute if score $slot ui_temp matches 26 run tag @s add setting_title
