# クイックアーマー

# ダメージを与える
    data modify storage ui:temp Effect set value [{id:"resistance",duration:300,amplifier:0b}]
    execute as @a[distance=..5,tag=ui_temp_team] run function ui:tmw/237/misc/giveeffect/

# パーティクルで描画、演出
    particle firework ~ ~ ~ 0.5 0.5 0.5 0.1 20 force
    particle large_smoke ~ ~ ~ 2 2 2 0.1 30 force
    playsound entity.generic.explode player @a ~ ~ ~ 1 1.8 0
    playsound block.anvil.use player @a ~ ~ ~ 1 1.6 0

# パーティクルと本体を消去
    scoreboard players set $Cache ui_temp 1
    kill @s