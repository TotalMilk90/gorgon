BEGIN h_vitiad

IF ~Global("h_VitiareTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY @56000 /* Well now, looks like we've got a right curious visitor. What brings you to our little gathering? */
       ++ @56001 /* Wait a moment, I know you! You're the one who lifted my gold over at the gambling tents! */ GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @56002 /* Ah, so you're the mark I happened upon! Well, no harm done, I suppose. A mere hundred gold, a trifle in the grand scheme of things. It was all in good fun, I assure you. */ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @56003 /* Here, take it back. No sense in holdin' onto a pittance like that. Consider it an exchange of wits, friend. */
IF ~~ THEN DO ~
   SetGlobal("h_VitiareTalk","GLOBAL",1)
   GiveGoldForce(100)~ EXIT
END

IF ~RandomNum(4,4) Global("h_VitiareTalk","GLOBAL",1)~ THEN BEGIN 3
   SAY @56004 /* Stealth and skill, that's the Vitiare way. Watch and learn, my friend. */ IF ~~ THEN EXIT
END

IF ~RandomNum(4,1) Global("h_VitiareTalk","GLOBAL",1)~ THEN BEGIN 4
   SAY @56005 /* Behold, the infamous Vitiare, master of shadows and procurer of wealth! */ IF ~~ THEN EXIT
END

IF ~RandomNum(4,2) Global("h_VitiareTalk","GLOBAL",1)~ THEN BEGIN 5
   SAY @56006 /* In the realm of thievery, none can rival Vitiare's finesse and cunning! */ IF ~~ THEN EXIT
END

IF ~RandomNum(4,3) Global("h_VitiareTalk","GLOBAL",1)~ THEN BEGIN 6
   SAY @56007 /* To some, it's stealing. To me, it's acquiring what's rightfully mine, by skill or by guile. */ IF ~~ THEN EXIT
END