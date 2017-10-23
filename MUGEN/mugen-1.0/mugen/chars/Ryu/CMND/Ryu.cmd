[Remap] 
x = x
y = y
z = z
a = a
b = b
c = c
s = s
 
[Defaults] 
command.time = 15
command.buffer.time = 3

;---------------------Hypers-------------------------------

[Command] 
name = "236_xy"
command = ~D, DF, F, x+y
[Command]
name = "236_xz"
command = ~D, DF, F, x+z
[Command]
name = "236_yz"
command = ~D, DF, F, y+z

[Command] 
name = "623_xy"
command = ~F, D, DF, x+y
[Command]
name = "623_xz"
command = ~F, D, DF, x+z
[Command]
name = "623_yz"
command = ~F, D, DF, y+z
 
[Command] 
name = "214_ab"
command = ~D, DB, B, a+b
[Command]
name = "214_ac"
command = ~D, DB, B, a+c
[Command]
name = "214_bc"
command = ~D, DB, B, b+c
  
;---------------------Supers-------------------------------

[Command] 
name = "236_x"
command = ~D, DF, F, x

[Command]
name = "236_y"
command = ~D, DF, F, y

[Command]
name = "236_z"
command = ~D, DF, F, z

[Command] 
name = "236_x"
command = ~D, DF, F, ~x
time = 10
buffer.time = 10

[Command]
name = "236_y"
command = ~D, DF, F, ~y
time = 10
buffer.time = 10

[Command]
name = "236_z"
command = ~D, DF, F, ~z
time = 10
buffer.time = 10
 
[Command] 
name = "623_x"
command = ~F, D, DF, x

[Command]
name = "623_y"
command = ~F, D, DF, y

[Command]
name = "623_z"
command = ~F, D, DF, z

[Command] 
name = "623_x"
command = ~F, D, DF, ~x
time = 10
buffer.time = 10

[Command]
name = "623_y"
command = ~F, D, DF, ~y
time = 10
buffer.time = 10

[Command]
name = "623_z"
command = ~F, D, DF, ~z
time = 10
buffer.time = 10
 
[Command] 
name = "214_a"
command = ~D, DB, B, a

[Command]
name = "214_b"
command = ~D, DB, B, b

[Command]
name = "214_c"
command = ~D, DB, B, c

[Command] 
name = "214_a"
command = ~D, DB, B, ~a
time = 10
buffer.time = 10

[Command]
name = "214_b"
command = ~D, DB, B, ~b
time = 10
buffer.time = 10

[Command]
name = "214_c"
command = ~D, DB, B, ~c
time = 10
buffer.time = 10
 

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, a

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, b

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, c

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, x

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, y

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, z

  
;Required (do not remove) 
	 
[Command] 
name = "highjump"
command = $D, $U
time = 8

[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = y+z
time = 1
[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "a"
command = a
time = 1
buffer.time = 1

[Command]
name = "b"
command = b
time = 1
buffer.time = 1

[Command]
name = "c"
command = c
time = 1
buffer.time = 1

[Command]
name = "x"
command = x
time = 1
buffer.time = 1

[Command]
name = "y"
command = y
time = 1
buffer.time = 1

[Command]
name = "z"
command = z
time = 1
buffer.time = 1

[Command]
name = "start"
command = s
time = 1
buffer.time = 1

[Command]
name = "holdback2"
command = /B
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1
buffer.time = 1

[Command]
name = "holdback"
command = /$B
time = 1
buffer.time = 1

[Command]
name = "holdup"
command = /$U
time = 1
buffer.time = 1

[Command]
name = "holddown"
command = /$D
time = 1
buffer.time = 1

[Command]
name = "hold_a"
command = /a
time = 1
buffer.time = 1

[Command]
name = "hold_b"
command = /b
time = 1
buffer.time = 1

[Command]
name = "hold_c"
command = /c
time = 1
buffer.time = 1

[Command]
name = "hold_x"
command = /x
time = 1
buffer.time = 1

[Command]
name = "hold_y"
command = /y
time = 1
buffer.time = 1

[Command]
name = "hold_z"
command = /z
time = 1
buffer.time = 1

[Command]
name = "hold_start"
command = /s
time = 1
buffer.time = 1

[Command]
name = "dash"
command = x+y
time = 1
buffer.time = 1
[Command]
name = "dash"
command = x+z
time = 1
buffer.time = 1
[Command]
name = "dash"
command = y+z
time = 1
buffer.time = 1
  
[Statedef -1] 
 
; 真・昇竜拳 
[State -1]
type = ChangeState
value = 3020
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "623_xy" || command = "623_xz" || command = "623_yz"
triggerall = power >= 3000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210 
trigger4 = stateno = 220 
trigger5 = stateno = 230
trigger6 = stateno = 240 
trigger7 = stateno = 250 
trigger8 = stateno = 400 
trigger9 = stateno = 410
trigger10 = stateno = 420 
trigger11 = stateno = 430 
trigger12 = stateno = 440 
trigger13 = stateno = 450 
trigger14 = stateno = 1000 
trigger15 = stateno = 1010 
trigger16 = stateno = 1020
trigger17 = stateno = 1040 
trigger18 = stateno = 1050 
trigger19 = stateno = 1060 
 
; 真空波動拳 
[State -1]
type = ChangeState
value = 3000
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "236_xy" || command = "236_xz" || command = "236_yz"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210 
trigger4 = stateno = 220 
trigger5 = stateno = 230
trigger6 = stateno = 240 
trigger7 = stateno = 250 
trigger8 = stateno = 400 
trigger9 = stateno = 410
trigger10 = stateno = 420 
trigger11 = stateno = 430 
trigger12 = stateno = 440 
trigger13 = stateno = 450 
trigger14 = stateno = 1000 
trigger15 = stateno = 1010 
trigger16 = stateno = 1020
trigger17 = stateno = 1040 
trigger18 = stateno = 1050 
trigger19 = stateno = 1060 
 
; 真空竜巻旋風脚 
[State -1]
type = ChangeState
value = 3010
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "214_ab" || command = "214_ac" || command = "214_bc"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210 
trigger4 = stateno = 220 
trigger5 = stateno = 230
trigger6 = stateno = 240 
trigger7 = stateno = 250 
trigger8 = stateno = 400 
trigger9 = stateno = 410
trigger10 = stateno = 420 
trigger11 = stateno = 430 
trigger12 = stateno = 440 
trigger13 = stateno = 450 
trigger14 = stateno = 1000 
trigger15 = stateno = 1010 
trigger16 = stateno = 1020
trigger17 = stateno = 1040 
trigger18 = stateno = 1050 
trigger19 = stateno = 1060 
 
; 真空波動拳(空中) 
[State -1]
type = ChangeState
value = 3030
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "236_xy" || command = "236_xz" || command = "236_yz"
triggerall = power >= 1000
triggerall = pos y < -15
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 
trigger3 = stateno = 610 
trigger4 = stateno = 620 
trigger5 = stateno = 630 
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = stateno = 700
trigger9 = stateno = 1070 
trigger10 = stateno = 1080 
trigger11 = stateno = 1090 
trigger12 = stateno = 1100 
trigger13 = stateno = 1110 
trigger14 = stateno = 1120 
trigger15 = stateno = 1130 
trigger16 = stateno = 1140 
trigger17 = stateno = 1150 
trigger15 = stateno = 1130 
trigger16 = stateno = 1140 
trigger17 = stateno = 1150 
trigger18 = stateno = 1041 
trigger19 = stateno = 1051 
trigger20 = stateno = 1061 
 
; 昇竜拳 弱 
[State -1]
type = ChangeState
value = 1040
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "623_x"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400 
trigger9 = stateno = 410
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450

; 昇竜拳 中
[State -1]
type = ChangeState
value = 1050
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "623_y"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400 
trigger9 = stateno = 410
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450

; 昇竜拳 強
[State -1]
type = ChangeState
value = 1060
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "623_z"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400 
trigger9 = stateno = 410
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
 
; 波動拳 弱 
[State -1]
type = ChangeState
value = 1000
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "236_x"
triggerall = !numprojid(6000)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400 
trigger9 = stateno = 410
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450

; 波動拳 中
[State -1]
type = ChangeState
value = 1010
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "236_y"
triggerall = !numprojid(6000)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400 
trigger9 = stateno = 410
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450

; 波動拳 強
[State -1]
type = ChangeState
value = 1020
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "236_z"
triggerall = !numprojid(6000)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400 
trigger9 = stateno = 410
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
 
; 竜巻旋風脚 弱 
[State -1]
type = ChangeState
value = 1070
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "214_a"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400 
trigger9 = stateno = 410
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450

; 竜巻旋風脚 中
[State -1]
type = ChangeState
value = 1080
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "214_b"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400 
trigger9 = stateno = 410
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450

; 竜巻旋風脚 強
[State -1]
type = ChangeState
value = 1090
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "214_c"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220 
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400 
trigger9 = stateno = 410
trigger10 = stateno = 420 
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
 
; 波動拳(空中) 弱 
[State -1]
type = ChangeState
value = 1100
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "236_x"
triggerall = !numprojid(6000)
triggerall = pos y < -15
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 
trigger3 = stateno = 610 
trigger4 = stateno = 620 
trigger5 = stateno = 630 
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = stateno = 700 
trigger9 = stateno = 701

; 波動拳(空中) 中
[State -1]
type = ChangeState
value = 1110
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "236_y"
triggerall = !numprojid(6000)
triggerall = pos y < -15
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 
trigger3 = stateno = 610 
trigger4 = stateno = 620 
trigger5 = stateno = 630 
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = stateno = 700 
trigger9 = stateno = 701

; 波動拳(空中) 強
[State -1]
type = ChangeState
value = 1120
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "236_z"
triggerall = !numprojid(6000)
triggerall = pos y < -15
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 
trigger3 = stateno = 610 
trigger4 = stateno = 620 
trigger5 = stateno = 630 
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = stateno = 700 
trigger9 = stateno = 701
 
; 竜巻旋風脚(空中) 弱 
[State -1]
type = ChangeState
value = 1130
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "214_a"
triggerall = pos y < -20
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 
trigger3 = stateno = 610 
trigger4 = stateno = 620 
trigger5 = stateno = 630 
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = stateno = 700 
trigger9 = stateno = 701

; 竜巻旋風脚(空中) 中
[State -1]
type = ChangeState
value = 1140
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "214_b"
triggerall = pos y < -20
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 
trigger3 = stateno = 610 
trigger4 = stateno = 620 
trigger5 = stateno = 630 
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = stateno = 700 
trigger9 = stateno = 701

; 竜巻旋風脚(空中) 強
[State -1]
type = ChangeState
value = 1150
triggerall = roundstate = 2 && !var(59) && var(6) < 2
triggerall = command = "214_c"
triggerall = pos y < -20
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 
trigger3 = stateno = 610 
trigger4 = stateno = 620 
trigger5 = stateno = 630 
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = stateno = 700 
trigger9 = stateno = 701

; バックダッシュ
[State -1]
type = ChangeState
value = 105
triggerall = roundstate = 2 && !var(59)
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = (command = "holdback2" && command = "recovery") || (StateType != A && command = "BB")
trigger1 = statetype = S && ctrl
 
; ダッシュ 
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2 && !var(59)
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = (command = "recovery") || (StateType != A && command = "FF")
trigger1 = statetype = S && ctrl

 
; 投げ1 
[State -1]
type = ChangeState
value = 900
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

; 投げ2
[State -1]
type = ChangeState
value = 910
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

; 空中投げ
[State -1]
type = ChangeState
value = 920
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A && ctrl
 
; 鎖骨割り 
[State -1]
type = ChangeState
value = 300
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command = "holdfwd" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; 旋風脚
[State -1]
type = ChangeState
value = 320
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command = "holdfwd" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; 空中旋風脚
[State -1]
type = ChangeState
value = 700
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "holdup"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 701 && movecontact

; 空中旋風脚
[State -1]
type = ChangeState
value = 701
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command = "holdup"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
 
; 立ち弱P 
[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && animelem = 3,> 0
trigger4 = stateno = 400 && animelem = 3,> 0

; 立ち中P
[State -1]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; 立ち強P
[State -1]
type = ChangeState
value = 220
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

; 立ち弱K
[State -1]
type = ChangeState
value = 230
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810

; 立ち中K
[State -1]
type = ChangeState
value = 240
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; 立ち強K
[State -1]
type = ChangeState
value = 250
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || stateno = 106) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
 
; しゃがみ弱P 
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && animelem = 3,> 0
trigger3 = stateno = 400 && animelem = 3,> 0

; しゃがみ中P
[State -1]
type = ChangeState
value = 410
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

; しゃがみ強P
[State -1]
type = ChangeState
value = 420
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

; しゃがみ弱K
[State -1]
type = ChangeState
value = 430
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 430 && animelem = 3,> 0

; しゃがみ中K
[State -1]
type = ChangeState
value = 440
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; しゃがみ強K
[State -1]
type = ChangeState
value = 450
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact
 
; ジャンプ弱P 
[State -1]
type = ChangeState
value = 600
triggerall = roundstate = 2 && !var(59)
triggerall = command = "x"
trigger1 = statetype = A && ctrl

; ジャンプ中P
[State -1]
type = ChangeState
value = 610
triggerall = roundstate = 2 && !var(59)
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

; ジャンプ強P
[State -1]
type = ChangeState
value = 620
triggerall = roundstate = 2 && !var(59)
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 701 && movecontact


; ジャンプ弱K
[State -1]
type = ChangeState
value = 630
triggerall = roundstate = 2 && !var(59)
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

; ジャンプ中K
[State -1]
type = ChangeState
value = 640
triggerall = roundstate = 2 && !var(59)
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

; ジャンプ強K
[State -1]
type = ChangeState
value = 650
triggerall = roundstate = 2 && !var(59)
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 701 && movecontact

; 空中ジャンプ
[State -1]
type = ChangeState
value = 45
triggerall = roundstate = 2 && !var(59)
trigger1 = command = "holdup"
trigger1 = statetype = A && ctrl
trigger1 = vel y > 0 && var(2) && !var(3)

; キャンセルジャンプ
[State -1]
type = ChangeState
value = 40
triggerall = roundstate = 2 && !var(59)
triggerall = command = "holdup" && !var(1) && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
trigger3 = stateno = 420 && movehit

; しゃがみ
[State 106, ChangeState]
type = ChangeState
triggerall = command = "holddown" && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
value = 10
ctrl = 1
 
; アドバンシングガード 
[State -1]
type = VarSet
triggerall = roundstate = 2 && !var(59)
triggerall = !numhelper(8060)
triggerall = command = "dash"
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(11) = 1
ignorehitpause = 1
 
; 挑発 
[State -1]
type = ChangeState
value = 800
triggerall = roundstate = 2 && !var(59)
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 101 || stateno = 106) && time > 3
 	
