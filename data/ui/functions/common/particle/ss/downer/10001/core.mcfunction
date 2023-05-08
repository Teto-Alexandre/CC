#
execute if score $is ui_temp matches 1..3 run function ui:common/particle/ss/downer/10001/slash
execute if score $is ui_temp matches 6..8 run function ui:common/particle/ss/downer/10001/slash_out
execute if score $is ui_temp matches 6..8 positioned ^ ^1 ^ run function ui:common/particle/ss/downer/10001/slash
execute if score $is ui_temp matches 6..8 positioned ^ ^-1 ^ run function ui:common/particle/ss/downer/10001/slash
execute if score $is ui_temp matches 28 run function ui:common/particle/ss/downer/10001/slash_main
execute if score $is ui_temp matches 29 run function ui:common/particle/ss/downer/10001/slash_main_atari

#
execute if score $is ui_temp matches 30.. run kill @s