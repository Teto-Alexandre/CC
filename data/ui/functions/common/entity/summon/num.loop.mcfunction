# 召喚
    summon marker ~ ~ ~ {Tags:["entity","entity.core","entity.core.unpower"]}
    scoreboard players remove $num ui_temp 1

#
    execute if score $num ui_temp matches 1.. run function ui:common/entity/summon/num.loop
