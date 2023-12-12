BEGIN h_barthd

IF ~Global("h_BurningDues","GLOBAL",1)~ THEN BEGIN 0
   SAY ~Shove off, will ya? I've got some countin' to do, heh.~
       ++ ~Fancy yourself a Gorgon boy, do ya? That's gonna cost ya big time.~ GOTO 1
       ++ ~I've heard you might have taken something that doesn't belong to you, specifically from the Burning Wizard.~ GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Blimey! You're one of 'em, ain'tcha? Shit, I knew this was a bad idea.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Look, I didn't mean no harm, <SIRMAAM>. I'm just a bloke tryna make ends meet, y'know? Can't blame a guy for tryin'.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Here, take the bag, plus a little extra of me own, in good faith. Now let me go, will ya?~
       ++ ~Afraid I can't do that. Stealing from us comes with consequences. You ain't leaving here alive.~ GOTO 4
       ++ ~Wise choice, lad. Now, scurry off before I change my mind.~ DO ~GiveGoldForce(20)~ GOTO 5
       ++ ~I'll take the bag, but not your money. Stay out of trouble from now on.~ GOTO 5
END

IF ~~ THEN BEGIN 4
   SAY ~Well, I ain't just gonna lay down easy for ya. You wanna dance? Alright then, show me your moves, Gorgon devil!~
IF ~~ THEN DO ~
   AddJournalEntry(@531,QUEST)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
   SAY ~Yes, <SIRMAAM>, thank you, <SIRMAAM>.~
IF ~~ THEN DO ~
   AddJournalEntry(@532,QUEST)
   GiveItem("h_misc23",LastTalkedToBy())
   EscapeArea()~ EXIT
END
