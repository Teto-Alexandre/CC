#> ui:misc/leave_game
#
# 「再ログイン時」最も「実行を優先」する項目
#
# ログアウトしてバグるアイテム、あるだろ？
#
# @public

# リジョインホルダー
execute if score $phase game_state matches 1 run gamemode spectator @s
execute if score $phase game_state matches 0 run gamemode adventure @s


scoreboard players set @s ui_lg 0

#テスト用
#say リログしたよ！