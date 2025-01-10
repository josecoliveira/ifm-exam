(set-logic QF_UF)
; Robots
(declare-const robot0 String)
(declare-const robot1 String)
; Items
(declare-const item0 String)
(declare-const item1 String)
; Rooms
(declare-const room0 String)
(declare-const room1 String)
(declare-const room2 String)
(declare-const room3 String)
(declare-const room4 String)
(declare-const room5 String)
(declare-const room6 String)
(declare-const room7 String)
(declare-const room8 String)
(declare-const room9 String)
; Predicate: holds
(declare-fun holds (String String) Bool)
; Predicate: in_room
(declare-fun in_room (String String) Bool)
; Assert: For all items j, if robot0 holds item_j and robot1 holds item_j, then it is false.
(assert (=> (and (holds robot0 item0) (holds robot1 item0)) false))
(assert (=> (and (holds robot0 item1) (holds robot1 item1)) false))
; Assert: For all rooms j, if robot0 is in room_j and robot1 is in room_j, then it is false.
(assert (=> (and (in_room robot0 room0) (in_room robot1 room0)) false))
(assert (=> (and (in_room robot0 room1) (in_room robot1 room1)) false))
(assert (=> (and (in_room robot0 room2) (in_room robot1 room2)) false))
(assert (=> (and (in_room robot0 room3) (in_room robot1 room3)) false))
(assert (=> (and (in_room robot0 room4) (in_room robot1 room4)) false))
(assert (=> (and (in_room robot0 room5) (in_room robot1 room5)) false))
(assert (=> (and (in_room robot0 room6) (in_room robot1 room6)) false))
(assert (=> (and (in_room robot0 room7) (in_room robot1 room7)) false))
(assert (=> (and (in_room robot0 room8) (in_room robot1 room8)) false))
(assert (=> (and (in_room robot0 room9) (in_room robot1 room9)) false))
; Current state
[...]
(check-sat)
