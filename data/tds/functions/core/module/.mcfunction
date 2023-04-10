#
tag @s add ui_module_temp

#
execute as @a[scores={module=11}] if score @s ui_id = $Attacker tds_dmg run function tds:core/module/attack
execute as @a[scores={module=12}] if score @s ui_id = $Attacker tds_dmg run function tds:core/module/glow
execute as @a[scores={module=21}] if score @s ui_id = $Attacker tds_dmg if predicate ui:percentage/15 run scoreboard players operation $Damage tds_dmg *= #2 ui_num

#
tag @s remove ui_module_temp