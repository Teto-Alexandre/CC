#

# 全員リスポーンして無敵
execute as @a[tag=tmw_237_respawning] run function ui:misc/dead/tmw237/func_respawn
effect give @a resistance 1 127 true

#
schedule function ui:game/end/1.spectate 2t append
schedule function ui:game/end/2.explode_all 40t append
schedule function ui:game/end/3.kill_all 42t append
