BEGIN h_ladyed

IF ~Global("h_LadyTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY @43000 /* Oh, goodness gracious! I seem to have misplaced my fan again. Have you, by any chance, seen it? It's the loveliest shade of azure, you know. */ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_DrunkBrawl","GLOBAL",1)~ THEN BEGIN DROP_0
   SAY @43001 /* Oh, dear! Watch out, you oaf! Don't touch me! Oh my stars, this is simply too much! */
IF ~~ THEN DO ~
   DropItem("h_misc19",[-1.-1])
   SetGlobal("h_DrunkBrawl","GLOBAL",2)~ EXIT
END