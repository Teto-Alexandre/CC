#これはリロード時に実行されるコマンドです
tellraw @a {"text":"server reloaded!","color":"gold"}

scoreboard objectives add ui_world dummy {"text":"UtilityItems_World","color":"dark_blue"}
execute unless score $version ui_world matches 53 run function ui:misc/init
#function ui:misc/init

schedule function ui:tmw/243/ss 3t replace