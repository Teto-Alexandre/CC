#

# 全員リスポーンして無敵
scoreboard players set @a ui_rst 1
effect give @a resistance 1 127 true

#
schedule function ui:game/end/1.spectate 2t append
schedule function ui:game/end/2.explode_all 40t append
schedule function ui:game/end/3.kill_all 42t append
