# メニュー表示

# 戦績確認
data merge storage ui:common {input:{Mode:"check"}}
function ui:common/ender
execute if score $slot ui_temp matches 4 run tag @s[tag=tmw_237_notitle] add ui_temp_this
execute if score $slot ui_temp matches 4 run tag @s[tag=!tmw_237_notitle] add tmw_237_notitle
execute if score $slot ui_temp matches 4 run tag @s[tag=ui_temp_this] remove tmw_237_notitle
execute if score $slot ui_temp matches 4 run tag @s[tag=ui_temp_this] remove ui_temp_this
execute if score $slot ui_temp matches 5 run tag @s[tag=tmw_237_nolaser] add ui_temp_this
execute if score $slot ui_temp matches 5 run tag @s[tag=!tmw_237_nolaser] add tmw_237_nolaser
execute if score $slot ui_temp matches 5 run tag @s[tag=ui_temp_this] remove tmw_237_nolaser
execute if score $slot ui_temp matches 5 run tag @s[tag=ui_temp_this] remove ui_temp_this
execute if score $slot ui_temp matches 6 run tag @s[tag=tmw_237_noboost] add ui_temp_this
execute if score $slot ui_temp matches 6 run tag @s[tag=!tmw_237_noboost] add tmw_237_noboost
execute if score $slot ui_temp matches 6 run tag @s[tag=ui_temp_this] remove tmw_237_noboost
execute if score $slot ui_temp matches 6 run tag @s[tag=ui_temp_this] remove ui_temp_this
execute if score $slot ui_temp matches 7 run tag @s[tag=tmw_237_noresparticle] add ui_temp_this
execute if score $slot ui_temp matches 7 run tag @s[tag=!tmw_237_noresparticle] add tmw_237_noresparticle
execute if score $slot ui_temp matches 7 run tag @s[tag=ui_temp_this] remove tmw_237_noresparticle
execute if score $slot ui_temp matches 7 run tag @s[tag=ui_temp_this] remove ui_temp_this
execute if score $slot ui_temp matches 9 run function ui:tmw/243/core/tell
execute if score $slot ui_temp matches 10 run function ui:tmw/243/core/stats
execute if score $slot ui_temp matches 18 if score $phase game_state matches 0 if entity @s[tag=!spectate] run function ui:game/start/toggle_ready
execute if score $slot ui_temp matches 18 if score $phase game_state matches 0 if entity @s[tag=spectate] run playsound block.dispenser.fail player @a ~ ~ ~ 1 0.8 0

execute if score $slot ui_temp matches 19 if score $phase game_state matches 0 run tag @s[tag=auto_ready] add ui_temp_this
execute if score $slot ui_temp matches 19 if score $phase game_state matches 0 if entity @s[tag=auto_ready] run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が準備完了をマニュアルにしました","color": "gray"}]
execute if score $slot ui_temp matches 19 if score $phase game_state matches 0 if entity @s[tag=!auto_ready] run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が準備完了をオートにしました","color": "gray"}]
execute if score $slot ui_temp matches 19 if score $phase game_state matches 0 run tag @s[tag=!auto_ready] add auto_ready
execute if score $slot ui_temp matches 19 if score $phase game_state matches 0 run tag @s[tag=ui_temp_this] remove auto_ready
execute if score $slot ui_temp matches 19 if score $phase game_state matches 0 run tag @s[tag=ui_temp_this] remove ui_temp_this

execute if score $slot ui_temp matches 20 if score $phase game_state matches 0 run tag @s[tag=spectate] add ui_temp_this
execute if score $slot ui_temp matches 20 if score $phase game_state matches 0 if entity @s[tag=spectate] run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が観戦を終了しました","color": "gray"}]
execute if score $slot ui_temp matches 20 if score $phase game_state matches 0 if entity @s[tag=!spectate] run tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が観戦を始めました","color": "gray"}]
execute if score $slot ui_temp matches 20 if score $phase game_state matches 0 run tag @s[tag=!spectate] add game.ready
execute if score $slot ui_temp matches 20 if score $phase game_state matches 0 run tag @s[tag=!spectate] add spectate
execute if score $slot ui_temp matches 20 if score $phase game_state matches 0 run tag @s[tag=ui_temp_this] remove game.ready
execute if score $slot ui_temp matches 20 if score $phase game_state matches 0 run tag @s[tag=ui_temp_this] remove spectate
execute if score $slot ui_temp matches 20 if score $phase game_state matches 0 run tag @s[tag=ui_temp_this] remove ui_temp_this

execute if score $slot ui_temp matches 4..7 if entity @s[advancements={ui:add/basic/ender_chest=false}] run advancement grant @s only ui:add/basic/ender_chest

# パネル
item replace entity @s enderchest.1 with gray_stained_glass_pane{CustomModelData:120009,display:{Name:'{"text":"ここに武器をセット","color": "gold","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.2 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.3 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_notitle] run item replace entity @s enderchest.4 with red_stained_glass_pane{display:{Name:'{"text":"HUD: 非表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_notitle] run item replace entity @s enderchest.4 with lime_stained_glass_pane{display:{Name:'{"text":"HUD: 表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_nolaser] run item replace entity @s enderchest.5 with red_stained_glass_pane{display:{Name:'{"text":"狙撃射線: 非表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_nolaser] run item replace entity @s enderchest.5 with lime_stained_glass_pane{display:{Name:'{"text":"狙撃射線: 表示","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_noboost] run item replace entity @s enderchest.6 with red_stained_glass_pane{display:{Name:'{"text":"スーパーブースト: 無効","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_noboost] run item replace entity @s enderchest.6 with lime_stained_glass_pane{display:{Name:'{"text":"スーパーブースト: 有効","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=tmw_237_noresparticle] run item replace entity @s enderchest.7 with red_stained_glass_pane{display:{Name:'{"text":"無敵時間パーティクル表示: 無効","italic": false}'},ui:{ismenu:1}}
execute if entity @s[tag=!tmw_237_noresparticle] run item replace entity @s enderchest.7 with lime_stained_glass_pane{display:{Name:'{"text":"無敵時間パーティクル表示: 有効","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.8 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.9 with paper{display:{Name:'{"text":"操作説明","color": "gold","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.10 with book{display:{Name:'{"text":"戦績確認","color": "gold","italic": false}'},ui:{ismenu:1}}
item replace entity @s enderchest.11 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.12 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.14 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.15 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.16 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.17 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
execute unless entity @s[tag=game.ready] run item replace entity @s enderchest.18 with red_dye{display:{Name:'{"text":"クリックで準備完了する","italic": false,"color": "red"}'},ui:{ismenu:1}}
execute if entity @s[tag=game.ready] run item replace entity @s enderchest.18 with lime_dye{display:{Name:'{"text":"クリックで準備完了解除","italic": false,"color": "green"}'},ui:{ismenu:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:1}
execute if score $phase game_state matches 1.. run item replace entity @s enderchest.18 with orange_dye{display:{Name:'{"text":"開始中・・・","italic": false,"color": "gold"}'},ui:{ismenu:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:1}
execute if entity @s[tag=spectate] run item replace entity @s enderchest.18 with barrier{display:{Name:'{"text":"※観戦モード※","italic": false,"color": "white"}'},ui:{ismenu:1},HideFlags:1}
execute if entity @s[tag=!auto_ready] run item replace entity @s enderchest.19 with ender_pearl{display:{Name:'{"text":"ゲームごとに準備完了をリセットする","italic": false,"color": "gray"}'},ui:{ismenu:1},HideFlags:2}
execute if entity @s[tag=auto_ready] run item replace entity @s enderchest.19 with ender_eye{display:{Name:'{"text":"準備完了状態を引き継ぐ","italic": false,"color": "white"}'},ui:{ismenu:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:1}
execute if entity @s[tag=!spectate] run item replace entity @s enderchest.20 with emerald{display:{Name:'{"text":"状態: 参戦","italic": false,"color": "white"}'},ui:{ismenu:1},HideFlags:2}
execute if entity @s[tag=spectate] run item replace entity @s enderchest.20 with light_gray_dye{display:{Name:'{"text":"状態: 観戦","italic": false,"color": "gray"}'},ui:{ismenu:1}}
item replace entity @s enderchest.21 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.24 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.25 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
item replace entity @s enderchest.26 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
