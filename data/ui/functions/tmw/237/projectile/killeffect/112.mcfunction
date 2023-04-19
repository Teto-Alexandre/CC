#見た目
    fill ~-1 ~-1 ~-1 ~1 ~1 ~1 white_wool replace #ui:wools_include_black

#燃やす
    execute positioned ~ ~-1 ~ run scoreboard players add @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,distance=..1.5] tds_fire 40