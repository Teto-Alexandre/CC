#キルログ
scoreboard players set $mod ui_calc1 2
function ui:common/rand
execute if entity @a[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 0 run tellraw @a[tag=!tmw_237_nokilllog] ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で消滅した","color":"white"}]
execute if entity @a[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 1 run tellraw @a[tag=!tmw_237_nokilllog] ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]に消し去られた","color":"white"}]
execute if entity @a[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} run tellraw @a[tag=!tmw_237_nokilllog] ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"に消し去られた","color":"white"}]
execute unless entity @a[tag=tds_tempa] run tellraw @a[tag=!tmw_237_nokilllog] ["",{"selector":"@s"},{"text":"は跡形もなく消滅した","color":"white"}]

#死
function tds:death