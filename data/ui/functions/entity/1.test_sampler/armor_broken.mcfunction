#
#tellraw @a [{"text":"TF-Vanguard","color": "yellow"},{"text":"の装甲を破壊しました","color": "white"},{"text":" ダメージ倍率: ","color": "gray"},{"text":"x1.2","color": "red"}]
tellraw @a [{"text":"TF-Vanguard","color": "yellow"},{"text":"の装甲を破壊しました","color": "white"}]

particle explosion ~ ~1 ~ 0 0 0 0 1 force
particle large_smoke ~ ~1 ~ 0 0 0 0.1 30 force
playsound entity.generic.explode player @a ~ ~ ~ 1 1 0

tag @s add entity.modifier
tag @s add entity.modifier.12
