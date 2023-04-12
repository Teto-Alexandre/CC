#キルログ
scoreboard players set $mod ui_calc1 1
function ui:common/rand
execute if entity @a[tag=tds_tempb] run tellraw @a[tag=!tmw_237_nokilllog] ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempb]"},{"text":"から逃げようとして水没した","color":"white"}]
execute unless entity @a[tag=tds_tempb] run tellraw @a[tag=!tmw_237_nokilllog] ["",{"selector":"@s"},{"text":"は足を踏み外して水没した","color":"white"}]
tag @s remove tds_ui_highdamage_temp

execute if entity @s[advancements={ui:add/basic/drown=false}] run advancement grant @s only ui:add/basic/drown

#死
function tds:death