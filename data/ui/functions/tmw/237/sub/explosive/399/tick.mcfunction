# ナイスダマ

# 最初idがないなら生成
    execute unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id

# idを共有
    scoreboard players operation $obj_id ui_temp = @s ui_obj_id

# 同idにタグ付与
    execute as @e if score @s ui_obj_id = $obj_id ui_temp run tag @s add ui_temp_obj

# 常時実行
    data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

# 処理終了
    scoreboard players add @s ui_is 1
    function ui:tmw/237/sub/explosive/399/explode
    execute if score @s ui_is >= @s ui_is2 run tag @s add ui_237_sub_explode

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run scoreboard players set $Cache ui_temp 1
    execute if entity @s[tag=ui_237_sub_explode] run kill @e[tag=ui_temp_obj]
    tag @e[tag=ui_temp_obj] remove ui_temp_obj