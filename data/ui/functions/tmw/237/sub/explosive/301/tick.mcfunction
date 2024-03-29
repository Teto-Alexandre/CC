# トラップ

# 常時実行
    execute if score @s ui_uses matches 5..14 run function ui:tmw/237/sub/explosive/301/setpos
    execute if score @s ui_is matches 1 run playsound block.tripwire.attach player @a ~ ~-50 ~ 2 0.8 0
    execute if score @s ui_is matches 1200.. run tag @s add ui_237_sub_stop
    execute positioned ~ ~-50 ~ if entity @e[distance=..4,tag=!ui_temp_team,predicate=ui:load_unhurtable] run tag @s add ui_237_sub_stop
    execute if score @s ui_is2 matches 1 run playsound block.tripwire.click_on player @a ~ ~-50 ~ 1 0.8 0
    execute if score @s ui_is2 matches 1 run playsound block.wooden_trapdoor.close player @a ~ ~-50 ~ 1 1.2 0
    execute if score @s ui_is2 matches 20.. run tag @s add ui_237_sub_explode
    execute if score @s ui_is matches 20.. if score $team ui_temp matches 1 unless block ~ ~-51 ~ light_blue_wool unless block ~ ~-51 ~ light_blue_concrete unless block ~ ~-51 ~ light_blue_stained_glass run tag @s add ui_237_sub_explode
    execute if score @s ui_is matches 20.. if score $team ui_temp matches 2 unless block ~ ~-51 ~ pink_wool unless block ~ ~-51 ~ pink_concrete unless block ~ ~-51 ~ pink_stained_glass run tag @s add ui_237_sub_explode
    execute if score @s ui_is matches 20.. if score $team ui_temp matches 3 unless block ~ ~-51 ~ yellow_wool unless block ~ ~-51 ~ yellow_concrete unless block ~ ~-51 ~ yellow_stained_glass run tag @s add ui_237_sub_explode
    execute if score @s ui_is matches 20.. if score $team ui_temp matches 4 unless block ~ ~-51 ~ lime_wool unless block ~ ~-51 ~ lime_concrete unless block ~ ~-51 ~ lime_stained_glass run tag @s add ui_237_sub_explode
    #設置数上限デストロイ
    scoreboard players set $count ui_temp 0
    execute as @e[tag=tmw_237_sub,tag=!ui_no_count_as_mult] if score @s ui_id = $id ui_temp run scoreboard players add $count ui_temp 1
    execute if score $count ui_temp matches 4.. run function ui:tmw/237/sub/explosive/mult_lim.ex

# 投擲物パーティクル
    execute if score @s ui_uses matches 15.. at @s run teleport @s ~ ~ ~ ~5 0
    execute if score $team ui_temp matches 1 run particle dust 0.5 1 1 1.5 ^ ^-49.7 ^4 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 1 run particle dust 0.5 1 1 1.5 ^ ^-49.7 ^-4 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 1 run particle dust 0.5 1 1 1.5 ^4 ^-49.7 ^ 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 1 run particle dust 0.5 1 1 1.5 ^-4 ^-49.7 ^ 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 1 run particle dust 0.5 1 1 1 ~ ~-49.7 ~ 1.5 0 1.5 0 10 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 2 run particle dust 1 0.5 1 1 ~ ~-49.7 ~ 1.5 0 1.5 0 10 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 2 run particle dust 1 0.5 1 1.5 ^-4 ^-49.7 ^ 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 2 run particle dust 1 0.5 1 1.5 ^4 ^-49.7 ^ 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 2 run particle dust 1 0.5 1 1.5 ^ ^-49.7 ^-4 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 2 run particle dust 1 0.5 1 1.5 ^ ^-49.7 ^4 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 3 run particle dust 1 1 0.5 1.5 ^ ^-49.7 ^4 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 3 run particle dust 1 1 0.5 1.5 ^ ^-49.7 ^-4 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 3 run particle dust 1 1 0.5 1.5 ^4 ^-49.7 ^ 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 3 run particle dust 1 1 0.5 1.5 ^-4 ^-49.7 ^ 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 3 run particle dust 1 1 0.5 1 ~ ~-49.7 ~ 1.5 0 1.5 0 10 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 1 ~ ~-49.7 ~ 1.5 0 1.5 0 10 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 1.5 ^-4 ^-49.7 ^ 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 1.5 ^4 ^-49.7 ^ 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 1.5 ^ ^-49.7 ^-4 0 0 0 0 1 force @a[tag=ui_temp_team]
    execute if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 1.5 ^ ^-49.7 ^4 0 0 0 0 1 force @a[tag=ui_temp_team]

# 処理終了
    scoreboard players add @s ui_is 1
    execute if entity @s[tag=ui_237_sub_stop] run scoreboard players add @s ui_is2 1

# 処理終了（消える）
    execute if entity @s[tag=ui_237_sub_explode] positioned ~ ~-50 ~ run function ui:tmw/237/sub/explosive/301/end