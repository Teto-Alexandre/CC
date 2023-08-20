# "ui_refd","tmw_237_noref":　リフレクターで反射できず、キルログが反射後バージョンにならない
# "subdamage":　サブダメージギアのバフを受け取る
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower","ui_refd","tmw_237_noref","subdamage"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
data modify storage ui_temp: Unpower set value {Damage:60,Range:100,RangeType:1,Speed:2000,FlyParticle:106,EndParticle:-1,Name:'{"text":"ラインマーカー","color":"gray"}'}
function ui:tmw/237/misc/unpower
playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.2 1.6 0