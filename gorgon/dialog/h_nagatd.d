BEGIN h_nagatd

IF ~True()~ THEN BEGIN 0
   SAY ~You seem a touch displaced, my friend. Do you require any assistance?~
       ++ ~I'm fine, thanks. You must be Nagate. I'm here regarding the Kerykeion.~ GOTO 1
       ++ ~Inform your men to emerge from the shadows, Nagate. Surrender the Kerykeion, and I'll consider sparing your lives.~ GOTO 8
       ++ ~I've no patience for these theatrics. Unsheathe your daggers, and let's end this farce.~ GOTO 8
END

IF ~~ THEN BEGIN 1
   SAY ~Shadow Thieves, then, eh? I am Nagate, and I hold a shard of the Kerykeion.~
       ++ ~The price wasn't mentioned. How much are you asking?~ GOTO 2
       ++ ~I've no patience for these theatrics. Unsheathe your daggers, and let's end this farce.~ GOTO 8
END

IF ~~ THEN BEGIN 2
   SAY ~Fourty-thousand gold pieces. I do not negotiate. Given the circumstances, it's a reasonable sum.~
       ++ ~You've got a deal. Allow me to examine the piece first.~ GOTO 5
       ++ ~Where did you acquire such a find?~ GOTO 3
       ++ ~I am not aligned with the Shadow Thieves, but maybe I can make a better deal.~ GOTO 7
       ++ ~I've no patience for these theatrics. Unsheathe your daggers, and let's end this farce.~ GOTO 8
END

IF ~~ THEN BEGIN 3
   SAY ~It was given to me by a Calimshite as repayment for a debt. Yet, I had the the man killed, assuming it was mere scrap.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Fortunately, further investigation revealed its true value. Fortunately for me, that is.~
       ++ ~You've got a deal. Allow me to examine the piece first.~ GOTO 5
       ++ ~I am not aligned with the Shadow Thieves, but maybe I can make a better deal.~ GOTO 7
       ++ ~I've no patience for these theatrics. Unsheathe your daggers, and let's end this farce.~ GOTO 8
END

IF ~~ THEN BEGIN 5
   SAY ~Certainly. Kindly present your coin beforehand, to assure me of your intent.~
       +~PartyGoldLT(40000)~+ ~I don't quite have that much. Can we re-negotiate?~ GOTO 6
       +~PartyGoldGT(39999)~+ ~Fourty-thousand gold, see?~ GOTO 6
       ++ ~I've no patience for these theatrics. Unsheathe your daggers, and let's end this farce.~ GOTO 8
END

IF ~~ THEN BEGIN 6
   SAY ~You blind, utter fool.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7
   SAY ~Take me for a fool, do you? No one crosses the Shadow Thieves and lives! You'd have heard that one in the future too, I reckon. If you were going to survive that is.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8
   SAY ~What a regrettable lapse of courtesy. So be it. I'll take great pleasure in relieving your lifeless form of its coin and weaponry.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~*sharp whistle* Come out you men! And let's get to the killing!~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Men...?~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~Oh, bloody hell.~
IF ~~ THEN DO ~
   Kill("h_nagatc")
   CreateCreature("h_thamuc",[1975.2858],S)
   CreateCreature("h_sthiec",[1738.3095],S)
   CreateCreature("h_sthiec",[2007.3141],S)
   CreateCreature("h_sthiec",[2254.3008],S)
   SetGlobal("h_SpawnThamuz","GLOBAL",1)~ EXIT
END


