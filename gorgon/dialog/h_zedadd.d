BEGIN h_zedadd

IF ~Global("h_BaldwinQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~*sniff* *sniff* Hmmm. You smell of books... and blood.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_BaldwinQuest","GLOBAL",0)~ THEN BEGIN 1
   SAY ~I grew up on the streets of Westgate and was sailing spice into Cormyr by the time I was 9. I learned a lot in those days. If you're ever in need of my skills, trust that I shall deliver.~
       ++ ~I'll keep that in mind.~ EXIT
       +~Global("h_ZedaRiddle","GLOBAL",1)~+ ~I'm looking for something to do. Do you have any work available?~ GOTO RIDDLE_0
       +~Global("h_KarpWork","GLOBAL",1)~+ ~I met a woman in Nashkel who is looking to get her and her son smuggled into Athkatla. Is that something you can help her with?~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Didn't ya hear what I said? Of course I can! As long as she has the coin that is. Send them my way and I'll set them up with a proper escort.~
IF ~~ THEN DO ~
   SetGlobal("h_KarpWork","GLOBAL",2)
   AddJournalEntry(@319,QUEST)~ EXIT
END

IF ~~ THEN BEGIN RIDDLE_0
   SAY ~Bored already, are you? You're starting to sound just like, Liedel. Never liked that woman, got a funny smell about her.~ IF ~~ THEN GOTO RIDDLE_0.5
END

IF ~~ THEN BEGIN RIDDLE_0.5
   SAY ~Anyways, sorry, but my work ain't the kind you can just jump into. However, I do have a game we could play, if you're just trying to pass the time.~
       ++ ~What's the game?~ GOTO RIDDLE_1
       ++ ~I'm not interested.~ EXIT
END

IF ~~ THEN BEGIN RIDDLE_1
   SAY ~I call it, Bag of Mysteries! I will put you through a series of 4 riddles. For each one that you answer wrong, you will have to give me, say... 100 gold.~ IF ~~ THEN GOTO RIDDLE_1.5
END

IF ~~ THEN BEGIN RIDDLE_1.5
   SAY ~For each one that you guess right, however, you will get a random prize from my Bag of Mysteries. Once we begin you *must* commit to answering all 4 riddles before the game will end.~
       +~PartyGoldGT(399)~+ ~Bag of Mysteries? Alright, I'll play your little game.~ GOTO RIDDLE_3
       +~PartyGoldLT(400)~+ ~It seems I don't have enough gold to play your game.~ GOTO RIDDLE_2
       ++ ~I'm not interested.~ EXIT
END

IF ~~ THEN BEGIN RIDDLE_2
   SAY ~Are you serious? *laughing* How are you this far along without having 400 gold pieces on you?~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RIDDLE_3
   SAY ~This will be fun! Let us begin.~ IF ~~ THEN GOTO RIDDLE_4
END

IF ~~ THEN BEGIN RIDDLE_4
   SAY ~You are seated in a dark room with only a single match. Around you lies a candle, a wood stove and an oil lamp. Which do you light first?~
       ++ ~The candle.~ GOTO WRONG_1
       ++ ~The wood stove.~ GOTO WRONG_1
       ++ ~The room.~ GOTO WRONG_1
       ++ ~The match.~ DO ~AddExperienceParty(250)~ GOTO CORRECT_1
       ++ ~The oil lamp.~ GOTO WRONG_1
END

IF ~~ THEN BEGIN WRONG_1
   SAY ~Really? *shakes her head* That was supposed to be an easy one. Well, pay up then.~
IF ~~ THEN DO ~
   TakePartyGold(100)~ GOTO RIDDLE_5
END

IF ~~ THEN BEGIN CORRECT_1
   SAY ~Hehe, good job! That was an easy one! Here, stick your hand in the Bag of Mysteries and pull out your first prize. Which pocket would you like to check?~
       +~Global("h_LeftRiddle","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftRiddle","GLOBAL",1) GiveItemCreate("AROW01",LastTalkedToBy,0,0,0)~ GOTO PRIZE_0
       +~Global("h_RightRiddle","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightRiddle","GLOBAL",1) GiveItemCreate("MISC59",LastTalkedToBy,0,0,0)~ GOTO PRIZE_0
       +~Global("h_TopRiddle","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopRiddle","GLOBAL",1) GiveItemCreate("POTN32",LastTalkedToBy,0,0,0)~ GOTO PRIZE_0
       +~Global("h_FrontRiddle","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontRiddle","GLOBAL",1) GiveItemCreate("SCRL76",LastTalkedToBy,0,0,0)~ GOTO PRIZE_0
       +~Global("h_SecretRiddle","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretRiddle","GLOBAL",1) GiveGoldForce(1)~ GOTO PRIZE_0
END

IF ~~ THEN BEGIN PRIZE_0
   SAY ~*laughing* I hope you enjoy your prize. Onto to the next riddle!~ IF ~~ THEN GOTO RIDDLE_5
END

IF ~~ THEN BEGIN RIDDLE_5
   SAY ~There are three priests who all say Destin is their brother. Yet, Destin says he has no brothers. Who is lying?~
       ++ ~No one.~ DO ~AddExperienceParty(250)~ GOTO CORRECT_2
       ++ ~The priests.~ GOTO WRONG_2
       ++ ~Destin.~ GOTO WRONG_2
       ++ ~You.~ GOTO WRONG_2
END

IF ~~ THEN BEGIN WRONG_2
   SAY ~*shakes her head* No one was lying. The priests are Destin's sisters. Time to pay up.~
IF ~~ THEN DO ~
   TakePartyGold(100)~ GOTO RIDDLE_6
END

IF ~~ THEN BEGIN CORRECT_2
   SAY ~Correct! The priests are Destin's sisters. Take another pull from the Bag of Mysteries! Which pocket would you like to check?~
       +~Global("h_LeftRiddle","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftRiddle","GLOBAL",1) GiveItemCreate("AROW01",LastTalkedToBy,0,0,0)~ GOTO PRIZE_1
       +~Global("h_RightRiddle","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightRiddle","GLOBAL",1) GiveItemCreate("MISC59",LastTalkedToBy,0,0,0)~ GOTO PRIZE_1
       +~Global("h_TopRiddle","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopRiddle","GLOBAL",1) GiveItemCreate("POTN32",LastTalkedToBy,0,0,0)~ GOTO PRIZE_1
       +~Global("h_FrontRiddle","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontRiddle","GLOBAL",1) GiveItemCreate("SCRL76",LastTalkedToBy,0,0,0)~ GOTO PRIZE_1
       +~Global("h_SecretRiddle","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretRiddle","GLOBAL",1) GiveGoldForce(1)~ GOTO PRIZE_1
END

IF ~~ THEN BEGIN PRIZE_1
   SAY ~*laughing* I hope you enjoy your prize. Onto to the next riddle!~ IF ~~ THEN GOTO RIDDLE_6
END

IF ~~ THEN BEGIN RIDDLE_6
   SAY ~I break, but never fall. And I fall, but never break. What are we?~
       ++ ~Windows.~ GOTO WRONG_3
       ++ ~Raindrops.~ GOTO WRONG_3
       ++ ~A pair of mirrors.~ GOTO WRONG_3
       ++ ~Gusts of wind.~ GOTO WRONG_3
       ++ ~Two birds flying.~ GOTO WRONG_3
       ++ ~Day and night.~ DO ~AddExperienceParty(250)~ GOTO CORRECT_3
       ++ ~A fever and its cure.~ GOTO WRONG_3
       ++ ~A broken heart and a person in love.~ GOTO WRONG_3
       ++ ~Different temperatures.~ GOTO WRONG_3
END

IF ~~ THEN BEGIN WRONG_3
   SAY ~That is incorrect. A day breaks but not falls, and a night falls but not breaks. That'll be 100 gold please.~
IF ~~ THEN DO ~
   TakePartyGold(100)~ GOTO RIDDLE_7
END

IF ~~ THEN BEGIN CORRECT_3
   SAY ~A day breaks and a night falls, yet they can not be reversed. Well done. Time for your reward! Which pocket would you like to check?~
       +~Global("h_LeftRiddle","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftRiddle","GLOBAL",1) GiveItemCreate("AROW01",LastTalkedToBy,0,0,0)~ GOTO PRIZE_2
       +~Global("h_RightRiddle","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightRiddle","GLOBAL",1) GiveItemCreate("MISC59",LastTalkedToBy,0,0,0)~ GOTO PRIZE_2
       +~Global("h_TopRiddle","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopRiddle","GLOBAL",1) GiveItemCreate("POTN32",LastTalkedToBy,0,0,0)~ GOTO PRIZE_2
       +~Global("h_FrontRiddle","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontRiddle","GLOBAL",1) GiveItemCreate("SCRL76",LastTalkedToBy,0,0,0)~ GOTO PRIZE_2
       +~Global("h_SecretRiddle","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretRiddle","GLOBAL",1) GiveGoldForce(1)~ GOTO PRIZE_2
END

IF ~~ THEN BEGIN PRIZE_2
   SAY ~*laughing* I hope you enjoy your prize. Onto to the next riddle!~ IF ~~ THEN GOTO RIDDLE_7
END

IF ~~ THEN BEGIN RIDDLE_7
   SAY ~I can't be seen but I can be heard. I won't answer back until you've spoken a word.~
       ++ ~A dream.~ GOTO WRONG_4
       ++ ~A voice.~ GOTO WRONG_4
       ++ ~A ghost.~ GOTO WRONG_4
       ++ ~Footsteps.~ GOTO WRONG_4
       ++ ~Sound waves.~ GOTO WRONG_4
       ++ ~A message.~ GOTO WRONG_4
       ++ ~Darkness.~ GOTO WRONG_4
       ++ ~An echo.~ DO ~AddExperienceParty(250)~ GOTO CORRECT_4
       ++ ~Shadows.~ GOTO WRONG_4
END

IF ~~ THEN BEGIN WRONG_4
   SAY ~*shakes her head* Sorry, <CHARNAME>. The correct answer was an echo.~
IF ~~ THEN DO ~
   TakePartyGold(100)~ GOTO END_0
END

IF ~~ THEN BEGIN CORRECT_4
   SAY ~Nice job, <CHARNAME>, way to end strong. This is your last pick, so make it count! Which pocket would you like to check?~
       +~Global("h_LeftRiddle","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftRiddle","GLOBAL",1) GiveItemCreate("AROW01",LastTalkedToBy,0,0,0)~ GOTO END_0
       +~Global("h_RightRiddle","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightRiddle","GLOBAL",1) GiveItemCreate("MISC59",LastTalkedToBy,0,0,0)~ GOTO END_0
       +~Global("h_TopRiddle","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopRiddle","GLOBAL",1) GiveItemCreate("POTN32",LastTalkedToBy,0,0,0)~ GOTO END_0
       +~Global("h_FrontRiddle","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontRiddle","GLOBAL",1) GiveItemCreate("SCRL76",LastTalkedToBy,0,0,0)~ GOTO END_0
       +~Global("h_SecretRiddle","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretRiddle","GLOBAL",1) GiveGoldForce(1)~ GOTO END_0
END

IF ~~ THEN BEGIN END_0
   SAY ~I hope you had as much fun as I did. Time to go refill my Bag of Mysteries for my next victim!~
       ++ ~You have an odd sense of humor, you know that?~ DO ~SetGlobal("h_ZedaRiddle","GLOBAL",2)~ EXIT
       ++ ~What am I supposed to do with all this junk...~ DO ~SetGlobal("h_ZedaRiddle","GLOBAL",2)~ EXIT
       ++ ~Thanks, Zeda, that was fun.~ DO ~SetGlobal("h_ZedaRiddle","GLOBAL",2)~ EXIT
END




