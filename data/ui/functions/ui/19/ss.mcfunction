# 見た目
    execute as @e[tag=ui_19_1] at @s run function ui:ui/19/1

# SSロジック維持
    execute if entity @e[tag=ui_19_1] run schedule function ui:ui/19/ss 1t append