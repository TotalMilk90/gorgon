BEGIN h_zieked

IF ~Global("h_CaughtByDay","GLOBAL",0) Global("h_CaughtByNight","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Shift your eyes from my purse, you base dolt! I'll not allow you to desecrate the sanctity of my personal quarters! Raise the alarm, alert my retinue!~
IF ~~ THEN DO ~
   SetGlobal("h_CaughtByDay","GLOBAL",1)
   SetGlobal("h_CaughtByNight","GLOBAL",1)
   SetGlobal("h_TalkedToZieke","GLOBAL",1)
   CreateCreature("h_zieknc",[576.458],E)
   CreateCreature("h_zieknc",[532.504],E)~ EXIT
END

IF ~Global("h_CaughtByDay","GLOBAL",1) Global("h_CaughtByNight","GLOBAL",1)~ THEN BEGIN 1
   SAY ~You're after the diamond, aren't you! Take it then, thief, but be warned. I'll make sure you're barred from every corner of the black market. You're finished, I can promise you that.~
IF ~~ THEN DO ~
   GiveItem("h_misc04",LastTalkedToBy)
   EscapeArea()~ EXIT
END
