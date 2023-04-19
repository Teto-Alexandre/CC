# スライド

# 移動速度を消す
    execute if score $time ui_temp matches 3.. run effect give @s speed 1 9
    execute if score $time ui_temp matches 1..2 run effect clear @s speed
    execute if score $time ui_temp matches 1..2 run tp @s @s

# 潜れない
    tag @s add cant_hide
