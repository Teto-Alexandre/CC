#
execute as @a[tag=tds_attacker_temp,scores={module=11}] run function tds:core/module/attack
execute as @a[tag=tds_attacker_temp,scores={module=12}] run function tds:core/module/glow
execute as @a[tag=tds_attacker_temp,scores={module=21}] if predicate ui:percentage/15 run function tds:core/module/luck
execute as @a[tag=tds_attacker_temp,scores={module=24}] run function tds:core/module/dist10
execute as @a[tag=tds_attacker_temp,scores={module=25}] run function tds:core/module/dist15
execute as @a[tag=tds_attacker_temp,scores={module=26}] run function tds:core/module/dist20
execute as @a[tag=tds_attacker_temp,scores={module=27}] run function tds:core/module/dist25
execute if score @s module matches 32 if score @s ui_s_paint matches 1500.. run function tds:core/module/acc
execute if score @s module matches 34 as @a[tag=tds_attacker_temp] run function tds:core/module/lantern
execute as @a[tag=tds_attacker_temp,scores={module=35}] run function tds:core/module/explode_ready
#execute unless score $DamageType tds_dmg matches 3 as @a[tag=tds_attacker_temp,scores={module=35}] run function tds:core/module/explode_ready