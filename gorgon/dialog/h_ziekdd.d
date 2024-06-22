BEGIN h_ziekdd

IF ~Global("h_CaughtByDay","GLOBAL",0) RandomNum(3,3)~ THEN BEGIN 0
   SAY @70000 /* I've got my sight's set on you, friend. Save yourself the trouble and disappear while you still can. */ IF ~~ THEN EXIT
END

IF ~Global("h_CaughtByDay","GLOBAL",0) RandomNum(3,1)~ THEN BEGIN 1
   SAY @70001 /* I've got a keen eye for trouble, and right now, it's wearin' your face. */ IF ~~ THEN EXIT
END

IF ~Global("h_CaughtByDay","GLOBAL",0) RandomNum(3,2)~ THEN BEGIN 2
   SAY @70002 /* You might think you're sly, but I'm watchin' your every step. */ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc04")~ THEN BEGIN 4
   SAY @70003 /* You right scoundrel! Think I'd miss that? I've got eyes in me boots! You've just signed your own death warrant, you have! */
IF ~~ THEN DO ~
   SetGlobal("h_CaughtByDay","GLOBAL",1)
   SetGlobal("h_CaughtByNight","GLOBAL",1)
   SetGlobal("h_CaughtByGuards","GLOBAL",1)
   SetGlobal("h_ZiekeRun","GLOBAL",1)
   CreateCreature("h_zieknc",[576.458],E)
   CreateCreature("h_zieknc",[532.504],E)
   Enemy()~ EXIT
END

