# スニークしてる時、かつ移動形態になれない状態

# スライムブロックの上にいるとジャンプ力アップ 
    execute if block ~ ~-0.3 ~ slime_block run effect give @s jump_boost 1 8 true

# 下記に該当しないなら射撃形態になる
    function ui:tmw/237/constant/shoot
