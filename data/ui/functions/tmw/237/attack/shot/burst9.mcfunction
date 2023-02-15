#
    ## $range
    ## $damage
    ## $multishot
    ## $speed
    ## $ct

# チャージしているかに応じて変化

    execute if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players set $particle.fly ui_temp 12
    execute if score $burst_alt ui_temp >= $burst.max ui_temp store result score $speed.plus ui_temp run data get storage ui:gun temp.Charge.SpeedPlus
    execute if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players operation $speed ui_temp += $speed.plus ui_temp
    execute if score $burst_alt ui_temp >= $burst.max ui_temp store result score $damage ui_temp run data get storage ui:gun temp.Charge.Damage
    execute if score $burst_alt ui_temp >= $burst.max ui_temp store result score $damage.free ui_temp run data get storage ui:gun temp.Charge.DamageFree
    execute if score $burst_alt ui_temp >= $burst.max ui_temp store result score $range ui_temp run data get storage ui:gun temp.Charge.Range
    execute if score $burst_alt ui_temp >= $burst.max ui_temp store result score $ink.main ui_temp run data get storage ui:gun temp.Charge.MainInkUse

    execute if score $burst_alt.id ui_temp matches 303 if score $burst_alt ui_temp < $burst.max ui_temp run scoreboard players set $burst ui_temp 2