#キルログ
scoreboard players set $mod ui_calc1 7
function ui:common/rand
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で始末された","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で蹴散らされた","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]によって撃ち滅ぼされた","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]でぺしゃんこにされた","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 4 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で撃破された","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 5 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"のとっておきの[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]でチリになった","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 6 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で栄光の礎にされた","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"のとっておきでチリになった","color":"white"}]
execute unless entity @e[tag=tds_tempa] run tellraw @a ["",{"selector":"@s"},{"text":"は歴史の下に埋もれた","color":"white"}]

#死
function tds:death