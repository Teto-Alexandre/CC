# スコア依存で足元に塗り判定発生
    execute if score $temp ui_temp matches 1 store result score $paint ui_temp run fill ~-0.2 ~-0.2 ~-0.2 ~0.2 ~0.2 ~0.2 lime_wool replace #ui:wools
    execute if score $temp ui_temp matches 2 store result score $paint ui_temp run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 lime_wool replace #ui:wools
    execute if score $temp ui_temp matches 3 store result score $paint ui_temp run fill ~-1.0 ~-1.0 ~-1.0 ~1.0 ~1.0 ~1.0 lime_wool replace #ui:wools
    execute if score $paint ui_temp matches 1.. run function ui:tmw/237/misc/player_paint
