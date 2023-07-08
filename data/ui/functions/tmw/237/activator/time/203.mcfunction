# スライド

# 移動速度を消す
    execute if score $time ui_temp matches 5.. run data modify storage ui:temp Effect set value [{Id:"speed",Duration:20,Amplifier:9b}]
    execute if score $time ui_temp matches 5.. run function ui:tmw/237/misc/giveeffect/
    execute if score $time ui_temp matches 1..4 run effect clear @s speed
    execute if score $time ui_temp matches 1..4 run tp @s @s

# 潜れない
    tag @s add cant_hide
