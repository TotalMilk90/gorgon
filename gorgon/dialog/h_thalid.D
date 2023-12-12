BEGIN ~h_thalid~

IF WEIGHT #-1 ~!Class(LastTalkedToBy,THIEF_ALL)~ THEN BEGIN 0
   SAY ~Hm, you don't quite look like you belong in these shadows. Best turn back. These alleys hold secrets not meant for all eyes.~
IF ~~ THEN EXIT
END

IF ~!Time(0) !Time(1) !Time(2) !Time(3) !Time(4) Global("h_TravelToBM","GLOBAL",0) Class(LastTalkedToBy,THIEF_ALL)~ THEN BEGIN 1
   SAY ~At this time the shadows still lie dormant. The black markets are closed for now. Return after nightfall, and we'll embark on our clandestine journey.~
       ++ ~What makes the black markets so unique? What could I expect to find there?~ GOTO 7
       ++ ~Are the black markets open to all, or is there a restriction on who can enter?~ GOTO 16
       ++ ~I'm not interested. I prefer to keep my dealings above board.~ GOTO 22
       ++ ~I'll return when the night is at it deepest.~ GOTO 24
END

IF ~OR(5) Time(0) Time(1) Time(2) Time(3) Time(4) Global("h_TravelToBM","GLOBAL",0) Class(LastTalkedToBy,THIEF_ALL)~ THEN BEGIN 2
   SAY ~You've come to the right shadowed corner, my friend. Not everyone recognizes the signs, but I can tell you're one of us.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I'm Thalia, your ticket to the black markets. I know this world, its every hidden nook and treacherous cranny. I know the merchants and their wares, the traps and their cunning mechanisms.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~We've got a narrow window, though. The markets are only open from midnight till the early hours. Time's precious in our line of work. Ready to step into the shadows?~
       +~OR(5) Time(0) Time(1) Time(2) Time(3) Time(4)~+ ~I'm prepared to delve into the shadows. Let's head to the black markets.~ GOTO 26
       ++ ~What makes the black markets so unique? What could I expect to find there?~ GOTO 7
       ++ ~Are the black markets open to all, or is there a restriction on who can enter?~ GOTO 16
       ++ ~I'm not interested. I prefer to keep my dealings above board.~ GOTO 22
       ++ ~I'll return when the night is at it deepest.~ GOTO 24
END

IF ~OR(5) Time(0) Time(1) Time(2) Time(3) Time(4) Global("h_TravelToBM","GLOBAL",3) Class(LastTalkedToBy,THIEF_ALL)~ THEN BEGIN 5
   SAY ~Ah, back for more, I see. The shadows always hold new secrets to uncover. Are you ready to venture once again into the heart of the black markets?~
       +~OR(5) Time(0) Time(1) Time(2) Time(3) Time(4)~+ ~I'm prepared to delve into the shadows. Let's head to the black markets.~ GOTO 26
       ++ ~What makes the black markets so unique? What could I expect to find there?~ GOTO 7
       ++ ~Are the black markets open to all, or is there a restriction on who can enter?~ GOTO 16
       ++ ~I'm not interested. I prefer to keep my dealings above board.~ GOTO 22
       ++ ~I'll return when the night is at it deepest.~ GOTO 24
END

IF ~!Time(0) !Time(1) !Time(2) !Time(3) !Time(4) Global("h_TravelToBM","GLOBAL",3) Class(LastTalkedToBy,THIEF_ALL)~ THEN BEGIN 6
   SAY ~At this time the shadows still lie dormant. The markets are closed for now. Return after nightfall, and we'll embark on our clandestine journey.~
       +~OR(5) Time(0) Time(1) Time(2) Time(3) Time(4)~+ ~I'm prepared to delve into the shadows. Let's head to the black markets.~ GOTO 26
       ++ ~What makes the black markets so unique? What could I expect to find there?~ GOTO 7
       ++ ~Are the black markets open to all, or is there a restriction on who can enter?~ GOTO 16
       ++ ~I'm not interested. I prefer to keep my dealings above board.~ GOTO 22
       ++ ~I'll return when the night is at it deepest.~ GOTO 24
END

IF ~~ THEN BEGIN 7
   SAY ~The black markets, my elusive friend, are the whispered epicenter of intrigue and shadowed dealings within the realm.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Picture a world beneath our world, where the flicker of torchlight reveals more than just goods, but the pulsating heart of the unseen.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~In these winding, narrow alleys, shrouded under the cloak of darkness, you'll find an array of wares diverse as the night itself.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Artifacts steeped in ancient magic, tomes filled with forbidden knowledge, potions brewed in secret, and deadly traps, cunningly devised and waiting for the unwary.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~Each stall is a trove of the extraordinary, delicately crafted for those who thrive in the world of shadows.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~But, it's not just the tangible you'll find here. Information is a prized commodity, often traded at a higher value than the rarest jewels.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~Whispers that can dethrone kings, secrets that can start wars, and confessions that can end them, all move silently through these shadowed corridors.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~So, prepare yourself not just for an exchange of goods, but for an experience that will entwine your fate with the secrets of the night.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~For in the black markets, every shadow holds a story, and every transaction is a dance with the unknown.~
       +~OR(5) Time(0) Time(1) Time(2) Time(3) Time(4)~+ ~I'm prepared to delve into the shadows. Let's head to the black markets.~ GOTO 26
       ++ ~Are the black markets open to all, or is there a restriction on who can enter?~ GOTO 16
       ++ ~I'm not interested. I prefer to keep my dealings above board.~ GOTO 22
       ++ ~I'll return when the night is at it deepest.~ GOTO 24
END

IF ~~ THEN BEGIN 16
   SAY ~Ah, that's the beauty and the mystery of it, isn't it? The black markets are not a place for just anyone. It's a secretive, selective world, a realm that only opens its doors to a chosen few.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~These shadowed halls and hidden stalls cater to those adept in the art of stealth and subtlety, to the ones who walk the fine line between the seen and unseen.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~It's a sanctuary for thieves, rogues, and cunning minds, a place where the common man would feel out of place and overwhelmed.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~Here, in this concealed haven, one must possess not only the knowledge of its existence but also the skill and guile to navigate its intricate web.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~We thrive in this dance of shadows, where trust is as rare as the most coveted treasures on display. So no, my friend, not everyone can stroll into these markets.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~It's a world set aside for those like us, who understand and respect the delicate balance of secrecy and survival in our line of work.~
       +~OR(5) Time(0) Time(1) Time(2) Time(3) Time(4)~+ ~I'm prepared to delve into the shadows. Let's head to the black markets.~ GOTO 26
       ++ ~What makes the black markets so unique? What could I expect to find there?~ GOTO 7
       ++ ~I'm not interested. I prefer to keep my dealings above board.~ GOTO 22
       ++ ~I'll return when the night is at it deepest.~ GOTO 24
END

IF ~~ THEN BEGIN 22
   SAY ~Very well, the shadows aren't for everyone, and it takes a certain resolve to walk among them.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~Remember, should you ever change your mind, the hidden alleys and their mysteries will always be there, lurking just beyond the reach of the law.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
   SAY ~A wise choice indeed. The secrets of the night await your arrival with keen anticipation.~ IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~Remember, as the clock strikes midnight, the world of shadows comes alive, revealing its forbidden treasures to those brave enough to seek them.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26
   SAY ~Very well. Follow me, and remember, in these markets, discretion is your closest ally.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToBM","GLOBAL",1)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_bmacut")~ EXIT
END

IF ~Global("h_TravelToBM","GLOBAL",1)~ THEN BEGIN 27
   SAY ~Welcome to the heart of shadows, my friend. Explore, peruse, and indulge, but do so wisely.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY ~When you're ready to depart, seek me out. I'll be here to guide you back through the labyrinth of secrets.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToBM","GLOBAL",2)~ EXIT
END

IF ~Global("h_TravelToBM","GLOBAL",2)~ THEN BEGIN 29
   SAY ~Back from the depths of intrigue, I see. Whenever you're ready to depart from this realm of shadows, just say the word. I'll ensure you leave as discreetly as you arrived.~
       ++ ~I've seen all I need to. Let's head back, Thalia.~ GOTO 30
       ++ ~I'm not quite finished here. I'll let you know when I'm ready to leave.~ EXIT
END

IF ~~ THEN BEGIN 30
   SAY ~Very well. Follow me, and we shall navigate these shadows back to the world above.~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnThalia","GLOBAL",0)
   SetGlobal("h_TravelToBM","GLOBAL",3)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_ravcut")~ EXIT
END

