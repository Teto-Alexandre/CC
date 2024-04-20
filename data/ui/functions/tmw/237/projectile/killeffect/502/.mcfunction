#見た目
$execute if score $team ui_temp matches 1 store result score $paint ui_temp run fill ~$(x_start) ~$(y_start) ~$(z_start) ~$(x_end) ~$(y_end) ~$(z_end) light_blue_wool replace #ui:wools
$execute if score $team ui_temp matches 2 store result score $paint ui_temp run fill ~$(x_start) ~$(y_start) ~$(z_start) ~$(x_end) ~$(y_end) ~$(z_end) pink_wool replace #ui:wools
$execute if score $team ui_temp matches 3 store result score $paint ui_temp run fill ~$(x_start) ~$(y_start) ~$(z_start) ~$(x_end) ~$(y_end) ~$(z_end) yellow_wool replace #ui:wools
$execute if score $team ui_temp matches 4 store result score $paint ui_temp run fill ~$(x_start) ~$(y_start) ~$(z_start) ~$(x_end) ~$(y_end) ~$(z_end) lime_wool replace #ui:wools