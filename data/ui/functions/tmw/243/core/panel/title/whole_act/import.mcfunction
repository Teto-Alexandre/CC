# メニュー表示

# OMD から取得
function oh_my_dat:please
data modify storage ui:text_board temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].text_board

# アイテムを生成して渡す
playsound block.piston.contract player @a ~ ~ ~ 1 1 0
playsound entity.villager.trade player @a ~ ~ ~ 1 1 0
data modify storage ui:text_board temp set from entity @s EnderItems[0].tag.TextBoard
item replace entity @s enderchest.0 with air

# OMD に送信
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].text_board set from storage ui:text_board temp

data remove storage ui:text_board temp
