# 3.ファイナル

# 基本の射撃タイプを入力
    execute store result score $burst_alt.id ui_temp run data get storage ui:gun temp.BurstAlt
    execute store result score $burst.max ui_temp run data get storage ui:gun temp.BurstMax
    execute store result score $burst.mult ui_temp run data get storage ui:gun temp.Burst

# 最後ならファイナル状態用に上書き
    execute if entity @s[tag=ui_use_c] store result score $burst_alt.id ui_temp run data get storage ui:gun temp.FinalBurstAlt
    execute if entity @s[tag=ui_use_c] store result score $burst.max ui_temp run data get storage ui:gun temp.BurstMax
    execute if entity @s[tag=ui_use_c] store result score $burst.mult ui_temp run data get storage ui:gun temp.Burst