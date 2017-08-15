;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2MoveType = I
trigger1 = InGuardDist = 1

;---------------------------------------------------------------------------
;High Kung Fu Blocking (Low)
[State -1, High Kung Fu Blocking Low]
type = ChangeState
value = 1320
triggerall = roundstate = 2
triggerall = random < 500

triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2BodyDist y = [30,60]
trigger1 = MoveGuarded = 0
trigger1 = P2BodyDist x = [30,100]

;---------------------------------------------------------------------------
;Light Kung Fu Upper
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2BodyDist y = [30,60]
trigger1 = P2BodyDist x = [30,100]

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = MoveContact = 0 
trigger1 = P2StateType = A
trigger1 = P2BodyDist x = [30,100]

;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1120
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = InGuardDist = 0
trigger1 = MoveContact != 0
trigger1 = P2BodyDist y = [-60,-1]
trigger1 = P2MoveType = A

;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3050
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = MoveContact = 0 
trigger1 = InGuardDist = 1
trigger1 = P2StateType = C

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = MoveContact = 0 
trigger1 = InGuardDist = 1
trigger1 = MoveGuarded = 0
trigger1 = P2BodyDist y = [-60,-1]

;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)
[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = MoveContact = 0 
trigger1 = P2BodyDist y = [30,60]

;---------------------------------------------------------------------------
;Strong Kung Fu Upper
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1110
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = InGuardDist = 0
trigger1 = P2BodyDist y = [-60,-1]

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = MoveGuarded = 0
trigger1 = InGuardDist = 0

;---------------------------------------------------------------------------
;High Kung Fu Blocking (High)
[State -1, High Kung Fu Blocking High]
type = ChangeState
value = 1300
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2MoveType = A
trigger1 = InGuardDist = 1

;---------------------------------------------------------------------------
;Fast Kung Fu Knee (1/3 super bar)
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1070
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2MoveType = H
trigger1 = P2BodyDist x = [0,30]

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = MoveGuarded = 0
trigger1 = P2BodyDist x = [100,200]

;---------------------------------------------------------------------------
;Light Kung Fu Knee
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1050
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = MoveGuarded = 0
trigger1 = InGuardDist = 1

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = InGuardDist = 0
trigger1 = P2StateType = S
trigger1 = MoveGuarded = 0

;---------------------------------------------------------------------------
;Strong Kung Fu Blow
[State -1, Strong Kung Fu Blow]
type = ChangeState
value = 1210
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = InGuardDist = 1
trigger1 = MoveContact = 0 
trigger1 = P2StateType = S
trigger1 = P2MoveType = H

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2BodyDist y = [-60,-1]

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = InGuardDist = 1
trigger1 = P2MoveType = H

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = MoveContact = 0 
trigger1 = P2MoveType = A
trigger1 = P2BodyDist x = [0,30]

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2BodyDist y = [-60,-1]

;---------------------------------------------------------------------------
;Light Kung Fu Blow
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1200
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2MoveType = H
trigger1 = P2BodyDist y = [30,60]
trigger1 = P2StateType = C

;---------------------------------------------------------------------------
;High Kung Fu Blocking (Air)
[State -1, High Kung Fu Blocking Low]
type = ChangeState
value = 1340
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = MoveContact = 0 
trigger1 = P2BodyDist x = [30,100]

;---------------------------------------------------------------------------
;Light Kung Fu Zankou
[State -1, Light Kung Fu Zankou]
type = ChangeState
value = 1400
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2MoveType = A
trigger1 = P2BodyDist y = [-60,-1]

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2StateType = C
trigger1 = MoveContact = 0 
trigger1 = P2BodyDist x = [100,200]
trigger1 = P2BodyDist y = [30,60]

;---------------------------------------------------------------------------
;Light Kung Fu Palm
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2MoveType = A
trigger1 = P2StateType = C
trigger1 = P2BodyDist x = [30,100]

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2MoveType = H
trigger1 = MoveContact = 0 
trigger1 = P2BodyDist x = [30,100]

;---------------------------------------------------------------------------
;Strong Kung Fu Knee
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1060
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2BodyDist x = [100,200]
trigger1 = P2MoveType = A
trigger1 = P2StateType = A
trigger1 = InGuardDist = 1

;---------------------------------------------------------------------------
;Strong Kung Fu Zankou
[State -1, Strong Kung Fu Zankou]
type = ChangeState
value = 1410
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = InGuardDist = 1
trigger1 = P2StateType = S
trigger1 = P2MoveType = A

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2StateType = C
trigger1 = MoveGuarded != 0
trigger1 = P2MoveType = I
trigger1 = P2BodyDist x = [100,200]

;---------------------------------------------------------------------------
;Fast Kung Fu Blow (1/3 super bar)
[State -1, Fast Kung Fu Blow]
type = ChangeState
value = 1220
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2BodyDist y = [30,60]
trigger1 = MoveGuarded != 0

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2BodyDist x = [100,200]

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2MoveType = A
trigger1 = P2BodyDist y = [30,60]
trigger1 = MoveGuarded != 0
trigger1 = P2StateType = A

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = InGuardDist = 0
trigger1 = P2BodyDist y = [30,60]

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2BodyDist x = [30,100]
trigger1 = P2BodyDist y = [30,60]
trigger1 = P2StateType = A
trigger1 = MoveGuarded != 0

;---------------------------------------------------------------------------
;Far Kung Fu Zankou
[State -1, Far Kung Fu Zankou]
type = ChangeState
value = 1420
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = MoveGuarded != 0

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = roundstate = 2
triggerall = random < 500
triggerall = var(59) = 1 
triggerall = Ctrl 
trigger1 = P2StateType = S
trigger1 = InGuardDist = 0
trigger1 = MoveContact = 0 
trigger1 = MoveGuarded != 0

