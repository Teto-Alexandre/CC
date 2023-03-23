# サブウェポンだったら進捗解除
scoreboard players operation $activator_temp ui_temp = $activator ui_temp
scoreboard players operation $activator_temp ui_temp %= #100 ui_num
execute if score $activator_temp ui_temp matches ..49 run advancement grant @s only ui:hidden/misc/fatal_weapon
scoreboard players reset $activator_temp ui_temp
