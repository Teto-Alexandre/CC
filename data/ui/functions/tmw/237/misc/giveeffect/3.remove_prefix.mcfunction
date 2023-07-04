## プレフィックスを外す

data modify storage ui:temp _.Id set string storage ui:temp Effect[0].Id 0 10
data modify storage ui:temp _.string set value "minecraft:"
execute store success score $success ui_temp run data modify storage ui:temp _.string set from storage ui:temp _.Id
execute if score $success ui_temp matches 0 run data modify storage ui:temp _.Id set string storage ui:temp Effect[0].Id 10
execute unless score $success ui_temp matches 0 run data modify storage ui:temp _.Id set from storage ui:temp Effect[0].Id