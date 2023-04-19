#
execute as @a[tag=tds_attacker_temp,scores={module=11}] run function tds:core/module/attack
execute as @a[tag=tds_attacker_temp,scores={module=12}] run function tds:core/module/glow
execute as @a[tag=tds_attacker_temp,scores={module=21}] if predicate ui:percentage/15 run function tds:core/module/luck
