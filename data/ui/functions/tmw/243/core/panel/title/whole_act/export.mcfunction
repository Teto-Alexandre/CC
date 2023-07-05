# メニュー表示

# OMD から取得
function oh_my_dat:please
data modify storage ui:text_board temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].text_board

# アイテムを生成して渡す
item replace block 0 0 0 container.0 with paper{display:{Name:'{"text":"無名のUI配列"}'}}
data modify block 0 0 0 Items[0].tag.TextBoard set from storage ui:text_board temp
item replace entity @s enderchest.0 from block 0 0 0 container.0
playsound block.piston.extend player @a ~ ~ ~ 1 1 0
playsound entity.villager.trade player @a ~ ~ ~ 1 1 0

# OMD に送信
#data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].text_board set from storage ui:text_board temp

data remove storage ui:text_board temp
