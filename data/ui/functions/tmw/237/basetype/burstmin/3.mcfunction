# 3.ファイナル

# 基本の射撃タイプを入力
    execute store result score $burst.min ui_temp run data get storage ui:gun temp.BurstMin

# 最後ならファイナル状態用に上書き
    execute if entity @s[tag=ui_use_c] store result score $burst.min ui_temp run data get storage ui:gun temp.FinalBurstMin