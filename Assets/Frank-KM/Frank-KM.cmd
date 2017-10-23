; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "CosplaySuper"
command = ~D, DF, F, x+y
time = 15
[Command]
name = "CosplaySuper"
command = ~D, DF, F, x+z
time = 15
[Command]
name = "CosplaySuper"
command = ~D, DF, F, y+z
time = 15
[Command]
name = "DeadRising"
command = ~F, D, B, x+y
time = 15
[Command]
name = "DeadRising"
command = ~F, D, B, x+z
time = 15
[Command]
name = "DeadRising"
command = ~F, D, B, y+z
time = 15


[Command]
name = "GoCarting"
command = ~D, DF, F, a+b;~F, D, DF, F, D, DF, x
time =15
[Command]
name = "GoCarting"
command = ~D, DF, F, a+c;~F, D, DF, F, D, DF, x
time =15
[Command]
name = "GoCarting"
command = ~D, DF, F, b+c;~F, D, DF, F, D, DF, x
time =15


;-| Special Motions |------------------------------------------------------
[Command]
name = "blocking"
command = $F,x
time = 3

[Command]
name = "blocking" ;Same name as above (buttons in opposite order)
command = x,$F
time = 3

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c
[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b
[Command]
name = "DDP"
command = D, D, x
[Command]
name = "DDP"
command = D, D, y
[Command]
name = "DDP"
command = D, D,z

[Command]
name = "QCB_s"
command = ~D, DB, B, ~s
[Command]
name = "QCB_s"
command = ~D, DB, B, s

[Command]
name = "DU_K"
command = ~$D, U, ~a
[Command]
name = "DU_K"
command = ~$D, U,a
[Command]
name = "DU_K"
command = ~$D, U, ~b
[Command]
name = "DU_K"
command = ~$D, U,b
[Command]
name = "DU_K"
command = ~$D, U, ~c
[Command]
name = "DU_K"
command = ~$D, U,c
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1
buffer.time=3

[Command]
name = "b"
command = b
time = 1
buffer.time=3
[Command]
name = "c"
command = c
time = 1
buffer.time=3

[Command]
name = "tool_x"
command = ~x,x,x
buffer.time=8
time=20

[Command]
name="3p"
command=x+y+z
time=5
[Command]
name="3k"
command=a+b+c
time=5

[Command]
name = "x"
command = x
time = 1
buffer.time=3
[Command]
name = "y"
command = y
time = 1
buffer.time=3
[Command]
name = "z"
command = z
time = 1
buffer.time=3
[Command]
name = "start"
command = s
time = 1
[Command]
name = "up";Required (do not remove)
command = U
time = 1
[Command]
name = "dwn";Required (do not remove)
command = D
time = 1
;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1
[Command]
name = "holdy";Required (do not remove)
command = /y
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1
;-| Single Button |---------------------------------------------------------
[Command]
name = "mashable"
command = x
time = 2
[Command]
name = "mashable"
command = y
time = 2
[Command]
name = "mashable"
command =z
time = 2
[Command]
name = "mashable"
command = a
time = 2
[Command]
name = "mashable"
command = b
time = 2
[Command]
name = "mashable"
command =c
time = 2
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;--ordered list of combos
[State -1, Null]
type = Null
triggerall = !helper(10003),var(37)
triggerall = movehit=1 ;|| (stateno=[1001,1002]) && time<2
triggerall = p2stateno!=5120	
triggerall = AILevel >6
triggerall = var(59)=1
triggerall = random <45*AIlevel || var(31)>0
triggerall = var(31)=0 || var(31)=[1,16]
trigger1= (anim=210||anim=410||anim=240) && (var(31)=0&& p2statetype!=A )  
trigger1 =var(31):=1
trigger1 =var(34):=211
trigger2= (anim=211) && (var(31)=8) 
trigger2 =var(31):=9
trigger2 =var(34):=220
trigger3= (stateno=220) && (var(31)=9) 
trigger3 =var(31):=10
trigger3 =var(34):=1010
trigger4= (stateno=1010) && (var(31)=10) 
trigger4 =var(31):=11
trigger4 =var(34):=200
trigger5= (stateno=211) && (var(31)=1||var(31)=0) && p2statetype!=A
trigger5 =var(31):=2
trigger5 =var(34):=400
trigger6= (anim=201) && (var(31)=11||var(31)=7) 
trigger6 =var(31):=cond(var(31)=11,12,8)
trigger6 =var(34):=cond(var(31)=12,240,210)
trigger7= (stateno=240) && (var(31)=12) 
trigger7 =var(31):=13
trigger7 =var(34):=420
trigger8= (anim=400) && (var(31)=2) 
trigger8 =var(31):=3
trigger8 =var(34):=410
trigger9= (anim=410) && (var(31)=3) 
trigger9 =var(31):=4
trigger9 =var(34):=420
trigger10= (anim=420) && (var(31)=4||var(31)=13) 
trigger10 =var(31):=cond(var(31)=13,14,5)
trigger10 =var(34):=610
trigger10 = var(30):=1
trigger11= (anim=615) && (var(31)=5||var(31)=14) 
trigger11 =var(31):=cond(var(31)=14,15,6)
trigger11 =var(34):=cond(var(31)=15,620,650)
trigger11 = var(30):=0
trigger12= (stateno=620) && (var(31)=15) 
trigger12 =var(31):=16
trigger12 =var(34):=195
trigger13= (stateno=650) && (var(31)=6) 
trigger13 =var(31):=7
trigger13 =var(34):=200
trigger14= (stateno=195) && (var(31)=16) 
trigger14 =var(31):=0
trigger14 =var(34):=0
ignorehitpause=1

;lvl2
[State -1, Null]
type = Null
triggerall = !helper(10003),var(37)
triggerall = movehit=1 ;|| (stateno=[1001,1002]) && time<2
triggerall = p2stateno!=5120	
triggerall = AILevel >6
triggerall = var(59)=[2,3]
triggerall = random <45*AIlevel || var(31)>0
triggerall = var(31)=0 || var(31)=[20,40]
trigger1= (anim=210||anim=410||stateno=240) && (var(31)=0&& p2statetype!=A )  
trigger1 =var(31):=20
trigger1 =var(34):=420
trigger2= (stateno=250) && (var(31)=32) 
trigger2 =var(31):=33
trigger2 =var(34):=1120
trigger3= (stateno=220) && (var(31)=28) 
trigger3 =var(31):=29
trigger3 =var(34):=1010
trigger4= (stateno=1010) && (var(31)=29) 
trigger4 =var(31):=30
trigger4 =var(34):=200
trigger5= (anim=211) && (var(31)=27) 
trigger5 =var(31):=28
trigger5 =var(34):=220
trigger6= (anim=201) && (var(31)=23||var(31)=30||var(31)=35) 
trigger6 =var(31):=cond(var(31)=35,36,cond(var(31)=30,31,24))
trigger6 =var(34):=cond(var(31)=36,420,cond(var(31)=27,210,240))
trigger7= (stateno=240) && (var(31)=24||var(31)=31) 
trigger7 =var(31):=cond(var(31)=31,32,25)
trigger7 =var(34):=cond(var(31)=25,1000,250)
trigger8= (stateno=1120) && (var(31)=33) 
trigger8 =var(31):=34
trigger8 =var(34):=1020
trigger9= (stateno=1020) && (var(31)=34) 
trigger9 =var(31):=35
trigger9 =var(34):=200
trigger10= (anim=420) && (var(31)=20||var(31)=36) 
trigger10 =var(31):=cond(var(31)=36,37,21)
trigger10 =var(34):=610
trigger10 = var(30):=1
trigger11= (anim=[616,617]) && (var(31)=21||var(31)=37) 
trigger11 =var(31):=cond(var(31)=37,38,22)
trigger11 =var(34):=cond(var(31)=38,620,650)
trigger11 = var(30):=0
trigger12= (stateno=620) && (var(31)=38) 
trigger12 =var(31):=39
trigger12 =var(34):=195
trigger13= (stateno=650) && (var(31)=22) 
trigger13 =var(31):=23
trigger13 =var(34):=200
trigger14= (stateno=195) && (var(31)=39) 
trigger14 =var(31):=0
trigger14 =var(34):=0
trigger15= (stateno=1000) && (var(31)=25) 
trigger15 =var(31):=26
trigger15 =var(34):=200
trigger16= (stateno=200) && (var(31)=26) 
trigger16 =var(31):=27
trigger16 =var(34):=210
ignorehitpause=1

[State -1, AIgh4]
type = ChangeState
value = var(34)
triggerall = !helper(10003),var(37)
triggerall = var(34)>0
triggerall = var(34)!=var(35)
triggerall = stateno!=[3001,3020]
triggerall = var(34)=3000&&power>=500|| var(34)!=3000
triggerall = roundstate=2
triggerall = var(32)=0
triggerall = stateno!=var(34)
;triggerall = numhelper(1001)=0 || var(45)!=[1000,1007]
trigger1 = (ctrl&& statetype!=A||stateno=20)  && p2bodydist x <60 && p2bodydist y>-65
trigger1=var(31)=2||var(31)=7||var(31)=1||var(31)=16||var(31)=11||var(31)=23||var(31)=26||var(31)=30||var(31)=35||var(31)=39
trigger2 = (ctrl&& statetype=A) 
trigger2=var(31)=14||var(31)=5||var(31)=21||var(31)=37
trigger3 = (var(31)=1||var(31)=3||var(31)=4||var(31)=6||var(31)=8||var(31)=9||var(31)=10||var(31)=12||var(31)=13||var(31)=15||var(31)=17) 
trigger3 = movehit
trigger4 = (var(31)=20||var(31)=22||var(31)=24||var(31)=25||var(31)=27||var(31)=28||var(31)=29||var(31)=31||var(31)=32||var(31)=33||var(31)=36||var(31)=38) 
trigger4 = movehit
trigger5 = (ctrl&& statetype!=A||stateno=20) && p2bodydist y>-60
trigger5=var(31)=34
;===========================================================================
;------------------------------------------------------------------------
[State -1, AI MS]
type = ChangeState
value = 3100
triggerall = AILevel >0
triggerall = random <= 35*AIlevel
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall=power>=3000
triggerall =(ctrl||stateno=40||stateno=52||(stateno=[100,105])||stateno=[10,12])||stateno=900 && animelemtime(3)>0 && p2movetype=A && p2bodydist x =[-35,55]
triggerall = stateno != [200,9999]
triggerall = enemy,anim!=5120
triggerall = helper(10003),var(11)=0&&helper(10003),var(10)=0
Triggerall = (RoundState = 2)
triggerall = (p2MoveType != H)
trigger1 =( p2bodydist X = [-15,53]) && p2dist y <= 0
trigger2 = (p2stateno =[120,150]) &&((p2bodydist X =[-15,53]) && p2dist y <= 0)
trigger3= stateno=1100 &&animelemtime(5)>0 && p2movetype=A
trigger4 = stateno=900 && animelemtime(3)>0 && p2movetype=A
;---------------------------------------------------------------------------
[State -1, RMBAI]
type = ChangeState
value = 3050
triggerall = AILevel >0 && roundstate =2 && power >=1000
triggerall = (p2stateno!=[120,155])
triggerall = numhelper(3001) <= 0&& (p2bodydist y = [-35,0]) && (enemy, vel y >=0 || stateno=1110)
triggerall = (p2bodydist x=[45,110]) || movehit || enemy,numproj >0 && p2movetype=A
triggerall = movetype != H
triggerall = var(31)=0 || enemy,life<225
triggerall = statetype!=A
Triggerall = random <15*AIlevel || movehit && random <25*AIlevel 
triggerall = p2statetype != L || movehit && enemy, pos y<0
trigger1 =  (ctrl||(stateno=[100,105])||stateno=[10,12]) && p2movetype=A
trigger2 = (stateno = 210) &&(movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 )
trigger3 = (stateno = 240) && (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 )
trigger4 = (stateno = 230)&& (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 )
trigger5 = (stateno = 410) && (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 )
trigger6 = (stateno = 440) && (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 )
trigger7 = (stateno = 220) && movecontact&& AIlevel <3 && p2statetype!=A
trigger8 = (stateno = 450) && movecontact&& AIlevel <3
trigger9= (stateno = 250) &&(movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 )
trigger10 =(stateno=[1100,1120])&&(movecontact&&AILevel<=4 ||  movehit&&AILevel>5&& enemy,life<600&&var(59)>1 )
trigger11 = anim=301 &&(movecontact&&AILevel<=4 ||  movehit&&AILevel>5&& enemy,life<250 )
trigger12= stateno=1100 &&animelemtime(5)>0 && p2movetype=A
trigger13 = stateno=900 && animelemtime(3)>0 && p2movetype=A
;-----------------------------------
[State -1, RMBAI]
type = ChangeState
value = 3002
triggerall = AILevel >0
triggerall = roundstate = 2
triggerall = helper(10003),var(8)=0||movehit
triggerall = (p2bodydist y = [-100,0])
triggerall = p2bodydist x<=45 && p2statetype=A || (p2bodydist x =[100,175]) || p2bodydist x >80 && movecontact
triggerall = var(31)=0 || enemy,life<300 && (p2statetype=L||p2statetype=A &&  enemynear,hitfall)
triggerall = stateno !=[800,4999]
triggerall = var(55)=2
triggerall = power >=1000
triggerall = statetype!=A
triggerall = p2statetype=A&&  p2movetype!=H || p2statetype=L || moveguarded
triggerall = !(EnemyNear,IsHelper)
triggerall = movetype != H
trigger1 =  (ctrl||(stateno=[100,105])||stateno=[10,12]) 
trigger3 = (stateno = 240) && (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 )
trigger5 = (stateno = 410) && (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 )
trigger6 = (stateno = 440) && (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 )
trigger7 = (stateno = 220) && movecontact&& AIlevel <3 && p2statetype!=A
trigger8= (stateno = 250) &&(movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 )
trigger9 =(stateno=[1100,1120])&&(movecontact&&AILevel<=4 ||  movehit&&AILevel>5&& enemy,life<600&&var(59)>1 )
trigger10= stateno=1100 &&animelemtime(5)>0 && p2movetype=A
trigger12 = stateno=900 && animelemtime(3)>0 && p2movetype=A && p2bodydist x <0
;---------------------------------------------------------------------------
[State -1, RMBAI]
type = ChangeState
value = 3001
triggerall = AILevel >0 && roundstate =2 && power >=1000
triggerall = (p2stateno!=[120,155])
triggerall = numhelper(3001) <= 0&& ((p2bodydist y = [-15,0]) && enemy, vel y >=0 ||(p2bodydist y = [-20,0]) && movehit)
triggerall = (p2bodydist x>130) || movehit || enemy,numproj >0
triggerall = movetype != H
triggerall = var(55)=1
triggerall = var(31)=0 || enemy,life<200
triggerall = statetype!=A
Triggerall = random <20*AIlevel || movehit && random <25*AIlevel 
triggerall = p2statetype != L || movehit && enemy, pos y<0
trigger1 =  (ctrl||(stateno=[100,105])||stateno=[10,12])
trigger2 = (stateno = 210) &&(movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250&&var(59)>2 )
trigger3 = (stateno = 240) && (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250&&var(59)>2 )
trigger4 = (stateno = 230)&& (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 &&var(59)>2)
trigger5 = (stateno = 410) && (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 &&var(59)>2)
trigger6 = (stateno = 440) && (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250&&var(59)>2 )
trigger7 = (stateno = 220) && movecontact&& AIlevel <3 && p2statetype!=A
trigger8 = (stateno = 450) && movecontact&& AIlevel <3
trigger9= (stateno = 250) &&(movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 &&var(59)>1)
trigger10 =(stateno=[1100,1120])&&(movecontact&&AILevel<=4 ||  movehit&&AILevel>5&& enemy,life<600&&var(59)>1 )
trigger11 = anim=301 &&(movecontact&&AILevel<=4 ||  movehit&&AILevel>5&& enemy,life<250&&var(59)>1 )
trigger12= stateno=1100 &&animelemtime(5)>0 && p2movetype=A
trigger13 = stateno=900 && animelemtime(3)>0 && p2movetype=A
;trigger21 = (ctrl||(stateno=[100,105])||stateno=[10,12])&& p2statetype=A && var(55)!=1 && p2bodydist x =[0,45]
;---------------------------------------------------------------------------
[State -1, RMBAI]
type = ChangeState
value = 3000;+var(55)
triggerall = AILevel >0 && roundstate =2 && power >=1000
triggerall = (p2stateno!=[120,155])
triggerall = numhelper(3001) <= 0&& (p2bodydist y = [-60,-25]) || movehit
triggerall = (p2bodydist x>120) || movehit || enemy,numproj >0
triggerall = movetype != H
triggerall = var(55)=0
triggerall = var(31)=0|| enemy,life<200
triggerall = statetype!=A
Triggerall = random <10*AIlevel || movehit && random <20*AIlevel 
triggerall = p2statetype != L || movehit && enemy, pos y<0
trigger1 =  (ctrl||(stateno=[100,105])||stateno=[10,12])
trigger2 = (stateno = 200) && movecontact && AIlevel <3
trigger3 = (stateno = 210) &&(movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250&&var(59)>1 )
trigger4 = (stateno = 240) && (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250&&var(59)>1 )
trigger5 = (stateno = 230)&& (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 &&var(59)>1)
trigger6 = (stateno = 400) && movecontact&& AIlevel <3
trigger7 = (stateno = 410) && (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 &&var(59)>1)
trigger8 = (stateno = 440) && (movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250&&var(59)>1 )
trigger9 = (stateno = 430)&& movecontact&& AIlevel <3
trigger10 = (stateno = 220) && movecontact&& AIlevel <3
trigger11 = (stateno = 450) && movecontact&& AIlevel <3
trigger12= (stateno = 250) &&(movecontact&&AILevel<=5 ||  movehit&&AILevel>5&& enemy,life<250 &&var(59)>1)
trigger13 =stateno=1000&&(movecontact&&AILevel<=4 ||  movehit&&AILevel>5&& (enemy,life<600&&var(59)>1&&var(6)=0|| enemy,life<200) )&& numexplod(1000)>3
trigger14 = stateno=651 
trigger15 =(stateno=[1100,1120])&&(movecontact&&AILevel<=4 ||  movehit&&AILevel>5&& enemy,life<600&&var(59)>1 )
trigger16 = anim=301 &&(movecontact&&AILevel<=4 ||  movehit&&AILevel>5&& enemy,life<250&&var(59)>1 )
trigger17= stateno=1100 &&animelemtime(5)>0 && p2movetype=A
trigger18 = stateno=900 && animelemtime(3)>0 && p2movetype=A
trigger19 = movecontact&&stateno=[1300,1301]
trigger20 = anim=303 && movecontact
;trigger21 = (ctrl||(stateno=[100,105])||stateno=[10,12])&& p2statetype=A && var(55)!=1 && p2bodydist x =[0,45]
;---------------------------------------------------------
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1351
triggerall = roundstate=2
triggerall = AIlevel>0
triggerall = var(18)>40
triggerall = statetype != A
triggerall = random <32*AILevel
triggerall = var(31)=0
triggerall= p2bodydist x =[-10,60]
triggerall= p2bodydist y <-25 || p2bodydist y = 0
triggerall = var(59)>3
trigger1 = (ctrl||(stateno=[100,105])||stateno=[10,12]) && (p2statetype=A||p2movetype=A) && (p2movetype!=H||p2stateno=[120,155])&& p2stateno!=10612 && p2stateno!=441
;---------------------------------------------------------------------------
;?????
[State -1, T S]
type = ChangeState
value = 900
triggerall = random <ifelse(helper(10003),var(8)=0,30*AIlevel,ifelse(((p2bodydist x <40)||numproj >0),25*AIlevel,12*AIlevel))
Triggerall = (RoundState = 2) && (AILevel>0)
triggerall = backedgebodydist <50 || enemy,numproj >0 || p2movetype=A
triggerall = statetype != A
triggerall = var(31)=0
triggerall = var(59)>=2
triggerall = p2movetype!=H || power >2000
triggerall = var(31)=0&&helper(10003),var(11)=0&&helper(10003),var(10)=0
trigger1 = (p2movetype=A || enemy,numproj >0)&&ctrl
trigger2 = anim=301 && moveguarded
trigger3= stateno=250 && moveguarded
trigger4= stateno=450 && moveguarded
trigger5= helper(10003),var(8)=0 && ctrl
;----------------------------------------------------------------
[State -1, AI Throw]
type = ChangeState
value = ifelse((statetype!=A||stateno=[100,105]),ifelse(var(59)>2&&random<333,850,800),830)
triggerall = random <= 35*AILevel || (var(33) &&random <= 55*AILevel)
triggerall = AILevel >0
triggerall = roundstate=2
triggerall= ((p2statetype != A)&&(statetype!=A||stateno=[100,105]))||(p2statetype=A&&(statetype=A&&stateno!=[100,105]))
triggerall = (ctrl || stateno=20||stateno=[100,105])|| stateno=50|| stateno=57
triggerall = stateno != [200,9999]
Triggerall = (RoundState = 2)
triggerall = movetype!=H
triggerall = var(31)=0 || var(33)
triggerall = p2statetype!=L
triggerall = (enemy,ctrl)|| p2movetype!=H
trigger1 = p2bodydist X < 35 && (p2bodydist y = [-50,40]) && ctrl
trigger2 = (p2stateno =[120,150]) &&(p2bodydist X < 35 && (p2bodydist y = [-50,40]))&& ctrl
trigger3= var(33)=1 && ctrl
 ;--------------------------------------------
[State -1, Guard]
type = ChangeState
value = 120
triggerall = movetype !=H || stateno=5210
triggerall = roundstate = 2
triggerall = stateno!=[120,155]
triggerall = ctrl||stateno!=[55,59]
triggerall=AILevel>0
triggerall = var(31)=0
triggerall =(StateNo !=[200,3999])&&(StateNo != 105)
Triggerall =  Random < (113*AILevel)
triggerall =InGuardDist||((EnemyNear, movetype=A&& enemynear,hitdefattr!=SCA,AA)||( enemynear,hitdefattr=SCA,NP,SP,HP || enemynear,hitdefattr = SCA,AA))|| (enemy,numproj >0&&p2movetype!=H)
trigger1 = ctrl ||stateno=20||stateno=[100,105]
;------------------------------------------
[State -1, AI5]
type = ChangeState
value =  1300
triggerall = AILevel >0 && roundstate = 2
triggerall = (p2stateno !=[120,155])
triggerall = (p2bodydist x = [0,50]) ||((enemynear,hitdefattr = SCA,NP,SP,HP,NA) || (enemynear,numproj > 0))
triggerall = stateno !=[800,899]
triggerall = p2statetype !=L
Triggerall = Random <=129
triggerall = var(31)=0
triggerall = statetype!=A
triggerall = var(59)>2
trigger1 = (ctrl ||stateno=20||stateno=[100,105]) && (enemynear,hitdefattr = SCA,NP,SP,HP,NA || enemynear,numproj > 0)
trigger2 = (stateno = 210) &&(movecontact&&AILevel<=4 || movehit&&AILevel>4&&p2statetype=A)
trigger3 = (stateno = 240) &&(movecontact&&AILevel<=4 || movehit&&AILevel>4&&p2statetype=A)
trigger4 = (stateno = 230)&& movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 440) && movecontact
trigger8= (stateno = 450)&& movecontact
trigger9 = (stateno = 220) &&(movecontact&&AILevel<=4 || movehit&&AILevel>4&&p2statetype=A)
trigger10= (stateno = 250) && (movecontact&&AILevel<=4 || movehit&&AILevel>4&&p2statetype=A)
trigger11 = (stateno = 640) && movecontact&&p2statetype=A
trigger12 = anim=301 && movecontact
trigger13= stateno=1100 && animelemtime(5)>0

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, AI]
type = ChangeState
value = 200
triggerall= statetype != A|| stateno=[100,105]
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [0,45])
triggerall = ((p2bodydist y= [-45,5]))
triggerall = p2statetype!=L
triggerall = p2statetype!=C
triggerall = numexplod(2010)=0 || var(59)>1
Triggerall = (Random <=63*AIlevel) && var(31)=0
trigger1 = (ctrl ||stateno=20||stateno=[100,105])
trigger2 = (ctrl ||stateno=20||stateno=[100,105])&& p2statetype=A&&random <199 &&p2movetype=H

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, AI]
type = ChangeState
value = 210
triggerall = helper(10003),var(8)=0||movehit
triggerall= statetype != A|| stateno=[100,105]
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [0,70]) || p2movetype=H &&P2BodyDist X = [-25,70]
triggerall = ((p2bodydist y= [-70,5])) || (enemy,vel y >0 &&p2bodydist y= [-90,-25])
triggerall = p2statetype!=L
triggerall = p2statetype!=C
triggerall = numexplod(2010)=0 || var(59)>1
Triggerall = (Random <=63*AIlevel) && var(31)=0
trigger1 = (ctrl || stateno=20||stateno=[100,105])&& (p2movetype=H||p2bodydist x=[40,70]) && helper(10003),var(11)=0&& helper(10003),var(10)=0 && p2bodydist y >-45
trigger2 =(ctrl || stateno=20||stateno=[100,105])&& (helper(10003),var(10)>0||helper(10003),var(11)>0)&& p2bodydist x <50 
trigger3 = (stateno = 400) || (stateno = 430)|| (stateno = 230)|| (stateno = 200 && (anim=201||p2statetype=A))
trigger3 =  movecontact
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, AI]
type = ChangeState
value = 211
triggerall = helper(10003),var(8)=0||movehit
triggerall= statetype != A|| stateno=[100,105]
triggerall = AILevel >0
triggerall = var(31)=0
triggerall = numexplod(212)=0 || var(59)>1
triggerall = roundstate=2
triggerall = p2statetype!=L && !enemy,hitfall
Triggerall = (P2BodyDist X = [70,cond(var(59)>1,130,100)]) || movehit && (var(59)=1|| var(59)>=4)|| movecontact && var(59)>=4
triggerall = ((p2bodydist y= [-50,-35])) && var(59)>1 || p2statetype!=A
Triggerall = (Random <=63*AIlevel) && var(31)=0
trigger1 = (ctrl || stateno=20||stateno=[100,105])&& (p2movetype=H||p2bodydist x=[70,cond(var(59)>1,120,90)])&& helper(10003),var(11)=0&& helper(10003),var(10)=0 && var(59)<4
trigger2 = (stateno = 410) && movecontact
trigger3 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, AI]
type = ChangeState
value = 220
triggerall = helper(10003),var(8)=0||movehit
triggerall= statetype != A|| stateno=[100,105]
triggerall = p2statetype!=L
triggerall = AILevel >0
triggerall = var(31)=0
triggerall = roundstate=2
Triggerall = (P2BodyDist X = [70,100]) || movecontact
triggerall = ((p2bodydist y= [-70,5]))|| movecontact
Triggerall = (Random <=63*AIlevel) && var(31)=0
trigger1 = (ctrl || stateno=20||stateno=[100,105])&& (p2bodydist x=[70,95])&& helper(10003),var(11)=0&& helper(10003),var(10)=0 && p2statetype=C
trigger2 = (stateno = 200) &&(movecontact&&AILevel<=5 ||  movecontact&&AILevel>5 && p2statetype=C )
trigger3 = (stateno = 210) &&(movecontact&&AILevel<=5 ||  movecontact&&AILevel>5 && anim!=211&& p2statetype=C )
trigger4 = (stateno = 410) &&(movecontact&&AILevel<=5 ||  movecontact&&AILevel>5 && p2statetype=C )
trigger5 = (stateno = 240) && (movecontact&&AILevel<=5|| movecontact&&AILevel>5 && p2statetype=C ) 
trigger6 = (stateno = 230)&& (movecontact&&AILevel<=3 || movecontact&&AILevel>5 && p2statetype=C ) 
trigger7 = (stateno = 400) && (movecontact&&AILevel<=3|| movecontact&&AILevel>5 && p2statetype=C ) 
trigger8 = (stateno = 440) && (movecontact&&AILevel<=5 || moveguarded&&AILevel>5 && p2statetype=C ) 
trigger9 = (stateno = 430)&& (movecontact&&AILevel<=3 || movecontact&&AILevel>5 && p2statetype=C ) 
trigger10= (stateno = 210&& anim=211) &&(movecontact&&AILevel<=5 || movehit)
trigger11= anim=303&& movecontact


;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1,AI]
type = ChangeState
value = 240
triggerall = helper(10003),var(8)=0||movehit
triggerall= statetype != A|| stateno=[100,105]
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [0,90])|| enemy,hitfall &&P2BodyDist X = [-22,90]
triggerall = ((p2bodydist y= [-65,-20])) || p2statetype!=A|| (enemy,vel y >=0 &&p2bodydist y= [-95,-25])
triggerall = p2statetype!=L

triggerall = AIlevel <5||p2stateno !=[120,150]
Triggerall = (Random <=63*AIlevel) && var(31)=0
trigger1 = (ctrl || stateno=20||stateno=[100,105])&& (p2movetype=H||p2bodydist x=[45,90]) && helper(10003),var(11)=0&& helper(10003),var(10)=0
trigger2 = (ctrl || stateno=20||stateno=[100,105])&& (helper(10003),var(11)>0)&& p2bodydist x <75
trigger3 = (stateno = 400) || (stateno = 430)|| (stateno = 230)|| (stateno = 200 && anim=201)
trigger3 =  movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, AI]
type = ChangeState
value = 230
triggerall = helper(10003),var(8)=0||movehit
triggerall= statetype != A|| stateno=[100,105]
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [0,45])
triggerall = p2statetype!=L
triggerall = p2statetype!=A
Triggerall = (Random <=63*AIlevel) && var(31)=0
trigger1 = (ctrl|| stateno=20) 
trigger2 = (ctrl || stateno=20||stateno=[100,105])&& (p2bodydist x=[20,40])&& helper(10003),var(11)=0&& helper(10003),var(10)=0 && p2statetype=C


[State -1, Taunt]
type = ChangeState
value = 195
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = random<40*AIlevel
triggerall = var(31)=0
triggerall = var(59)<5
triggerall = p2statetype = L && (enemy,pos y=0||enemy,vel y >0) || (enemy,hitfall||p2stateno=20011) && var(56)>5
triggerall = p2bodydist x =[-25,140]
triggerall = statetype != A
triggerall = p2movetype=H || p2movetype=A && p2bodydist x >100
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, AI]
type = ChangeState
value = 400
triggerall = helper(10003),var(8)=0||movehit
triggerall= statetype != A|| stateno=[100,105]
triggerall = AILevel >0
triggerall = var(31)=0
triggerall = roundstate=2
Triggerall = (P2BodyDist X = [0,48])
triggerall = p2statetype!=L
triggerall = ((p2bodydist y= [-35,-5])) || p2statetype!=A
Triggerall = (Random <=63*AIlevel) && var(31)=0
trigger1 = (ctrl|| stateno=20) 
trigger2 = (ctrl || stateno=20||stateno=[100,105])&& (p2bodydist x=[0,45])&& helper(10003),var(11)=0&& helper(10003),var(10)=0 
trigger3 = (ctrl || stateno=20||stateno=[100,105])&& helper(10003),var(10)>0&& p2bodydist x <45 && var(31)=0
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, AI]
type = ChangeState
value = 410
triggerall = helper(10003),var(8)=0||movehit
triggerall= statetype != A|| stateno=[100,105]
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [35,cond(var(59)>1,140,120)]) || movecontact
triggerall = p2statetype!=A
triggerall = p2statetype!=L
Triggerall = (Random <=63*AIlevel) && var(31)=0
trigger1 = (ctrl || stateno=20||stateno=[100,105])&& (p2movetype=H||p2bodydist x=[70,cond(var(59)>1,130,110)])&& helper(10003),var(11)=0&& helper(10003),var(10)=0
trigger2 =(ctrl || stateno=20||stateno=[100,105])&& (helper(10003),var(11)>0)&& p2bodydist x <70
trigger3 = (stateno = 400) || (stateno = 430)|| (stateno = 230)|| (stateno = 200 && (anim=201||p2statetype=A))
trigger3 = (movecontact&&AILevel<=5 || movehit&&AILevel>5)

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, AI]
type = ChangeState
value = 420
triggerall = helper(10003),var(8)=0||movehit
triggerall= statetype != A|| stateno=[100,105]
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [0,90])
triggerall = ((p2bodydist y= [-65,5]))
triggerall = p2statetype!=L
triggerall = numexplod(420)<2
triggerall = AIlevel <5||p2stateno !=[120,150]
Triggerall = (Random <=33*AIlevel) && var(31)=0
trigger1 = (ctrl || stateno=20||stateno=[100,105])&& (p2statetype=A&&p2bodydist x=[50,80])&& helper(10003),var(11)=0&& helper(10003),var(10)=0
trigger2 = (stateno = 200) &&(movecontact&&AILevel<=5 || movehit&&AILevel>5 && p2statetype=A)
trigger3 = (stateno = 210) &&(movecontact&&AILevel<=5 || movehit&&AILevel>5 && anim!=211)
trigger4 = (stateno = 410) &&(movecontact&&AILevel<=5 || movehit&&AILevel>5 && p2statetype!=A)
trigger5 = (stateno = 240) && (movecontact&&AILevel<=5 || movehit&&AILevel>5)
trigger6 = (stateno = 230)&& movecontact&&AILevel<=3
trigger7 = (stateno = 400) && movecontact&&AILevel<=3
trigger8 = (stateno = 440) && movecontact&&AILevel<=5 
trigger9 = (stateno = 430)&& movecontact&&AILevel<=3 
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, AI]
type = ChangeState
value = 250
triggerall = helper(10003),var(8)=0||movehit
triggerall= statetype != A|| stateno=[100,105]
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [0,60])
triggerall = ((p2bodydist y= [-55,5])) ||movehit
triggerall = p2statetype!=L
triggerall = AIlevel <5||p2stateno !=[120,150]
Triggerall = (Random <=15*AIlevel) && var(31)=0
trigger1 = (stateno = 240) && movecontact && ( AILevel <4 || p2statetype=A)
trigger2 = (stateno = 440) && movecontact&& ( AILevel <4 || p2statetype=A)
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, AI]
type = ChangeState
value = 430
triggerall = helper(10003),var(8)=0||movehit
triggerall= statetype != A|| stateno=[100,105]
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [0,45])
triggerall = p2statetype!=A
triggerall = p2statetype!=L || var(59)>2 || var(56)<7
Triggerall = (Random <=63*AIlevel) && var(31)=0
trigger1 = (ctrl|| stateno=20) 
trigger2 = (ctrl || stateno=20||stateno=[100,105])&& (p2bodydist x=[25,45])&& helper(10003),var(11)=0&& helper(10003),var(10)=0 && p2statetype=S
trigger3 = (ctrl || stateno=20||stateno=[100,105])&& helper(10003),var(10)>0&& p2bodydist x <35 && var(31)=0

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, AI]
type = ChangeState
value = 440
triggerall = helper(10003),var(8)=0||movehit
triggerall= statetype != A|| stateno=[100,105]
triggerall = AILevel >0
triggerall = var(31)=0
triggerall = roundstate=2
Triggerall = (P2BodyDist X = [0,55]) || movecontact
triggerall = p2statetype!=A
triggerall = p2statetype!=L || var(59)>2|| var(56)<7
Triggerall = (Random <=63*AIlevel) && var(31)=0
trigger1 = (ctrl || stateno=20||stateno=[100,105])&& (p2movetype=H||p2bodydist x=[30,50])&& helper(10003),var(11)=0&& helper(10003),var(10)=0 && p2statetype=S
trigger2 =(ctrl || stateno=20||stateno=[100,105])&& (helper(10003),var(11)>0)&& p2bodydist x <45
trigger3 = (stateno = 400) || (stateno = 430)|| (stateno = 230)|| (stateno = 200 && (anim=201||p2statetype=A))
trigger3 = (movecontact&&AILevel<=5 || movehit&&AILevel>5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, AI]
type = ChangeState
value = 450
triggerall = helper(10003),var(8)=0||movehit
triggerall= statetype != A|| stateno=[100,105]
triggerall = AILevel >0
triggerall = var(31)=0
triggerall = roundstate=2
Triggerall = (P2BodyDist X = [0,115])
triggerall = p2statetype!=L || var(59)>2|| var(56)<7
triggerall = p2statetype!=A
triggerall = AIlevel <5||p2stateno !=[120,150]
Triggerall = (Random <=63*AIlevel) && var(31)=0
trigger1 = (ctrl || stateno=20||stateno=[100,105])&& (p2movetype=H||p2bodydist x=[80,110]) && helper(10003),var(11)=0&& helper(10003),var(10)=0 && p2statetype=S
trigger2 = (stateno = 200) && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4&& p2statetype=S)
trigger3 = (stateno = 210) && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4&& p2statetype=S)
trigger4 = (stateno = 240) && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4&& p2statetype=S)
trigger5 = (stateno = 230)&& (movecontact&&AILevel<=4 || moveguarded&&AILevel>4&& p2statetype=S)
trigger6 = (stateno = 400) && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4&& p2statetype=S)
trigger7 = (stateno = 410) && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4&& p2statetype=S)
trigger8 = (stateno = 440) && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4&& p2statetype=S)
trigger9 = (stateno = 430)&& (movecontact&&AILevel<=4 || moveguarded&&AILevel>4&& p2statetype=S)
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, AI]
type = ChangeState
value = 610
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = statetype = A
triggerall = stateno !=610
triggerall = stateno !=640
triggerall = stateno!=[100,105]
triggerall = prevstateno!=[100,105]
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [-20,cond(var(59)>1,100,80)])
triggerall =(p2bodydist y =[-25,cond(var(59)>1,100,80)])
Triggerall = Random <= 61*AILevel
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact



;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, AI]
type = ChangeState
value = 620
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = statetype = A
triggerall = stateno!=[100,105]
triggerall = prevstateno!=[100,105]
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [-5,80])
triggerall =(p2bodydist y =[-35,85]) ||movecontact
triggerall = p2statetype=A||vel y >0||movecontact
Triggerall = Random <= 51*AILevel
triggerall =vel y >0 || stateno=57 ||movecontact
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (stateno = 610&&anim=ifelse(var(59)>3,617,ifelse((var(59)=[2,3]),616,615)))|| stateno = 640  ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, AI]
type = ChangeState
value = 600
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = statetype = A
triggerall = stateno !=610
triggerall = stateno !=640
triggerall = stateno!=[100,105]
triggerall = prevstateno!=[100,105]
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [0,60])
triggerall =(p2bodydist y =[-35,75]) ||vel y >0&&p2bodydist y =[-35,75]
triggerall = p2statetype=A||vel y >0
Triggerall = Random <= 41*AILevel
triggerall =vel y >0 || stateno=57 
triggerall = roundstate = 2
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, AI]
type = ChangeState
value = 640
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = statetype = A
triggerall = stateno !=610
triggerall = stateno !=640
triggerall = stateno!=[100,105]
triggerall = prevstateno!=[100,105]
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [0,45])
triggerall =(p2bodydist y =[-35,75])
triggerall = p2statetype=A||vel y >0
Triggerall = Random <= 51*AILevel
triggerall =vel y >0 || stateno=57 
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, AI]
type = ChangeState
value = 630
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = statetype = A
triggerall = stateno !=610
triggerall = stateno !=640
triggerall = stateno!=[100,105]
triggerall = prevstateno!=[100,105]
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [0,40])
triggerall =(p2bodydist y =[-35,65])
triggerall = p2statetype=A||vel y >0
Triggerall = Random <= 51*AILevel
triggerall =vel y >0 || stateno=57 
triggerall = roundstate = 2
trigger1 = ctrl



;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, AI]
type = ChangeState
value = 650
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = statetype = A
triggerall = stateno!=[100,105]
triggerall = prevstateno!=[100,105]
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [-5,90])
triggerall =(p2bodydist y =[-35,85]) ||movecontact
triggerall = p2statetype!=A||movehit
Triggerall = Random <= 51*AILevel
triggerall =vel y >0  ||movecontact
triggerall = numexplod(650)<2
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 =  stateno = 610&&anim=ifelse(var(59)>3,617,ifelse((var(59)=[2,3]),616,615))|| stateno = 640  ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, AI]
type = ChangeState
value = 651
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = statetype = A
triggerall = stateno!=[100,105]
triggerall = prevstateno!=[100,105]
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [-35,35]) || prevstateno=831
triggerall =(p2bodydist y =[45,85])  || prevstateno=831
Triggerall = Random <= 51*AILevel
triggerall =p2movetype=A && p2statetype!=A|| prevstateno=831
triggerall = roundstate = 2
trigger1 = ctrl || prevstateno=831
trigger2 = stateno = 600 || stateno = 630 || stateno = 610|| stateno = 640  ;jump_x or jump_a
trigger2 = movecontact


;---------------------------------------------------------------------------
;Light Kung Fu Palm
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1150
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = statetype = A
triggerall = stateno!=[100,105]
triggerall = var(31)=0
Triggerall = (P2BodyDist X = [-40,75])||movecontact
triggerall =(p2bodydist y =[-35,65]) ||movecontact
triggerall = p2statetype!=A||movehit
Triggerall = Random <= 40*AILevel
triggerall =p2statetype=A ||movecontact
triggerall = numexplod(650)<2
triggerall = roundstate = 2
triggerall = var(59)>1
trigger1 =ctrl
trigger2 = (stateno = 600) && movecontact
trigger3= (stateno = 610)&& movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6= (stateno = 650) && movecontact
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1120
triggerall = helper(10003),var(8)=0
triggerall = var(31)=0
triggerall = AILevel >0
triggerall = roundstate=2
Triggerall = (P2BodyDist X = [60,140]) ||movecontact
triggerall = ((p2bodydist y= [-65,25]))
triggerall = p2statetype!=L
triggerall = p2stateno!=[20005,20006]
triggerall = var(59)>1
Triggerall = (Random <=23*AIlevel) && var(31)=0
trigger1 =(ctrl || stateno=20||stateno=[100,105])&& (p2movetype=H||p2bodydist x=[80,130]) && helper(10003),var(11)=0&& helper(10003),var(10)=0 && p2statetype!=L
trigger2 = (stateno = 250) &&(movecontact&&AILevel<=4 || movehit&&AILevel>4)
trigger3 = (stateno = 240) &&(movecontact&&AILevel<=4 || movehit&&AILevel>4)
trigger4 = (stateno = 440) &&(movecontact&&AILevel<=4 || movehit&&AILevel>4)
trigger5 = (stateno = 450)&&(movecontact&&AILevel<=4 || movehit&&AILevel>4)
trigger6 = anim=301 &&(movecontact&&AILevel<=4 || movehit&&AILevel>4)
trigger7= stateno=1100 && animelemtime(5)>0
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1110
triggerall = helper(10003),var(8)=0
triggerall = var(31)=0
triggerall = AILevel >0
triggerall = roundstate=2
Triggerall = (P2BodyDist X = [60,90]) ||movecontact
triggerall = ((p2bodydist y= [-65,25]))
triggerall = p2statetype=S || p2statetype=L
triggerall = var(59)>1
Triggerall = (Random <=23*AIlevel) && var(31)=0
trigger1 =(ctrl || stateno=20||stateno=[100,105])&& (p2movetype=H||p2bodydist x=[80,130]) && helper(10003),var(11)=0&& helper(10003),var(10)=0 && p2statetype!=L
trigger2 = (stateno = 250) &&(movecontact&&AILevel<=4 || movehit&&AILevel>4)
trigger3 = (stateno = 240) &&(movecontact&&AILevel<=4 || movehit&&AILevel>4)
trigger4 = (stateno = 440) &&(movecontact&&AILevel<=4 || movehit&&AILevel>4)
trigger5 = (stateno = 450)&&(movecontact&&AILevel<=4 || movehit&&AILevel>4)
trigger6 = anim=301 &&(movecontact&&AILevel<=4 || movehit&&AILevel>4)
trigger7= stateno=1100 && animelemtime(5)>0
trigger8 = stateno=220 && moveguarded && AIlevel >4
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = helper(10003),var(8)=0
triggerall = var(31)=0
triggerall = AILevel >0
triggerall = power >=3000
triggerall = roundstate=2
Triggerall = (P2BodyDist X = [60,90]) && p2movetype!=A ||movecontact
triggerall = ((p2bodydist y= [-65,25]))
triggerall = p2statetype!=A && p2statetype!=L
triggerall = var(59)>1
Triggerall = (Random <=26*AIlevel) && var(31)=0
trigger1 =(ctrl || stateno=20||stateno=[100,105])
trigger2= stateno=450  &&(movecontact&&AILevel<=4 || moveguarded&&AILevel>4)
trigger3= stateno=220  &&(movecontact)
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, AIB]
type = ChangeState
value = 1020
triggerall = helper(10003),var(8)=0
triggerall = var(31)=0
triggerall = AILevel >0
triggerall = roundstate=2
Triggerall = p2statetype=L&& (P2BodyDist X <=130&&enemy,backedgedist<40 ||P2BodyDist X = [70,150])
triggerall = ((p2bodydist y= [-65,25])) || var(59)<4
triggerall = p2statetype!=A
Triggerall = (Random <=25*AIlevel) && var(31)=0
trigger1 = (ctrl || stateno=20||stateno=[100,105]) && (p2stateno=10612||p2stateno=20006||p2stateno=5120  )

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, AIB]
type = ChangeState
value = 1010
triggerall = helper(10003),var(8)=0
triggerall = var(31)=0
triggerall = AILevel >0
triggerall = roundstate=2
Triggerall = (P2BodyDist X = [0,cond(var(59)>3,130,100)]) ||movecontact
triggerall = ((p2bodydist y= [-35,25]) && statetype=A) || var(59)<4 &&(p2bodydist y= [-55,25]) || (p2bodydist y= [-45,-15]) && statetype!=A || movehit
triggerall = p2statetype!=L
Triggerall = (Random <=45*AIlevel) && var(31)=0
trigger1 = (stateno = 220) && movecontact && p2statetype=A && var(59)<4
trigger2 = ctrl && (enemy,hitfall || p2movetype=H && p2statetype=A) && var(59)>=4 && statetype!=A
trigger3 = (ctrl || stateno=20||stateno=[100,105])&& (p2movetype=H||p2bodydist x=[80,110]) && helper(10003),var(11)=0&& helper(10003),var(10)=0 && var(59)>=4 && statetype!=A
trigger4 = (stateno = 640) && movecontact&&p2statetype=A && enemy,backedgebodydist <25
trigger5 = ctrl && (enemy,hitfall || p2movetype=H && p2statetype=A) && enemy,backedgebodydist <25 && statetype=A
trigger6= stateno=450 && movehit && enemy,backedgebodydist >70
trigger7=(stateno = 220) && movecontact && p2statetype!=A && var(59)>=4
;---------------------------------------------------------------------------
;Light Kung Fu Palm
[State -1, AIP]
type = ChangeState
value = 1000
triggerall = helper(10003),var(8)=0
triggerall = var(31)=0
triggerall = AILevel >0
triggerall = roundstate=2
Triggerall = (P2BodyDist X = [60,cond(var(59)>1,110,cond(var(59)>3,130,90))]) ||movecontact
triggerall = ((p2bodydist y= [-55,25]))
triggerall = p2statetype!=L
triggerall = anim!=211 || var(59)<4
Triggerall = (Random <=23*AIlevel) && var(31)=0
trigger1 =ctrl &&p2movetype=A
trigger2 = (stateno = 210) &&(movecontact&&AILevel<=4 || movehit&&AILevel>4&&p2statetype=A)
trigger3 = (stateno = 240) &&(movecontact&&AILevel<=4 || movehit&&AILevel>4&&p2statetype=A)
trigger4 = (stateno = 230)&& movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 440) && movecontact
trigger8= (stateno = 450)&& movecontact
trigger9 = (stateno = 220) &&(movecontact&&AILevel<=4 || movehit&&AILevel>4&&(var(59)<4&&p2statetype=A||p2statetype!=A))
trigger10= (stateno = 250) && (movecontact&&AILevel<=4 || movehit&&AILevel>4&&p2statetype=A)
trigger11 = (stateno = 640) && movecontact&&p2statetype=A
trigger12 = anim=301 && movecontact
trigger13= stateno=1100 && animelemtime(5)>0 
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, AI]
type = ChangeState
value = 1052
triggerall = helper(10003),var(8)=0
triggerall= statetype != A|| stateno=[100,105]
triggerall = var(31)=0
triggerall = numhelper(1053)=0
triggerall = AILevel >0
triggerall = roundstate=2
Triggerall = (P2BodyDist X >= 120 && p2statetype=A) ||P2BodyDist X >= 160 || movehit
triggerall = ((p2bodydist y= [-85,0]))
triggerall = p2statetype!=L
Triggerall = (Random <=23*AIlevel) && var(31)=0
trigger1 =ctrl ;Use combo condition (above)
trigger2 = (stateno = 410) && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4)
trigger3 = (stateno = 450) && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4)
trigger4 = anim=301  && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4)
trigger5= stateno=250 && movehit&&p2statetype=A
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, AI]
type = ChangeState
value = 1051
triggerall = helper(10003),var(8)=0
triggerall= statetype != A|| stateno=[100,105]
triggerall = var(31)=0
triggerall = AILevel >0
triggerall = numhelper(1053)=0
triggerall = roundstate=2
Triggerall = (P2BodyDist X >= 70)
triggerall = ((p2bodydist y= [-55,-35])||p2statetype!=A)
triggerall = p2statetype!=L
Triggerall = (Random <=23*AIlevel) && var(31)=0
trigger1 =ctrl ;Use combo condition (above)
trigger2 = (stateno = 410) && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4)
trigger3 = (stateno = 450) && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4)
trigger4 = anim=301  && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4)
trigger5= stateno=1100 && animelemtime(5)>0 && (random/25*AIlevel)
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, AI]
type = ChangeState
value = 1050
triggerall = helper(10003),var(8)=0
triggerall= statetype != A|| stateno=[100,105]
triggerall = var(31)=0
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = numhelper(1053)=0
Triggerall = (P2BodyDist X >= 70)
triggerall = ((p2bodydist y= [-55,-35])||p2statetype!=A)
triggerall = p2statetype!=L
Triggerall = (Random <=23*AIlevel) && var(31)=0
trigger1 =ctrl ;Use combo condition (above)
trigger2 = (stateno = 410) && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4)
trigger3 = (stateno = 450) && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4)
trigger4 = anim=301  && (movecontact&&AILevel<=4 || moveguarded&&AILevel>4)
trigger5= stateno=1100 && animelemtime(5)>0 && (random/25*AIlevel)

;-------------------------------------------------
[state -1, AI jump]
type = changestate
triggerall=AILevel>0
triggerall = p2statetype !=L|| p2stateno=5120|| p2stateno=10612
triggerall = (p2stateno!=[5090,5119]) &&(p2stateno!=[5121,5899]) 
triggerall = statetype != A
triggerall = roundstate=2
trigger1 = ctrl && var(30)=1
trigger2= movehit && stateno=420
value = 40


[State -1, AI run]
type=changestate
value=100
triggerall = roundstate = 2
triggerall=AILevel >0 && statetype=S && ctrl
triggerall = p2bodydist y =[-150,0]
triggerall = p2movetype!=A
triggerall = stateno!=100 
trigger1= (stateno!=[100,105]) && p2movetype!=A && (p2bodydist x=[100,788])&& random < 149
trigger2= numprojid(10001)>1 && ctrl && p2bodydist x >35 && p2movetype!=A
trigger3 = p2statetype=L && var(31)=23 && p2bodydist x >40 && ctrl
trigger4 = (var(31)=9||var(31)=110) && p2bodydist x >90 && ctrl && stateno!=100
trigger5 = (var(31)=11) && p2bodydist x >40 && ctrl && stateno!=100
trigger6 = var(42)=1 && p2statetype!=A && ctrl && p2bodydist x >28
trigger7 = (var(31)=35 || var(31)=140) && p2bodydist x >60 && ctrl && stateno!=100
[State -1, AI run]
type=changestate
value=20
triggerall = roundstate = 2
triggerall = p2stateno!=834 || p2bodydist x >80|| var(31)>0
triggerall=AILevel>0 && statetype=S && ctrl && (Random <=31*AIlevel) || var(31)>0
triggerall = p2movetype!=H
triggerall=p2statetype!=L
trigger1= (stateno!=[20,105]) && p2movetype!=A && (p2bodydist x=[20,109]) && var(31)=0
trigger2 = var(31)=21 && (p2bodydist x <25 || p2bodydist x >45) && ctrl
trigger3 = p2bodydist x<20 && p2statetype=L && var(31)=0 

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 196
triggerall =AIlevel >0 && var(6)=0 && p2bodydist x =[30,85]
triggerall = random > 2*AIlevel
triggerall = p2statetype=L && p2stateno!=[5100,5120]
triggerall = var(31)=0
trigger1 = statetype != A
trigger1 = ctrl

[State -1, AIRun Back]
type = ChangeState
value = 105
triggerall = AILevel >0
triggerall = roundstate=2
triggerall = stateno !=105
triggerall = statetype != A
triggerall = random < 149|| var(31)=9
triggerall = backedgebodydist >30
triggerall = roundstate = 2
triggerall =var(31)=0 || var(31)=9||var(31)=22
trigger1 = ( p2movetype = A) && (p2bodydist x=[-99,100])&& (ctrl || stateno=20)
trigger2 = p2movetype=A && prevstateno=140 && (ctrl || stateno=20)
trigger3 = (var(31)=9||var(31)=22) && frontedgedist <55 && ctrl


;-------------------------------------------------------------------------
[State -1,SpinningClothesline]
type = ChangeState
value = 1300
triggerall = command = "3p"
triggerall = AILevel =0
triggerall = statetype!=A
triggerall = var(59)>2
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = anim=301 && movecontact
trigger14= stateno=1100 && animelemtime(5)>0
trigger15 = anim=302 && movecontact
trigger16= anim=303 && movecontact
;----------------------------------------------------------------------------
[State -1,SpinningLariat]
type = ChangeState
value = 1301
triggerall = command = "3k"
triggerall = AILevel =0
triggerall = statetype!=A
triggerall = var(59)>2
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = anim=301 && movecontact
trigger14= stateno=1100 && animelemtime(5)>0
trigger15 = anim=302 && movecontact
trigger16 = anim=303 && movecontact
;---------------------------------------------------------------------------
[State -1, Cosplay]
type = ChangeState
value = 3100
triggerall = command = "DeadRising"
triggerall = power >= 3000
triggerall = AILevel =0
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = movecontact&&stateno=[1000,1020]
trigger14 = stateno=651 
trigger15 = movecontact&&stateno=[1100,1120]
trigger16 = anim=301 && movecontact
trigger17= stateno=1100 && animelemtime(5)>0
trigger18 = stateno=900 && animelemtime(3)>0
trigger19 = movecontact&&stateno=[1300,1301]
trigger20 = anim=302 && movecontact
trigger21 = anim=303 && movecontact
;---------------------------------------------------------------------------
[State -1, Cosplay]
type = ChangeState
value = 3050
triggerall = command = "GoCarting"
triggerall = power >= 1000
triggerall = AILevel =0
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = movecontact&&stateno=[1000,1020]
trigger14 = stateno=651 
trigger15 = movecontact&&stateno=[1100,1120]
trigger16 = anim=301 && movecontact
trigger17= stateno=1100 && animelemtime(5)>0
trigger18 = stateno=900 && animelemtime(3)>0
trigger19 = movecontact&&stateno=[1300,1301]
trigger20 = anim=302 && movecontact
trigger21 = anim=303 && movecontact
;---------------------------------------------------------------------------
[State -1, Cosplay]
type = ChangeState
value = 3000+var(55)
triggerall = command = "CosplaySuper"
triggerall = power >= 1000
triggerall = AILevel =0
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = movecontact&&stateno=[1000,1020]
trigger14 = stateno=651 
trigger15 = movecontact&&stateno=[1100,1120]
trigger16 = anim=301 && movecontact
trigger17= stateno=1100 && animelemtime(5)>0
trigger18 = stateno=900 && animelemtime(3)>0
trigger19 = movecontact&&stateno=[1300,1301]
trigger20 = anim=302 && movecontact
trigger21 = anim=303 && movecontact
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.

;---------------------------------------------------------------------------
;Fast Kung Fu Knee (1/3 super bar)
;[State -1, Fast Kung Fu Knee]
;type = ChangeState
;value = 1070
;triggerall = command = "FF_ab"
;triggerall = power >= 330
;trigger1 = var(1) ;Use combo condition (above)
;
;---------------------------------------------------------------------------
;Light Kung Fu Knee
;[State -1, Light Kung Fu Knee]
;type = ChangeState
;value = 1050
;triggerall = command = "FF_a"
;trigger1 = var(1) ;Use combo condition (above)
;
;---------------------------------------------------------------------------
;Strong Kung Fu Knee
;[State -1, Strong Kung Fu Knee]
;type = ChangeState
;value = 1060
;triggerall = command = "FF_b"
;trigger1 = var(1) ;Use combo condition (above)
;
;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)
;[State -1, Fast Kung Fu Palm]
;type = ChangeState
;value = 1020
;triggerall = command = "QCF_xy"
;triggerall = power >= 330
;trigger1 = var(1) ;Use combo condition (above)


[State -1, flashkick]
type = ChangeState
value = 1351
triggerall = statetype!=A
triggerall = command = "DU_K"
triggerall = var(18)>40
triggerall = AILevel =0
triggerall = var(59)>3
trigger1 =ctrl ||stateno=40;Use combo condition (above)
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = anim=301 && movecontact
trigger14= stateno=1100 && animelemtime(5)>0
trigger15 = anim=302 && movecontact
trigger16 = anim=303 && movecontact
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1,item throw]
type = ChangeState
value = 1052
triggerall = statetype!=A
triggerall = AILevel =0
triggerall = numhelper(1053)=0
triggerall = command = "QCB_z"
trigger1 =ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = anim=301 && movecontact
trigger14= stateno=1100 && animelemtime(5)>0
trigger15 = anim=302 && movecontact
trigger16 = anim=303 && movecontact
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, item throw]
type = ChangeState
value = 1051
triggerall = statetype!=A
triggerall = numhelper(1053)=0
triggerall = AILevel =0
triggerall = command = "QCB_y"
trigger1 =ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = anim=301 && movecontact
trigger14= stateno=1100 && animelemtime(5)>0
trigger15 = anim=302 && movecontact
trigger16 = anim=303 && movecontact
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, item throw]
type = ChangeState
value = 1050
triggerall = statetype!=A
triggerall = AILevel =0
triggerall = numhelper(1053)=0
triggerall = command = "QCB_x"
trigger1 =ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = anim=301 && movecontact
trigger14= stateno=1100 && animelemtime(5)>0
trigger15 = anim=302 && movecontact
trigger16 = anim=303 && movecontact
;---------------------------------------------------------------------------
;Light Kung Fu Palm
[State -1, Air roundhouse]
type = ChangeState
value = 1150
triggerall = AILevel =0
triggerall = command = "QCB_a"||command = "QCB_b"||command = "QCB_c"
triggerall = var(59)>1
trigger1 =ctrl &&statetype=A ;Use combo condition (above)
trigger2 = (stateno = 600) && movecontact
trigger3= (stateno = 610)&& movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
trigger6= (stateno = 650) && movecontact
trigger7= stateno=1100 && animelemtime(5)>0
;---------------------------------------------------------------------------
;Light Kung Fu Palm
[State -1, plunger]
type = ChangeState
value = 1000
triggerall = AILevel =0
triggerall = command = "QCF_x"
trigger1 =ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = (stateno = 600) && movecontact
trigger14= (stateno = 610)&& movecontact
trigger15 = (stateno = 630) && movecontact
trigger16 = (stateno = 640) && movecontact
trigger17= (stateno = 650) && movecontact
trigger18 = anim=301 && movecontact
trigger19= stateno=1100 && animelemtime(5)>0
trigger20 = anim=302 && movecontact
trigger21 = anim=303 && movecontact
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, homerun]
type = ChangeState
value = 1010
triggerall = AILevel =0
triggerall = command = "QCF_y"
trigger1 =ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = anim=301 && movecontact
trigger14 = (stateno = 600) && movecontact
trigger15= (stateno = 610)&& movecontact
trigger16 = (stateno = 630) && movecontact
trigger17 = (stateno = 640) && movecontact
trigger18= (stateno = 650) && movecontact
trigger19= stateno=1100 && animelemtime(5)>0
trigger20 = anim=302 && movecontact
trigger21 = anim=303 && movecontact
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, hammer swing]
type = ChangeState
value = 1020
triggerall = AILevel =0
triggerall = statetype!=A
triggerall = command = "QCF_z"
trigger1 =ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = anim=301 && movecontact
trigger14= stateno=1100 && animelemtime(5)>0
trigger15 = anim=302 && movecontact
trigger16 = anim=303 && movecontact
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, feint]
type = ChangeState
value = 1100
triggerall = AILevel =0
triggerall = statetype!=A
triggerall = var(59)>1
triggerall = command = "QCF_a"
trigger1 =ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = anim=301 && movecontact
trigger14= anim=302 && movecontact
trigger15 = anim=303 && movecontact
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, sweep]
type = ChangeState
value = 1110
triggerall = AILevel =0
triggerall = statetype!=A
triggerall = var(59)>1
triggerall = command = "QCF_b"
trigger1 =ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = anim=301 && movecontact
trigger14= stateno=1100 && animelemtime(5)>0
trigger15= anim=302 && movecontact
trigger16 = anim=303 && movecontact
;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, roundhouse]
type = ChangeState
value = 1120
triggerall = AILevel =0
triggerall = statetype!=A
triggerall = var(59)>1
triggerall = command = "QCF_c"
trigger1 =ctrl ;Use combo condition (above)
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = anim=301 && movecontact
trigger14= stateno=1100 && animelemtime(5)>0
trigger15= anim=302 && movecontact
trigger16 = anim=303 && movecontact
;---------------------------------------------------------------------------
[State -1,command roll......it doesnt suck]
type = ChangeState
value = 900
triggerall = (command = "DDP")
triggerall = AILevel =0
triggerall = var(59)>1
triggerall = stateno!=210 && stateno!=610
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 450) && movecontact
trigger12= (stateno = 250) && movecontact
trigger13 = anim=301 && movecontact
trigger14= stateno=1100 && animelemtime(5)>0
trigger15= anim=302 && movecontact
trigger16 = anim=303 && movecontact
;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;[State -1, Fast Kung Fu Upper]
;type = ChangeState
;value = 1120
;triggerall = command = "upper_xy"
;triggerall = power >= 330
;trigger1 = var(1) ;Use combo condition (above)
;
;---------------------------------------------------------------------------
;Light Kung Fu Upper
;[State -1, Light Kung Fu Upper]
;type = ChangeState
;value = 1100
;triggerall = command = "upper_x"
;trigger1 = var(1) ;Use combo condition (above)
;
;---------------------------------------------------------------------------
;Strong Kung Fu Upper
;[State -1, Strong Kung Fu Upper]
;type = ChangeState
;value = 1110
;triggerall = command = "upper_y"
;trigger1 = var(1) ;Use combo condition (above)
;
;---------------------------------------------------------------------------
;Fast Kung Fu Blow (1/3 super bar)
;[State -1, Fast Kung Fu Blow]
;type = ChangeState
;value = 1220
;triggerall = command = "QCB_xy"
;triggerall = power >= 330
;trigger1 = var(1) ;Use combo condition (above)
;
;---------------------------------------------------------------------------
;Light Kung Fu Blow
;[State -1, Light Kung Fu Blow]
;type = ChangeState
;value = 1200
;triggerall = command = "QCB_x"
;trigger1 = var(1) ;Use combo condition (above)
;
;---------------------------------------------------------------------------
;Strong Kung Fu Blow
;[State -1, Strong Kung Fu Blow]
;type = ChangeState
;value = 1210
;triggerall = command = "QCB_y"
;trigger1 = var(1) ;Use combo condition (above)
;
;
;
;---------------------------------------------------------------------------
;Far Kung Fu Zankou
;[State -1, Far Kung Fu Zankou]
;type = ChangeState
;value = 1420
;triggerall = command = "QCF_ab"
;triggerall = power >= 330
;trigger1 = var(1) ;Use combo condition (above)
;
;---------------------------------------------------------------------------
;Light Kung Fu Zankou
;[State -1, Light Kung Fu Zankou]
;type = ChangeState
;value = 1400
;triggerall = command = "QCF_a"
;trigger1 = var(1) ;Use combo condition (above)
;
;---------------------------------------------------------------------------
;Strong Kung Fu Zankou
;[State -1, Strong Kung Fu Zankou]
;type = ChangeState
;value = 1410
;triggerall = command = "QCF_b"
;trigger1 = var(1) ;Use combo condition (above)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = AILevel =0
trigger1 = command = "FF"
triggerall= statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = AILevel =0
trigger1 = command = "BB"
triggerall= statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800+((statetype=A)*30)
triggerall = AILevel =0
triggerall = command = "x"&&command="a"
triggerall = ctrl
triggerall = p2bodydist y =[-20,20]
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 25
trigger1 = (p2statetype != A && statetype=S) || (statetype=A && p2statetype=A)  
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 25
trigger2 = (p2statetype != A && statetype=S) || (statetype=A && p2statetype=A)  
trigger2 = p2movetype != H

;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = command = "x"&&command="a" && command="holddown"
triggerall = ctrl
triggerall = AILevel =0
triggerall = p2bodydist y =[-20,20]
triggerall = stateno != 100
triggerall = var(59)>2
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 25
trigger1 = (p2statetype != A && statetype=C) 
trigger1 = p2movetype != H

;launch
[State -1, upfwd]
Type = changestate
value = 40
triggerall = AILevel =0
triggerall = command = "holdup"
triggerall = AIlevel =0
trigger1 = (StateNo = 420)&& movecontact
;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = AILevel =0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = AILevel =0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)|| (stateno = 230)|| (stateno = 200)
trigger2 =  movecontact
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 211
triggerall = AILevel =0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = anim!=211
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = AILevel =0
triggerall = command = "z"
triggerall = command != "holddown"
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
trigger10= anim=303&& movecontact
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = AILevel =0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl


;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = AILevel =0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)|| (stateno = 230)|| (stateno = 200)
trigger2 =  movecontact


;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = AILevel =0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = AILevel =0
triggerall = command = "QCB_s" && var(6)=0
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = AILevel =0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = AILevel =0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = AILevel =0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)|| (stateno = 230)|| (stateno = 200)
trigger2 =  movecontact
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = AILevel =0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = AILevel =0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 440
triggerall = AILevel =0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall= statetype != A|| stateno=[100,105]
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)|| (stateno = 230)|| (stateno = 200)
trigger2 =  movecontact
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = AILevel =0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A|| stateno=[100,105]
trigger1 = ctrl 
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 240) && movecontact
trigger5 = (stateno = 230)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 440) && movecontact
trigger9 = (stateno = 430)&& movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = AILevel =0
triggerall = command = "x"
trigger1 = statetype = A && stateno!=[100,105]
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = AILevel =0
triggerall = command = "y"
trigger1 = statetype = A && stateno!=[100,105]
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = AILevel =0
triggerall = command = "z"
trigger1 = statetype = A && stateno!=[100,105]
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610|| stateno = 640  ;jump_x or jump_a
trigger2 = movecontact
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = AILevel =0
triggerall = command = "a"
trigger1 = statetype = A && stateno!=[100,105]
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = AILevel =0
triggerall = command = "b"
trigger1 = statetype = A && stateno!=[100,105]
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 650
triggerall = AILevel =0
triggerall = command = "c"&& command!="holddown"
trigger1 = statetype = A && stateno!=[100,105]
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610|| stateno = 640  ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 651
triggerall = AILevel =0
triggerall = command = "c" && command="holddown"
trigger1 = statetype = A && stateno!=[100,105]
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610|| stateno = 640  ;jump_x or jump_a
trigger2 = movecontact