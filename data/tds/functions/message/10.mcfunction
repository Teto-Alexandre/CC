#キルログ
scoreboard players set $mod ui_calc1 1
function ui:common/rand
execute if entity @a[tag=tds_tempa] unless data storage tds: {temp:{WeaponName:""}} if score $rand ui_calc1 matches 0 run tellraw @a[tag=!tmw_237_nokilllog] ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"の[","color":"white"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":true},{"text":"]で血を抜き取られた","color":"white"}]
execute if entity @a[tag=tds_tempa] if data storage tds: {temp:{WeaponName:""}} run tellraw @a[tag=!tmw_237_nokilllog] ["",{"selector":"@s"},{"text":"は","color":"white"},{"selector":"@a[tag=tds_tempa]"},{"text":"に血を抜き取られた","color":"white"}]
execute unless entity @a[tag=tds_tempa] run tellraw @a[tag=!tmw_237_nokilllog] ["",{"selector":"@s"},{"text":"は貧血で倒れた","color":"white"}]

#死
function tds:death