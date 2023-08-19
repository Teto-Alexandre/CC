data remove storage ui:map temp_maps[0]

scoreboard players remove $rand ui_calc1 1
execute if score $rand ui_calc1 matches 1.. run function ui:game/map/shuffle/2.rand
