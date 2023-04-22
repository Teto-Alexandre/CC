tag @a[scores={ui_team=1},tag=!spectate,sort=random,limit=1] add king
tag @a[scores={ui_team=2},tag=!spectate,sort=random,limit=1] add king
tag @a[scores={ui_team=3},tag=!spectate,sort=random,limit=1] add king
tag @a[scores={ui_team=4},tag=!spectate,sort=random,limit=1] add king

execute as @a[tag=king] if score @s ui_team matches 1 run tellraw @a [{"text":"青チームのキング: "},{"selector":"@s"}]
execute as @a[tag=king] if score @s ui_team matches 2 run tellraw @a [{"text":"赤チームのキング: "},{"selector":"@s"}]
execute as @a[tag=king] if score @s ui_team matches 3 run tellraw @a [{"text":"黄チームのキング: "},{"selector":"@s"}]
execute as @a[tag=king] if score @s ui_team matches 4 run tellraw @a [{"text":"緑チームのキング: "},{"selector":"@s"}]