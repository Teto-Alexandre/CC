#> ui:common/highdamage
#
# 実行対象に大ダメージを与えるコモン
#
#    必須入力値
#
#       - as Healthを持つエンティティ
#
#    返り値
#
#       - 軽減可能な1024ダメージを受ける
#
#       - 耐えると進捗がもらえる
#
# @public

# act
scoreboard players reset $Attacker tds_dmg
tag @e[tag=tds_tempa] remove tds_tempa
tag @s add tds_ui_highdamage_temp
data merge storage tds: {temp:{Damage:1024.00,DamageType:1,DeathMessage:11,WeaponName:"",EPF:-1,BypassArmor:0,BypassResistance:false}}
tag @s remove drain
execute at @s run function tds:attack
advancement grant @s[tag=tds_ui_highdamage_temp] only ui:hidden/misc/go_swimming