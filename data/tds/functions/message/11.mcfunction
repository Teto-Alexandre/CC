#キルログ
scoreboard players set $mod ui_calc1 1
function ui:common/rand
execute if entity @a[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]でぺしゃんこにされた","color":"white"}]
execute if entity @a[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"にぺしゃんこにされた","color":"white"}]
execute unless entity @a[tag=tds_tempa] run tellraw @a ["",{"selector":"@s"},{"text":"は足を踏み外して水没した","color":"white"}]
tag @s remove tds_ui_highdamage_temp

#死
function tds:death