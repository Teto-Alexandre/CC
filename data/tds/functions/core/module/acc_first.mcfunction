tag @s add module32
tellraw @a[tag=!tmw_237_nomisclog] [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が","color": "gray"},{"text":"[","color": "white"},{"text":"加速度ペレット","color": "light_purple","bold": true},{"text":"]","color": "white"},{"text":"を発動しました","color": "gray"}]
playsound entity.elder_guardian.curse player @a ~ ~ ~ 1 0.5 0
playsound entity.player.levelup player @a ~ ~ ~ 1 0.5 0
particle electric_spark ~ ~0.9 ~ 0.5 0.5 0.5 1 50 force