#キルログ
scoreboard players set $mod ui_calc1 3
function ui:common/rand
execute if entity @a[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 0 run tellraw @a[tag=!tmw_237_nokilllog] ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で黒焦げにされた","color":"white"}]
execute if entity @a[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 1 run tellraw @a[tag=!tmw_237_nokilllog] ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]によって炭になった","color":"white"}]
execute if entity @a[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 2 run tellraw @a[tag=!tmw_237_nokilllog] ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"に[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で電流を流され死んだ","color":"white"}]
execute if entity @a[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} run tellraw @a[tag=!tmw_237_nokilllog] ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"に電流を流され死んだ","color":"white"}]
execute unless entity @a[tag=tds_tempa] run tellraw @a[tag=!tmw_237_nokilllog] ["",{"selector":"@s"},{"text":"は感電して絶命した","color":"white"}]

#死
function tds:death