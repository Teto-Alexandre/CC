#キルログ
scoreboard players set $mod ui_calc1 7
function ui:common/rand
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の打ち返した","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で命を落とした","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の反射した","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]でトドメを刺された","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]に対応できなかった","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]を利用して粉々にされた","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 4 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"に","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]を打ち返されて死んだ","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 5 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"が[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]を反射して痛い目に遭った","color":"white"}]
execute if entity @e[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 6 run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の","color":"white"},{"text":"[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で自爆した","color":"white"}]
execute if entity @e[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} run tellraw @a ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@e[tag=tds_tempa]"},{"text":"の策によって死に至った","color":"white"}]
execute unless entity @e[tag=tds_tempa] run tellraw @a ["",{"selector":"@s"},{"text":"は流れ弾によって死んだ","color":"white"}]

#死
function tds:death