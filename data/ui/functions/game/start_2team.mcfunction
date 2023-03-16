# チーム選択
execute as @e[tag=map_core,tag=!4teams,sort=random,limit=1] store result score $map ui_world run scoreboard players get @s map_id

#
playsound entity.ender_dragon.growl master @a ~ ~ ~ 0.5 1 0.5

# 開始通知、無敵、復活、スペ化（二回）、ダメテス殺し
tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"5秒後にテレポートします・・・","color":"gold"}]
schedule function ui:game/start/1.ready 5s

#
tag @a[tag=!spectate] remove game.ready
