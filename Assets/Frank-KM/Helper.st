;---------------------------------------------------------------------------
[Statedef 1]
type    = A
movetype= I
physics = N
velset = 0,0
anim=1
sprpriority=1
[State 5900, 3] ;Change palette
type = RemapPal
trigger1 =1
source = 1,palno
dest = 1,(root,palno)

[State 0, BindToRoot]
type = BindToRoot
trigger1 =root,animelemtime(2)>=0 && root,animelemtime(3)<0 
time = 1
facing = 1
pos = 10,-99
ignorehitpause =1 
persistent =1 
[State 0, BindToRoot]
type = BindToRoot
trigger1 =root,animelemtime(3)>=0 && root,animelemtime(4)<0 
trigger2 =root,animelemtime(5)>=0 && root,animelemtime(6)<0 
time = 1
facing = 1
pos = 10,-100
ignorehitpause =1 
persistent =1 
[State 0, BindToRoot]
type = BindToRoot
trigger1 =root,animelemtime(4)>=0 && root,animelemtime(5)<0 
time = 1
facing = 1
pos =10,-101
ignorehitpause =1 
persistent =1 

[State 0, BindToRoot]
type = BindToRoot
trigger1 =root,animelemtime(6)>=0 
time = 1
facing = 1
pos =10,-99
ignorehitpause =1 
persistent =1 

[State 0, BindToRoot]
type = BindToRoot
trigger1 =root,animelemtime(1)>=0 && root,animelemtime(2)<0 
time = 1
facing = 1
pos =10,-98
ignorehitpause =1 
persistent =1 



[State 0, DestroySelf]
type = DestroySelf
trigger1 =root,anim!=0 
;ignorehitpause = 
;persistent = 
;---------------------------------------------------------------------------
[Statedef 2]
type    = A
movetype= I
physics = N
velset = -2,5
;anim=0
[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(10) = %d  vel x = %f"
params = var(5),vel x
ignorehitpause = 1
;persistent = 
[State 0, VelSet]
type = VelSet
trigger1 = var(3)
x = 0
y = 0
;ignorehitpause = 
;persistent = 
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =anim=0 
flag = invisible


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;value2 = S,NA
time = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = !var(3) && anim!=10003&&anim!=9613
value = 25*time
;scale = 
ignorehitpause =1 
[State 0, AngleDraw]
type = AngleDraw
trigger1 = !var(3) && (anim=10003||anim=9613||anim=9303)
value = 10*time
;scale = 
ignorehitpause =1
;persistent = 
[State 0, VarSet]
type = parentVarSet
trigger1 = time <5 
v = 0    ;fv = 10
value = 0
;ignorehitpause = 
;persistent =

;bat 
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=9621
trigger3 = anim=3210
trigger4 = anim=10010
trigger5 = anim=10012
trigger6 = anim=10026
value = 9621
elem = 11 
;broom
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=9302
trigger2 = anim=9412
trigger3 = anim=9612
trigger4 = anim=9617
trigger5 = anim=10002
trigger6 = anim=10022
value = 9302
elem = 11 

;spike bat
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=9623
trigger2 = anim=10011
trigger3 = anim=10013
trigger4 = anim=10027
value = 9623
elem = 11 

;weed whacker
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=10003
value = 10003
elem = 8
;broom with weapon
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=9613
trigger2 = anim=9618
trigger3 = anim=9413
value = 9613
elem = 10
[State 1010, 1]
type = PlaySnd
triggerall=var(2)=1
trigger1 = anim=9621
trigger2 = anim=10010
trigger3 = anim=10011
trigger4 = anim=9623
trigger5 = anim=10012
trigger6 = anim=10013
trigger7 = anim=10027
trigger8 = anim=10026
trigger9 = anim=9303
trigger10 = anim=9304
value = S4, 0
persistent=0
ignorehitpause=1


[State 1010, 1]
type = PlaySnd
triggerall=var(2)=1 && !var(3)
trigger1 = anim=10016
trigger2 = anim=9622
trigger3 = anim=9223
value = S4, 1
persistent=0
ignorehitpause=1

[State 1010, 1]
type = PlaySnd
triggerall=var(2)=1 
trigger1 = anim=9221
trigger2 = anim=9624
trigger3 = anim=10017
trigger4 = anim=10014
trigger5 = anim=10018
value = S4, 2
persistent=0
ignorehitpause=1
[State 1010, 1]
type = PlaySnd
triggerall=var(2)=1 
trigger1 = anim=9616
trigger2 = anim=9611
trigger3 = anim=9615
trigger4 = anim=9411
trigger5 = anim=9302
trigger6 = anim=9624
trigger7 = anim=9613
value = S4, 3
persistent=0
ignorehitpause=1
;plunger
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=9616
trigger2 = anim=9611
trigger3 = anim=9301
trigger4 = anim=9411
trigger5= anim=10001
trigger6= anim=10021

value = 9301
elem = 12

;pan
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=9221
value = anim
elem = 7
;chainsaw
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=10014
trigger1 = anim=10015
value = anim
elem = 6

[State 0, Turn]
type = Turn
trigger1 = ishelper(34)&&time=0
;ignorehitpause = 
;persistent = 

;ignorehitpause = 
;persistent = 
;axe
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=9622
trigger2 = anim=9223
value = 9622
elem = 11
;hammer
 [State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=9624
trigger2 = anim=10017
value = 9624
elem = 11

;reaper
 [State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=9303
trigger2 = anim=9304
trigger3= anim=9224
value = 9303
elem = 11

;elec hammer
  [State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim=10018
trigger2 = anim=9625
value = 10018
elem = 10
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = var(3) && anim=10016
value = anim
elem = 9

[State 0, VelAdd]
type = VelAdd
trigger1 =!var(3)
y = .55

[State 0, VelSet]
type = VelSet
trigger1 =var(2) &&!var(3)
y = -6.5
persistent=0

[State 0, VarSet]
type = VarSet
trigger1 =pos y >-5  ||var(3)
v = 2   ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1 
flag = noshadow

[State 0, VarSet]
type = Varadd
trigger1 = var(2)
v = 1    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 


[State 0, Trans]
type = Trans
trigger1 = var(1)=8
trans = addalpha;, sub
alpha = 175,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=9
trans = addalpha;, sub
alpha = 150,250
[State 0, Trans]
type = Trans
trigger1 =var(1)=10
trans = addalpha;, sub
alpha = 125,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=11
trans = addalpha;, sub
alpha = 100,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=12
trans = addalpha;, sub
alpha = 75,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=13
trans = addalpha;, sub
alpha = 50,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=14
trans = addalpha;, sub
alpha = 25,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=15
trans = addalpha;, sub
alpha = 10,250


[State 0, DestroySelf]
type = DestroySelf
trigger1 =var(1)>15

;---------------------------------------------------------------------------
[Statedef 3]
type    = A
movetype= I
physics = N
velset = 0,0
anim=(root,anim)+9001
sprpriority=2
[State 0, VarSet]
type = VarSet
trigger1 = time=0|| root,animelem=1 && root,anim=223
v = 0    ;fv = 10
value = root,stateno
;ignorehitpause = 
;persistent = 

[State 0, VarSet]
type = VarSet
trigger1 = time=0 || root,animelem=1 && root,anim=303|| root,animelem=1 && root,anim=223
v = 40    ;fv = 10
value = (root,anim)+9001
;ignorehitpause = 
;persistent = 
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;value2 = S,NA
time = 1
;ignorehitpause = 
;persistent = 

[State 0, VarSet]
type = VarSet
trigger1 =time=0 
v = 5    ;fv = 10
value = (var(40))+(ifelse((root,var(59)>=4),4,ifelse((root,var(59)=[2,3]),2+(random%2),(random%2))))
;ignorehitpause = 
;persistent = 

[State 0, VarSet]
type = VarSet
trigger1 = root,stateno=1020 && root,animelemtime(11)>0
v = 3 ;fv = 10
value = 1
;======f+mp
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos = -41,-56
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem = 1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos = -40,-70
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem = 2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1

pos = -37,-72
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem = 3
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 1

pos = -26,-71
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem = 4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 1

pos = 19,-73
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40)
elem = 5
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1

pos = 82,-73
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem = 6
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
time = 1

pos = 82,-71
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem = 7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
time = 1

pos = 83,-76
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = var(40)
elem = 8
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
time = 1

pos = 61,-63
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
value = var(40)
elem = 9
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
time = 1

pos = -1,-57
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
value = var(40)
elem = 10
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
time = 1

pos = -36,-65
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
value = var(40)
elem = 11
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(13)>=0 && root,animelemtime(14)<0
time = 1

pos = -48,-72
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=300
trigger1 = root,animelemtime(13)>=0 && root,animelemtime(14)<0
value = var(40)
elem = 12
ignorehitpause = 1
;====
;======f+mp2
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos = -6,-71
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem = 1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos = -2,-74
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem = 2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1

pos =-28,-74
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem = 3
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 1

pos =-12,-76
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem = 4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 1

pos =22,-73
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40)
elem = 5
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1

pos =98,-72
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem = 6
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
time = 1

pos = 100,-71
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem = 7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
time = 1

pos = 88,-77
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = var(40)
elem = 8
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
time = 1

pos = 74,-65
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
value = var(40)
elem = 9
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
time = 1

pos =10,-54
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
value = var(40)
elem = 10
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
time = 1

pos =-50,-68
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=301
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
value = var(40)
elem = 11
ignorehitpause = 1

;====
;======f+mp4+
[State 0, SprPriority]
type = SprPriority
trigger1 = root,anim=302
trigger1 =  root,animelemtime(8)<=0
value = 6
;ignorehitpause = 
;persistent = 

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos = -16,-61
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem = 1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos = 3,-57
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem = 2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1

pos = 16,-49
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem = 3
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(7)<0
time = 1

pos = 28,-73
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem = 4
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40)
elem = 5
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(9)<0
time = 1

pos = 14,-79
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem = 6
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem = 7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
time = 1

pos = -22,-94
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = var(40)
elem = 8
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
time = 1

pos =-21,-85
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
value = var(40)
elem = 9
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
time = 1

pos =-15,-90
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
value = var(40)
elem = 10
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(12)>=0 
time = 1

pos = 31,-76
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=302
trigger1 = root,animelemtime(12)>=0
value = var(40)
elem = 11
ignorehitpause = 1


;====
;======f+mp4+mp
[State 0, SprPriority]
type = SprPriority
trigger1 = root,anim=303
trigger1 =  root,animelemtime(6)<=0
value = 6
;ignorehitpause = 
;persistent = 

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=303
trigger1 = root,animelemtime(1)>=0 && root,animelemtime(2)<0
time = 1

pos = -25,-86
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=303
trigger1 = root,animelemtime(1)>=0 && root,animelemtime(2)<0
value = var(40)
elem = 1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=303
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos =12,-62
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=303
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem = 2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=303
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(5)<0
time = 1

pos = 26,-62
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=303
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem = 3
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=303
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem = 4
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=303
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(7)<0
time = 1

pos =-24,-67
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=303
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem = 5
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=303
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40)
elem = 6
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=303
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1

pos =-16,-77
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=303
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem = 7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=303
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
time = 1

pos =-30,-61
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=303
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem = 8
ignorehitpause = 1



;====

;======s.hp
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=220 || root,anim=222
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos = -43,-66
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=220 || root,anim=222
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem = 1
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=220 || root,anim=222
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos = -48,-114
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=220 || root,anim=222
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem = 2
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=220 || root,anim=222
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1

pos = -41,-121
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=220 || root,anim=222
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem = 3
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=220 || root,anim=222
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 1

pos = -32,-112
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=220 || root,anim=222
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem =4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=220 || root,anim=222
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 1

pos =58,-78
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=220 || root,anim=222
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = root,anim+ifelse(anim=221,9000,9001)
elem = 5
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=220 || root,anim=222
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1

pos =-18,-29
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=220 || root,anim=222
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem = 6
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=220 || root,anim=222
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
time = 1

pos =-26,-30
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=220 || root,anim=222
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem =7
ignorehitpause = 1



;=====
;======s.hp4
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(1)>=0 && root,animelemtime(2)<0
time = 1

pos = -50,-61
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(1)>=0 && root,animelemtime(2)<0
value = var(40)
elem = 1
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos = -9,-96
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem = 2
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos =-6,-114
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem = 3
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1

pos = 3,-112
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem =4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 1

pos =23,-93
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem = 5
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(8)<0
time = 1

pos =0,-48
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40)
elem = 6
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem = 7
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
time = 1
pos =-45,-53
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem =8
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
time = 1
pos =-59,-72
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = var(40)
elem =9
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
time = 1
pos =-59,-69
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
value = var(40)
elem =10
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
time = 1
pos =-61,-67
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
value = var(40)
elem =11
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(12)>=0
time = 1
pos =-26,-53
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=223
trigger1 = root,animelemtime(12)>=0
value = var(40)
elem =12
ignorehitpause = 1
;=====

;=====
;==c.mp
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos =-46,-44
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem =1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos =-70,-72
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(6)<0
time = 1

pos =43,-80
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem =3
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem =4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(8)<0
time = 1

pos =75,-33
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40)
elem =5
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem =6
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = var(40)
elem =7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
time = 1

pos =34,-30
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
value = var(40)
elem =8
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
time = 1

pos =-34,-36
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
value = var(40)
elem =9
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
time = 1

pos =-42,-43
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=410
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
value = var(40)
elem =10
ignorehitpause = 1
;============
;==c.mp lvl 2
[State 0, SprPriority]
type = SprPriority
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
value = 3
;ignorehitpause = 
;persistent = 

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos =-20,-56
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem =1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos =-18,-70
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1

pos =15,-73
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem =3
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem =4
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40)
elem =5
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(7)<0
time = 1

pos =58,-59
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1

pos =55,-37
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem =6
ignorehitpause = 1


[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem =7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
time = 1

pos =-5,-38
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
time = 1

pos =-12,-39 
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[411,412]
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = var(40)
elem =8
ignorehitpause = 1

;============



;==j.mp1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos =-39,-95
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem =1
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 2

pos =-15,-126
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(6)<0
time = 2

pos =91,-64
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem =3
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem =4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 1

pos =-3,-32
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40)
elem =5
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1

pos =-19,-23
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem =6
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
time = 1

pos =-37,-34
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem =7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
time = 1

pos =-25,-57
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = var(40)
elem =8
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(10)>=0
time = 1

pos =43,-47
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=610
trigger1 = root,animelemtime(10)>=0
value = var(40)
elem =9
ignorehitpause = 1
;===
;============
;==j.mp1 lvl 2
[State 0, SprPriority]
type = SprPriority
triggerall =  var(0)=root,stateno
trigger1 = root,anim=612
trigger1 = root,animelemtime(1)>=0 && root,animelemtime(7)<0
value = 3
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[611,612]
trigger1 = root,animelemtime(1)>=0 && root,animelemtime(2)<0
time = 1

pos =-9,-87
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(1)>=0 && root,animelemtime(2)<0
value = var(40)
elem =1
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 2

pos =40,-101
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(5)<0
time = 2

pos =48,-75
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem =3
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem =4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(7)<0
time = 1

pos =37,-55
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem =5
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40)
elem =6
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(9)<0
time = 1

pos =11,-42
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem =7
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem =8
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
time = 1

pos =-5,-50
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = var(40)
elem =9
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(10)>=0 
time = 1

pos =-2,-60
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 =  root,anim=[611,612]
trigger1 = root,animelemtime(10)>=0
value = var(40)
elem =10
ignorehitpause = 1

;===



;==j.mp2
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=615
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos =-24,-107
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=615
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem =1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=615
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos =57,-110
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=615
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=615
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(6)<0
time = 1

pos =56,-42
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=615
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem =3
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=615
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem =4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=615
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(8)<0
time = 1

pos =-18,-50
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=615
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40)
elem =5
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=615
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem =6
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=615
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
time = 1

pos =-26,-52
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=615
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem =7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=615
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
time = 1

pos =-19,-55
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=615
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(4)<0
value = var(40)
elem =8
ignorehitpause = 1
;========
;==j.mp2 lvl 2
[State 0, SprPriority]
type = SprPriority
triggerall =  var(0)=root,stateno
trigger1 = root,anim=617
trigger1 = root,animelemtime(1)>=0 && root,animelemtime(7)<0
value = 3
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[616,617]
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos =-9,-96
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 =root,anim=[616,617]
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem =1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[616,617]
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos =15,-109
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[616,617]
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[616,617]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(6)<0
time = 1

pos =82,-65
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[616,617]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem =3
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[616,617]
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem =4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[616,617]
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(8)<0
time = 1

pos =5,-40
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[616,617]
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40)
elem =5
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 =root,anim=[616,617]
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem =6
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[616,617]
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
time = 1

pos =-2,-40
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[616,617]
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem =7
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[616,617]
trigger1 = root,animelemtime(9)>=0 
time = 1

pos =4,-56
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[616,617]
trigger1 = root,animelemtime(9)>=0
value = var(40)
elem =8
ignorehitpause = 1
;========


;==j.hp
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(1)>=0 && root,animelemtime(2)<0
time = 1

pos =-45,-118
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(1)>=0 && root,animelemtime(2)<0
value = var(5)
elem =1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos =-57,-100
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(5)
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos =-28,-101
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(5)
elem =3
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(6)<0
time = 1

pos =33,-116
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(5)
elem =4
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(5)
elem =5
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(8)<0
time = 1

pos= 34,7
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value =var(5)
elem =6
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(5)
elem =7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(10)<0
time = 1

pos =0,1
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(5)
elem =8
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value =var(5)
elem =9
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
time = 1

pos =36,-34
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
value =var(5)
elem =10
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
time = 1

pos =32,-52
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall =  var(0)=root,stateno
trigger1 = root,anim=620
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
value = var(5)
elem =11
ignorehitpause = 1
;============

;====s.1000
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos =-46,-45
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem =1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos =-52,-46
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1

pos =-7,-48
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0

value = var(40)
elem =3
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 1

pos =53,-52
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
trigger2 = root,animelemtime(16)>=0 && root,animelemtime(17)<0

value = var(40)
elem =4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 1
pos =70,-52
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
trigger2 = root,animelemtime(17)>=0 && root,animelemtime(18)<0

value = var(40)
elem =5
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1
pos =32,-52
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0

value = var(40)
elem =6
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(10)<0
time = 1
pos =16,-57
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem =7
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = var(40)
elem =8
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
time = 1
pos =34,-66
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
value = var(40)
elem =9
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0

time = 1
pos =63,-80
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
value = var(40)
elem =10
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
time = 1
pos =21,-62
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
value = var(40)
elem =11
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(13)>=0 && root,animelemtime(14)<0
time = 1
pos =18,-62
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(13)>=0 && root,animelemtime(14)<0

value = var(40)
elem =12
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(14)>=0 && root,animelemtime(16)<0
time = 1
pos =21,-55
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(14)>=0 && root,animelemtime(15)<0
trigger2 = root,animelemtime(18)>=0 && root,animelemtime(19)<0
value = var(40)
elem =13
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(15)>=0 && root,animelemtime(16)<0
time = 1
pos =17,-55
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(15)>=0 && root,animelemtime(16)<0
trigger2 = root,animelemtime(19)>=0 && root,animelemtime(20)<0
value = var(40)
elem =14
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(16)>=0 && root,animelemtime(17)<0
time = 1
pos =48,-52
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(17)>=0 && root,animelemtime(18)<0
time = 1
pos =68,-52
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(18)>=0 && root,animelemtime(19)<0
time = 1
pos =19,-55
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(19)>=0 && root,animelemtime(20)<0
time = 1
pos =19,-55
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(20)>=0 && root,animelemtime(21)<0
time = 1
pos =13,-50
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(22)>=0 && root,animelemtime(23)<0

time = 1
pos =62,-33
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(20)>=0 && root,animelemtime(21)<0
value = var(40)
elem =15
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(23)>=0 && root,animelemtime(24)<0

time = 1
pos =51,-38
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1000,1001]
trigger1 = root,animelemtime(21)>=0 && root,animelemtime(22)<0
time = 1
pos =15,-48
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]

trigger1 = root,animelemtime(21)>=0 && root,animelemtime(22)<0
value = var(40)
elem =16
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(22)>=0 && root,animelemtime(23)<0
value = var(40)
elem =17
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(23)>=0 && root,animelemtime(24)<0

value = var(40)
elem =18
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(24)>=0 && root,animelemtime(25)<0

time = 1
pos =51,-38
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(24)>=0 && root,animelemtime(25)<0
value = var(40)
elem =19
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(25)>=0 && root,animelemtime(26)<0

time = 1
pos =-15,-61
ignorehitpause = 1


[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(25)>=0 && root,animelemtime(26)<0

value = var(40)
elem =20
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(26)>=0 && root,animelemtime(27)<0

time = 1
pos =-49,-69
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1000,1001]
trigger1 = root,animelemtime(26)>=0 && root,animelemtime(27)<0
value = var(40)
elem =21
ignorehitpause = 1
;=======
;==1002 lvl 4+
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1002
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos =-18,-43
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1002
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem =1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1002
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos =-3,-46
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1002
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1002
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1

pos =37,-51
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1002
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem =3
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1002
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 1

pos =38,-54
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1002
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem =4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1002
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(20)<0
time = 1

pos =39,-56
ignorehitpause = 1


[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=1002
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
trigger2 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
trigger3 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
trigger4 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
trigger5 = root,animelemtime(14)>=0 && root,animelemtime(15)<0
trigger6 = root,animelemtime(16)>=0 && root,animelemtime(17)<0
trigger7 = root,animelemtime(18)>=0 && root,animelemtime(19)<0
value = var(40)
elem =5
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall= root,anim=1002
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
trigger2 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
trigger3 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
trigger4 = root,animelemtime(13)>=0 && root,animelemtime(14)<0
trigger5 = root,animelemtime(15)>=0 && root,animelemtime(16)<0
trigger6 = root,animelemtime(17)>=0 && root,animelemtime(18)<0
trigger7 = root,animelemtime(19)>=0 && root,animelemtime(20)<0
value = var(40)
elem =6
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1002
trigger1 = root,animelemtime(20)>=0 && root,animelemtime(21)<0
time = 1
pos =34,-57
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1002
trigger1 = root,animelemtime(20)>=0 && root,animelemtime(21)<0
value = var(40)
elem =7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1002
trigger1 = root,animelemtime(21)>=0 && root,animelemtime(22)<0
time = 1

pos =10,-52
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1002
trigger1 = root,animelemtime(21)>=0 && root,animelemtime(22)<0
value = var(40)
elem =8
ignorehitpause = 1


;============

;==1022 lvl 4+
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1022
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos =-4,-51
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1022
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = 10003
elem =1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1022
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1

pos =-8,-57
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1022
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value =  10003
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1022
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 1

pos =43,-60
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1022
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value =  10003
elem =3
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1022
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 1

pos =46,-63
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1022
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value =  10003
elem =4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1022
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(21)<0
time = 1

pos =49,-65
ignorehitpause = 1


[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=1022
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
trigger2 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
trigger3 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
trigger4 = root,animelemtime(13)>=0 && root,animelemtime(14)<0
trigger5 = root,animelemtime(15)>=0 && root,animelemtime(16)<0
trigger6 = root,animelemtime(17)>=0 && root,animelemtime(18)<0
trigger7 = root,animelemtime(19)>=0 && root,animelemtime(20)<0
value =  10003
elem =5
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall= root,anim=1022
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
trigger2 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
trigger3 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
trigger4 = root,animelemtime(14)>=0 && root,animelemtime(15)<0
trigger5 = root,animelemtime(16)>=0 && root,animelemtime(17)<0
trigger6 = root,animelemtime(18)>=0 && root,animelemtime(19)<0
trigger7 = root,animelemtime(20)>=0 && root,animelemtime(21)<0
value =  10003
elem =6
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1022
trigger1 = root,animelemtime(21)>=0 && root,animelemtime(22)<0
time = 1
pos =32,-61
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1022
trigger1 = root,animelemtime(21)>=0 && root,animelemtime(22)<0
value =  10003
elem =7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1022
trigger1 = root,animelemtime(22)>=0 && root,animelemtime(23)<0
time = 1

pos =-14,-67
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1022
trigger1 = root,animelemtime(22)>=0 && root,animelemtime(23)<0
value =  10003
elem =8
ignorehitpause = 1

;======bat weak lvl 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1
pos =-24,-99
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = root,anim+8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1
pos =-15,-96
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = root,anim+8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1
pos =-9,-95
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = root,anim+8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 3
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 1
pos =1,-90
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = root,anim+8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(8)<0
time = 1
pos =69,-61
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = root,anim+8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 5
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = root,anim+8999+ifelse(root,var(59)>2,2,root,var(59))
elem =6
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
time = 1
pos =-23,-86
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = root,anim+8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
time = 1
pos =-29,-78
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = root,anim+8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 8
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
time = 1
pos =-5,-70
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1010
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
value = root,anim+8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 9
ignorehitpause = 1
;==========
;======charged 1011
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(1)>=0 && root,animelemtime(2)<0
time = 1
pos =-26,-99
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(1)>=0 && root,animelemtime(2)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1
pos =-28,-96
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1
pos =-4,-78
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 3
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1
pos =-3,-84
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 1
pos =-4,-92
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 5
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 1
pos =-6,-94
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 6
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1
pos =-7,-88
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
time = 1
pos =-1,-87
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 8
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
time = 1
pos =-8,-94
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 9
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
time = 1
pos =-1,-99
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 10
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
time = 1
pos =-5,-114
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 11
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(14)<0
time = 1
pos =-13,-71
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 12
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(13)>=0 && root,animelemtime(14)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 13
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(14)>=0 && root,animelemtime(16)<0
time = 1
pos =62,-80
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(14)>=0 && root,animelemtime(15)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 14
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(15)>=0 && root,animelemtime(16)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 15
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(16)>=0 && root,animelemtime(18)<0
time = 1
pos =28,-109
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(16)>=0 && root,animelemtime(17)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 16
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(17)>=0 && root,animelemtime(18)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 17
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(18)>=0 && root,animelemtime(20)<0
time = 1
pos =-27,-75
ignorehitpause = 1
;[State 0, ChangeAnim]
;type = ChangeAnim
;triggerall =  var(0)=root,stateno
;trigger1 = root,anim=1011
;trigger1 = root,animelemtime(18)>=0 && root,animelemtime(19)<0
;value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
;elem = 18
;ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(19)>=0 && root,animelemtime(20)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 19
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(20)>=0 && root,animelemtime(21)<0
time = 1
pos =-55,-41
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(20)>=0 && root,animelemtime(21)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 20
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(21)>=0 && root,animelemtime(22)<0
time = 1
pos =-57,-27
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(21)>=0 && root,animelemtime(22)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 21
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(22)>=0 && root,animelemtime(23)<0
time = 1
pos =-40,-59
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(22)>=0 && root,animelemtime(23)<0
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 22
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(23)>=0 
time = 1
pos =0,-58
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1011
trigger1 = root,animelemtime(23)>=0 
value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
elem = 23
ignorehitpause = 1
;=====================
;======bat weak lvl 4
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1013
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1
pos =-48,-89
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1013
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem = 1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1013
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1
pos =-45,-96
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1013
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem = 2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1013
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1
pos =60,-77
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1013
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem = 3
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1013
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 6
pos =55,-49
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1013
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem = 4
ignorehitpause = 1
persistent=1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1013
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 1
pos =-18,-46
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1013
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40)
elem = 5
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1013
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1
pos =-12,-48
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1013
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem = 6
ignorehitpause = 1
[State 0, SprPriority]
type = SprPriority
triggerall =  var(0)=root,stateno
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
trigger1 = root,anim=1013
value = 1
;==========
;======bat hold lvl 4
[State 0, BindToRoot]
type = BindToRoot
triggerall = ishelper(3)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1
pos =-7,-74
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = ishelper(3)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem = 1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall = ishelper(3)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1
pos =-27,-41
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = ishelper(3)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem = 2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall = ishelper(3)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(6)<0
time = 1
pos =-56,-83
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = ishelper(3)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem = 3
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = ishelper(3)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem = 4
ignorehitpause = 1
persistent=1
[State 0, BindToRoot]
type = BindToRoot
triggerall = ishelper(3)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 6
pos =-28,-49
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = ishelper(3)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(6)>=0
value = var(40)
elem = 8
ignorehitpause = 1
persistent=1

[State 0, SprPriority]
type = SprPriority
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = ishelper(3)
value = 3
;ignorehitpause = 
;persistent = 


;left hand
[State 0, BindToRoot]
type = BindToRoot
triggerall = ishelper(34)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1
pos =29,-61
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = ishelper(34)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem = 5
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall = ishelper(34)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1
pos =47,-30
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = ishelper(34)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem = 6
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall = ishelper(34)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(6)<0
time = 1
pos =56,-82
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = ishelper(34)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(6)<0
value = var(40)
elem = 7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall = ishelper(34)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 6
pos =38,-73
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = ishelper(34)
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1014
trigger1 = root,animelemtime(6)>=0 
value = var(40)
elem = 9
ignorehitpause = 1
persistent=1



;==========
;====a.1020
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos =-53,-67
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem =1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1

pos =-10,-65
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1020,1021]
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
trigger2 = root,animelemtime(16)>=0 && root,animelemtime(17)<0
time = 1

pos =52,-70
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1020,1021]
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
trigger2 = root,animelemtime(16)>=0 && root,animelemtime(17)<0
value = var(40)
elem =3
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1020,1021]
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
trigger2 = root,animelemtime(17)>=0 && root,animelemtime(18)<0
time = 1

pos =69,-70
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1020,1021]
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
trigger2 = root,animelemtime(17)>=0 && root,animelemtime(18)<0
value = var(40)
elem =4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1020,1021]
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1

pos =30,-75
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1020,1021]
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem =5
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1020,1021]
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(10)<0

time = 1

pos =14,-79
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem =6
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = var(40)
elem =7
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
time = 1

pos =34,-80
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
value = var(40)
elem =8
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
time = 1

pos =63,-95
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
value = var(40)
elem =9
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(14)<0
time = 1
pos =22,-81
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
value = var(40)
elem =10
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(13)>=0 && root,animelemtime(14)<0
value = var(40)
elem =11
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1020,1021]
trigger1 = root,animelemtime(14)>=0 && root,animelemtime(16)<0
trigger2 = root,animelemtime(18)>=0 && root,animelemtime(20)<0
time = 1

pos =20,-75
ignorehitpause = 1
;[State 0, BindToRoot]
;type = BindToRoot
;triggerall =  var(0)=root,stateno
;triggerall = root,anim=[1020,1021]
;trigger1 = root,animelemtime(15)>=0 && root,animelemtime(16)<0
;time = 1
;
;pos =20,-75
;ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1020,1021]
trigger1 = root,animelemtime(14)>=0 && root,animelemtime(15)<0

value = var(40)
elem =12
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1020,1021]
trigger1 = root,animelemtime(15)>=0 && root,animelemtime(16)<0
trigger2 = root,animelemtime(18)>=0 && root,animelemtime(20)<0
value = var(40)
elem =13
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(20)>=0 && root,animelemtime(21)<0
time = 1

pos =14,-69
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1020,1021]
trigger1 = root,animelemtime(20)>=0 && root,animelemtime(21)<0
value = var(40)
elem =14
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(21)>=0 && root,animelemtime(22)<0
time = 1

pos =42,-63
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
triggerall = root,anim=[1020,1021]
trigger1 = root,animelemtime(21)>=0 && root,animelemtime(22)<0

value = var(40)
elem =15
ignorehitpause = 1


;[State 0, BindToRoot]
;type = BindToRoot
;triggerall =  var(0)=root,stateno
;trigger1 = root,anim=1020
;trigger1 = root,animelemtime(19)>=0 && root,animelemtime(20)<0
;time = 1
;
;pos =53,-50
;ignorehitpause = 1
;[State 0, ChangeAnim]
;type = ChangeAnim
;triggerall =  var(0)=root,stateno
;trigger1 = root,anim=1020
;trigger1 = root,animelemtime(19)>=0 && root,animelemtime(20)<0
;value = var(40)
;elem =17
;ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(22)>=0 && root,animelemtime(23)<0
time = 1

pos =71,-53
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(22)>=0 && root,animelemtime(23)<0
value = var(40)
elem =16
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(23)>=0 && root,animelemtime(24)<0
time = 1

pos =53,-50
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(23)>=0 && root,animelemtime(24)<0
value = var(40)
elem =17
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(24)>=0 && root,animelemtime(25)<0
time = 1

pos =-6,-74
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(24)>=0 && root,animelemtime(25)<0
value = var(40)
elem =18
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(25)>=0 && root,animelemtime(26)<0
time = 1

pos =-44,-89
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1020,1021]
trigger1 = root,animelemtime(25)>=0 && root,animelemtime(6)<0
value = var(40)
elem =19
ignorehitpause = 1
;==========

;======a.1025
[State 0, SprPriority]
type = SprPriority
trigger1 = root,animelem=7
trigger1 = root,anim=[1025,1026]
value = 3
;ignorehitpause = 
;persistent = 
[State 0, SprPriority]
type = SprPriority
trigger1 = root,animelem=8
trigger1 = root,anim=[1025,1026]
value = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1
pos =-38,-111
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40);8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1
pos =-37,-118
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40);8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 1
pos =-34,-120
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40);8999+ifelse(root,var(59)>2,2,root,var(59))
elem =3
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 1
pos =-23,-120
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40);8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 4
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1
pos =-30,-70
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40);8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 5
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(10)<0
time = 1
pos =19,-89
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40);8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 6
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = var(40);8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
time = 1
pos =-74,-108
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
value = var(40);8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 8
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
time = 1
pos =-80,-105
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
value = var(40);8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 9
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(12)>=0 
time = 1
pos =-59,-74
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1025,1026]
trigger1 = root,animelemtime(12)>=0 
value = var(40);8999+ifelse(root,var(59)>2,2,root,var(59))
elem = 10
ignorehitpause = 1
;====================
;==qcf z
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1

pos =-33,-45
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem =1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 1

pos =-12,-94
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 1

pos =-18,-108
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40)
elem =3
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1

pos =-29,-106
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem =4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
time = 1

pos =-23,-111
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem =5
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
time = 1

pos =-10,-111
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = var(40)
elem =6
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
time = 1

pos =55,-69
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
value = var(40)
elem =7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
time = 1

pos =42,-6
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1017]
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
value = var(40)
elem =8
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1016]
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
time = 1

pos =61,-8
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=[1015,1016]
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(13)<0
value = var(40)
elem =9
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1017
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(14)<0
time = 1

pos =61,-8
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=1017
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(14)<0
value = var(40)
elem =9
ignorehitpause = 1
;============

;============
;==taunt
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1

pos =1,-51
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = var(40)
elem =1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1

pos =18,-77
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = var(40)
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1

pos =25,-103
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = var(40)
elem =3
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 1

pos =17,-113
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = var(40)
elem =4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 1

pos =14,-117
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = var(40)
elem =5
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1
pos =11,-118
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = var(40)
elem =6
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
time = 1

pos =-2,-121
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = var(40)
elem =7
ignorehitpause = 1

;[State 0, BindToRoot]
;type = BindToRoot
;triggerall =  var(0)=root,stateno
;trigger1 = root,anim=197
;trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
;time = 1
;
;pos =-2,-121
;ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = var(40)
elem =8
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
time = 1

pos =-26,-98
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(10)>=0 
value = var(40)
elem =9
ignorehitpause = 1
[State 0, BindToRoot]
type = BindToRoot
triggerall =  var(0)=root,stateno
trigger1 = root,anim=197
trigger1 = root,animelemtime(10)>=0 
time = 1

pos =-44,-61
ignorehitpause = 1

;============
[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(0) = %d  var(1) = %d explod = %d"
params = var(0),(root,animelemno(0)),numexplod(20000)
[State 0, Helper]
type = Helper
trigger1 = time=0 && root,var(59)>=4 && (root,stateno=1020||root,stateno=620)
helpertype = normal ;player
name = "Weapon"
ID =31
stateno =31
pos = -73,-72
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause=1
[State 0, DestroySelf]
type = DestroySelf
trigger1 =anim=0 
;ignorehitpause = 
;persistent = 

[State 0, ChangeState]
type = ChangeState
trigger1 =root,movetype=H 
;trigger2= anim!=root,anim+9001&&root,stateno!=620 ||anim!=var(5)&&root,stateno=620
trigger2 = root,var(0) || helper(3),stateno=2 && root,anim=1014 && root,animelemtime(6)>0
trigger3= var(0)!=root,stateno && ((root,prevstateno=211 && root,stateno=220)) ||var(0)!=root,stateno 
value =ifelse(root,stateno=196,197,2)
;anim =
;ignorehitpause = 
;persistent = 
;---------------------------------------------------------------------------
[Statedef 4]
type    = A
movetype= I
physics = N
velset = 0,0
anim=10000
sprpriority=2
[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(0) = %d  var(1) = %d explod = %d"
params = var(56),var(50),numexplod(20000)
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 56    ;fv = 10
value = 0
;ignorehitpause = 
;persistent = 


;head
[State 0, VarSet]
type = VarSet
trigger1 = time=0
v =0   ;fv = 10
value = 0
;torso
[State 0, VarSet]
type = VarSet
trigger1 = time=0
v =1   ;fv = 10
value = 0
;legs
[State 0, VarSet]
type = VarSet
trigger1 = time=0
v =2   ;fv = 10
value = 0
;shoes
[State 0, VarSet]
type = VarSet
trigger1 = time=0
v =3   ;fv = 10
value = 0
;arms
[State 0, VarSet]
type = VarSet
trigger1 = time=0
v =4   ;fv = 10
value = 0
;accessory
[State 0, VarSet]
type = VarSet
trigger1 = time=0
v =5   ;fv = 10
value = 0

 ;39
;ignorehitpause = 
;persistent = 


;priorities var 10-15 is the actual value
;torso
[State 0, Null]
type = Null
trigger1 =var(1)=1
trigger1 = var(11):=2
trigger2 =  var(1)=3
trigger2 = var(11):=1
trigger3 =var(1)=0||var(1)=2||var(1)=4||var(1)=10
trigger3 = var(11):=3
;legs
[State 0, Null]
type = Null
trigger1 =  var(2)=1||var(2)=4||var(2)=10||var(2)=20||var(2)=19
trigger1 = var(12):=2
trigger2 =  var(2)=3
trigger2 = var(12):=1
trigger3 =var(2)=0||var(2)=2||var(2)=9||var(2)=12
trigger3 = var(12):=3
;shoes
[State 0, Null]
type = Null
trigger1 =  var(4)=3||var(4)=0||var(4)=2||var(4)=4||var(4)=10||var(4)=7||var(4)=13||var(4)=26
trigger1 = var(13):=1
trigger2 =var(4)=1 ||var(4)=5||var(4)=6||var(4)=9||var(4)=12||var(4)=19
trigger2 = var(13):=4
;arms
[State 0, Null]
type = Null
trigger1 =  var(3)=3||var(3)=4
trigger1 = var(14):=1
trigger2 =var(3)=0||var(3)=2||var(3)=1||var(3)=22
trigger2 = var(14):=5

;how many outfits?
[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 59   ;fv = 10
value = 27;starting with 0

;scroll speed
[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 55  ;fv = 10
value = 3
;outfit 1
[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 57    ;fv = 10
value = random%var(59)
;ignorehitpause = 
;persistent = 

;outfit 2 
[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 58   ;fv = 10
value = random%var(59)
;outfit 2 correction
;[State 0, VarRandom]
;type = VarRandom
;trigger1 = var(58)=var(57)
;v = 58
;range = 1,var(59)
[State 0, VarSet]
type = VarSet
trigger1 = var(58)=var(57)
v = 58    ;fv = 10
value = random%var(59)
;ignorehitpause = 
;persistent = 
;==spin the wheel: 1st outfit

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time%(ceil(var(55)+(var(55)/2)+1))=0 ;&& var(56)=0
trigger2=  root,animelemtime(2)>=0
id = 20000
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time%(ceil(var(56)+(var(56)/2)+1))=0 ;&& var(56)=0
trigger2=  root,animelemtime(2)>=0
id = 20001
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time%(ceil(var(55)+(var(55)/2)+1))=0 ;&& var(56)=0
trigger2= root,animelemtime(2)>=0
id = 20002
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time%(ceil(var(55)+(var(55)/2)+1))=0 ;&& var(56)=0
trigger2= root,animelemtime(2)>=0
id = 20003
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time%(ceil(var(55)+(var(55)/2)+1))=0;&& var(56)=0
trigger2=  root,animelemtime(2)>=0
id = 20004
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time%(ceil(var(55)+(var(55)/2)+1))=0 ;&& var(56)=0
trigger2=  root,animelemtime(2)>=0
id = 20005
;[State 0, VarRandom]
;type = VarRandom
;triggerall = var(58)!=var(57)
;trigger1 = var(0)!=var(57) && time%var(55)=0 && var(56)=0
;trigger2 = var(0)!=var(58) && time%var(55)=0 && var(56)=2
;trigger3 =  time%var(55)=0 && var(56)=4
;v = 0
;range = 0,var(59)

[State 0, VarSet]
type = VarSet
triggerall = var(58)!=var(57)
trigger1 = var(0)!=var(57) && time%var(55)=0 && var(56)=0 && var(50)=0
trigger2 = var(0)!=var(58) && time%var(55)=0 && var(56)=1 && var(50)=0
trigger3 =  time%var(55)=0 && var(56)=2&& var(51)<25
v = 0  ;fv = 10
value = cond(var(0)<var(59),var(0)+1,random%var(59))
[State 0, VarSet]
type = VarSet
trigger1 = var(0)=var(57)&& var(56)=0
trigger2 = var(0)=var(58)&& var(56)=1
v = 20    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = var(0)!=var(57)&& var(56)=0
trigger2 = var(0)!=var(58)&& var(56)=1
v = 20    ;fv = 10
value = 0
;[State 0, VarRandom]
;type = VarRandom
;triggerall = var(58)!=var(57)
;triggerall = var(20)
;trigger1 = var(1)!=var(57) && time%(var(55)+2)=0 && var(56)=0
;trigger2 = var(1)!=var(58) && time%(var(55)+2)=0 && var(56)=2
;trigger3 =  time%var(55)=0 && var(56)=4
;v = 1
;range = 0,var(59)
[State 0, VarSet]
type = VarSet
triggerall = var(58)!=var(57)
triggerall = var(20)
trigger1 = var(1)!=var(57) && time%(var(55)+2)=0 && var(56)=0 && var(50)=0
trigger2 = var(1)!=var(58) && time%(var(55)+2)=0 && var(56)=1 && var(50)=0
trigger3 =  time%var(55)=0 && var(56)=2&& var(51)<25
v = 1  ;fv = 10
value = random%var(59);cond(var(1)<var(59),var(1)+1,random%var(59))
[State 0, VarSet]
type = VarSet
trigger1 = var(1)=var(57)&& var(56)=0
trigger2 = var(1)=var(58)&& var(56)=1
v = 21   ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = var(1)!=var(57)&& var(56)=0
trigger2 = var(1)!=var(58)&& var(56)=1
v = 21   ;fv = 10
value = 0
;[State 0, VarRandom]
;type = VarRandom
;triggerall = var(58)!=var(57)
;triggerall = var(21)
;trigger1 = var(2)!=var(57) && time%(var(55)+4)=0 && var(56)=0
;trigger2 = var(2)!=var(58) && time%(var(55)+4)=0 && var(56)=2
;trigger3 =  time%var(55)=0 && var(56)=4
;v =2
;range = 0,var(59)
[State 0, VarSet]
type = VarSet
triggerall = var(58)!=var(57)
triggerall = var(21)
trigger1 = var(2)!=var(57) && time%(var(55)+4)=0 && var(56)=0 && var(50)=0
trigger2 = var(2)!=var(58) && time%(var(55)+4)=0 && var(56)=1 && var(50)=0
trigger3 =  time%var(55)=0 && var(56)=2&& var(51)<25
v = 2  ;fv = 10
value =cond(var(2)<var(59),var(2)+1,random%var(59))
[State 0, VarSet]
type = VarSet
trigger1 = var(2)=var(57)&& var(56)=0
trigger2 = var(2)=var(58)&& var(56)=1
v = 22    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = var(2)!=var(57)&& var(56)=0
trigger2 = var(2)!=var(58)&& var(56)=1
v = 22    ;fv = 10
value = 0
;[State 0, VarRandom]
;type = VarRandom
;triggerall = var(58)!=var(57)
;triggerall = var(22)
;trigger1 = var(3)!=var(57) && time%(var(55)+6)=0 && var(56)=0
;trigger2 = var(3)!=var(58) && time%(var(55)+6)=0 && var(56)=2
;trigger3 =  time%var(55)=0 && var(56)=4
;v =3
;range = 0,var(59)
[State 0, VarSet]
type = VarSet
triggerall = var(58)!=var(57)
triggerall = var(22)
trigger1 = var(3)!=var(57) && time%(var(55)+6)=0 && var(56)=0 && var(50)=0
trigger2 = var(3)!=var(58) && time%(var(55)+6)=0 && var(56)=1 && var(50)=0
trigger3 =  time%var(55)=0 && var(56)=2&& var(51)<25
v = 3  ;fv = 10
value = cond(var(3)<var(59),var(3)+1,random%var(59))
[State 0, VarSet]
type = VarSet
trigger1 = var(3)=var(57)&& var(56)=0
trigger2 = var(3)=var(58)&& var(56)=1
v = 23  ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = var(3)!=var(57)&& var(56)=0
trigger2 = var(3)!=var(58)&& var(56)=1
v = 23    ;fv = 10
value = 0
;[State 0, VarRandom]
;type = VarRandom
;triggerall = var(58)!=var(57)
;triggerall = var(23)
;trigger1 = var(4)!=var(57) && time%(var(55)+1)=0 && var(56)=0
;trigger2 = var(4)!=var(58) && time%(var(55)+1)=0 && var(56)=2
;trigger3 =  time%var(55)=0 && var(56)=4
;v =4
;range = 0,var(59)
[State 0, VarSet]
type = VarSet
triggerall = var(58)!=var(57)
triggerall = var(23)
trigger1 = var(4)!=var(57) && time%(var(55)+1)=0 && var(56)=0 && var(50)=0
trigger2 = var(4)!=var(58) && time%(var(55)+1)=0 && var(56)=1 && var(50)=0
trigger3 =  time%var(55)=0 && var(56)=2&& var(51)<25
v = 4  ;fv = 10
value = cond(var(4)<var(59),var(4)+1,random%var(59))
[State 0, VarSet]
type = VarSet
trigger1 = var(4)=var(57)&& var(56)=0
trigger2 = var(4)=var(58)&& var(56)=1
v = 24    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = var(4)!=var(57)&& var(56)=0
trigger2 = var(4)!=var(58)&& var(56)=1
v = 24   ;fv = 10
value = 0
;[State 0, VarRandom]
;type = VarRandom
;triggerall = var(58)!=var(57)
;triggerall = var(24)
;trigger1 = var(5)!=var(57) && time%var(55)=0 && var(56)=0
;trigger2 = var(5)!=var(58) && time%var(55)=0 && var(56)=2
;trigger3 =  time%var(55)=0 && var(56)=4
;v =5
;range = 0,var(59)
[State 0, VarSet]
type = VarSet
triggerall = var(58)!=var(57)
triggerall = var(24)
trigger1 = var(5)!=var(57) && time%var(55)=0 && var(56)=0 && var(50)=0
trigger2 = var(5)!=var(58) && time%var(55)=0 && var(56)=1 && var(50)=0
trigger3 =  time%var(55)=0 && var(56)=2 && var(51)<25
v = 5 ;fv = 10
value = cond(var(5)<var(59),var(5)+1,random%var(59))

;ignorehitpause = 
;persistent = 


;ignorehitpause = 
;persistent = 

; [State 0, VarSet]
;type = VarSet
;triggerall = var(56)=1
;trigger1= var(50)=20
;v = 56    ;fv = 10
;value = 2
; [State 0, VarSet]
;type = VarSet
;triggerall = var(56)=3
;trigger1= time=var(54)+20
;v = 56    ;fv = 10
;value = 4
;[State 0, VarSet]
;type = VarSet
;trigger1 = var(56)=3
;v = 54    ;fv = 10
;value = time
;persistent = 0
;
; [State 0, VarSet]
;type = VarSet
;triggerall = var(56)=4
;trigger1= time=var(54)+90
;v = 56    ;fv = 10
;value = 5

;[State 0, VarRangeSet]
;type = VarRangeSet
;trigger1 = time = var(54)+130
;value = 0 ;fvalue = 0
;first = 0
;last = 5 ;39
[State 0, VarSet]
type = Varadd
trigger1 = var(56)=0
trigger1 = var(0)=var(57)
trigger1 = var(1)=var(57)
trigger1 = var(2)=var(57)
trigger1 = var(3)=var(57)
trigger1 = var(4)=var(57)
trigger1 = var(5)=var(57)
trigger2 = var(56)=1
trigger2 = var(0)=var(58)
trigger2 = var(1)=var(58)
trigger2 = var(2)=var(58)
trigger2 = var(3)=var(58)
trigger2 = var(4)=var(58)
trigger2 = var(5)=var(58)
v = 50   ;fv = 10
value = 1
[State 0, VarRangeSet]
type = VarRangeSet
trigger1 = var(50)=20
value = 0 ;fvalue = 0
first = 0
last = 5 ;39
;ignorehitpause = 
;persistent = 
 


[State 0, VarSet]
type = Varadd
trigger1 = var(56)=0 && time >2 && var(50)=20
trigger2 = var(56)=1 && time >2 && var(50)=20
v = 56    ;fv = 10
value = 1



[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
facing = 1
pos = 0,0
ignorehitpause = 1

;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = Varadd
trigger1 = var(50)=20 && var(56)=2
trigger2 = var(51)!=0 && var(56)=2
v = 51  ;fv = 10
value = 1
[State 0, VarSet]
type = VarSet
trigger1 = var(50)=20 
v = 50  ;fv = 10
value = 0
[State 0, Explod]
type = Explod
triggerall = root,animelemtime(2)<0
trigger1 = 1
anim =20000+var(0)
ID = 20000
pos = 0,-100
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority =3
removetime=1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=1
[State 0, Explod]
type = Explod
triggerall = root,animelemtime(2)<0
trigger1 = 1
anim =ifelse(var(1)=6 && var(5)=6,210061,21000+var(1))
ID = 20001
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority =var(11)
removetime=1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=1

[State 0, Explod]
type = Explod
triggerall = root,animelemtime(2)<0
trigger1 = 1
anim =22000+var(2)
ID = 20002
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority =var(12)
removetime=1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=1

[State 0, Explod]
type = Explod
triggerall = root,animelemtime(2)<0
trigger1 =1
anim =23000+var(3)
ID = 20003
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority =var(13)
removetime=1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=1

[State 0, Explod]
type = Explod
triggerall = root,animelemtime(2)<0
trigger1 = 1
anim =24000+var(4)
ID = 20004
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority =var(14)
removetime=1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=1

[State 0, Explod]
type = Explod
triggerall = root,animelemtime(2)<0
trigger1 =1
anim =ifelse(var(1)=6 && var(5)=6,250061,25000+var(5))
ID = 20005
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority =4
removetime=1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=1


;ignorehitpause = 
;persistent = 
[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,animelemtime(2)>=0
;ignorehitpause = 
;persistent = 

;---------------------------------------------------------------------------
;weapon fx?
[Statedef 31]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority=2
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S5,8
volumescale =75
channel = 4
;abspan = 
;ignorehitpause = 
;persistent = 

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 4
ignorehitpause = 1
;persistent = 

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time%2=0
flag = invisible
[State 0, VarRandom]
type = VarRandom
trigger1 = time%2=0
v = 0
range = -2,2
;ignorehitpause = 
;persistent = 
[State 0, VarRandom]
type = VarRandom
trigger1 = time%2=0
v = 1
range = -2,2

;==qcf z
[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=1017
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1

pos =-21+var(0),25+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=1017
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = 10019
elem =1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=1017
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 1

pos =-50+var(0),20+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=1017
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = 10019
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=1017
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 1

pos =-52+var(0),28+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=1017
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = 10019
elem =3
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=1017
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1

pos =-42+var(0),36+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=1017
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = 10019
elem =4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=1017
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
time = 1

pos =-43+var(0),38+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=1017
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = 10019
elem =5
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=1017
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
time = 1

pos =-55+var(0),2+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=1017
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = 10019
elem =6
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=1017
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
time = 1

pos =-73+var(0),-51+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=1017
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
value = 10019
elem =7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=1017
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
time = 1

pos =57+var(0),-9+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=1017
trigger1 = root,animelemtime(11)>=0 && root,animelemtime(12)<0
value = 10019
elem =8
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=1017
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(14)<0
time = 1

pos =31+var(0),-7+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=1017
trigger1 = root,animelemtime(12)>=0 && root,animelemtime(14)<0
trigger1 = animelem=11
value = 10019
elem =9
ignorehitpause = 1


;==j.hp
[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=620
trigger1 = root,animelemtime(1)>=0 && root,animelemtime(2)<0
time = 1
pos =-37+var(0),11+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=620
trigger1 = root,animelemtime(1)>=0 && root,animelemtime(2)<0
value = parent,anim+1
elem =1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=620
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
time = 1
pos =-24+var(0),27+var(1)
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=620
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
value = parent,anim+1
elem =2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=620
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
time = 1
pos =-32+var(0),15+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=620
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = parent,anim+1
elem =3
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=620
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
time = 1
pos =-34+var(0),-30+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=620
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
value = parent,anim+1
elem =4
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=620
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
time = 1
pos =28+var(0),25+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=620
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
value = parent,anim+1
elem =5
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=620
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
time = 1
pos =19+var(0),25+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=620
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = parent,anim+1
elem =6
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=620
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
time = 1
pos =18+var(0),32+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=620
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = parent,anim+1
elem =7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToparent
trigger1 = root,anim=620
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(10)<0
time = 1
pos =3+var(0),39+var(1)
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,anim=620
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(10)<0
value = parent,anim+1
elem =8
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0
trigger2= root,numhelper(2)
trigger2= parent,stateno=2
;============
;---------------------------------------------------------------------------
[Statedef 1053]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority=2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =root,animelemtime(7)<0
value = (root,anim)+28950;+(root,var(59)*10)
elem = 1
;ignorehitpause = 
;persistent = 
[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
;value2 = S,NA
time = 1
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 0    ;fv = 10
value = root,anim-1050
[State 3005, hitoverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=1055+var(0)

[State 0, HitBy]
type = HitBy
trigger1 = enemy,numproj=0
value = SCA,NP,SP,HP
;value2 = S,NA
time = 1
[State 0, HitBy]
type = notHitBy
trigger1 = enemy,numproj>0
value = SCA
;value2 = S,NA
time = 1
[State 0, AngleDraw]
type = AngleDraw
triggerall = root,stateno=[1050,1052]
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
value = 65
scale = const(size.xscale),const(size.yscale)
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
triggerall = root,stateno=[1050,1052]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(6)<0
value = 85
scale = const(size.xscale),const(size.yscale)
ignorehitpause = 1
[State 0, AngleDraw]
type = AngleDraw
triggerall = root,stateno=[1050,1052]
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
value = 45
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
triggerall = root,stateno=[1050,1052]
trigger1 = root,animelemtime(2)>=0 && root,animelemtime(3)<0
facing = 1
pos = -33,-92
[State 0, BindToRoot]
type = BindToRoot
triggerall = root,stateno=[1050,1052]
trigger1 = root,animelemtime(3)>=0 && root,animelemtime(4)<0
facing = 1
pos = -29,-89
[State 0, BindToRoot]
type = BindToRoot
triggerall = root,stateno=[1050,1052]
trigger1 = root,animelemtime(4)>=0 && root,animelemtime(5)<0
facing = 1
pos = -40,-82
[State 0, BindToRoot]
type = BindToRoot
triggerall = root,stateno=[1050,1052]
trigger1 = root,animelemtime(5)>=0 && root,animelemtime(6)<0
facing = 1
pos = -40,-97
[State 0, BindToRoot]
type = BindToRoot
triggerall = root,stateno=[1050,1052]
trigger1 = root,animelemtime(6)>=0 && root,animelemtime(7)<0
facing = 1
pos = 33,-104
[State 0, BindToRoot]
type = BindToRoot
triggerall = root,stateno=[1050,1052]
trigger1 = root,animelem=7 && var(0)=[0,1]
facing = 1
pos = 55,-65
[State 0, BindToRoot]
type = BindToRoot
triggerall = root,stateno=[1050,1052]
trigger1 = root,animelem=7&& var(0)=2
facing = 1
pos = 40,-65

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim!=30002
triggerall = root,stateno=[1050,1052]
trigger1 =root,animelemtime(7)>=0 
value = (root,anim)+28950;+(root,var(59)*10)
elem = 2


[State 0, VelSet]
type = VelSet
triggerall = root,stateno=[1050,1052]
trigger1 = var(0)=0 && root,animelem=7
x =8
;ignorehitpause = 
;persistent = 
[State 0, VelSet]
type = VelSet
triggerall = root,stateno=[1050,1052]
trigger1 = var(0)=1 && root,animelem=7
x =6.75
y=.01
[State 0, VelSet]
type = VelSet
triggerall = root,stateno=[1050,1052]
trigger1 = var(0)=2&& root,animelem=7
x =5
y=-7.5
[State 0, VelSet]
type = VelSet
trigger1 = var(0)=2&&frontedgebodydist <10 && p2movetype=H
x = 0

[State 0, VelAdd]
type = VelAdd
trigger1 =  var(0)=2 && vel y !=0
y = .4
[State 0, VelAdd]
type = VelAdd
trigger1 =  var(0)=1 && vel y !=0
y = .25
[State 0, VarSet]
type = VarSet
triggerall = root,stateno=[1050,1052]
trigger1 =  root,animelem=7
fv = 0    ;fv = 10
value = vel x 
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
triggerall = root,stateno=[1050,1052]
trigger1 =  root,animelem=7
fv = 1    ;fv = 10
value = vel y
[State 1005, This is for fossils]
type = Projectile
trigger1 = animelem=2 
ProjID = 1000
projanim = anim
projhitanim = -1
projremanim = -1
projscale = 0,0
offset=30,45
projpriority = 1
projremovetime = -1
postype = p1         ;p2,front,back,left,right
velocity = fvar(0),fvar(1)
persistent=0
accel = 0,.23*var(0)
;ignorehitpause = 
;persistent = 

[State 0, AngleDraw]
type = AngleDraw
trigger1 =var(0)=1 && vel y!=0 
value = -12*(time+18)

[State 0, AngleDraw]
type = AngleDraw
trigger1 =var(0)=2 && vel y!=0 
value = -5*(time+18)
[State 210, 2]
type = HitDef
trigger1 = animelem=2 && var(0)=0
attr = S, SP
animtype  = Medium
air.animtype=diagup
damage    = 40
guardflag = MA
hitflag=MAF
pausetime =  4,4
sparkno = 1
sparkxy = -10,0
hitsound = S2, 1     
guardsound = S3, 0  
ground.type = High
ground.slidetime = 12
ground.hittime  =14
guard.ctrltime=14
guard.velocity=-6
air.hittime=24-(root,numexplod(1053)*2)
ground.velocity = -4,0
air.velocity = -4,-5
forcenofall=1
id=200
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time=4
envshake.freq = 60
envshake.ampl=-3
envshake.phase=90

[State 210, 2]
type = HitDef
trigger1 = animelem=2 && var(0)=1
attr = S, SP
animtype  = Medium
air.animtype=diagup
damage    = 50
guardflag = MA
pausetime =  4,4
sparkno = 1
sparkxy = -10,0
hitsound = S2, 1     
guardsound = S3, 0  
ground.type = High
ground.slidetime = 12
ground.hittime  =23
guard.ctrltime=20
guard.velocity=-6
air.hittime=26-(root,numexplod(1053)*3)
ground.velocity = -6,0
air.velocity = -6,-5
forcenofall=1
id=200
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time=4
envshake.freq = 60
envshake.ampl=-3
envshake.phase=90
palfx.time = 17
palfx.add = 150,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,30
palfx.invertall = 0
palfx.color = 0
[State 0, ParentVarSet]
type = ParentVarSet
trigger1 =movehit &&var(0)=1 
fv = 13
value = .05
;ignorehitpause = 
;persistent = 


[State 210, 2]
type = HitDef
trigger1 = animelem=2&& var(0)=2
attr = S, SP
animtype  = Medium
air.animtype=diagup
damage    = 75
guardflag = MA
hitflag=MAFD
pausetime =  1,4
guard.pausetime=12,12
sparkno = 1
sparkxy = -10,0
hitsound = S2, 3     
guardsound = S3, 0  
ground.type = High
ground.slidetime = 12
ground.hittime  =22
guard.ctrltime=22
guard.velocity=-6
air.hittime=35
ground.velocity = -1,-3
air.velocity = -4,-5
air.fall=1
fall.recover=0
id=ifelse(p2statetype=L,202,201)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time=12
envshake.freq = 60
envshake.ampl=-3
envshake.phase=90
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = movecontact
movetype = I    

[State 0, TargetState]
type = TargetState
triggerall = (enemy,prevstateno!=[120,155]) &&p2stateno!=[120,155]
triggerall = NumTarget(201) && enemy,hitshakeover
trigger1 =movehit&&p2statetype=A&&p2stateno!=[20010,20021]
value =ifelse(p2statetype=L,20020,20010)
ID = 201
ignorehitpause = 1
[State 0, TargetState]
type = TargetState
triggerall = (enemy,prevstateno!=[120,155]) &&p2stateno!=[120,155]
triggerall = NumTarget(202) && enemy,hitshakeover
trigger1 =movehit&&p2statetype=A&&p2stateno!=[20010,20021]
value =20020
ID = 202
ignorehitpause = 1

[State 0, TargetState]
type = TargetState
triggerall = (enemy,prevstateno!=[120,155]) &&p2stateno!=[120,155]
triggerall = NumTarget(200)
trigger1 =(movehit)&&p2statetype=A&&p2stateno!=[202,205]
value =202
ID =200
    ;I,A,H
;ignorehitpause = 
;persistent = 

[State 0, ChangeState]
type = ChangeState
triggerall =var(0)=0
trigger1 = movecontact && var(0)=0 || root,numprojid(1000)=0 && animelemtime(2)>1
value =ifelse(p2movetype=H,1054,1055)
;anim =
;ignorehitpause = 
;persistent = 

[State 0, ChangeState]
type = ChangeState
triggerall = var(0)=[1,2]
trigger1 = movecontact || root,numprojid(1000)=0 && animelemtime(2)>1 && (frontedgebodydist >10||p2movetype!=H) || pos y>=5
value =1057
[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgebodydist <-55
trigger2 = animelemtime(1)>=0 && animelemtime(2)<0&&root,stateno!=[1050,1065]
trigger3 = animelemtime(3)<0 && root,movetype=H
;---------------------------------------------------------------------------
;food that slides
[Statedef 1054]
type    = A
movetype= I
physics = N
velset=0,0
sprpriority=5
[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 5
ignorehitpause = 1
;persistent = 

;persistent = 
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time <=8
physics = S
;ignorehitpause = 
;persistent = 
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time >8
physics = N

;[State 0, BindToTarget]
;type = BindToTarget
;trigger1 = time<8
;time = 1
;ID = 200
;pos = p2bodydist x,p2bodydist y;,"Foot";"Mid","Head"
;ignorehitpause = 
;persistent =
[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 5   ;fv = 10
value = 1
ignorehitpause = 1
persistent = 0
[State 0, VarSet]
type = VarSet
trigger1 = time=1
v = 5   ;fv = 10
value = 0
ignorehitpause=1
[State 0, VelSet]
type = VelSet
trigger1 = time=8
y = 1
x=0

[State 0, VelAdd]
type = VelAdd
trigger1 = pos y <0 
y = .55
;ignorehitpause = 
;persistent = 

[State 0, AngleDraw]
type = AngleDraw
trigger1 = pos y >=0
value = -90
;ignorehitpause = 
;persistent = 
[State 0, VelSet]
type = VelSet
trigger1 = pos y>=0
y = 0


[State 0, VarSet]
type = Varadd
trigger1 = pos y>=0
v = 1    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;value2 = S,NA
time = 1
[State 0, Trans]
type = Trans
trigger1 = var(1)=8
trans = addalpha;, sub
alpha = 175,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=9
trans = addalpha;, sub
alpha = 150,250
[State 0, Trans]
type = Trans
trigger1 =var(1)=10
trans = addalpha;, sub
alpha = 125,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=11
trans = addalpha;, sub
alpha = 100,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=12
trans = addalpha;, sub
alpha = 75,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=13
trans = addalpha;, sub
alpha = 50,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=14
trans = addalpha;, sub
alpha = 25,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=15
trans = addalpha;, sub
alpha = 10,250


[State 0, DestroySelf]
type = DestroySelf
trigger1 =var(1)>15

;---------------------------------------------------------------------------
;food that slides
[Statedef 1055]
type    = A
movetype= I
physics = N
velset=-1,-3
sprpriority=5

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;value2 = S,NA
time = 1
;ignorehitpause = 
;persistent = 


[State 0, AngleDraw]
type = AngleDraw
trigger1 =1 
value = -25*time
;scale = 
;ignorehitpause = 
;persistent = 

[State 0, VarSet]
type = Varadd
trigger1 = 1
v = 1    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 


[State 0, Trans]
type = Trans
trigger1 = var(1)=8
trans = addalpha;, sub
alpha = 175,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=9
trans = addalpha;, sub
alpha = 150,250
[State 0, Trans]
type = Trans
trigger1 =var(1)=10
trans = addalpha;, sub
alpha = 125,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=11
trans = addalpha;, sub
alpha = 100,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=12
trans = addalpha;, sub
alpha = 75,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=13
trans = addalpha;, sub
alpha = 50,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=14
trans = addalpha;, sub
alpha = 25,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=15
trans = addalpha;, sub
alpha = 10,250


[State 0, DestroySelf]
type = DestroySelf
trigger1 =var(1)>15
;---------------------------------------------------------------------------
;heavy object
[Statedef 1056]
type    = A
movetype= I
physics = N
velset=2,-4
sprpriority=5

[State 0, ChangeState]
type = ChangeState
trigger1 = time=0 
value =1057
ctrl = 0
;anim =
;ignorehitpause = 
;persistent = 

;---------------------------------------------------------------------------
;heavy object
[Statedef 1057]
type    = A
movetype= I
physics = N
velset=2,-4
sprpriority=5
[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 5   ;fv = 10
value = 1
ignorehitpause = 1
persistent = 0
[State 0, VarSet]
type = VarSet
trigger1 = time=1
v = 5   ;fv = 10
value = 0
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(201) && enemy,hitshakeover
trigger1 =p2statetype=A&&p2stateno!=[20010,20021]
value =ifelse(p2statetype=L,20020,20010)
ID = 201
ignorehitpause = 1
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(202) && enemy,hitshakeover
trigger1 =p2statetype=A&&p2stateno!=[20010,20021]
value =20020
ID = 202
ignorehitpause = 1
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;value2 = S,NA
time = 1
;ignorehitpause = 
;persistent = 
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0 && var(0)=2
value = S5,5
channel = 2
;lowpriority = -1
freqmul = 1.0
;abspan = 
;ignorehitpause = 
;persistent = 


[State 0, AngleDraw]
type = AngleDraw
trigger1 =1 
value = -5*(time+18)
ignorehitpause = 1
;persistent = 

[State 0, VarSet]
type = Varadd
trigger1 = 1
v = 1    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 


[State 0, Trans]
type = Trans
trigger1 = var(1)=8
trans = addalpha;, sub
alpha = 175,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=9
trans = addalpha;, sub
alpha = 150,250
[State 0, Trans]
type = Trans
trigger1 =var(1)=10
trans = addalpha;, sub
alpha = 125,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=11
trans = addalpha;, sub
alpha = 100,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=12
trans = addalpha;, sub
alpha = 75,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=13
trans = addalpha;, sub
alpha = 50,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=14
trans = addalpha;, sub
alpha = 25,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=15
trans = addalpha;, sub
alpha = 10,250


[State 0, DestroySelf]
type = DestroySelf
trigger1 =var(1)>15
;---------------------------------------------------------------------------
[Statedef 192]
type    = A
movetype= I
physics = N
velset = 0,0
anim=191
sprpriority=-2
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S190,0
channel =6
volumescale=75

[State 0, BindToRoot]
type = BindToRoot
trigger1 =root,anim=190
time=1
facing = 1
pos = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = root,anim!=190 
x = 5
y = -7
[State 0, StopSnd]
type = StopSnd
trigger1 = parent,command = "a" || parent,command = "b" || parent,command = "c" || parent,command = "x" || parent,command = "y" || parent,command = "z"
channel = 6
[State 0, DestroySelf]
type = DestroySelf
trigger1 =pos y <-400
;ignorehitpause = 
;persistent = 
;---------------------------------------------------------------------------
[Statedef 194]
type    = A
movetype= I
physics = N
velset = 0,0
anim=193
sprpriority=-9

[State 0, VarSet]
type = Varadd
trigger1 = root,animelemtime(2)>=0
v = 1    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 


[State 0, Trans]
type = Trans
trigger1 = var(1)=8
trans = addalpha;, sub
alpha = 175,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=9
trans = addalpha;, sub
alpha = 150,250
[State 0, Trans]
type = Trans
trigger1 =var(1)=10
trans = addalpha;, sub
alpha = 125,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=11
trans = addalpha;, sub
alpha = 100,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=12
trans = addalpha;, sub
alpha = 75,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=13
trans = addalpha;, sub
alpha = 50,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=14
trans = addalpha;, sub
alpha = 25,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=15
trans = addalpha;, sub
alpha = 10,250


[State 0, DestroySelf]
type = DestroySelf
trigger1 =var(1)>15
;---------------------------------------------------------------------------
[Statedef 197]
type    = A
movetype= I
physics = N
velset = 0,0
sprpriority=-3

;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = parentVarSet
trigger1 = time <5
v = 0    ;fv = 10
value = 0
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,anim=197
trigger1 = time=0
time = 1

pos =-44,-61
ignorehitpause = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 25*time
;scale = 
ignorehitpause =1 
[State 0, VelSet]
type = VelSet
trigger1 =time=0 
x = -2
y = 5
;ignorehitpause = 
;persistent = 
[State 0, VelAdd]
type = VelAdd
trigger1 =1 
y = .53
;ignorehitpause = 
;persistent = 

[State 0, Helper]
type = Helper
trigger1 = pos y>=0
helpertype = normal ;player
name = "Weapon"
ID =196
stateno =198
pos = -0,-0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause=0
[State 0, Helper]
type = Helper
trigger1 = pos y>=0
helpertype = normal ;player
name = "Weapon"
ID =197
stateno =198
pos = -0,-0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause=0
[State 0, Helper]
type = Helper
trigger1 = pos y>=0
helpertype = normal ;player
name = "Weapon"
ID =198
stateno =198
pos = -0,-0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause=0
[State 0, DestroySelf]
type = DestroySelf
trigger1 = pos y>=0
;---------------------------------------------------------------------------
[Statedef 1971]
type    = A
movetype= A
physics = N
velset = 0,6
anim=1941
sprpriority=-6
[State 0, SprPriority]
type = SprPriority
trigger1 =1 
value = -6
ignorehitpause =1 
;persistent = 

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animelemtime(2)>=0 && pos y <0 
value = anim
elem = 2

[State 0, PosSet]
type = PosSet
trigger1 = animelem=3
y = 0
[State 0, PosSet]
type = velSet
trigger1 = animelem=3
y = 0

[State 200, 1]
type = HitDef
trigger1 = !movehit
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 0, 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)                  ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2, 2                 ;Time attacker pauses, time opponent shakes
sparkno = 0                      ;Spark anim no (Def: set above)
sparkxy = -00, -0               ;X-offset for the "hit spark" rel. to p2,
hitsound = -1     
guardsound = S3, 0            
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime =8            ;Time that the opponent slides back
ground.hittime  =10          ;Time opponent is in hit state
guard.ctrltime=3
ground.velocity = enemy,vel x,-4            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1,-4       ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12
down.velocity=-2,-3                ;Time before opponent regains control in air
id=205
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
yaccel=.67
[State 0, TargetState]
type = TargetState
triggerall = p2statetype!=L
trigger1 = movehit && p2stateno!=[1972,1973]
value =1972
ID = 205
;ignorehitpause = 
;persistent = 

[State 0, AttackDist]
type = AttackDist
trigger1 =1 
value =0
ignorehitpause = 1
;persistent =
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time=360
trigger2= movehit
movetype = I        ;I,A,H

;persistent = 
 

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time=[360,370]
trigger1=time%2=0
flag = invisible



[State 0, DestroySelf]
type = DestroySelf
trigger1 =time =370
;---------------------------------------------------------------------------
; Trip/fast fall back down
[Statedef 1972]
type    = L
movetype= H
physics = N
poweradd= 0
ctrl = 0
sprpriority =-1
[State 0, Turn]
type = Turn
trigger1 =facing= enemy,facing 
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0
value = 5070
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0&& anim!=5070
value = 5030

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=2&& anim=5030
value = ifelse(selfanimexist(5161),5161,5160)


[State 0, HitVelSet]
type = HitVelSet
trigger1 =time=0 
x = 1
y = 1
;ignorehitpause = 
;persistent =
[State 0, VelAdd]
type = VelAdd
trigger1 =1
y = gethitvar(yaccel)

;persistent =

[State 0, SelfState]
type = changeState
triggerall = time >ifelse(anim=5070,5,0)
trigger1 = pos y>=-5
value =1973
;---------------------------------------------------------------------------
; Ground bounce up
[Statedef 1973]
type    =L
movetype= H
physics = N
poweradd= 0
velset=0,0
ctrl = 0
sprpriority =-1
[State 0, PosSet]
type = PosSet
trigger1 =time=[0,4]
y = 0
;ignorehitpause =
;persistent =
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0  && selfanimexist(5101)
value = 5101
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0  && !selfanimexist(5101)
value = 5100

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime=0 && (anim!=[5110,5111])&& !selfanimexist(5111)
value = 5110
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  animtime=0 && (anim!=[5110,5111])&& selfanimexist(5111)
value = 5111
[State 0, EnvShake]
type = EnvShake
trigger1 =time=0 
time = 5
freq = 60
ampl = -4
phase = 90
;ignorehitpause = 
;persistent = 
[State 0, LifeAdd]
type = LifeAdd
trigger1 = time=0
value = -25
kill = 1
;ignorehitpause = 
;persistent = 


[State 0, SelfState]
type = SelfState
trigger1 = pos y>=0 && time>40
value =ifelse(!alive, 5110,5120)
;---------------------------------------------------------------------------
[Statedef 198]
type    = A
movetype= I
physics = N
velset = 0,-7
anim=198
sprpriority=-3


[State 0, VelSet]
type = VelSet
trigger1 = time=0
x = ifelse(random<499,random*.003,random*-.003)
;ignorehitpause = 
;persistent = 
[State 0, VelAdd]
type = VelAdd
trigger1 =1 
y = .53
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 25*time
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ishelper(196)
value = anim
elem = 1
ignorehitpause=1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ishelper(197)
value = anim
elem = 2
ignorehitpause=1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ishelper(198)
value = anim
elem = 3
ignorehitpause=1

[State 0, VarSet]
type = Varadd
trigger1 = time >3
v = 1    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 


[State 0, Trans]
type = Trans
trigger1 = var(1)=8
trans = addalpha;, sub
alpha = 175,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=9
trans = addalpha;, sub
alpha = 150,250
[State 0, Trans]
type = Trans
trigger1 =var(1)=10
trans = addalpha;, sub
alpha = 125,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=11
trans = addalpha;, sub
alpha = 100,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=12
trans = addalpha;, sub
alpha = 75,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=13
trans = addalpha;, sub
alpha = 50,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=14
trans = addalpha;, sub
alpha = 25,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=15
trans = addalpha;, sub
alpha = 10,250


[State 0, DestroySelf]
type = DestroySelf
trigger1 =var(1)>15

;---------------------------------------------------------------------------------
[Statedef 30001]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim =3001
sprpriority = 2
[State 0, SprPriority]
type = SprPriority
trigger1 =1 
value = 3
ignorehitpause =1 
;persistent = 
[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 =1 
text = "var(32) = %d  vel x = %f"
params = var(32),vel x
ignorehitpause = 1
;persistent = 

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;value2 = S,NA
time = 1
ignorehitpause = 1
persistent = 1
;[State 0, VarSet]
;type = parentvarset
;trigger1 = parent,var(4) =1
;v = 12  ;fv = 10
;value = 999
[State -2, Helper]
type = Helper
trigger1 = winko && movehit
triggerall = root,NumHelper(6000) < 1
helpertype = normal ;player
name = "winko"
ID = 6000
stateno = 5995
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime =999
pausemovetime = 999
ignorehitpause = 1
[State 3005, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AP
forceair = 1
stateno=30002

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =animelem=11&& var(32)<16&& (movecontact)&&animelemtime(11)<1
value = 3001
elem = 5

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =(var(32)>=16||time>55 ) && animelemtime(11)<0 
value = 3001
elem = 11
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem=11
movetype = I        ;I,A,H
;ignorehitpause = 
;persistent = 

[State 0, BindToParent]
type = BindToParent
trigger1 = animelemtime(19)<0
time = 1
pos = 45,-83
ignorehitpause =1
persistent = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3000,1
channel=2

[State 210, 2]
type = HitDef
trigger1 = animelem = 1
attr = S, HP
animtype  = Medium
damage    = ceil(40*(root,fvar(12))),5
guardflag = MA
pausetime = 2,2
sparkno = S6001
sparkxy = var(19),0
priority=7
guard.sparkno = S7009
hitsound   = S2,0
getpower = 0
guardsound = S3,1
ground.type = High
ground.slidetime = 13
ground.hittime  = 13
air.hittime=15
ground.velocity = 1
air.velocity = -4,-1.5
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
id=200
[State -2];•‰‚¯Žž‰Œ,XŽ²Ý’è
type = VarRandom
trigger1 =1
v =19
range = -25,25

[State 210, 2]
type = HitDef
triggerall = animelemtime(2) >0
trigger1 = time%3=0
attr = S, HP
animtype  = Medium
damage    = ceil(10*(root,fvar(12))),5
guardflag = MA
pausetime = 2,2
sparkno = S6001
sparkxy = var(19),0
guard.sparkno = S7009
hitsound   = S2,0
getpower = 0
guardsound = S3,1
ground.type = High
ground.slidetime = 13
ground.hittime  = 13
air.hittime=15
ground.velocity = -3
air.velocity = -4,-1.5
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
id=200
[State 210, 2]
type = HitDef
triggerall = root,AILevel=0
trigger1 = root,var(4) && time%2=0
triggerall = animelemtime(5) >0
attr = S, HP
animtype  = Medium
damage    = ceil(5*(root,fvar(12))),2
guardflag = MA
pausetime = 1,1
sparkno = S6001
sparkxy = var(19),0
guard.sparkno = S7009
hitsound   = S2,0
getpower = 0
guardsound = S3,1
ground.type = High
ground.slidetime = 13
ground.hittime  = 13
air.hittime=15
ground.velocity = -3
air.velocity = -4,-1.8
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
id=201
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(200)
trigger1 =movehit&&p2statetype=A&&p2stateno!=[202,205]
value =202
ID =200
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(201)
trigger1 =movehit&&p2statetype=A&&p2stateno!=[202,205]
value =202
ID =201
[State -2, Helper]
type = Helper
trigger1 =time=0
helpertype = normal ;player
name = "shield"
ID =3003
stateno = 30003
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime =999
pausemovetime = 999
ignorehitpause = 1
;[State -2, Helper]
;type = Helper
;trigger1 = NumHelper(6000) < 1 && movehit && winko
;helpertype = normal ;player
;name = "winko"
;ID = 6000
;stateno = 6000
;pos = 0,0
;postype = left   ;p2,front,back,left,right
;facing = 1
;keyctrl = 0
;ownpal = 0
;supermove =999
;pausemove = 999
;ignorehitpause = 1

[State 0, VarSet]
type = Varadd
triggerall = numtarget(200)
trigger1 = movecontact=1
v = 32    ;fv = 10
value = 1
ignorehitpause=0
[State f12, VarSet]
type = parentVarSet
triggerall = enemy,movetype = H&&(p2stateno!=[120,155])
triggerall =  enemy,gethitvar(hitcount)>1
triggerall = numtarget(200)
trigger1 = movehit=1
fv =12 ;fv = 10
value = root,fvar(12)*.996
ignorehitpause=0
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1
[State 210, 5]
type = ChangeState
trigger1 =root,stateno!=3000 || root,movetype = H
value = 3011
ignorehitpause=1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime=0
;---------------------------------------------------------------------------------
[Statedef 30002]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim =3001
sprpriority = 2
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=0
value = 3001
elem = 25
[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=0
;ignorehitpause = 
;persistent = 

;---------------------------------------------------------------------------------
[Statedef 30003]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim =3002
sprpriority = 2
[State 3005, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AP
forceair = 1
stateno=30003
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =parent,animelemtime(1)>=0 && parent,animelemtime(2)<0 
value = 3002
elem = 1
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =parent,animelemtime(2)>=0 && parent,animelemtime(3)<0 
value = 3002
elem = 2
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =parent,animelemtime(3)>=0 && parent,animelemtime(4)<0 
value = 3002
elem =3
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =parent,animelemtime(4)>=0 
value = 3002
elem =4
ignorehitpause = 1
;persistent = 
[State 0, NotHitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
;value2 = S,NA
time = 1
;ignorehitpause = 
;persistent = 
[State 0, BindToParent]
type = BindToParent
trigger1 =1 
time = 1
facing = 1
pos = 0,0
;ignorehitpause = 
;persistent = 
[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,numhelper(3001)
trigger1 =parent,animelemtime(25)>=0
trigger2= root,stateno!=3000 
;ignorehitpause = 
;persistent = 
;---------------------------------------------------------------------------
[Statedef 3003]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority=5
anim=3065
[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 5
ignorehitpause = 1
;persistent = 
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = anim
elem = ifelse(root,var(59)=1,1,ifelse((root,var(59)=[2,3]),2,3))
ignorehitpause = 1
;persistent = 

[State 0, VarSet]
type = Varset
trigger1 = time =0
fv = 0    ;fv = 10
value =ifelse(root,var(59)=1,.65,ifelse((root,var(59)=[2,3]),.65,.4))
;ignorehitpause = 
;persistent = 
[State -2, Helper]
type = Helper
trigger1 = winko && movehit
triggerall = root,NumHelper(6000) < 1
helpertype = normal ;player
name = "winko"
ID = 6000
stateno = 5995
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime =999
pausemovetime = 999
ignorehitpause = 1
[State 0, Explod]
type = Explod
trigger1 = time=0
anim =ifelse(root,var(59)=4,3066,3064)
ID = 3056
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = fvar(0),fvar(0)+.1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =( time=[2,14]) && root,var(59)>3
ID =3056
scale = fvar(0)+(.08*time),fvar(0)+(.08*time)
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =( time>=14) && root,var(59)>3
ID =3056
scale = fvar(0)+1,fvar(0)+1
;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S5,11
channel=4
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >=5 && root,var(59)>=4
flag = nokosnd
flag2 = nomusic
ignorehitpause=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0 && root,var(59)>=4
value = S5,12
channel=5

[State 0, StopSnd]
type = StopSnd
trigger1 = time =5 && root,var(59)>=4
channel = 4
[State 0, StopSnd]
type = StopSnd
trigger1 = time =5 && root,var(59)>=4
channel = 0
;ignorehitpause = 
;persistent = 
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time=8&& root,var(59)>=4
time =120
add = 255,255,255
mul = 256,256,256
sinadd = 255,255,255,450
invertall = 0
color = 256
ignorehitpause =1 
;persistent = 
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time=100&& root,var(59)>=4
time =120
add = 255,255,255
mul = 256,256,256
sinadd = -255,-255,-255,390
invertall = 0
color = 256
ignorehitpause =1 

;abspan = 
;ignorehitpause = 
;persistent = 
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time >20
movetype = I        ;I,A,H
;ignorehitpause = 
;persistent = 

[State 210, 2]
type = HitDef
trigger1 =!movecontact && !root,numtarget(3002)
attr = S, HP
animtype  = Medium
damage    = ceil(300*(root,fvar(12))),50
guardflag = MA
hitflag=MAFD
pausetime = 2,2
sparkno = S6001
sparkxy = 0,0
priority=4
guard.sparkno = S7009
hitsound   = -1
getpower = 0
guardsound = -1
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
air.hittime=15
ground.velocity = -8,-ifelse(root,var(59)>3,18,11)
air.velocity = -8,-ifelse(root,var(59)>3,18,11)
guard.velocity =-6
fall=1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
id=200
[State 0, VarSet]
type = parentVarSet
triggerall = enemy,movetype = H&&(p2stateno!=[120,155])
triggerall =  enemy,gethitvar(hitcount)>1
trigger1 = movehit
fv =12 ;fv = 10
value = root,fvar(12)*.9
ignorehitpause=0
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(200)
trigger1 =movehit&&p2statetype=A&&p2stateno!=[20005,20006]
value =20005
ID =200

;persistent = 
[State 0, HitBy]
type = notHitBy
trigger1 = 1
value = SCA
;value2 = S,NA
time = 1
ignorehitpause = 1
;persistent = 

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time=22 && root,var(59)<4
trigger2 = time>=160 && root,var(59)>=4
;---------------------------------------------------------------------------
[Statedef 3004]
type    = A
movetype= A
physics = N
velset = 0,0
anim=3015
sprpriority=5



[State 0, AngleSet]
type = Angledraw
trigger1 = anim!=3016
value = 30*var(0)
;ignorehitpause = 
;persistent = 


[State 0, VarSet]
type = Varadd
trigger1 = time%4=0
v = 0    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = pos y >=0
v = 1   ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, VarRandom]
type = VarRandom
trigger1 = time=0
v = 3
range = -4,-2
;ignorehitpause = 
;persistent = 

[State 0, VelAdd]
type = VelAdd
trigger1 =time=0 && ishelper(3010)
y = -4
x= -7
ignorehitpause =1 
persistent =0 
[State 0, VelAdd]
type = VelAdd
trigger1 =time=0 && ishelper(3011)
y = -7
x= -7
ignorehitpause =1 
persistent =0 
[State 0, VelAdd]
type = VelAdd
trigger1 =time=0 && ishelper(3012)
y =0
x= -7
ignorehitpause =1 
persistent =0 
[State 0, VelAdd]
type = VelAdd
trigger1 =time=0 && ishelper(3013)
y = -4
x= 7
ignorehitpause =1 
persistent =0 
[State 0, VelAdd]
type = VelAdd
trigger1 =time=0 && ishelper(3014)
y = -7
x= 7
ignorehitpause =1 
persistent =0 
[State 0, VelAdd]
type = VelAdd
trigger1 =time=0 && ishelper(3015)
y = 0
x= 7
ignorehitpause =1 
persistent =0 

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time >15
value = 3016
;elem = 1
;ignorehitpause = 
persistent = 0
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;value2 = S,NA
time = 1
;ignorehitpause = 
;persistent = 
[State -2, Helper]
type = Helper
trigger1 = winko && movehit
triggerall = root,NumHelper(6000) < 1
helpertype = normal ;player
name = "winko"
ID = 6000
stateno = 5995
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime =999
pausemovetime = 999
ignorehitpause = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=15
value = S2,6

[State 210, 2]
type = HitDef
trigger1 = time=0
attr = S, HP
animtype  = Medium
damage    = ceil(60*(root,fvar(12))),10
guardflag = MA
pausetime = 0,1
sparkno = S3016
sparkxy = var(19),0
priority=4
guard.sparkno = S3016
hitsound   = S2,6
getpower = 0
guardsound = S2,7
ground.type = High
ground.slidetime = 13
ground.hittime  = 13
air.hittime=60
ground.velocity = -2,-7
air.velocity = -2,-7
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
id=200

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = movecontact 
flag = invisible
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = movecontact
trigger2=anim=3016
x = 0
y = 0



[State 0, TargetState]
type = TargetState
triggerall = NumTarget(200)
trigger1 =movehit&&p2statetype=A&&p2stateno!=[20005,20006]
value =20005
ID =200

[State 0, DestroySelf]
type = DestroySelf
trigger1 = movecontact >5
trigger2 = anim=3016 && animtime=0
ignorehitpause = 1
;---------------------------------------------------------------------------
[Statedef 3009]
type    = A
movetype= I
physics = N
velset = -vel x ,-5
sprpriority=0

[State 0, VelAdd]
type = VelAdd
trigger1 =pos y <0 
y = .47
;ignorehitpause = 
;persistent = 
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 10*time
ignorehitpause =1

[State 0, VelMul]
type = VelMul
trigger1 =time=0 
x = .2+((random%25)*.015)
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
trigger1 = pos y>=0  && var(2)=0
x = -3+((random%25)*.05)
y = -5.5
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = pos y >=0
v =2   ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 


[State 0, VarSet]
type = Varadd
trigger1 =var(2)
v = 1    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 


[State 0, Trans]
type = Trans
trigger1 = var(1)=8
trans = addalpha;, sub
alpha = 175,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=9
trans = addalpha;, sub
alpha = 150,250
[State 0, Trans]
type = Trans
trigger1 =var(1)=10
trans = addalpha;, sub
alpha = 125,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=11
trans = addalpha;, sub
alpha = 100,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=12
trans = addalpha;, sub
alpha = 75,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=13
trans = addalpha;, sub
alpha = 50,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=14
trans = addalpha;, sub
alpha = 25,250
[State 0, Trans]
type = Trans
trigger1 = var(1)=15
trans = addalpha;, sub
alpha = 10,250


[State 0, DestroySelf]
type = DestroySelf
trigger1 =var(1)>15
;---------------------------------------------------------------------------
[Statedef 3010]
type    = A
movetype= A
physics = N
velset = 12,0
anim=3003
sprpriority=2
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S5,6
volumescale = 50
channel = 2
[State 0, VarSet]
type = VarSet
trigger1 =  time=0
fv = 0    ;fv = 10
value = vel x 
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 =  time=0
fv = 1    ;fv = 10
value = vel y
[State 3005, hitoverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=3009

[State -2, Helper]
type = Helper
trigger1 = winko && movehit
triggerall = root,NumHelper(6000) < 1
helpertype = normal ;player
name = "winko"
ID = 6000
stateno = 5995
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime =999
pausemovetime = 999
ignorehitpause = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -20*time
ignorehitpause =1 
;persistent = 
[State 1005, This is for fossils]
type = Projectile
trigger1 =time=0
ProjID = 3000
projanim = anim
projhitanim = -1
projremanim = -1
projscale = 0,0
offset=0,0
projpriority = 1
projremovetime = -1
postype = p1         ;p2,front,back,left,right
velocity = fvar(0),fvar(1)
persistent=0
accel = 0,.23*var(0)
[State 210, 2]
type = HitDef
trigger1 =!movecontact
attr = S, HP
animtype  = Medium
damage    = ceil(20*(root,fvar(12))),5
guardflag = MA
pausetime = 2,2
sparkno = S6001
sparkxy = 0,0
priority=4
guard.sparkno = S7009
hitsound   = S2,1
getpower = 0
guardsound = S3,1
ground.type = High
ground.slidetime = 13
ground.hittime  = 13
air.hittime=15
ground.velocity = -2
air.velocity = -4,-1.5
air.fall=1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
id=200
[State 0, VarSet]
type = parentVarSet
triggerall = enemy,movetype = H&&(p2stateno!=[120,155])
triggerall =  enemy,gethitvar(hitcount)>1
trigger1 = movehit
fv =12 ;fv = 10
value = root,fvar(12)*.97
ignorehitpause=0
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(200)
trigger1 =movehit&&p2statetype=A&&p2stateno!=[202,205]
value =202
ID =200
[State 0, HitBy]
type = HitBy
trigger1 = enemy,numproj=0
value = SCA,NP,SP,HP
;value2 = S,NA
time = 1
ignorehitpause = 1
;persistent = 
[State 0, HitBy]
type = notHitBy
trigger1 = enemy,numproj>0
value = SCA
;value2 = S,NA
time = 1
ignorehitpause = 1
;persistent = 

[State 210, 5]
type = ChangeState
trigger1 =movecontact=1 || root,numprojid(3000)=0
value = 3009
ignorehitpause=1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  frontedgebodydist <-50
;---------------------------------------------------------------------------
[Statedef 3011]
type    = A
movetype= I
physics = N
velset = 0,0
anim=3011
sprpriority=2

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1

pos = 0,0
ignorehitpause = 1
[State 3000, Super B]
type = AfterImage
trigger1 = time=0
time = 2

[State 3000, Super C]
type = AfterImageTime
trigger1 = time>0
time = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(11)=0
value = 3011
elem = 5
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(7)>=0 && root,animelemtime(8)<0
value = 3011
elem = 1
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(8)>=0 && root,animelemtime(9)<0
value = 3011
elem = 2
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(9)>=0 && root,animelemtime(10)<0
value = 3011
elem = 3
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(10)>=0 && root,animelemtime(11)<0
value = 3011
elem = 4
ignorehitpause = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 =root,animelemtime(12)>=0
trigger2= root,stateno!=3001
;---------------------------------------------------------------------------
[Statedef 3012]
type    = A
movetype= A
physics = N
velset = 0,9
anim=ifelse(root,var(59)>3,3022,ifelse(root,var(59)<2,3020,3021))
sprpriority=ifelse(ishelper(3013),1,6)

[State 0, VelAdd]
type = VelAdd
trigger1 = var(2)=0 
y = .59
;ignorehitpause = 
;persistent = 



[State 0, VelAdd]
type = VelAdd
trigger1 = var(2)=1
y = .7
[State 0, PosSet]
type = PosSet
trigger1 =time=0 
y =-320



[State 0, VelSet]
type = VelSet
trigger1 = var(2)=1
y = -6.5
persistent=0

[State 0, VarSet]
type = VarSet
trigger1 =pos y >0 && var(2)=0 
v = 2   ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 

;persistent = 


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1 
flag = noshadow

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(2) = %d"
params = var(2)
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >=0 && var(2)=1 && time >30
value =3014
ctrl = 0
;anim =
;ignorehitpause = 
;persistent = 

;---------------------------------------------------------------------------
[Statedef 3014]
type    = A
movetype= A
physics = N
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
;ignorehitpause = 
;persistent =
[State 0, Explod]
type = Explod
triggerall = root,var(59)>=3
trigger1 = time%4=0 && root,animelemtime(9)>=0
anim =3013
ID = 3013
pos = 38 ,-53
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=1
[State 0, Explod]
type = Explod
trigger1 = time%4=0 && root,animelemtime(9)>=0
anim =3013
ID = 3013
pos = 14 ,-41
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=1
[State 0, PlaySnd]
type = PlaySnd
trigger1 =time%4=0 && root,animelemtime(9)>=0
value = S0,5
channel = 4
[State 0, Projectile]
type = Projectile
triggerall = root,var(59)>=2
trigger1 =time%4=0 && root,animelemtime(9)>=0
ProjID = 3015
projanim = 3014
projhitanim =10000
projremanim = 10000
projcancelanim =10000
projscale = .12,.3
projremove = 1
projremovetime = -1
velocity = 15,.45*(ifelse(random<499,1,-1))
remvelocity = 0,0
projhits = 1
projpriority = 0
projsprpriority = 4
projedgebound = 90
projstagebound = 90
offset =29 ,-41
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium 
air.animtype=diagup         ;light,medium,hard,back,up,diagup
damage = ifelse(root,var(59)=2,3,4),1
pausetime = 1,2
sparkno = S7005+(random%4)
guard.sparkno = S7009
sparkxy = 0,0
getpower=0
hitsound   = S2,ifelse(random<499,4,5)
guardsound = S3,1
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = -2,-6
air.hittime=35
air.velocity=-2,-6
forcenofall=1
id=200

[State 0, Projectile]
type = Projectile
trigger1 =time%4=0 && root,animelemtime(9)>=0
ProjID = 3016
projanim = 3014
projhitanim =10000
projremanim = 10000
projcancelanim =10000
projscale = .12,.3
projremove = 1
projremovetime = -1
velocity = 15,.45*(ifelse(random<499,1,-1))
remvelocity = 0,0
projhits = 1
projpriority = 0
projsprpriority = 4
projedgebound = 90
projstagebound = 90
offset =53 ,-53
postype = p1      
getpower=0   ;p2,front,back,left,right
projshadow = 0,0,0
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium 
air.animtype=diagup         ;light,medium,hard,back,up,diagup
damage = 4,2
pausetime = 1,ifelse((root,var(59)<2),4,2)
sparkno = S7005+(random%4)
guard.sparkno = S7009
sparkxy = 0,0
hitsound   = S2,ifelse(random<499,4,5)
guardsound = S3,1
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = -2,-6
air.hittime=35
air.velocity=-2,-6
forcenofall=1
id=200
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(200)
trigger1 =(projhit3016=1||projhit3015=1)&&p2statetype=A&&p2stateno!=[202,205]
value =202
ID =200

[State 0, Helper]
type = Helper
triggerall = root,var(59)>=4
trigger1 =timemod=15,0 && root,animelemtime(9)>=0 && root,var(59)=5
trigger2 =timemod=23,0 && root,animelemtime(9)>=0 && root,var(59)=4
helpertype = normal ;player
name = "grenade"
ID =3017
stateno =3017
pos = 33,-29
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause=1
supermovetime=888
[State 0, Helper]
type = Helper
triggerall = root,var(59)>=4
trigger1 =timemod=25,30 && root,animelemtime(9)>=0 && root,var(59)=5
trigger2 =timemod=40,40 && root,animelemtime(9)>=0 && root,var(59)=4
helpertype = normal ;player
name = "grenade"
ID =3017
stateno =3017
pos = 63,-41
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause=1
supermovetime=888

[State 0, Explod]
type = Explod
triggerall = root,var(59)>=4
trigger1 =timemod=15,0 && root,animelemtime(9)>=0 && root,var(59)=5
trigger2 =timemod=23,0 && root,animelemtime(9)>=0 && root,var(59)=4
anim =3017
ID = 3017
pos = 33,-29
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 3
vel = -1,0
accel = 0,0
random = 0,0
scale = .75,.75
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=1
[State 0, Explod]
type = Explod
triggerall = root,var(59)>=4
trigger1 =timemod=25,30 && root,animelemtime(9)>=0 && root,var(59)=5
trigger2 =timemod=40,40 && root,animelemtime(9)>=0 && root,var(59)=4
anim =3017
ID = 3017
pos = 63,-41
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 3
vel = -1,0
accel = 0,0
random = 0,0
scale = .75,.75
sprpriority = 4
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=1
[State 0, ChangeState]
type = ChangeState
trigger1 = root,animelemtime(11)>=0
value =3015
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 3015]
type    = A
movetype= A
physics = N
velset = 0,0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S2,6
channel = 5

;abspan = 
;ignorehitpause = 
;persistent = 
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;value2 = S,NA
time = 1
[State 0, Explod]
type = Explod
trigger1 = time=0
anim =3019
ID = 3019
pos = 15,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1.25,1.25
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=1
persistent=0
[State 0, Explod]
type = Explod
trigger1 = time=0
anim =3019
ID = 3019
pos = -10,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1.25,1.25
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=1
persistent=0
[State 0, Explod]
type = Explod
trigger1 = time=0
anim =3019
ID = 3019
pos = 10,-40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1.25,1.25
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=1
persistent=0
[State 0, Explod]
type = Explod
trigger1 = time=0
anim =3019
ID = 3019
pos = 10,-70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1.25,1.25
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause=1
persistent=0
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time=2
value = 3018
;elem = 1
;ignorehitpause = 
;persistent = 
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;value2 = S,NA
time = 1
;ignorehitpause = 
;persistent = 

[State 210, 2]
type = HitDef
trigger1 =animelem=1
attr = A, HA
animtype  = Medium
air.animtype=diagup
damage    = 85
guardflag = MA
pausetime =  8,8
sparkno = 1
sparkxy = -10,-65
hitsound = S2, 3     
guardsound = S3, 0  
ground.type = High
ground.slidetime = 12
ground.hittime  = 19
guard.ctrltime=18
guard.velocity=-6
air.hittime=70
ground.velocity = -6,-12
air.velocity = -6,-12
forcenofall = 1
id=200
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
envshake.time=12
envshake.freq = 60
envshake.ampl=-3
envshake.phase=90
[State 0, TargetState]
type = TargetState
triggerall = NumTarget(200)
trigger1 =movehit&&p2statetype=A&&p2stateno!=[202,205]
value =202
ID =200
[State 0, DestroySelf]
type = DestroySelf
trigger1 =time=5
;---------------------------------------------------------------------------
[Statedef 3013]
type    = A
movetype= I
physics = N
velset = 0,0
anim=3012
sprpriority=5

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1

pos = 62,-81
ignorehitpause = 1


;scale = 
;ignorehitpause = 
;persistent = 
[State 0, AngleDraw]
type = AngleDraw
trigger1 =time <30 
value = var(0)




[State 0, VarSet]
type = Varadd
trigger1 = 1
v = 0    ;fv = 10
value = 45
;ignorehitpause = 
;persistent = 

;ignorehitpause = 
;persistent = 

;ignorehitpause = 
;persistent = 


[State 0, DestroySelf]
type = DestroySelf
trigger1 =root,animelemtime(12)>=0
trigger2= root,stateno!=3001
;---------------------------------------------------------------------------
[Statedef 3017]
type    = A
movetype= A
physics = N
velset = ifelse(parent,ishelper(3013),4,6),-6.5
anim=3015
sprpriority=ifelse(parent,ishelper(3013),0,5)

[State 0, VelAdd]
type = VelAdd
trigger1 = anim!=3016
y = .47

[State 0, AngleSet]
type = Angledraw
trigger1 = anim!=3016
value = 30*var(0)
;ignorehitpause = 
;persistent = 


[State 0, VarSet]
type = Varadd
trigger1 = time%4=0
v = 0    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = pos y >=0
v = 1   ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, VarRandom]
type = VarRandom
trigger1 = time=0
v = 3
range = -4,-2
;ignorehitpause = 
;persistent = 

[State 0, VelAdd]
type = VelAdd
trigger1 =var(1) 
y = -15+var(3)
ignorehitpause =1 
persistent =0 
[State 0, VarAdd]
type = VarAdd
trigger1 = var(1)
v = 2    ;fv = 
value = 1
;ignorehitpause = 
;persistent = 

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = var(2)>20
value = 3016
;elem = 1
;ignorehitpause = 
persistent = 0
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;value2 = S,NA
time = 1
;ignorehitpause = 
;persistent = 

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(2)=20
value = S2,6

[State 210, 2]
type = HitDef
trigger1 = time=0
attr = S, HP
animtype  = Medium
damage    = ceil(40*(root,fvar(12))),10
guardflag = MA
pausetime = 0,1
sparkno = S3016
sparkxy = var(19),0
priority=4
guard.sparkno = S3016
hitsound   = S2,6
getpower = 0
guardsound = S2,7
ground.type = High
ground.slidetime = 13
ground.hittime  = 13
air.hittime=60
ground.velocity = -2,-7
air.velocity = -2,-7
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
id=200

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = movecontact 
flag = invisible
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = movecontact
trigger2=anim=3016
x = 0
y = 0



[State 0, TargetState]
type = TargetState
triggerall = NumTarget(200)
trigger1 =movehit&&p2statetype=A&&p2stateno!=[202,205]
value =202
ID =200

[State 0, DestroySelf]
type = DestroySelf
trigger1 = movecontact >5
trigger2 = anim=3016 && animtime=0
ignorehitpause = 1
;persistent = 

;---------------------------------------------------------------------------
[Statedef 3201]
type    = A
movetype= I
physics = N
velset = 0,0
anim=(root,anim)+9
sprpriority=3
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = p2stateno=3104
flag = invisible

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(21)>=0 && root,animelemtime(22)<0
time = 1
pos =-26,-99
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(21)>=0 && root,animelemtime(22)<0
value = anim
elem = 1
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(22)>=0 && root,animelemtime(23)<0
time = 1
pos =-28,-96
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(22)>=0 && root,animelemtime(23)<0
value =anim
elem = 2
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(23)>=0 && root,animelemtime(24)<0
time = 1
pos =-4,-78
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(23)>=0 && root,animelemtime(24)<0
value = anim
elem = 3
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(24)>=0 && root,animelemtime(25)<0
time = 1
pos =-3,-84
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(24)>=0 && root,animelemtime(25)<0
value = anim
elem = 4
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(25)>=0 && root,animelemtime(26)<0
time = 1
pos =-4,-92
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim

trigger1 = root,animelemtime(25)>=0 && root,animelemtime(26)<0
value =anim
elem = 5
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(26)>=0 && root,animelemtime(27)<0
time = 1
pos =-6,-94
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(26)>=0 && root,animelemtime(27)<0
value = anim
elem = 6
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(27)>=0 && root,animelemtime(28)<0
time = 1
pos =-7,-88
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(27)>=0 && root,animelemtime(28)<0
value =anim
elem = 7
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(28)>=0 && root,animelemtime(29)<0
time = 1
pos =-1,-87
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(28)>=0 && root,animelemtime(29)<0
value = anim
elem = 8
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(29)>=0 && root,animelemtime(30)<0
time = 1
pos =-8,-94
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(29)>=0 && root,animelemtime(30)<0
value = anim
elem = 9
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(30)>=0 && root,animelemtime(31)<0
time = 1
pos =-1,-99
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(30)>=0 && root,animelemtime(31)<0
value = anim
elem = 10
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(31)>=0 && root,animelemtime(32)<0
time = 1
pos =-5,-114
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(31)>=0 && root,animelemtime(32)<0
value =anim
elem = 11
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(32)>=0 && root,animelemtime(34)<0
time = 1
pos =-13,-71
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(32)>=0 && root,animelemtime(33)<0
value = anim
elem = 12
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(33)>=0 && root,animelemtime(34)<0
value = anim
elem = 13
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(34)>=0 && root,animelemtime(36)<0
time = 1
pos =62,-80
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(34)>=0 && root,animelemtime(35)<0
value =anim
elem = 14
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(35)>=0 && root,animelemtime(36)<0
value = anim
elem = 15
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(36)>=0 && root,animelemtime(38)<0
time = 1
pos =28,-109
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(36)>=0 && root,animelemtime(37)<0
value =anim
elem = 16
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(37)>=0 && root,animelemtime(38)<0
value = anim
elem = 17
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(38)>=0 && root,animelemtime(40)<0
time = 1
pos =-27,-75
ignorehitpause = 1
;[State 0, ChangeAnim]
;type = ChangeAnim
;triggerall =  var(0)=root,stateno
;trigger1 = root,anim=1011
;trigger1 = root,animelemtime(18)>=0 && root,animelemtime(19)<0
;value = root,anim+9000+ifelse(root,var(59)>2,2,root,var(59))
;elem = 18
;ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(39)>=0 && root,animelemtime(40)<0
value = anim
elem = 19
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(40)>=0 && root,animelemtime(41)<0
time = 1
pos =-55,-41
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(40)>=0 && root,animelemtime(41)<0
value = anim
elem = 20
ignorehitpause = 1


[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(41)>=0 && root,animelemtime(42)<0
time = 1
pos =-57,-27
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(41)>=0 && root,animelemtime(42)<0
value =anim
elem = 21
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(42)>=0 && root,animelemtime(43)<0
time = 1
pos =-40,-59
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(42)>=0 && root,animelemtime(43)<0
value =anim
elem = 22
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(43)>=0 && root,animelemtime(44)<0
time = 1
pos =0,-58
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(43)>=0 && root,animelemtime(44)<0
value =anim
elem = 23
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(44)>=0 && root,animelemtime(45)<0
time = 1
pos =-28,-48

ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(44)>=0 && root,animelemtime(45)<0

value =anim
elem = 24
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(45)>=0 && root,animelemtime(46)<0
trigger2 = root,animelemtime(48)>=0 && root,animelemtime(49)<0
time = 1
pos =-32,-15

ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(45)>=0 && root,animelemtime(46)<0
trigger2= root,animelemtime(48)>=0 && root,animelemtime(49)<0
value =anim
elem = 25
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(47)>=0 && root,animelemtime(48)<0
time = 1
pos =-35,-15

ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(47)>=0 && root,animelemtime(48)<0
value =anim
elem = 26
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(49)>=0 
time = 1
pos =-28,-51

ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,animelemtime(49)>=0
value =anim
elem = 27
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 =root,movetype=H 
;trigger2= anim!=root,anim+9001&&root,stateno!=620 ||anim!=var(5)&&root,stateno=620
trigger2 =root,animelem=49
value =2
;-----------------------------------------------------------------------------
[Statedef 3202]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 0
anim =3204
sprpriority = ifelse(ishelper(1005),9,2)


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animelem=7 && ishelper(1005)
value =anim
elem = 1
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = (animtime=0||time=0)&& ishelper(1006)
value =anim
elem = 7
ignorehitpause = 1
;persistent = 

[State 0, BindToRoot]
type = BindToparent
trigger1 =1
time = -1
pos = 0,-75-(ishelper(1006)*5)

;ignorehitpause = 
;persistent = 

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha;, add1, sub
alpha = 175,256
ignorehitpause = 1
;persistent = 


;[State 0, VelSet]
;type = VelSet
;trigger1 = var(2) != 1
;triggerall = var(3) = 3
;x = 6

;[State 0, VelSet]
;type = VelSet
;trigger1 = var(2) != 1
;triggerall = var(3) = 2
;x = 4

;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0

;[State 0, VelSet]
;type = VelSet
;trigger1 = var(2) != 1
;triggerall = var(3) = 1
;x = 2
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 210, 5]
type = destroyself
trigger1 =root,animelemtime(16)>=0 && root,anim=3201
trigger2= root,stateno!=3100
;---------------------------------------------------------------------------
[Statedef 30011]
type    = A
movetype= I
physics = N
velset = 0,0
anim=(root,anim)+1
sprpriority=3
[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 3
ignorehitpause = 1
;persistent = 

[State 0, VelSet]
type = VelSet
trigger1 =root,stateno!=3050
trigger2= root,animelemtime(17)>0 && root,stateno=3050
x = 7.5
[State 0, VarSet]
type = VarSet
trigger1 = time=0 &&root,var(59)>1
v = 2    ;fv = 10
value = ifelse(root,var(59)=2,3,ifelse(root,var(59)=3,6,ifelse(root,var(59)=4,8,10)))
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(17)<0 && root,stateno=3050
time = 1
facing = 1
pos = 83,0
ignorehitpause = 1
;persistent = 
[State 0, Explod]
type = Explod
trigger1 =  time%3=0
anim = 3017
ID = 3017
pos = -15,-3
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel=-1.5,-1.2
scale = .75,.75
ontop = 0
sprpriority = -4
shadow = 0,0,0
ownpal = 1
[State 0, Explod]
type = Explod
trigger1 =  time=0 && root,var(59)>=3
anim = 3102
ID = 3102
pos = 9,-37
postype = p1
facing = 1
vfacing = 1
bindtime = -1
scale = const(size.xscale),const(size.yscale)
ontop = 0
sprpriority = 0
shadow = 0,0,0
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 =  time=0 && root,var(59)>=4
anim = 3102
ID = 3102
pos = 15,-47
postype = p1
facing = 1
vfacing = 1
bindtime = -1
scale = const(size.xscale),const(size.yscale)
ontop = 0
sprpriority = 4
shadow = 0,0,0
ownpal = 1
[State 0, Explod]
type = Explod
trigger1 =  time=0 && root,var(59)>=5
anim = 3103
ID = 3102
pos = 15,-54
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
ontop = 0
sprpriority = 0
shadow = 0,0,0
ownpal = 1
[State 0, Explod]
type = Explod
trigger1 =  time=0 && root,var(59)>=5
anim = 3103
ID = 3102
pos = 10,-32
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = const(size.xscale),const(size.yscale)
ontop = 0
sprpriority = 4
shadow = 0,0,0
ownpal = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = frontedgebodydist <-80 && time >40
trigger2= time>250
id = 3102
;ignorehitpause = 
;persistent = 

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 5    ;fv = 10
value = 3012+var(1)

[State 0, Helper]
type = Helper
trigger1 =var(1)<var(2)
helpertype = normal ;player
name = "items"
ID =var(5)
stateno = 30012
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0


[State 0, VarSet]
type = Varadd
trigger1 = var(1)<var(2)
v = 1    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, Helper]
type = Helper
trigger1 =var(1)<var(2)
helpertype = normal ;player
name = "items"
ID =var(5)
stateno = 30012
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0


[State 0, VarSet]
type = Varadd
trigger1 = var(1)<var(2)
v = 1    ;fv = 10
value = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgebodydist <-80 && time >40
trigger2= time>250
ignorehitpause = 1

;---------------------------------------------------------------------------
;GROCERIES?
[Statedef 30012]
type    = A
movetype= I
physics = N
velset = 0,0
sprpriority=2

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 10    ;fv = 10
value = (random%11)
;ignorehitpause = 
;persistent = 

[State 0, BindToParent]
type = BindToParent
trigger1 = ishelper(3012) 
time = 1
facing = 1
pos =-15,-41
ignorehitpause = 1
[State 0, AngleDraw]
type = AngleDraw
trigger1 = ishelper(3016) 
trigger2 = ishelper(3017) 
trigger3 = var(10)=3  && (ishelper(3013)  ||ishelper(3014 )||ishelper(3015)||ishelper(3021)||ishelper(3020))  
value = 90

;scale = 
;ignorehitpause = 
;persistent = 
[State 0, AngleDraw]
type = AngleDraw
trigger1 = (var(10)=[8,10])  && (ishelper(3013)||ishelper(3014))  
value = 100
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = var(10)=5
v =2 ;fv = 10
value = -5
[State 0, VarSet]
type = VarSet
trigger1 =  ishelper(3013) && var(10)=[8,10]
v =2 ;fv = 10
value = -15


[State 0, VarSet]
type = VarSet
trigger1 = (ishelper(3013)) && var(10)=[6,7]
v =3 ;fv = 10
value = 12
[State 0, VarSet]
type = VarSet
trigger1 = (ishelper(3013)||ishelper(3014)) && (var(10)=7 ||var(10)=[8,10])
v =3 ;fv = 10
value = 7
[State 0, Turn]
type = Turn
trigger1 = anim=9221 && time=0
;ignorehitpause = 
;persistent = 

[State 0, BindToParent]
type = BindToParent
trigger1 = ishelper(3013) 
time = 1
facing = 1
pos =12+var(3),-41+var(2)
ignorehitpause = 1
[State 0, BindToParent]
type = BindToParent
trigger1 = ishelper(3014) 
time = 1
facing = 1
pos =17+var(3),-41+var(2)
ignorehitpause = 1
[State 0, BindToParent]
type = BindToParent
trigger1 = ishelper(3015) 
time = 1
facing = 1
pos =10+var(3),-48+var(2)
ignorehitpause = 1
[State 0, BindToParent]
type = BindToParent
trigger1 = ishelper(3016) 
time = 1
facing = 1
pos =-7+var(3),-50+var(2)
ignorehitpause = 1
[State 0, BindToParent]
type = BindToParent
trigger1 = ishelper(3017) 
time = 1
facing = 1
pos =-8+var(3),-60+var(2)
ignorehitpause = 1
[State 0, BindToParent]
type = BindToParent
trigger1 = ishelper(3018) 
time = 1
facing = 1
pos =4+var(3),-63+var(2)
ignorehitpause = 1
[State 0, BindToParent]
type = BindToParent
trigger1 = ishelper(3019) 
time = 1
facing = 1
pos =-15+var(3),-64+var(2)
ignorehitpause = 1
[State 0, BindToParent]
type = BindToParent
trigger1 = ishelper(3020) 
time = 1
facing = 1
pos =-11+var(3),-14+var(2)
ignorehitpause = 1
[State 0, BindToParent]
type = BindToParent
trigger1 = ishelper(3021) 
time = 1
facing = 1
pos =6+var(3),-12+var(2)
ignorehitpause = 1
;persistent = 

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=0 
value = 20001
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=1 
value = 20005
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=2 
value = 30001
elem = 1
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=3 
value = 30002
elem = 1
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=4 
value = 30005
elem = 1
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=5 
value = 9198
elem = 9
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=6
value = 9221
elem = 8
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=7
value = 9223
elem = 8
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=8
value = 9301
elem = 12
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=9
value = 9621
elem = 11
ignorehitpause = 1
;persistent = 
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=10
value = 9623
elem = 11
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =var(10)=11
value = 10014
elem = 12
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgebodydist <-80 && time >40
trigger2= root,numhelper(3030)=0
ignorehitpause = 1
;--------------------------------------------------------------------------
[Statedef 3500]
type    = S
movetype= I
physics = S
velset = 0,0
anim =7800
ctrl = 0
sprpriority = -3
[State 0, PosSet]
type = PosSet
trigger1 =1 
x = -160
y = -160
;ignorehitpause = 
;persistent = 

[State 0, Explod]
type = Explod
trigger1 =  time=0
anim = 7801
ID = 7801
pos = 0,-9
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 50
scale =1,ifelse(GameHeight = 180,0.8,1) 
ontop = 0
sprpriority = -4
shadow = 0,0,0
ownpal = 1
supermovetime=99
[State 0, Explod]
type = Explod
trigger1 =  time=0
anim = 7802
ID = 7801
pos = 0,-9
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 50
scale =1,ifelse(GameHeight = 180,0.8,1) 
ontop = 0
sprpriority = -2
shadow = 0,0,0
ownpal = 1
supermovetime=99
[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value =0
scale =.5,ifelse(GameHeight = 180,0.092,.115) 
ignorehitpause =1 
;persistent = 
[State 0, RemapPal]
type = RemapPal
trigger1 =time<50&& root,stateno!=3100
source = 7800,0
dest = 7800,1
ignorehitpause =1
;persistent =


[State 0, RemapPal]
type = RemapPal
trigger1 =time>=49 
source = 7800,0
dest = 7800,0
ignorehitpause =1
[State 0, DestroySelf]
type = DestroySelf
trigger1 = time=50
ignorehitpause = 1
;--------------------------------------------------------------------------
[Statedef 4004]
type    = S
movetype= I
physics = S
velset = 0,0
anim =10000
ctrl = 0
sprpriority = 5
[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(7) = %d var(6) = %d var(0) = %d vel x = %f"
params = numexplod(8022),(var(6)),(var(7)),fvar(2)
ignorehitpause =1 
;persistent = 
;[State 0, VarSet]
;type = parentVarSet
;trigger1 = time = 0
;fv = 4   ;fv = 10
;value = 1000

;[State 0, VarAdd]
;type = parentVarAdd
;triggerall = parent,fvar(4) >0
;trigger1 = 1
;fv = 4    ;fv =
;value = -2.0
;ignorehitpause=1

[State 0, VarSet]
type = parentVarSet
triggerall = roundstate=2
trigger1 = (var(7)=[17,38])
v = 59   ;fv = 10
value = 2
[State 0, VarSet]
type = parentVarSet
triggerall = roundstate=2
trigger1 = (var(7)=[39,68])
v = 59   ;fv = 10
value = 3
[State 0, VarSet]
type = parentVarSet
triggerall = roundstate=2
trigger1 = (var(7)=[69,101])
v = 59   ;fv = 10
value = 4
[State 0, VarSet]
type = parentVarSet
triggerall = roundstate=2
trigger1 = (var(7)>=101)
v = 59   ;fv = 10
value = 5
[State 0, VarSet]
type = VarSet
trigger1 = var(7)>101
v = 7    ;fv = 10
value = 101

;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = var(1)!=root,var(59) && root,movetype!=H
v = 0    ;fv = 10
value = 0
;ignorehitpause = 
;persistent = 

[State 0, VarSet]
type = VarSet
trigger1 = root,movetype=H
v = 1    ;fv = 10
value = root,var(59)
;ignorehitpause = 
;persistent = 

[State 0, VarSet]
type = VarSet
trigger1 =var(10)=1
v = 7    ;fv = 10
value = root,var(58)
;[State 0, VarSet]
;type = Varadd
;trigger1 =root,time<2 &&root,p2bodydist x <50 && root,stateno=1000 && enemy,hitdefattr=SCA,AA
;v =7   ;fv = 10
;value = 2
;ignorehitpause = 
;persistent = 

;ignorehitpause = 
;persistent = 
;[State 0, VarAdd]
;type = VarAdd
;trigger1 = root,command ="holddown" && root,command="start"
;v =  7   ;fv = 
;value = 52
;[State 0, VarAdd]
;type = Varset
;trigger1 = root,command ="holddown" && root,command="start"
;v =  10   ;fv = 
;value = 1
[State 0, VarSet]
type = Varset
trigger1 = var(6)!=root,var(59)
v = 10   ;fv = 10
value = 0
[State 0, VarSet]
type = Varadd
trigger1 = var(10)=0
v = 11   ;fv = 10
value = 1
[State 0, VarSet]
type = VarSet
trigger1 =var(11)>15
trigger2 =time=0
v = 10    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = var(10)=1
v = 11   ;fv = 10
value = 0
;ignorehitpause = 
;persistent = 

[State 0, Explod]
type = Explod
triggerall = teamside = 1
trigger1 =  numexplod(8007) = 0 
anim = 8021
ID = 8007
pos = 35+root,var(50),47+root,var(51)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale =.5,.5
ontop = 1
sprpriority = 9
shadow = 0,0,0
ownpal = 1
[State 0, Explod]
type = Explod
triggerall = teamside = 2
trigger1 =  numexplod(8007) = 0 
anim = 8021
ID = 8007
pos = 251-root,var(50),47+root,var(51)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale =.5,.5
ontop = 1
sprpriority = 9
shadow = 0,0,0
ownpal = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =root,var(59)!=5 
ID =8007
scale = ((var(7)-var(15))*fvar(1))*.5,.5
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = root,var(59)=5
ID =8007
scale = .5,.5

;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0
[State 0, VarSet]
type = VarSet
trigger1 = root,var(59)=2
v = 15   ;fv = 10
value = 17
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = root,var(59)=3
v = 15   ;fv = 10
value = 39
[State 0, VarSet]
type = VarSet
trigger1 = root,var(59)=4
v = 15   ;fv = 10
value = 69

[State 0, VarSet]
type = VarSet
trigger1 =root,var(59)=1 
fv = 1    ;fv = 10
value = .0588
[State 0, VarSet]
type = VarSet
trigger1 =root,var(59)=2
fv = 1    ;fv = 10
value = .0476
[State 0, VarSet]
type = VarSet
trigger1 =root,var(59)=3 
fv = 1    ;fv = 10
value = 0.0345
[State 0, VarSet]
type = VarSet
trigger1 =root,var(59)=4 
fv = 1    ;fv = 10
value = .03125
;ignorehitpause = 
;persistent = 


[State 0, Explod]
type = Explod
triggerall = teamside = 1
trigger1 =  numexplod(8006) = 0 
anim = 8020
ID = 8006
pos = 35+root,var(50),40+root,var(51)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale =.5,.5
ontop = 0
sprpriority = 9
shadow = 0,0,0
ownpal = 1
[State 0, Explod]
type = Explod
triggerall = teamside = 2
trigger1 =  numexplod(8006) = 0 
anim = 8020
ID = 8006
pos = 250-root,var(50),40+root,var(51)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale =.5,.5
ontop = 0
sprpriority = 9
shadow = 0,0,0
ownpal = 1
[State 0, Explod]
type = Explod
triggerall = teamside = 1
trigger1 =  numexplod(8005) = 0 
anim = 8005
ID = 8005
pos = 2+root,var(50),40+root,var(51)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale =.5,.5
ontop = 1
sprpriority = 9
shadow = 0,0,0
ownpal = 1

[State 0, Explod]
type = Explod
triggerall = teamside = 2
trigger1 =  numexplod(8005) = 0 
anim = 8005
ID = 8005
pos = 285-root,var(50),40+root,var(51)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale =.5,.5
ontop = 1
sprpriority = 9
shadow = 0,0,0
ownpal = 1
[State 0, Explod]
type = Explod
triggerall = teamside = 1
trigger1 =  1
anim = 8010+(var(6)-1)
ID = 8010
pos = 11+root,var(50),43+root,var(51)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
scale =.5,.5
ontop = 1
sprpriority = 9
shadow = 0,0,0
ownpal = 1
[State 0, Explod]
type = Explod
triggerall = teamside = 2
trigger1 =  1
anim = 8010+(var(6)-1)
ID = 8010
pos = 294-root,var(50),43+root,var(51)
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
scale = .5,.5
ontop = 1
sprpriority = 9
shadow = 0,0,0
ownpal = 1
;
;[State 0, Explod]
;type = Explod
;triggerall = teamside = 1
;triggerall = var(6)=0 || var(6)=2
;trigger1 =  numexplod(8019) = 0 
;anim = 8021
;ID = 8019
;pos = 35,59
;postype = left
;facing = 1
;vfacing = 1
;bindtime = -1
;removetime = -1
;scale = .25,.25
;ontop = 1
;sprpriority = 9
;shadow = 0,0,0
;ownpal = 0
;persistent = 0
;[State 0, Explod]
;type = Explod
;triggerall = teamside = 1
;triggerall = var(6)=1
;trigger1 =  numexplod(8019) = 0 
;anim = 8022
;ID = 8019
;pos = 35,59
;postype = left
;facing = 1
;vfacing = 1
;bindtime = -1
;removetime = -1
;scale = .25,.25
;ontop = 1
;sprpriority = 9
;shadow = 0,0,0
;ownpal = 0
;persistent = 0
[State 0, VarSet]
type = Varadd
trigger1 = var(6)!=root,var(59)
v = 9    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = roundstate!=2
id = 8005
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = roundstate!=2
id = 8006
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = roundstate!=2
id = 8007
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = var(9)>3
trigger2 = roundstate!=2
id = 8010
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = var(9)>3
trigger2 = roundstate!=2
id = 8019
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = roundstate!=2
id = 8022

[State 0, VarSet]
type = VarSet
trigger1 =  numexplod(8010) < 1
v = 6    ;fv = 10
value = root,var(59)
[State 0, VarSet]
type = VarSet
trigger1 =  numexplod(8010) < 1
v = 8   ;fv = 10
value = 0
[State 0, VarSet]
type = VarSet
trigger1 =numexplod(8010) < 1 
v = 9   ;fv = 10
value = 0
;ignorehitpause = 
;persistent = 

;ignorehitpause = 
;persistent = 

;ignorehitpause = 
;persistent = 

;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0




[State 0, PalFXWiz]
type = PalFX
triggerall = var(10)=0
trigger1 = time%4=0
time = 2
add = -250,-250,-250
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 1
color = 256
[State 0, PlaySnd]
type = PlaySnd
trigger1 =var(10)=0
trigger1 = var(11)=1
value = S5400,0
channel = 5
volumescale=50
;ignorehitpause = 
;persistent = 


;[State 0, Explod]
;type = Explod
;triggerall = teamside = 2
;trigger1 =  numexplod(16011) < 1
;anim = 16008
;ID = 16011
;pos = 237,211
;postype = left
;facing = 1
;vfacing = 1
;bindtime = -1
;removetime = -1
;scale = .5,.5
;ontop = 0
;sprpriority = 9
;shadow = 0,0,0
;ownpal = 1
;persistent = 0
;[State 0, Explod]
;type = Explod
;triggerall = teamside = 1
;trigger1 =  numexplod(16011) < 1
;anim = 16008
;ID = 16011
;pos = 52,211
;postype = left
;facing = 1
;vfacing = 1
;bindtime = -1
;removetime = -1
;scale = .5,.5
;ontop = 0
;sprpriority = 9
;shadow = 0,0,0
;ownpal = 1
;persistent = 0
;
;[State 0, ModifyExplod]
;type = ModifyExplod
;trigger1 =1
;ID = 16011
;removetime = -1
;shadow = 0,0,0
;ownpal = 1
;scale =  (root,fvar(4) * .0005),.75
;ignorehitpause=1
;[State 0, RemoveExplod]
;type = RemoveExplod
;trigger1 = parent,fvar(4) <= 0
;trigger2 = roundstate !=2
;id =16010
;[State 0, RemoveExplod]
;type = RemoveExplod
;trigger1 = parent,fvar(4) <= 0
;trigger2 = roundstate !=2
;id =16011


[State 911, Destroy]
type = destroyself
;trigger1 = parent,fvar(4) <= 0
trigger1 = roundstate !=2
;--------------------------------------------------------------------------
[Statedef 4005]
type    = S
movetype= I
physics = S
ctrl = 0
sprpriority =-3
[State 0, VarSet]
type = parentVarSet
trigger1 = root,var(6)<0
v =6    ;fv = 10
value = 0
ignorehitpause = 1
;persistent = 
[State 0, VarSet]
type = parentVaradd
trigger1 = root,var(6)>0
v =6    ;fv = 10
value = -1
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =1
value = root,anim
elem = root,animelemno(0)
ignorehitpause =0
;persistent =
[State 0, NotHitBy]
type = NotHitBy
trigger1 =1
value = SCA
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = root,gethitvar(isbound) || (root,movetype=H &&root,stateno=[200,4999])|| root,movetype=H &&root,stateno=[5211,29999]
flag = invisible


[State 0, Trans]
type = Trans
trigger1 =1
trans =  sub;, addalpha, add1, sub
[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
facing = 0
pos = 0,0
;ignorehitpause =
;persistent =

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 1
scale = 1+(sin(.0020*var(10))),1+(sin(.0020*var(10)))
ignorehitpause =0
;persistent =
[State 0, VarSet]
type = Varset
trigger1 =var(10)>=50
v = 11    ;fv = 10
value = 1
ignorehitpause =0
[State 0, VarSet]
type = Varset
trigger1 =var(10)=0
v = 11    ;fv = 10
value =0
ignorehitpause =0
[State 0, VarSet]
type = Varadd
triggerall = var(11)=0
trigger1 =var(10)<50
v = 10    ;fv = 10
value = 1
ignorehitpause =0
[State 0, VarSet]
type = Varadd
triggerall = var(11)=1
trigger1 =var(10)>0
v = 10    ;fv = 10
value = -1
ignorehitpause =0
;ignorehitpause =
;persistent =
[State 200, 2]
type = PlaySnd
trigger1 = var(6)=60
value = S194, 4
channel=3
[State as, *]
type = assertspecial
trigger1 = 1
flag = NoShadow
flag2 = invisible

[State ai, *]
type = AfterImage
trigger1 = 1
time = 2
trans = add
timegap = 1
framegap = 1
length = 2
PalBright = 128,128,128
PalContrast = 255,255,255
PalAdd = 66,66,66

persistent = 1
ignorehitpause = 1

[State turn, *]
type = Turn
trigger1 = Facing != Root,Facing
;alpha = 256,256
;ignorehitpause =
;persistent =
[State 911, Destroy]
type = destroyself
trigger2 = root,var(6) <= 0 && time >50
trigger1 = roundstate !=2
;---------------------------------------------------------------------------
;LVL 1 SUPER FX
[Statedef 5995]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 10000
ctrl = 0
sprpriority = -9

;persistent = 

[State 11009, dust]
type = Explod
trigger1 = time = 0
anim =7810
ID = 11011
postype =left
pos = 0,0
bindtime = -1
facing = 1
sprpriority = -9
scale = 1,ifelse(GameHeight=180,0.77,1)
ownpal = 0
ignorehitpause =1
ontop =0
pausemovetime = 999
supermovetime = 9999


;ignorehitpause = 
;persistent = 
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2=nofG
flag3=noBG
ignorehitpause = 1
persistent = 1

[State 11009, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S999,1

;y =abs(pos y-120)/85
;ignorehitpause = 
;persistent =

;ignorehitpause = 
;persistent = 

;ignorehitpause = 
;persistent = 

;[State 0, VelSet]
;type = VelSet
;trigger1 =pos y != -110
;y = (((-pos y)-110)/85);*var(0)
;ignorehitpause = 
;persistent = 
[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "pos x = %f  pos y = %f"
params = pos x,pos y
;ignorehitpause = 
;persistent = 

[State 0, PalFX]
type = PalFX
trigger1 =  time=85
time = 50
add = 0,0,0
mul = 256,256,256
sinadd = 255,255,255,140
invertall = 0
color = 256
persistent=0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time >128
;ignorehitpause = 
;persistent = 
;---------------------------------------------------------------------------------------------------
[Statedef 9999]
type    = A
movetype= H
physics = N
juggle  = 8
velset=0,0
poweradd= 0
ctrl = 0
anim =10000
sprpriority = 9
;[State 0, VarSet]
;type = parentVaradd
;trigger1 = root,var(6)>0 && (p2movetype!=H|| p2stateno=[120,132]) && gametime%2=0
;v =6    ;fv = 10
;value = -1

[State 0, Helper]
type = Helper
trigger1 = root,anim=0 && root,numhelper(1)=0
helpertype = normal ;player
name ="BLINKY" 
ID = 1
stateno = 1
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
size.xscale = root,const(size.xscale)
size.yscale = root,const(size.yscale)
;size.ground.back = 
;size.ground.front = 
;size.air.back = 
;size.air.front = 
;size.height = 
;size.proj.doscale = 
;size.head.pos = , 
;size.mid.pos = , 
;size.shadowoffset = 
;ignorehitpause = 
;persistent = 



[State 1, VarSet]
type = parentVarSet
trigger1 =root,movetype=H 
v = 1    ;fv = 10
value = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
;[State 0, DisplayToClipboard]
;type = DisplayToClipboard
;trigger1 = 1
;text = "var(2) = %d var(3) = %d  vel x = %d movehit= %d"
;params = var(20),((Fvar(13)/fvar(15))*5.0),((Fvar(14)/fvar(15))*5.0),(fvar(15)*5.0)
;ignorehitpause = 1
;persistent = 

[State 2, VarSet]
type = Varset
trigger1 =var(10)>=0
trigger2 =var(11)>=0
trigger3 =var(12)>=0
trigger4 =var(13)>=0
trigger10 =var(20)>=0
trigger11 =var(21)>=0
v = 2   ;fv = 10
value = 1
ignorehitpause = 1

[State 3, VarSet]
type = Varset
trigger1 =var(10)>=0
trigger2 =var(11)>=0
v = 3   ;fv = 10
value = 1
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 = root,prevstateno=[190,199]
v = 19   ;fv = 10
value = 49
;ignorehitpause = 
;persistent = 
[State 0, VarAdd]
type = VarAdd
trigger1 = var(19)>0 && roundstate=2
v = 19    ;fv = 
value = -1
;ignorehitpause = 
;persistent = 

[State 4, VarSet]
type = Varset
trigger1 =root,statetype=A&& root,movetype!=H
v = 4   ;fv = 10
value = 1
ignorehitpause = 1

[State 5, VarSet]
type = Varadd
trigger1 =var(4)=2
v = 5   ;fv = 10
value = 1
ignorehitpause = 1



;ignorehitpause = 
;persistent = 
[State 6, VarSet]
type = Varset
trigger1 = roundstate=2 && var(6)<200
v = 6   ;fv = 10
value =1
ignorehitpause = 1
[State 6, VarSet]
type = Varset
trigger1 = (root,stateno=[5000,5200])&&root,prevstateno=[120,155]
v = 6   ;fv = 10
value = p2stateno
ignorehitpause = 1
;persistent = 

[State 7, VarSet]
type = VarSet
trigger1 =  p2stateno=var(6)
v =7   ;fv = 10
value = 1
ignorehitpause = 1
;dun do anything yet
[State 8, VarSet]
type = VarSet
trigger1 = root,stateno=5120 
v = 8    ;fv = 10
value = 6
[State 8, VarSet]
type = Varadd
trigger1 = root,stateno!=5120 && var(8)>0
v = 8    ;fv = 10
value = -1
;oki dok
[State 8, VarSet]
type = VarSet
triggerall = var(13) || root,p2bodydist x= [15,45]
trigger1 = p2stateno=5040
v = 9    ;fv = 10
value = 1
;enough for lights
[State 10, Explod]
type = varset
triggerall = var(10)=0
trigger1 = root,movehit=1 && ((root,stateno=630)) && root,pos y =[-35,-25]
trigger2 = root,movehit=1 &&( root,stateno=600) && root,pos y =[-45,-35]
trigger3= root,movehit=1 && (root,stateno=610)&& root,pos y =[-65,-55]
trigger4= root,movehit=1 && (root,stateno=640)&& root,pos y =[-60,-45]
trigger5= root,movehit=1 && (root,stateno=620)&& root,pos y =[-65,-55]
trigger6= root,movehit=1 && (root,stateno=640)&& root,pos y <=-70
v=10
value=1
ignorehitpause = 1
;enough for heavys
[State 0, Explod]
type = varset
triggerall = var(11)=0
trigger1 = root,movehit=1 && ((root,stateno=630)) && root,pos y >-25
trigger2 = root,movehit=1 &&( root,stateno=600) && root,pos y >-35
trigger3= root,movehit=1 && (root,stateno=610)&& root,pos y >-55
trigger4= root,movehit=1 && (root,stateno=640)&& root,pos y >-45
trigger5= root,movehit=1 && (root,stateno=620)&& root,pos y >-55
trigger6= root,movehit=1 && (root,stateno=640)&& root,pos y >-70
v=11
value=1

;blocked so inch slowly
[State 12, Explod]
type = varset
triggerall = var(12)=0
triggerall = var(13)=0
triggerall = root,numhelper(1001)=0
trigger1= root,p2bodydist x >175 && root,ctrl
;trigger2= root,stateno=410 && root,movehit
;trigger3= root,stateno=9612 && p2statetype=A && root,var(21)=0
v=12
value=1
[State 13, Explod]
type = varset
triggerall = var(12)=0
triggerall = var(13)=0
triggerall = root,numhelper(1001)=1
trigger1= p2movetype=A &&root,var(17)&& (p2stateno!=5201||enemy,time>12)
trigger2= p2statetype=L &&root,var(17) 
v=13
value=1

;------can air dash
;[State 0, Explod]
;type = varset
;triggerall = root,movetype!=H
;triggerall = root,statetype=A
;triggerall = root,ctrl
;triggerall = root,var(31)=0
;triggerall = root,p2bodydist y >30 || p2movetype!=A || root,statetype=A
;trigger1= p2movetype=A  && p2bodydist x !=[1,30]
;trigger2 = p2stateno=5120 || enemy,prevstateno=5120
;trigger3 = root,p2bodydist x <80 && p2statetype=A
;trigger4 = (p2bodydist x>120 && (p2movetype!=A || p2statetype!=A))||backedgebodydist <117
;trigger5 = (root,p2bodydist x =[-30,0]) && p2statetype!=A && root,frontedgebodydist >60
;v=14
;value=1
;ignorehitpause =1


;------can air dash back
;[State 15, Explod]
;type = varset
;triggerall = root,movetype!=H
;triggerall = root,statetype=A
;triggerall = root,ctrl
;triggerall = root,var(31)=0 
;triggerall = p2bodydist x <120
;trigger1 = (root,p2bodydist x =[-10,40]) && p2statetype=A
;trigger2 = (root,p2bodydist x =[-30,0]) && p2statetype!=A && root,frontedgebodydist <60
;trigger3= p2bodydist x<90 && (p2movetype=A && p2statetype!=A&&backedgebodydist >117)
;v=15
;value=1
;ignorehitpause =1

;[State 0, VarSet]
;type = Varadd
;triggerall = enemy,hitshakeover
;trigger1 =root,moveguarded=1 
;v = 1   ;fv = 10
;value = 1
;ignorehitpause = 0
;[State 0, VarSet]
;type = VarSet
;trigger1 = root,movehit
;v = 1    ;fv = 10
;value = 0
;ignorehitpause = 
;persistent = 

;persistent = 


;persistent = 


;bait
[State 16, VarSet]
type = Varadd
triggerall = var(17)=0
triggerall = root,numhelper(1001)
triggerall = enemy,hitshakeover
trigger1=helper(1001),moveguarded=1
v =16  ;fv = 10
value = 1
ignorehitpause =0
;persistent = 

[State 17, VarSet]
type = VarSet
trigger1 = var(16)=3 && var(17)=0
v = 17   ;fv = 10
value = 12
;ignorehitpause = 
;persistent = 
[State 17, VarSet]
type = Varadd
trigger1 = var(17)>0  && root,stateno!=1000
v = 17   ;fv = 10
value = -1
ignorehitpause = 1


;persistent = 

;1000

;1001

;ignorehitpause = 
;persistent = 


[State 1640, X]
Type = VarSet
trigger1 =  roundstate=2
fvar(13) = (EnemyNear, Pos X - root,Pos X) * Facing
[State 1640, Y]
Type = VarSet
trigger1 =  roundstate=2
fvar(14) = (EnemyNear, pos Y - root,Pos Y)
;1000
[State 1640, Vector Length]
Type = VarSet
trigger1 =  roundstate=2
triggerall= fvar(14)!=0
triggerall= fvar(13)!=0
fvar(15) = Exp(0.5*ln((fvar(13) * fvar(13))+(fvar(14) * fvar(14))))
[State 0, Explod]
type = varset
triggerall = roundstate=2
triggerall = root,numhelper(1111)=0
triggerall = root,movetype!=H
triggerall= fvar(14)!=0
triggerall= fvar(13)!=0
triggerall =((Fvar(14)/fvar(15))*5.0)=[-3,-1.5]
triggerall =((Fvar(13)/fvar(15))*5.0)=[3,5]
trigger1= p2statetype=A && p2stateno!=441
v=20
value=1
ignorehitpause =1
;[State 20, Explod]
;type = varset
;triggerall = var(20)=0
;triggerall = var(17)=0
;triggerall = root,numhelper(1001)=0
;triggerall = root,p2bodydist x >85  || root,movehit
;triggerall = p2stateno!=4999
;triggerall = root,movetype!=H
;triggerall = root,ctrl || root,movehit
;trigger1= root,p2bodydist x>= var(0) && enemy,pos y >=0 && var(0)>-1
;trigger2= root,p2bodydist y >-15&&root,p2bodydist x =[0,75]
;trigger3 = root,movecontact && (root,stateno=435||root,stateno=405 || root,stateno=440||root,anim=206)
;v=20
;value=1
;ignorehitpause =1
;1001

;do the knock up
;[State 20, Explod]
;type = varset
;triggerall = var(21)=0
;trigger1= (p2stateno=[1051,1052])  
;trigger2=(root,var(19)=1 && p2stateno=[833,834]) 
;trigger3= root,var(19)=1 && p2stateno=[1031,1032]
;v=21
;value=1
;ignorehitpause =1

;1001
[State 25, VarSet]
type = VarSet
triggerall = random <249|| root,var(40)>0
triggerall = p2statetype!=A|| p2movetype=H 
trigger1 = ((enemy,movetype !=A)|| root,p2bodydist x >25)&& p2statetype!=L && root,var(40)=0
trigger2 = root,p2bodydist x >=40 && p2stateno=4999&& p2statetype!=L && root,var(40)=0
trigger3 = root,backedgebodydist <20 && p2movetype=A
trigger4 = root,p2bodydist x <10 && p2statetype=A  && root,var(40)=0
trigger5= root,var(40)>0 && ( root,p2bodydist x >60) && root,ctrl
trigger6= root,var(40)=164 && ( root,p2bodydist x >40) && root,ctrl
trigger7= root,var(40)=180 && ( root,p2bodydist x >40) && root,ctrl
v = 25   ;fv = 10
value = 1

;---adjust for p2's position
[State 0, VarSet]
type = Varadd
;triggerall = var(20)=0
trigger1 = p2statetype=L  && p2stateno!=5101
v = 0    ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = var(20)=0
trigger1 = var(21)=0
trigger1 = var(22)=0
v = 0    ;fv = 10
value = -1
;ignorehitpause = 
;persistent = 
[State 2, VarSet]
type = Varset
trigger1 =var(10)=0
trigger1 =var(11)=0
trigger1 =var(12)=0
trigger1 =var(13)=0
trigger1 =var(20)=0
trigger1 =var(21)=0
v = 2   ;fv = 10
value = 0
ignorehitpause = 1
[State 2, VarSet]
type = Varset
trigger1 =var(10)=0
trigger1 =var(11)=0
v = 3   ;fv = 10
value = 0
ignorehitpause = 1


[State 4, VarSet]
type = Varset
trigger1 =var(6)=1
v = 4   ;fv = 10
value = 0
ignorehitpause = 1
[State 5, VarSet]
type = Varset
trigger1 =root,movehit
trigger2 = root,var(15)
v = 5   ;fv = 10
value =0
ignorehitpause = 1
[State 7, VarSet]
type = VarSet
trigger1 =  p2stateno!=var(6)
v =7   ;fv = 10
value = 0
ignorehitpause = 1


[State 8, VarSet]
type = VarSet
trigger1 = var(8)<0
v = 8    ;fv = 10
value = 0
;0----------removeexplods---
[State 8, VarSet]
type = VarSet
trigger1 = p2stateno=5201 && enemy,time <10 
trigger2 = p2stateno=5210 && enemy,time <10 
trigger3 =p2statetype!=A
v = 9    ;fv = 10
value = 0
[State 10, RemoveExplod]
type = varset
trigger1 = p2movetype!=H || p2stateno=4999
v =10
value=0
ignorehitpause = 1
[State 11, RemoveExplod]
type = varset
trigger1 = p2movetype!=H|| p2stateno=4999
v = 11
value=0
ignorehitpause = 1

[State 12, RemoveExplod]
type = varset
trigger1 =root,numhelper(1001)=1
v = 12
value=0
ignorehitpause = 1

[State 13, RemoveExplod]
type = varset
trigger1 =root,numhelper(1001)=0
trigger2 = var(12)=1
trigger3= !root,var(17)
v = 13
value=0
ignorehitpause = 1
;persistent = 
[State 0, Explod]
type = varset
trigger1= root,statetype!=A
trigger2 = root,var(31)!=0 
v=14
value=0
ignorehitpause =1
[State 0, Explod]
type = varset
trigger1= root,statetype!=A
trigger2 = root,var(31)!=0
v=15
value=0
ignorehitpause =1
[State 16, VarSet]
type = Varset
trigger1 = var(17)=1
trigger2 = root,numhelper(1001)
trigger2=helper(1001),movehit=1
v =16  ;fv = 10
value = 0
ignorehitpause =0
[State 17, VarSet]
type = Varset
trigger1 = var(17)<0 
v = 17   ;fv = 10
value = 0

;230
[State 20, RemoveExplod]
type = varset
triggerall =  roundstate=2
triggerall= fvar(14)!=0
triggerall= fvar(13)!=0
trigger1 = p2statetype!=A || p2movetype=H&&p2stateno=[1107,1108]
trigger2 =((Fvar(14)/fvar(15))*5.0)!=[-3,-1.5]
trigger2 =((Fvar(13)/fvar(15))*5.0)!=[3,5]
;trigger2 = root,stateno=240 || root,anim=205 || root,anim=210 || root,stateno=200 || root,stateno=400 || root,stateno=430    
v = 20
value=0
ignorehitpause = 1

;do the knock up
[State 20, Explod]
type = varset
triggerall = var(21)=1
trigger2= (p2stateno!=[1051,1052])  && p2statetype!=L
trigger1=root,var(19)=0 
v=21
value=0
ignorehitpause =1

[State 25, VarSet]
type = VarSet
triggerall = root,backedgebodydist >20
triggerall = root,var(40)!=164
triggerall = root,var(40)!=180
trigger1 =  enemy,movetype =A
trigger2 = root,p2bodydist x <25 && p2stateno!=4999 && p2statetype!=L && root,var(40)=0
trigger3 = root,p2bodydist x <55 && p2stateno!=4999 && p2statetype=L && root,var(40)=0
trigger4 = p2statetype=A && p2movetype!=H&& root,p2bodydist x <35 && p2statetype!=L && root,var(40)=0
trigger5= root,var(40)=21 && (root,p2bodydist x <0 ) && root,ctrl
v = 25   ;fv = 10
value = 0

[State 42, ParentVarSet]
type = ParentVarSet
trigger1 = var(5)=0
v =42   ;fv = 
value = 0
;-----------

 [State 0, DestroySelf]
type = DestroySelf
trigger1 =roundstate!=2
;------------------------------------------------------------------------------
[Statedef 10001]
ctrl = 1
anim = 7000
velset = 0,0
sprpriority = 9


[State 0, PosSet]
type = PosSet
trigger1 = time=0
x =cond(root,fvar(1)!=0,root,fvar(1),root,pos x)
y =-40
;ignorehitpause = 
;persistent = 

;ignorehitpause = 
;persistent = 

[State 0, VarSet]
type = parentVarSet
trigger1 = time=0 && root,AIlevel>0
v = 55    ;fv = 10
value = random%3
;ignorehitpause =
;persistent =


;[State 0, AngleDraw]
;type = AngleDraw
;trigger1 =parent,var(59)>9
;;value =  (winmugen only)
;scale =  1,1
;ignorehitpause=1
[State 0, VarSet]
type = parentVaradd
triggerall = numhelper(4001)<1
trigger1 = parent,command = "dwn" 
v = 55
value = -1


[State 6000, ChangeState]
type = parentVaradd
triggerall = numhelper(4001)<1
trigger1 = parent,command = "up" 
v = 55
value = 1

[State 0, VarSet]
type = parentVarSet
trigger1 = root,var(55)<0 &&parent,command = "dwn" 
v = 55 ;fv = 10
value = 2
[State 0, VarSet]
type = parentVarSet
trigger1 = root,var(55)>2&&parent,command = "up" 
v = 55 ;fv = 1
value = 0
[State 0, VarSet]
type = VarSet
trigger1 = parent,command = "up" ||parent,command = "dwn" 
v =5   ;fv = 10
value = 1
;ignorehitpause = 
;persistent = 
[State 0, VarAdd]
type = VarAdd
trigger1 = var(5)>0
v = 5    ;fv = 
value = 1
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 = var(5)>12
v = 5    ;fv = 10
value = 0
;ignorehitpause = 
;persistent = 
[State 0, Helper]
type = Helper
trigger1 = numhelper(6000)=0
helpertype = normal ;player
name = "alphasad"
ID =6000
stateno =10002
pos = 0,85
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause=0
supermovetime=50
size.xscale=.5
size.yscale=.5
;ignorehitpause =
;persistent =
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =1
value = 7000
elem =  root,var(55)+1

[State 0, Turn]
type = Turn
trigger1 = facing = -1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  1
;flag = nokoslow
flag = noshadow


[State 6000, PlaySnd]
type = Playsnd
triggerall = parent,var(59)<10
trigger1 =root,command = "dwn"  || root,command = "up"
value = 90,10

[State 6000, PlaySnd]
type = Playsnd
triggerall = parent,var(59)>=10
trigger1 =root,command = "dwn"  || root,command = "up"
value = 90,8

[State 6000, PlaySnd]
type = Playsnd
triggerall = parent,var(59)<10
trigger1 = parent,command = "a" || parent,command = "b" || parent,command = "c" || parent,command = "x" || parent,command = "y" || parent,command = "z"
trigger2 = roundstate > 1
value = 90,11
[State 6000, PlaySnd]
type = Playsnd
triggerall = parent,var(59)>=10
trigger1 = parent,command = "a" || parent,command = "b" || parent,command = "c" || parent,command = "x" || parent,command = "y" || parent,command = "z"
trigger2 = roundstate > 1
value = 90,9
[State 6000, DestroySelf]
type = destroyself
trigger1 = parent,command = "a" || parent,command = "b" || parent,command = "c" || parent,command = "x" || parent,command = "y" || parent,command = "z"
trigger2 = roundstate > 1
;------------------------------------------------------------------------------
[Statedef 10002]
ctrl = 1
velset = 0,0
sprpriority = 9

[State 0, VarSet]
type = VarSet
trigger1 =ishelper(6000) && time=0 
v = 1   ;fv = 10
value = 0
;ignorehitpause = 
;persistent = 
[State 0, VarSet]
type = VarSet
trigger1 =!ishelper(6000) && time=0 
v = 1   ;fv = 10
value = parent,var(1)+1
[State 0, VarSet]
type = VarSet
trigger1 =time=0
v = 0    ;fv = 10
value = cond(root,var(55)=0,10,cond(root,var(55)=1,10,15)) 
[State 0, PosSet]
type = PosSet
trigger1 = time=0
y = -20
x=(cond(root,fvar(1)!=0,root,fvar(1),root,pos x)+var(0))-40+(var(1)*12)
[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(10) = %d  vel x = %f"
params = var(1),vel x
;ignorehitpause = 
;persistent = 

;ignorehitpause = 
;persistent = 

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 9-var(1)
;ignorehitpause = 
;persistent = 

;ignorehitpause = 
;persistent = 

[State 0, Helper]
type = Helper
trigger1 = time=0 && var(1)<6 && root,var(55)=0
trigger2 = time=0 && var(1)<7 && root,var(55)=1
trigger3 = time=0 && var(1)<5 && root,var(55)=2
helpertype = normal ;player
name = "alphasad"
ID =6001+var(1)
stateno =10002
pos = 0,85
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause=0
supermovetime=50

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ishelper(6000) && root,var(55)=0
trigger2 = ishelper(6004) && root,var(55)=0
value = 7001
elem = 7
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ishelper(6000) && root,var(55)=1
trigger2 = ishelper(6002) && root,var(55)=1
value = 7001
elem = 2
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ishelper(6000) && root,var(55)=2
trigger2 = ishelper(6004) && root,var(55)=1
value = 7001
elem = 6
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ishelper(6001) && root,var(55)=0
value = 7001
elem = 4
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ishelper(6001) && root,var(55)=1
trigger2 = ishelper(6003) && root,var(55)=1
value = 7001
elem = 11
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ishelper(6001) && root,var(55)=2
trigger2 = (ishelper(6003)||ishelper(6005)) && root,var(55)=0
trigger3 = ishelper(6004) && root,var(55)=2
value = 7001
elem = 1
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ishelper(6002) && (root,var(55)=0 ||root,var(55)=2)
trigger2= ishelper(6003) && root,var(55)=2
value = 7001
elem = 5
ignorehitpause = 1


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ishelper(6006) && root,var(55)=0
value = 7001
elem = 8
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = (ishelper(6005)||ishelper(6006)) && root,var(55)=1
value = 7001
elem = 9
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ishelper(6007) && root,var(55)=1
value = 7001
elem =3
ignorehitpause = 1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = ishelper(6005) && root,var(55)=2
value = 7001
elem =10
ignorehitpause = 1
[State 6000, DestroySelf]
type = destroyself
trigger1 = root,command = "dwn"  || root,command = "up"
trigger2= roundstate=2