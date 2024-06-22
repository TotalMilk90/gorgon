BEGIN h_nagatd

IF ~True()~ THEN BEGIN 0
   SAY @48500 /* You seem a touch displaced, my friend. Do you require any assistance? */
       ++ @48501 /* I'm fine, thanks. You must be Nagate. I'm here regarding the Kerykeion. */ GOTO 1
       ++ @48502 /* Inform your men to emerge from the shadows, Nagate. Surrender the Kerykeion, and I'll consider sparing your lives. */ GOTO 8
       ++ @48503 /* I've no patience for these theatrics. Unsheathe your daggers, and let's end this farce. */ GOTO 8
END

IF ~~ THEN BEGIN 1
   SAY @48504 /* Shadow Thieves, then, eh? I am Nagate, and I hold a shard of the Kerykeion. */
       ++ @48505 /* The price wasn't mentioned. How much are you asking? */ GOTO 2
       ++ @48503 /* I've no patience for these theatrics. Unsheathe your daggers, and let's end this farce. */ GOTO 8
END

IF ~~ THEN BEGIN 2
   SAY @48506 /* Fourty-thousand gold pieces. I do not negotiate. Given the circumstances, it's a reasonable sum. */
       ++ @48507 /* You've got a deal. Allow me to examine the piece first. */ GOTO 5
       ++ @48508 /* Where did you acquire such a find? */ GOTO 3
       ++ @48509 /* I am not aligned with the Shadow Thieves, but maybe I can offer a better deal. */ GOTO 7
       ++ @48503 /* I've no patience for these theatrics. Unsheathe your daggers, and let's end this farce. */ GOTO 8
END

IF ~~ THEN BEGIN 3
   SAY @48510 /* It was given to me by a Calimshite as repayment for a debt. Yet, I had the the man killed, assuming it was mere scrap. */ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @48511 /* Fortunately, further investigation revealed its true value. Fortunately for me, that is. */
       ++ @48507 /* You've got a deal. Allow me to examine the piece first. */ GOTO 5
       ++ @48509 /* I am not aligned with the Shadow Thieves, but maybe I can offer a better deal. */ GOTO 7
       ++ @48503 /* I've no patience for these theatrics. Unsheathe your daggers, and let's end this farce. */ GOTO 8
END

IF ~~ THEN BEGIN 5
   SAY @48512 /* Certainly. Kindly present your coin beforehand, to assure me of your intent. */
       +~PartyGoldLT(40000)~+ @48513 /* I don't quite have that much. Can we re-negotiate? */ GOTO 6
       +~PartyGoldGT(39999)~+ @48514 /* Fourty-thousand gold, see? */ GOTO 6
       ++ @48503 /* I've no patience for these theatrics. Unsheathe your daggers, and let's end this farce. */ GOTO 8
END

IF ~~ THEN BEGIN 6
   SAY @48515 /* You blind, utter fool. */ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7
   SAY @48516 /* Take me for a fool, do you? No one crosses the Shadow Thieves and lives! You'd have heard that one at some point, I reckon. If you were going to survive that is. */ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8
   SAY @48517 /* What a regrettable lapse of courtesy. So be it. I'll take great pleasure in relieving your lifeless form of its coin and weaponry. */ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @48518 /* *sharp whistle* Come out you men! And let's get to the killing! */ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY @48519 /* Men...? */ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY @48520 /* Oh, bloody hell. */
IF ~~ THEN DO ~
   Kill("h_nagatc")
   CreateCreature("h_thamuc",[1975.2858],S)
   CreateCreature("h_sthiec",[1738.3095],S)
   CreateCreature("h_sthiec",[2007.3141],S)
   CreateCreature("h_sthiec",[2254.3008],S)
   SetGlobal("h_SpawnThamuz","GLOBAL",1)~ EXIT
END


