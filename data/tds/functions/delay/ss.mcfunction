# 死んだ人に実行
    execute as @a if score @s ui_dc_delay matches 1.. at @s run function tds:delay/main

# SSロジック維持
    execute if entity @a[scores={ui_dc_delay=1..}] run schedule function tds:delay/ss 1t append