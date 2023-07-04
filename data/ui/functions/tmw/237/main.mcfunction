# ガチマッチ勝利検知用 : ui_17_aqua,ui_17_pink
# 我こそがキングである : tmw_237_king
# 攻撃を無効化する能力 : tmw_237_sp_survive

#declare storage ui:gun

# 装備更新変数をリセット
scoreboard players set $changed ui_temp 0

# バースト管理変数をリセット
scoreboard players set $burst_alt ui_temp 0
scoreboard players set $burst_alt.id ui_temp 0

# チャージ変数をリセット
scoreboard players set $ishold ui_temp 0
scoreboard players reset $multibullet ui_temp

#
tag @s[tag=advancement_using_sp] remove advancement_using_sp
tag @s[tag=drain] remove drain

# 必要データ収集
data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw.gun
data modify storage ui:gun temp.DisplayName set from entity @s SelectedItem.tag.display.Name
# 最後に持った時間と連続していなかった場合ペナルティ（changedで常時時間係数を監視しないといけないので没）
execute unless data storage ui:gun temp.now.First run function ui:tmw/237/changed/first

scoreboard players operation $id ui_temp = @s ui_id
scoreboard players operation $team ui_temp = @s ui_team
execute store result score $basetype ui_temp run data get storage ui:gun temp.BaseType
execute store result score $ink ui_temp run data get storage ui:gun temp.now.Ink
execute store result score $ink.max ui_temp run data get storage ui:gun temp.InkMax
execute if score $module ui_world matches 1 as @a if score @s module matches 16 run function ui:module/eco_bag
execute store result score $spneed ui_temp run data get storage ui:gun temp.SPNeed
scoreboard players operation $spneed ui_temp *= #100 ui_num
scoreboard players operation $spneed ui_temp /= @s sp_need_acc
execute store result score $ink.m ui_temp run data get storage ui:gun temp.MoveInkRegen
execute store result score $ink.s ui_temp run data get storage ui:gun temp.ShootInkRegen
execute store result score $cooltime ui_temp run data get storage ui:gun temp.now.CT
execute store result score $subtype ui_temp run data get storage ui:gun temp.SubType
execute store result score $subtime ui_temp run data get storage ui:gun temp.now.SubTime
execute store result score $subtime.max ui_temp run data get storage ui:gun temp.SubTime
execute store result score $sp ui_temp run data get storage ui:gun temp.now.SP
execute store result score $sptype ui_temp run data get storage ui:gun temp.SPType
execute store result score $sptime ui_temp run data get storage ui:gun temp.now.SPTime
execute store result score $sptime.max ui_temp run data get storage ui:gun temp.SPTime
execute if score $module ui_world matches 1 as @a if score @s module matches 40 run function ui:module/broken_clock
execute store result score $amp ui_temp run data get storage ui:gun temp.now.Amp
execute store result score $qf ui_temp run data get storage ui:gun temp.now.QFType
execute store result score $lasttime ui_temp run data get storage ui:gun temp.now.Time

execute unless score $subtime ui_temp matches 1.. unless score $sptime ui_temp matches 1.. store result score $speed ui_temp run data get storage ui:gun temp.now.Speed 100
execute if score $subtime ui_temp matches 1.. store result score $speed ui_temp run data get storage ui:gun temp.SubSpeed 100
execute if score $sptime ui_temp matches 1.. store result score $speed ui_temp run data get storage ui:gun temp.SPSpeed 100
execute if score $speed ui_temp matches -100 store result score $speed ui_temp run data get storage ui:gun temp.now.Speed 100
scoreboard players operation @s wep_speed += $speed ui_temp

# $basetype よりバーストタイプ、インク消費を取得
execute store result score $burst ui_temp run data get storage ui:gun temp.now.Burst
execute store result score $maxburst ui_temp run data get storage ui:gun temp.Burst
function ui:tmw/237/basetype/basetype

# 固有
execute if score $bursttype ui_temp matches 11 run function ui:tmw/237/main/11.reader
execute if score $bursttype ui_temp matches 12 run function ui:tmw/237/main/12.reader

# 非メインウェポン消費インク取得
execute store result score $ink.sub ui_temp run data get storage ui:gun temp.SubInkUse
execute if score $sptype ui_temp matches 253 if score $sptime ui_temp matches 1.. run scoreboard players operation $ink.sub ui_temp /= #8 ui_num
execute store result score $ink.sp ui_temp run data get storage ui:gun temp.SPInkUse

# tmw_237_readtagのタグが付いているならプレイヤーのタグを読み取る
execute if entity @s[tag=tmw_237_readtag] run function ui:tmw/237/tag/reader

# $amp より色々バフを掛ける
execute if score $amp ui_temp matches 1.. run function ui:tmw/237/amp/manager

# 最後に持った時間と連続していなかった場合ペナルティ
#execute if score $tmw237.hand ui_world matches 1 run function ui:tmw/237/changed/hand.sys

# キー入力検知範囲拡大
#tag @s[tag=tmw_drop_s] add tmw_drop_n
#tag @s[tag=tmw_oh_s] add tmw_oh_n

# 持ち替えたら
execute unless score $swap_save party_mode matches 1.. unless score @s last_slot_old = @s last_slot run function ui:tmw/237/constant/another_hold_cancel

# バースト数
# 1:定量バースト, 2:継続射撃, 3:チャージ連射+倍率, 4:ID式チャージ単射撃, 5:ID式連射補正関数, 6:遅延認識, 7:新3, 8:新4
#tellraw @a[scores={ui_use1=1..}] [{"score":{"objective":"ui_temp","name":"$bursttype"}}]
execute if score $bursttype ui_temp matches 1 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst/1
execute if score $bursttype ui_temp matches 2 as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst/1
execute if score $bursttype ui_temp matches 3 run function ui:tmw/237/burst/3_master
execute if score $bursttype ui_temp matches 4 if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 as @s[scores={ui_use2=1..}] run function ui:tmw/237/burst/4
execute if score $bursttype ui_temp matches 5 as @s[scores={ui_use2=1..}] run function ui:tmw/237/burst/5
execute if score $bursttype ui_temp matches 6 as @s[scores={ui_use2=1..}] run function ui:tmw/237/burst/1
execute if score $bursttype ui_temp matches 7 run function ui:tmw/237/burst/7
execute if score $bursttype ui_temp matches 8 run function ui:tmw/237/burst/8
execute if score $bursttype ui_temp matches 9 run function ui:tmw/237/burst/9
execute if score $bursttype ui_temp matches 10 run function ui:tmw/237/burst/10
execute if score $bursttype ui_temp matches 11 run function ui:tmw/237/burst/11
execute if score $bursttype ui_temp matches 12 run function ui:tmw/237/burst/12
execute if score $bursttype ui_temp matches 13..14 run function ui:tmw/237/burst/13
execute if score $bursttype ui_temp matches 15 run function ui:tmw/237/burst/15

# 常駐効果
scoreboard players remove @s[scores={ui_gct=0..}] ui_gct 1
effect give @s saturation 1 0 true
execute if entity @s[gamemode=!spectator] run function ui:tmw/237/constant/core

# インク回復
execute if score $ink ui_temp < $ink.max ui_temp run function ui:tmw/237/reload

# クールタイム解除
execute unless score $cooltime ui_temp matches 0 run function ui:tmw/237/ct

# 弾丸の射出
    #たまなしバースト+クールタイム完遂
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score $ink ui_temp < $ink.main ui_temp at @s[gamemode=!spectator] run function ui:tmw/237/fail
    #たまありバースト+クールタイム完遂
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score $ink ui_temp >= $ink.main ui_temp at @s[gamemode=!spectator] run function ui:tmw/237/attack/master
        # ファイナル型だけ修正
        execute if score $basetype ui_temp matches 3 unless score $bursttype ui_temp matches 7..8 store result score $changed ui_temp run scoreboard players set $ishold ui_temp 1
    #バースト+クールタイム完遂、発射できなかったなら
    execute if score $burst ui_temp matches 1.. if score $cooltime ui_temp matches 0 at @s[tag=!ui_temp_success] run function ui:tmw/237/fail

# デバッグスイッチ
execute as @s[tag=tmw_drop_s] run function ui:tmw/237/emergency/core

# その他状態ディスプレイ
execute if score $ink ui_temp < $ink.sub ui_temp run effect give @s wither 1 0 true
execute if score $ink ui_temp >= $ink.sub ui_temp run effect clear @s wither
execute if score $qf ui_temp matches 3 run effect clear @s wither
scoreboard players operation @s ui_paint < $spneed ui_temp
execute if score $qf ui_temp matches 2 if score @s ui_paint = $spneed ui_temp at @s run function ui:tmw/237/sp/qf2
execute if score $qf ui_temp matches 4 if score @s ui_paint = $spneed ui_temp at @s run function ui:tmw/237/sp/qf2
execute if score $sp ui_temp matches 0 if score @s ui_paint = $spneed ui_temp at @s run function ui:tmw/237/sp/ready
execute if score $sp ui_temp matches 1 if score @s ui_paint < $spneed ui_temp run function ui:tmw/237/sp/not

# サブウェポン発動
execute as @s[tag=tmw_drop_n] run function ui:tmw/237/sub/lim

# スペシャルウェポン発動
execute as @s[tag=tmw_oh_n] run function ui:tmw/237/sp/lim
#execute as @s[tag=tmw_oh_s,tag=tmw_237_noboost] if score $cooltime ui_temp matches 0 run function ui:tmw/237/sp/lim

# ブースト発動
execute as @s[tag=tmw_oh_s,tag=!tmw_237_noboost] unless score @s ui_tmw237_boost matches -2147483648..2147483647 if score $cooltime ui_temp matches 0 run scoreboard players set @s ui_tmw237_boost 1
execute if score @s ui_tmw237_boost matches 1.. run function ui:tmw/237/constant/boost/path

# サブスペ時限式
execute if score $subtime ui_temp matches 1.. at @s run function ui:tmw/237/activator/time/sub
execute if score $sptime ui_temp matches 1.. at @s run function ui:tmw/237/activator/time/sp
#tellraw @s [{"score":{"objective":"ui_temp","name":"$sptime"}}]

# ディスプレイ表示
execute if entity @s[tag=!tmw_237_notitle] unless entity @s[gamemode=spectator] run function ui:tmw/237/title/core

# 逆変換
execute if score $changed ui_temp matches 1 run function ui:tmw/237/changed/core

# タグ消し
tag @s remove ui_temp_move
tag @s remove ui_temp_success

# 一時的ストレージクリア
data remove storage ui:gun temp
data remove storage ui:gun temp2

# 最後に
schedule function ui:tmw/237/last 1t append