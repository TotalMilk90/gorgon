BEGIN h_nagatd

IF ~True()~ THEN BEGIN 0
   SAY ~Are you lost, friend? You seem a bit out of place considering the areas locale.~
       ++ ~I am not lost, thank you. You must be Nagate? I am here regarding the Kerykeion piece you have for sale.~ GOTO 1
       ++ ~You can tell your men to come out from the shadows, Nagate. Hand over the Kerykeion and I will spare your lives.~ GOTO 8
       ++ ~I haven't the time for these games. Draw your daggers and let's end this farce!~ GOTO 8
END

IF ~~ THEN BEGIN 1
   SAY ~Ah, yes of course. You must be with the Shadow Thieves, then? I am Nagate, and I am indeed selling what you seek.~
       ++ ~If I may ask, where did you acquire such a find?~ GOTO 2
       ++ ~I haven't the time for these games. Draw your daggers and let's end this farce!~ GOTO 8
END

IF ~~ THEN BEGIN 2
   SAY ~It was given to me by a Calimshite as repayment for his debt. I ended up having the man killed, as I presumed it was nothing more than broken scrap.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Luckily, I did some research and uncovered its true worth. Well, lucky for me that is.~
       ++ ~I wasn't told the price, how much is it you are asking?~ GOTO 4
       ++ ~I haven't the time for these games. Draw your daggers and let's end this farce!~ GOTO 8
END

IF ~~ THEN BEGIN 4
   SAY ~40,000 gold pieces. I don't haggle and I won't go any lower. It is a fair price for all things considered.~
       ++ ~Might I examine it first to ensure its authenticity?~ GOTO 5
       ++ ~I haven't the time for these games. Draw your daggers and let's end this farce!~ GOTO 8
END

IF ~~ THEN BEGIN 5
   SAY ~Certainly, if you wouldn't mind showing me your coin first. I don't have time for window-shoppers.~
       +~PartyGoldLT(40000)~+ ~I don't have that much gold on me at present.~ GOTO 6
       +~PartyGoldGT(39999)~+ ~I have the gold right here. Now, may I please see the staff?~ GOTO 7
       ++ ~I haven't the time for these games. Draw your daggers and let's end this farce!~ GOTO 8
END

IF ~~ THEN BEGIN 6
   SAY ~Then I guess we'll have to make do with whatever else you've got.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7
   SAY ~Of course. I have it right here...~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8
   SAY ~What a disturbing lack of manners you have. So be it. I'll be delighted to relieve your corpse of its coin and weapons.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~*sharp whistle* Come out you men! And let's get to the killing!~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Men?...~ IF ~~ THEN GOTO 11
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


