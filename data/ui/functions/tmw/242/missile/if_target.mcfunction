## ターゲット方向へ加速
    execute at @s facing entity @e[tag=tmw_242_mis3] feet run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["tmw_242_mis2"],Age:1}
    execute as @e[tag=tmw_242_mis2,sort=nearest,limit=1] store result score $x3 ui_temp run data get entity @s Pos.[0] 1000
    execute as @e[tag=tmw_242_mis2,sort=nearest,limit=1] store result score $y3 ui_temp run data get entity @s Pos.[1] 1000
    execute as @e[tag=tmw_242_mis2,sort=nearest,limit=1] store result score $z3 ui_temp run data get entity @s Pos.[2] 1000
    execute store result score $x1 ui_temp run data get storage ui:weapon temp.Pos.[0] 1000
    execute store result score $y1 ui_temp run data get storage ui:weapon temp.Pos.[1] 1000
    execute store result score $z1 ui_temp run data get storage ui:weapon temp.Pos.[2] 1000
    scoreboard players operation $x3 ui_temp -= $x1 ui_temp
    scoreboard players operation $y3 ui_temp -= $y1 ui_temp
    scoreboard players operation $z3 ui_temp -= $z1 ui_temp
    scoreboard players operation $x3 ui_temp *= @s ui_bm_temp
    scoreboard players operation $x3 ui_temp /= #100 ui_num
    scoreboard players operation $y3 ui_temp *= @s ui_bm_temp
    scoreboard players operation $y3 ui_temp /= #100 ui_num
    scoreboard players operation $z3 ui_temp *= @s ui_bm_temp
    scoreboard players operation $z3 ui_temp /= #100 ui_num
    scoreboard players operation $x2 ui_temp += $x3 ui_temp
    scoreboard players operation $y2 ui_temp += $y3 ui_temp
    scoreboard players operation $z2 ui_temp += $z3 ui_temp