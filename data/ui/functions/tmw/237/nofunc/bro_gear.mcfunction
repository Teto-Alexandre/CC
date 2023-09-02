function oh_my_dat:please
data modify storage ui:gear temp.Reader set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Gears

# タイトルに表示
tellraw @a[tag=!tmw_237_nomisclog] ["",{"text":"Gears: "},{"storage":"ui:gear","nbt":"temp.Reader[0].item.display.Bro","interpret":true},{"text":", "},{"storage":"ui:gear","nbt":"temp.Reader[1].item.display.Bro","interpret":true},{"text":", "},{"storage":"ui:gear","nbt":"temp.Reader[2].item.display.Bro","interpret":true},{"text":", "},{"storage":"ui:gear","nbt":"temp.Reader[3].item.display.Bro","interpret":true},{"text":", "},{"storage":"ui:gear","nbt":"temp.Reader[4].item.display.Bro","interpret":true},{"text":", "},{"storage":"ui:gear","nbt":"temp.Reader[5].item.display.Bro","interpret":true},{"text":", "},{"storage":"ui:gear","nbt":"temp.Reader[6].item.display.Bro","interpret":true}]

data remove storage ui:gear temp.Reader