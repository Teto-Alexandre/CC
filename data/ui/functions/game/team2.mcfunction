# 即席チーム
    scoreboard players set @a[tag=!spectate] ui_team 0
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 3
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 1
    scoreboard players set @r[tag=!spectate,scores={ui_team=0}] ui_team 3

# 放送
    playsound block.note_block.hat player @a[tag=!spectate] ~ ~ ~ 1 1 1
    tellraw @a[tag=spectate] ["",{"text":"system>> ","color":"white"},{"text":"あなたは","color":"gray"},{"text":"観戦モードです","color":"gray"}]
    tellraw @a[tag=!spectate,scores={ui_team=1}] ["",{"text":"system>> ","color":"white"},{"text":"あなたは","color":"gray"},{"text":" BLUE ","color":"aqua"},{"text":"チームです","color":"gray"}]
    tellraw @a[tag=!spectate,scores={ui_team=3}] ["",{"text":"system>> ","color":"white"},{"text":"あなたは","color":"gray"},{"text":" YELLOW ","color":"yellow"},{"text":"チームです","color":"gray"}]