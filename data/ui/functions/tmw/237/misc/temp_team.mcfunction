#同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
tag @e[tag=ui_temp_team] remove ui_temp_team
execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team