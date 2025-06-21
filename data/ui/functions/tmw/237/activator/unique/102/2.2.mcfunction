# "ui_refd","tmw_237_noref":　リフレクターで反射できず、キルログが反射後バージョンにならない
# "subdamage":　サブダメージギアのバフを受け取る
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower","ui_refd","tmw_237_noref","subdamage"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
data modify storage ui_temp: Unpower set value {Damage:0,Range:0,RangeType:1,Speed:0,FlyParticle:3,EndParticle:2,Name:'{"text":"カウンター","color":"gray"}'}
execute store result storage ui_temp: Unpower.Damage int 1 run scoreboard players get @s ui_tmw237_drained_damage

scoreboard players set $speed ui_temp 60
scoreboard players operation $temp ui_temp = @s ui_tmw237_drained_damage
scoreboard players operation $temp ui_temp *= #2 ui_num
scoreboard players operation $speed ui_temp += $temp ui_temp
execute store result storage ui_temp: Unpower.Speed int 1 run scoreboard players get $speed ui_temp
scoreboard players reset $speed ui_temp

scoreboard players set $range ui_temp 10
scoreboard players operation $temp ui_temp = @s ui_tmw237_drained_damage
scoreboard players operation $temp ui_temp /= #2 ui_num
scoreboard players operation $range ui_temp += $temp ui_temp
execute store result storage ui_temp: Unpower.Range int 1 run scoreboard players get $range ui_temp
scoreboard players reset $range ui_temp

scoreboard players set $hitbox ui_temp 100
scoreboard players operation $temp ui_temp = @s ui_tmw237_drained_damage
scoreboard players operation $temp ui_temp *= #2 ui_num
scoreboard players operation $hitbox ui_temp += $temp ui_temp
scoreboard players operation $hitbox ui_temp < #300 ui_num
execute store result storage ui_temp: Unpower.BulletData.hitbox_x float 0.01 run scoreboard players get $hitbox ui_temp
execute store result storage ui_temp: Unpower.BulletData.hitbox_y float 0.01 run scoreboard players get $hitbox ui_temp
scoreboard players reset $hitbox ui_temp

function ui:tmw/237/misc/unpower
playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.4 1.4 0