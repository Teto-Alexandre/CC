# 見た目
    execute as @e[tag=count1] at @s run function ui:template/wool_count/count1
    execute as @e[tag=count2] at @s run function ui:template/wool_count/count2
    execute as @e[tag=count3,limit=3000] at @s run function ui:template/wool_count/count3

# SSロジック維持
    execute unless entity @e[tag=count] run function ui:template/wool_count/print
    execute if entity @e[tag=count] run schedule function ui:template/wool_count/ss 1t append