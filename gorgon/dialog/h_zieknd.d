BEGIN h_zieknd

IF ~Global("h_CaughtByNight","GLOBAL",0) RandomNum(3,3)~ THEN BEGIN 0
   SAY ~I've got my sight's set on you, friend. Save yourself the trouble and disappear while you still can.~ IF ~~ THEN EXIT
END

IF ~Global("h_CaughtByNight","GLOBAL",0) RandomNum(3,1)~ THEN BEGIN 1
   SAY ~I've got a keen eye for trouble, and right now, it's wearin' your face.~ IF ~~ THEN EXIT
END

IF ~Global("h_CaughtByNight","GLOBAL",0) RandomNum(3,2)~ THEN BEGIN 2
   SAY ~You might think you're sly, but I'm watchin' your every step.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc04")~ THEN BEGIN 3
   SAY ~Bollocks, he's nicked the boss's bloody jewel! Stop him, you daft lot!~
IF ~~ THEN DO ~
   SetGlobal("h_CaughtByNight","GLOBAL",1)
   SetGlobal("h_CaughtByDay","GLOBAL",1)
   SetGlobal("h_CaughtByGuards","GLOBAL",1)
   SetGlobal("h_ZiekeRun","GLOBAL",1)
   CreateCreature("h_zieknc",[538.653],N)
   CreateCreature("h_zieknc",[611.684],N)
   Enemy()~ EXIT
END

