BEGIN ~h_thalid~



IF WEIGHT #-1 ~!Class([PC],THIEF_ALL)~ THEN BEGIN 0
   SAY ~Hm, you don't quite look like you belong in these shadows. Best turn back. These alleys hold secrets not meant for all eyes.~ IF ~~ THEN EXIT
END

IF ~OR(5) Time(0) Time(1) Time(2) Time(3) Time(4) Global("h_TravelToBM","GLOBAL",0) Class([PC],THIEF_ALL)~ THEN BEGIN 1
   SAY ~You've come to the right shadowed corner, my friend. Not everyone recognizes the signs, but I can tell you're one of us.~ IF ~~ THEN GOTO 2
END

IF ~OR(5) !Time(0) !Time(1) !Time(2) !Time(3) !Time(4) Global("h_TravelToBM","GLOBAL",0) Class([PC],THIEF_ALL)~ THEN BEGIN 1.5
   SAY ~At this time the shadows still lie dormant. The markets are closed for now. Return after nightfall, and we'll embark on our clandestine journey.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
   SAY ~I'm Thalia, your ticket to the black markets. I know this world, its every hidden nook and treacherous cranny. I know the merchants and their wares, the traps and their cunning mechanisms.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~We've got a narrow window, though. The markets are only open from midnight till the early hours. Time's precious in our line of work. Ready to step into the shadows?~
       ++ ~Let's go.~ GOTO 7
       ++ ~What exactly are the black markets?~ GOTO 3.5
       ++ ~Are they not open to everyone?~ GOTO 6
       ++ ~I'm not interested right now.~ EXIT
END

IF ~~ THEN BEGIN 3.5
   SAY ~The black markets, my friend, are the clandestine heart of this city. They're a realm where the shadows hold sway, and secrets are traded like gold.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~The treasures that await within these alleys are as diverse as the night itself, delicately crafted for those who thrive in the world of shadows.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~It's a place where rogues, thieves, and those with an affinity for the hidden gather to deal in all things forbidden and coveted.~
       ++ ~Let's go.~ GOTO 7
       ++ ~Are they not open to everyone?~ GOTO 6
       ++ ~I'm not interested right now.~ EXIT
END

IF ~~ THEN BEGIN 6
   SAY ~No, my friend. They are a realm reserved for those who share our affinity for shadows and secrets. Only those who understand the dance of deception are granted entry.~
       ++ ~Let's go.~ GOTO 7
       ++ ~What exactly are the black markets?~ GOTO 3.5
       ++ ~I'm not interested right now.~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY ~Very well. Follow me, and remember, in the markets, discretion is your closest ally.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToBM","GLOBAL",1)
   //ActionOverride(LastTalkedToBy,LeaveAreaLUA("h_bmarka","",[214.360],N))
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_bmacut")~ EXIT
END

IF ~Global("h_TravelToBM","GLOBAL",1)~ THEN BEGIN 8
   SAY ~Welcome to the heart of shadows, my friend. Explore, peruse, and indulge, but do so wisely.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~When you're ready to depart, seek me out. I'll be here to guide you back through the labyrinth of secrets.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToBM","GLOBAL",2)~ EXIT
END

IF ~Global("h_TravelToBM","GLOBAL",2)~ THEN BEGIN 10
   SAY ~Back from the depths of intrigue, I see. Whenever you're ready to depart from this realm of shadows, just say the word. I'll ensure you leave as discreetly as you arrived.~
       ++ ~I've seen all I need to. Let's head back, Thalia.~ GOTO 11
       ++ ~I'm not quite finished here. I'll let you know when I'm ready to leave.~ EXIT
END

IF ~~ THEN BEGIN 11
   SAY ~Very well. Follow me, and we shall navigate these shadows back to the world above.~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnThalia","GLOBAL",0)
   SetGlobal("h_TravelToBM","GLOBAL",3)
   //ActionOverride(LastTalkedToBy,LeaveAreaLUA("AR0153","",[232.286],NE))
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_ravcut")~ EXIT
END

IF ~OR(5) Time(0) Time(1) Time(2) Time(3) Time(4) Global("h_TravelToBM","GLOBAL",3) Class([PC],THIEF_ALL)~ THEN BEGIN 12
   SAY ~Ah, back for more, I see. The shadows always hold new secrets to uncover. Are you ready to venture once again into the heart of the black markets?~
       ++ ~Let's go.~ GOTO 7
       ++ ~I'm not interested right now.~ EXIT
END

IF ~OR(5) !Time(0) !Time(1) !Time(2) !Time(3) !Time(4) Global("h_TravelToBM","GLOBAL",3) Class([PC],THIEF_ALL)~ THEN BEGIN 13
   SAY ~At this time the shadows still lie dormant. The markets are closed for now. Return after nightfall, and we'll embark on our clandestine journey.~ IF ~~ THEN EXIT
END