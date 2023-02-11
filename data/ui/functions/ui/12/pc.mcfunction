# メッセージ
tellraw @p [{"color":"gray","text":"damage"},{"color":"green","text":"> "},{"color":"gray","text":"============= Record Ended ============="}]
data merge entity @s {PortalCooldown:0}

# コンボ中断
scoreboard players reset @s ui_is
scoreboard players reset @s ui_is2
playsound entity.skeleton.hurt block @a ~ ~ ~ 1 1.4