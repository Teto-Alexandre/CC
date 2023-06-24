scoreboard players set $mod ui_calc1 10000
function ui:common/rand
execute if score $Damage tds_dmg matches ..9999 if score $rand ui_calc1 < $Damage tds_dmg run function tds:core/module/explode
execute if score $Damage tds_dmg matches 10000.. run function tds:core/module/explode
#tellraw @a [{"score":{"name": "$rand","objective": "ui_calc1"}},{"text":"<"},{"score":{"name": "$Damage","objective": "tds_dmg"}}]