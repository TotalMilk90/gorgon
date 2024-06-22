BEGIN h_city3d

IF ~True()~ THEN BEGIN 0
   SAY ~Halt! You there! We've had reports of Gorgon's Eye thugs strong-arming the locals.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~We've been watching you for a while now, scum. No use trying to talk your way out of this one. You're coming with us!~
IF ~~ THEN DO ~
   SetGlobal("h_BarWatchAttack","GLOBAL",1)~ EXIT
END