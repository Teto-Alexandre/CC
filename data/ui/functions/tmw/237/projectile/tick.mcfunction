#> ui:tmw/237/projectile/tick
#
# 「飛び道具コモン」で召喚された「防具立て」を管理
#
# @public

#
execute if entity @s[tag=tmw237_has_bullet_data] run data modify storage ui:gun temp3.BulletData set from entity @s ArmorItems.[0].tag.BulletData

#
scoreboard players set $Lethal tds_dmg 0
scoreboard players set $Cache ui_temp 0

# キルログを宣言
scoreboard players set $deathmessage ui_temp 0
execute if entity @s[tag=ui_refd,tag=!tmw_237_noref] run scoreboard players set $deathmessage ui_temp 2
execute if entity @s[tag=tmw_237_deathmessage_14] run scoreboard players set $deathmessage ui_temp 1

#射程うんぬん
scoreboard players operation @s ui_temp = @s ui_bm
scoreboard players operation @s ui_temp += @s ui_bm_temp
scoreboard players operation $rangetype ui_temp = @s ui_gpc

#攻撃インストール
scoreboard players operation $damage ui_temp = @s ui_dmg
scoreboard players operation $damage_type ui_temp = @s ui_bdt

#idを共有
scoreboard players operation $id ui_temp = @s ui_id

#重力補正
execute if score $rangetype ui_temp matches 2..3 at @s run function ui:tmw/237/projectile/gravity

#パーティーモード - リフレクター反射制限解除
execute if score $ref_limit party_mode matches 1 run tag @s remove ui_refd

#tick毎ループ
execute at @s[scores={ui_temp=10..}] run function ui:tmw/237/projectile/move
scoreboard players operation @s ui_bm_temp = @s ui_temp
tag @s[tag=ui_temp_col] remove ui_temp_col

#キル条件
execute at @s if score @s ui_br_temp >= @s ui_br run function ui:tmw/237/projectile/end

#
execute if score $Cache ui_temp matches 1 run scoreboard players reset @s
tag @a[tag=tds_return_attacker] remove tds_return_attacker
execute if data storage ui:gun temp3 run data remove storage ui:gun temp3