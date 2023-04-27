## 各アイテムを読み取って、スキルアイテムと補充アイテムを仕分ける
## $Return は一応使える余地を残す

# データ隔離
function oh_my_dat:please
data modify storage ui:gear temp.Reader set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears

# カウント
execute store result score $count ui_temp run data get storage ui:gear temp.Reader

# エナスタバフリセット
function ui:template/stats/energy/remove

# 初期値
scoreboard players set @s health 0
scoreboard players set @s shoot_speed 0
scoreboard players set @s move_speed 500
scoreboard players set @s armor 0
scoreboard players set @s blast_protection 0
scoreboard players set @s norma_damage 1000
scoreboard players set @s vsobj_damage 100
scoreboard players set @s blast_damage 100
scoreboard players set @s respawn_acc 100
scoreboard players set @s death_sp 60
scoreboard players set @s sp_need_acc 100
scoreboard players set @s ink_regen 100
scoreboard players set @s main_eff_acc 100
scoreboard players set @s sub_eff_acc 100

scoreboard players set @s pl_comp_buff 0

# 切削
execute if score $count ui_temp matches 1.. run function ui:tmw/243/core/gear_reader/1.burn

# 最後に
data remove storage ui:gear temp.Reader
scoreboard players reset $count ui_temp
