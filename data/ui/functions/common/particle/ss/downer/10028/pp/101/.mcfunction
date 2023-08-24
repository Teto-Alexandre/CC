scoreboard players set $mod ui_calc1 15
function ui:common/rand

execute if score $rand ui_calc1 matches 0..4 run function ui:common/particle/ss/downer/10028/pp/101/1-5
execute if score $rand ui_calc1 matches 5..9 run function ui:common/particle/ss/downer/10028/pp/101/6-10
execute if score $rand ui_calc1 matches 10..14 run function ui:common/particle/ss/downer/10028/pp/101/11-15