# 初期衝撃波
    summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
    # 弾にデータを込める
        data modify storage ui_temp: Unpower set value {Damage:10,Range:20,RangeType:2,Speed:12,FlyParticle:5,EndParticle:1,Name:''}
        data modify storage ui_temp: Unpower.Name set from entity @s ArmorItems.[0].tag.display.Name
        execute rotated ~ 0 run summon minecraft:marker ^ ^ ^-1 {Tags:["ui","ui_marker"]}
        scoreboard players set $spread ui_temp 500
        function ui:tmw/237/attack/shot/spreadmanager/square_shuffle
        execute if entity @s[tag=tmw_237_proj_del] facing entity @e[tag=ui_marker,limit=1] feet run function ui:tmw/237/misc/unpower
        kill @e[tag=ui_marker]
