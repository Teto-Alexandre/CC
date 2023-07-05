# サヴァイブで耐えた時の効果
    playsound item.totem.use player @a ~ ~ ~ 1 1 0
    particle totem_of_undying ~ ~1 ~ 0.4 0.6 0.4 0.3 15 force
    # 一秒間80%カット
    data modify storage ui:temp Effect set value [{Id:"resistance",Duration:20,Amplifier:3b,ShowParticles:0b}]
    function ui:tmw/237/misc/giveeffect/
    # サヴァイブのタグが消える
    scoreboard players reset @s ui_tmw237_survive
    scoreboard players set $survive ui_temp 1