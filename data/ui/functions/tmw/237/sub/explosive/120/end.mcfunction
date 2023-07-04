# クイックヒール

# ダメージを与える
    data modify storage ui:temp Effect set value [{Id:"instant_health",Duration:20,Amplifier:2b,ShowParticles:0b}]
    execute as @a[distance=..4,tag=ui_temp_team] run function ui:tmw/237/misc/giveeffect/

# パーティクルで描画、演出
    particle firework ~ ~ ~ 0.5 0.5 0.5 0.1 20 force
    particle heart ~ ~ ~ 1.5 1.5 1.5 0.1 15 force
    playsound entity.generic.explode player @a ~ ~ ~ 1 1.8 0
    playsound entity.player.levelup player @a ~ ~ ~ 1 0.8 0

# パーティクルと本体を消去
    scoreboard players set $Cache ui_temp 1
    kill @s