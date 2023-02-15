#キルログ
scoreboard players set $mod ui_calc1 2
function ui:common/rand
execute if entity @a[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]でボロボロにされた","color":"white"}]
execute if entity @a[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]によってアメジストになった","color":"white"}]
execute if entity @a[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"にアメジストにされた","color":"white"}]
execute unless entity @a[tag=tds_tempa] run tellraw @a ["",{"selector":"@s"},{"text":"はアメジストになって砕けた","color":"white"}]

#死
function tds:death