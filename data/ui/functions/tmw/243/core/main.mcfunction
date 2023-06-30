# メニュー表示
    scoreboard players set $success ui_temp 0
    execute if entity @s[nbt={EnderItems:[{Slot:0b,tag:{tmw:{id:237}}}]}] run function ui:tmw/243/core/set
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_title] unless score @s title_whole matches 1.. unless score @s title_node matches 1.. run function ui:tmw/243/core/panel/title/whole
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_title] if score @s title_whole matches 1.. unless score @s title_node matches 1.. run function ui:tmw/243/core/panel/title/title
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_title] if score @s title_whole matches 1.. if score @s title_node matches 1.. run function ui:tmw/243/core/panel/title/node
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_preset] run function ui:tmw/243/core/panel/preset
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_gear] run function ui:tmw/243/core/panel/gear
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_module] unless score @s module_page matches 2.. run function ui:tmw/243/core/panel/module
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_module] if score @s module_page matches 2 run function ui:tmw/243/core/panel/module2
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_game,tag=setting_party] run function ui:tmw/243/core/panel/party
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_game,tag=!setting_party] run function ui:tmw/243/core/panel/setting
    execute if score $success ui_temp matches 0 if entity @s[tag=!setting_module,tag=!setting_game,tag=!setting_gear,tag=!setting_preset,tag=!setting_title] run function ui:tmw/243/core/panel/all
