scoreboard players operation $template ui_temp = @s shoot_speed
scoreboard players operation $template ui_temp += @s wep_speed
execute if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run scoreboard players set $template ui_temp 180
execute if entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run scoreboard players set $template ui_temp 180
scoreboard players remove $template ui_temp 200

attribute @s generic.movement_speed modifier remove 0-0-1-0-1
attribute @s generic.movement_speed modifier remove 0-0-1-0-2
attribute @s generic.movement_speed modifier remove 0-0-1-0-3
attribute @s generic.movement_speed modifier remove 0-0-1-0-4
attribute @s generic.movement_speed modifier remove 0-0-1-0-5
attribute @s generic.movement_speed modifier remove 0-0-1-0-6
attribute @s generic.movement_speed modifier remove 0-0-1-0-7
attribute @s generic.movement_speed modifier remove 0-0-1-0-8
attribute @s generic.movement_speed modifier remove 0-0-1-0-9
attribute @s generic.movement_speed modifier remove 0-0-1-0-A
attribute @s generic.movement_speed modifier remove 0-0-1-0-B
attribute @s generic.movement_speed modifier remove 0-0-1-0-C

attribute @s generic.movement_speed modifier remove 0-0-1-1-6
attribute @s generic.movement_speed modifier remove 0-0-1-1-7
attribute @s generic.movement_speed modifier remove 0-0-1-1-8
attribute @s generic.movement_speed modifier remove 0-0-1-1-9
attribute @s generic.movement_speed modifier remove 0-0-1-1-A
attribute @s generic.movement_speed modifier remove 0-0-1-1-B
attribute @s generic.movement_speed modifier remove 0-0-1-1-C

execute if score $template ui_temp matches 2048.. run attribute @s generic.movement_speed modifier add 0-0-1-0-1 "ui_curse3" 2.048 add
execute if score $template ui_temp matches 2048.. run scoreboard players remove $template ui_temp 2048
execute if score $template ui_temp matches 1024.. run attribute @s generic.movement_speed modifier add 0-0-1-0-2 "ui_curse3" 1.024 add
execute if score $template ui_temp matches 1024.. run scoreboard players remove $template ui_temp 1024
execute if score $template ui_temp matches 512.. run attribute @s generic.movement_speed modifier add 0-0-1-0-3 "ui_curse3" 0.512 add
execute if score $template ui_temp matches 512.. run scoreboard players remove $template ui_temp 512
execute if score $template ui_temp matches 256.. run attribute @s generic.movement_speed modifier add 0-0-1-0-4 "ui_curse3" 0.256 add
execute if score $template ui_temp matches 256.. run scoreboard players remove $template ui_temp 256
execute if score $template ui_temp matches 128.. run attribute @s generic.movement_speed modifier add 0-0-1-0-5 "ui_curse3" 0.128 add
execute if score $template ui_temp matches 128.. run scoreboard players remove $template ui_temp 128
execute if score $template ui_temp matches 64.. run attribute @s generic.movement_speed modifier add 0-0-1-0-6 "ui_curse3" 0.064 add
execute if score $template ui_temp matches 64.. run scoreboard players remove $template ui_temp 64
execute if score $template ui_temp matches 32.. run attribute @s generic.movement_speed modifier add 0-0-1-0-7 "ui_curse3" 0.032 add
execute if score $template ui_temp matches 32.. run scoreboard players remove $template ui_temp 32
execute if score $template ui_temp matches 16.. run attribute @s generic.movement_speed modifier add 0-0-1-0-8 "ui_curse3" 0.016 add
execute if score $template ui_temp matches 16.. run scoreboard players remove $template ui_temp 16
execute if score $template ui_temp matches 8.. run attribute @s generic.movement_speed modifier add 0-0-1-0-9 "ui_curse3" 0.008 add
execute if score $template ui_temp matches 8.. run scoreboard players remove $template ui_temp 8
execute if score $template ui_temp matches 4.. run attribute @s generic.movement_speed modifier add 0-0-1-0-A "ui_curse3" 0.004 add
execute if score $template ui_temp matches 4.. run scoreboard players remove $template ui_temp 4
execute if score $template ui_temp matches 2.. run attribute @s generic.movement_speed modifier add 0-0-1-0-B "ui_curse3" 0.002 add
execute if score $template ui_temp matches 2.. run scoreboard players remove $template ui_temp 2
execute if score $template ui_temp matches 1.. run attribute @s generic.movement_speed modifier add 0-0-1-0-C "ui_curse3" 0.001 add
execute if score $template ui_temp matches 1.. run scoreboard players remove $template ui_temp 1

execute if score $template ui_temp matches ..-64 run attribute @s generic.movement_speed modifier add 0-0-1-1-6 "ui_curse3" -0.064 add
execute if score $template ui_temp matches ..-64 run scoreboard players add $template ui_temp 64
execute if score $template ui_temp matches ..-32 run attribute @s generic.movement_speed modifier add 0-0-1-1-7 "ui_curse3" -0.032 add
execute if score $template ui_temp matches ..-32 run scoreboard players add $template ui_temp 32
execute if score $template ui_temp matches ..-16 run attribute @s generic.movement_speed modifier add 0-0-1-1-8 "ui_curse3" -0.016 add
execute if score $template ui_temp matches ..-16 run scoreboard players add $template ui_temp 16
execute if score $template ui_temp matches ..-8 run attribute @s generic.movement_speed modifier add 0-0-1-1-9 "ui_curse3" -0.008 add
execute if score $template ui_temp matches ..-8 run scoreboard players add $template ui_temp 8
execute if score $template ui_temp matches ..-4 run attribute @s generic.movement_speed modifier add 0-0-1-1-A "ui_curse3" -0.004 add
execute if score $template ui_temp matches ..-4 run scoreboard players add $template ui_temp 4
execute if score $template ui_temp matches ..-2 run attribute @s generic.movement_speed modifier add 0-0-1-1-B "ui_curse3" -0.002 add
execute if score $template ui_temp matches ..-2 run scoreboard players add $template ui_temp 2
execute if score $template ui_temp matches ..-1 run attribute @s generic.movement_speed modifier add 0-0-1-1-C "ui_curse3" -0.001 add
execute if score $template ui_temp matches ..-1 run scoreboard players add $template ui_temp 1

#say shoot

# 諸々を消す
    effect clear @s speed
    effect clear @s[nbt={active_effects:[{id:"minecraft:jump_boost",amplifier:3b}]}] jump_boost
    effect clear @s[nbt={active_effects:[{id:"minecraft:jump_boost",amplifier:8b}]}] jump_boost
    effect clear @s[nbt={active_effects:[{id:"minecraft:levitation",amplifier:7b}]}] levitation
    effect clear @s[nbt={active_effects:[{id:"minecraft:levitation",amplifier:3b}]}] levitation
    effect clear @s[nbt={active_effects:[{id:"minecraft:levitation",amplifier:0b}]}] levitation
    effect clear @s[nbt={active_effects:[{id:"minecraft:levitation",amplifier:-1b}]}] levitation
    effect clear @s[nbt={active_effects:[{id:"minecraft:levitation",amplifier:-5b}]}] levitation
    effect clear @s[nbt={active_effects:[{id:"minecraft:levitation",amplifier:-9b}]}] levitation
    effect clear @s[nbt={active_effects:[{id:"minecraft:levitation",amplifier:-128b,duration:15}]}] levitation
    effect clear @s invisibility
    effect clear @s regeneration

tag @s remove speedtype_move
tag @s remove speedtype_weapon
tag @s add speedtype_shoot