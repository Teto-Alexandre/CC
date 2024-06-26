#
    scoreboard players set $Cache ui_temp 0

# データ共有
    scoreboard players operation $id ui_temp = @s ui_id
    execute store result score $type ui_temp run data get entity @s Item.tag.tmw.type
    scoreboard players operation $temp ui_temp = $type ui_temp
    scoreboard players operation $temp ui_temp %= #100 ui_num
    execute if score $temp ui_temp matches ..50 run scoreboard players set $subdamage ui_temp 1

# それぞれの起爆
    execute if score $type ui_temp matches 101 run function ui:tmw/237/sub/explosive/101/tick
    execute if score $type ui_temp matches 102 run function ui:tmw/237/sub/explosive/102/tick
    execute if score $type ui_temp matches 103 run function ui:tmw/237/sub/explosive/103/tick
    execute if score $type ui_temp matches 104 run function ui:tmw/237/sub/explosive/104/tick
    execute if score $type ui_temp matches 105 run function ui:tmw/237/sub/explosive/105/tick
    execute if score $type ui_temp matches 106 run function ui:tmw/237/sub/explosive/106/tick
    execute if score $type ui_temp matches 107 run function ui:tmw/237/sub/explosive/107/tick
    execute if score $type ui_temp matches 108 run function ui:tmw/237/sub/explosive/108/tick
    execute if score $type ui_temp matches 109 run function ui:tmw/237/sub/explosive/109/tick
    execute if score $type ui_temp matches 110 run function ui:tmw/237/sub/explosive/110/tick
    execute if score $type ui_temp matches 111 run function ui:tmw/237/sub/explosive/111/tick
    execute if score $type ui_temp matches 112 run function ui:tmw/237/sub/explosive/112/tick
    execute if score $type ui_temp matches 113 run function ui:tmw/237/sub/explosive/113/tick
    execute if score $type ui_temp matches 114 run function ui:tmw/237/sub/explosive/114/tick
    execute if score $type ui_temp matches 115 run function ui:tmw/237/sub/explosive/115/tick
    execute if score $type ui_temp matches 116 run function ui:tmw/237/sub/explosive/116/tick
    execute if score $type ui_temp matches 117 run function ui:tmw/237/sub/explosive/117/tick
    execute if score $type ui_temp matches 118 run function ui:tmw/237/sub/explosive/118/tick
    execute if score $type ui_temp matches 119 run function ui:tmw/237/sub/explosive/119/tick
    execute if score $type ui_temp matches 120 run function ui:tmw/237/sub/explosive/120/tick
    execute if score $type ui_temp matches 121 run function ui:tmw/237/sub/explosive/121/tick
    execute if score $type ui_temp matches 122 run function ui:tmw/237/sub/explosive/122/tick
    execute if score $type ui_temp matches 123 run function ui:tmw/237/sub/explosive/123/tick
    execute if score $type ui_temp matches 124 run function ui:tmw/237/sub/explosive/124/tick

    execute if score $type ui_temp matches 151 run function ui:tmw/237/sub/explosive/151/tick
    execute if score $type ui_temp matches 152 run function ui:tmw/237/sub/explosive/152/tick
    execute if score $type ui_temp matches 153 run function ui:tmw/237/sub/explosive/153/tick
    execute if score $type ui_temp matches 154 run function ui:tmw/237/sub/explosive/154/tick
    execute if score $type ui_temp matches 155 run function ui:tmw/237/sub/explosive/155/tick
    execute if score $type ui_temp matches 156 run function ui:tmw/237/sub/explosive/156/tick

    execute if score $type ui_temp matches 171 run function ui:tmw/237/sub/explosive/171/tick

    execute if score $type ui_temp matches 301 run function ui:tmw/237/sub/explosive/301/tick
    execute if score $type ui_temp matches 351 run function ui:tmw/237/sub/explosive/351/tick
    execute if score $type ui_temp matches 352 run function ui:tmw/237/sub/explosive/352/tick
    execute if score $type ui_temp matches 353 run function ui:tmw/237/sub/explosive/353/tick
    execute if score $type ui_temp matches 399 run function ui:tmw/237/sub/explosive/399/tick

    execute if score $type ui_temp matches 1011 run function ui:tmw/237/sub/explosive/1011/tick

# 投擲物パーティクル
    execute unless score $type ui_temp matches 301 unless score $type ui_temp matches 352 if score $team ui_temp matches 1 run particle dust 0.5 1 1 1 ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute unless score $type ui_temp matches 301 unless score $type ui_temp matches 352 if score $team ui_temp matches 1 run particle block light_blue_concrete ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute unless score $type ui_temp matches 352 if score $team ui_temp matches 1 store result score $paint ui_temp run fill ~ ~ ~ ~ ~-3 ~ light_blue_wool replace #ui:wools
    execute unless score $type ui_temp matches 301 unless score $type ui_temp matches 352 if score $team ui_temp matches 2 run particle dust 1 0.5 1 1 ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute unless score $type ui_temp matches 301 unless score $type ui_temp matches 352 if score $team ui_temp matches 2 run particle block pink_concrete ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute unless score $type ui_temp matches 352 if score $team ui_temp matches 2 store result score $paint ui_temp run fill ~ ~ ~ ~ ~-3 ~ pink_wool replace #ui:wools
    execute unless score $type ui_temp matches 301 unless score $type ui_temp matches 352 if score $team ui_temp matches 3 run particle dust 1 1 0.5 1 ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute unless score $type ui_temp matches 301 unless score $type ui_temp matches 352 if score $team ui_temp matches 3 run particle block yellow_concrete ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute unless score $type ui_temp matches 352 if score $team ui_temp matches 3 store result score $paint ui_temp run fill ~ ~ ~ ~ ~-3 ~ yellow_wool replace #ui:wools
    execute unless score $type ui_temp matches 301 unless score $type ui_temp matches 352 if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 1 ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute unless score $type ui_temp matches 301 unless score $type ui_temp matches 352 if score $team ui_temp matches 4 run particle block lime_concrete ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute unless score $type ui_temp matches 352 if score $team ui_temp matches 4 store result score $paint ui_temp run fill ~ ~ ~ ~ ~-3 ~ lime_wool replace #ui:wools
    execute if entity @s[tag=!tmw237_sub_nopoint] as @a if score @s ui_id = $id ui_temp run function ui:tmw/237/misc/player_paint
    execute if entity @s[tag=tmw237_sub_nopoint] as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp
    #scoreboard players operation $temp ui_temp = @s ui_uses
    #execute store result score $temp ui_temp run data get entity @s OnGround
    #execute if score @s ui_uses matches ..1 run tellraw @a [{"text":"OG: "},{"entity":"@s","nbt":"OnGround"},{"text":", Pos: "},{"entity":"@s","nbt":"Pos"},{"text":", Mot: "},{"entity":"@s","nbt":"Motion"}]
    scoreboard players add @s[nbt={OnGround:1b}] ui_uses 1

# 水対策
    execute if block ~ ~-0.5 ~ #ui:liq run tag @s add ui_237_sub_explode

#
    execute if score $Cache ui_temp matches 1 run scoreboard players reset @s

#
    scoreboard players reset $subdamage ui_temp