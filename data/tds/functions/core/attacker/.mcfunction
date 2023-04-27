#
tag @s add tds_victim_temp

#
execute as @a if score @s ui_id = $Attacker tds_dmg run tag @s add tds_attacker_temp

# ダメージに倍率を乗せる
scoreboard players operation $Damage tds_dmg *= @a[tag=tds_attacker_temp] norma_damage
scoreboard players operation $Damage tds_dmg /= #1000 ui_num

#
execute if score $subdamage ui_temp matches 1 run function tds:core/attacker/sub
execute if score $DamageType tds_dmg matches 3 run function tds:core/attacker/blast
execute if entity @s[type=!player] run function tds:core/attacker/vsobj
execute if score $module ui_world matches 1 run function tds:core/module/

#
tag @a[tag=tds_attacker_temp] remove tds_attacker_temp
tag @s remove tds_victim_temp