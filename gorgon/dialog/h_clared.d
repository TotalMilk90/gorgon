BEGIN h_clared

IF ~True()~ THEN BEGIN 0
   SAY @26000 /* What is this? Gorgon's Eye scoundrels strutting about in broad daylight so shamelessly. It appears I have utterly failed in my duty. */ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @26001 /* Hold on a moment... It's you! <CHARNAME>! You're the one who was at the Juggler the night of... you're the one who killed the Inspector! */ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @26002 /* City Watch, rally 'round and take heed! We're under siege by the Gorgon's Eye! By the gods, fight with all your might! I swear it, we'll end this evil once and for all! */
IF ~~ THEN DO ~
   SetGlobal("h_ClareTalk","GLOBAL",1)
   CreateCreature("h_city3c",[4680.3442],S)
   CreateCreature("h_city3c",[4832.3430],S)
   CreateCreature("h_city3c",[4434.3583],E)
   CreateCreature("h_city3c",[4349.3773],E)
   ReputationInc(-1)
   Enemy()~ EXIT
END