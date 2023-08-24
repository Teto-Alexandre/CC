# メニュー表示
    scoreboard players set $success ui_temp 0
    execute if entity @s[nbt={EnderItems:[{Slot:0b,tag:{tmw:{id:237}}}]}] run function ui:tmw/243/core/set
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_title] run function ui:tmw/243/core/panel/title/
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_preset] run function ui:tmw/243/core/panel/preset
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_gear] run function ui:tmw/243/core/panel/gear
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_module] unless score @s module_page matches 2.. run function ui:tmw/243/core/panel/module
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_module] if score @s module_page matches 2 run function ui:tmw/243/core/panel/module2
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_game,tag=setting_party] run function ui:tmw/243/core/panel/party
    execute if score $success ui_temp matches 0 if entity @s[tag=setting_game,tag=!setting_party] run function ui:tmw/243/core/panel/setting
    execute if score $success ui_temp matches 0 if entity @s[tag=!setting_module,tag=!setting_game,tag=!setting_gear,tag=!setting_preset,tag=!setting_title] run function ui:tmw/243/core/panel/all
    clear @s #ui:ui{ui:{ismenu:1}} 1