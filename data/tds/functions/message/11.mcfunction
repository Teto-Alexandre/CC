#キルログ
scoreboard players set $mod ui_calc1 1
function ui:common/rand
execute if entity @a[tag=tds_tempb] run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempb]"},{"text":"から逃げようとして水没した","color":"white"}]
execute unless entity @a[tag=tds_tempb] run tellraw @a ["",{"selector":"@s"},{"text":"は足を踏み外して水没した","color":"white"}]
tag @s remove tds_ui_highdamage_temp

#死
function tds:death