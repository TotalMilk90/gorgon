BEGIN h_zedadd

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",13)~ THEN BEGIN WAR_0
   SAY ~I'm grabbin' myself a bow and heading for cover! I'm not much of the fighting type.~
END

IF ~Global("h_BaldwinQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~*sniff* *sniff* Hmmm. You smell of books... and blood.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_BaldwinQuest","GLOBAL",0)~ THEN BEGIN 1
   SAY ~I grew up on the streets of Westgate and was sailing spice into Cormyr by the time I was 9. I learned a lot in those days. If you're ever in need of my skills, trust that I shall deliver.~
       ++ ~I'll keep that in mind.~ EXIT
       +~Global("h_ZedaRiddle","GLOBAL",1)~+ ~I'm looking for something to do. Do you have any work available?~ GOTO RIDDLE_0
       +~Global("h_SecondRiddle","GLOBAL",1) Global("h_ZedaRiddle","GLOBAL",2)~+ ~I want to play Bag of Mysteries again!~ GOTO SECOND_0
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
   SAY ~Anyways, my work ain't the kind you can just jump into. However, I do have a game we could play, if you're just trying to pass the time.~
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
       ++ ~The match.~ DO ~AddExperienceParty(50)~ GOTO CORRECT_1
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
       ++ ~No one.~ DO ~AddExperienceParty(100)~ GOTO CORRECT_2
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
       ++ ~Day and night.~ DO ~AddExperienceParty(150)~ GOTO CORRECT_3
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
       ++ ~An echo.~ DO ~AddExperienceParty(200)~ GOTO CORRECT_4
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


       //////////////////////
       ////////Second////////
       //////////////////////


IF ~~ THEN BEGIN SECOND_0
   SAY ~Well, you're in luck then! I have restocked my riddles and refilled my bag with lots of goodies!~ IF ~~ THEN GOTO SECOND_1
END
                                                                                                   
IF ~~ THEN BEGIN SECOND_1
   SAY ~I will put you through a series of 4 riddles. If you guess wrong, you will pay me 200 gold this time. If you guess right, you can choose a random prize from my Bag of Mysteries. Once we begin you *must* commit to answering each riddle before the game will end.~
       +~PartyGoldGT(799)~+ ~I'm ready to begin~ GOTO SECOND_3
       +~PartyGoldLT(800)~+ ~It seems I don't have enough gold to play your game.~ GOTO SECOND_2
       ++ ~On second thought, I'm not interested right now.~ EXIT
END

IF ~~ THEN BEGIN SECOND_2
   SAY ~Are you serious? *laughing* You really don't have 800 gold pieces on you?~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SECOND_3
   SAY ~Alright, let's get started then. Here is the first riddle.~ IF ~~ THEN GOTO SECOND_4
END

IF ~~ THEN BEGIN SECOND_4
   SAY ~I have a head, yet no body. I have leaves, yet no branches. What am I?~
       ++ ~A book.~ GOTO NO_0
       ++ ~Lettuce.~ DO ~AddExperienceParty(100)~ GOTO YES_0
       ++ ~A tree.~ GOTO NO_0
       ++ ~A flower.~ GOTO NO_0
       ++ ~A shadow.~ GOTO NO_0
       ++ ~A family tree.~ GOTO NO_0
       ++ ~An army.~ GOTO NO_0
END

IF ~~ THEN BEGIN NO_0
   SAY ~Oof. Not off to the best start. The correct answer was "lettuce". That'll be 200 gold please and thank you.~
IF ~~ THEN DO ~
   TakePartyGold(200)~ GOTO SECOND_6
END

IF ~~ THEN BEGIN YES_0
   SAY ~Correct! Stick your hand in the Bag of Mysteries and pull out your first prize. Which pocket would you like to check?~
       +~Global("h_LeftSecond","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftSecond","GLOBAL",1) GiveItemCreate("RING11",LastTalkedToBy,0,0,0)~ GOTO SECOND_5
       +~Global("h_RightSecond","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightSecond","GLOBAL",1) GiveGoldForce(1)~ GOTO SECOND_5
       +~Global("h_TopSecond","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopSecond","GLOBAL",1) GiveItemCreate("BELT01",LastTalkedToBy,0,0,0)~ GOTO SECOND_5
       +~Global("h_FrontSecond","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontSecond","GLOBAL",1) GiveItemCreate("BOOK21",LastTalkedToBy,0,0,0)~ GOTO SECOND_5
       +~Global("h_SecretSecond","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretSecond","GLOBAL",1) GiveItemCreate("DART01",LastTalkedToBy,0,0,0)~ GOTO SECOND_5
END

IF ~~ THEN BEGIN SECOND_5
   SAY ~*giggles* This never gets old. Onto to the next riddle!~ IF ~~ THEN GOTO SECOND_6
END

IF ~~ THEN BEGIN SECOND_6
   SAY ~The more you take of me, the more you leave behind.~
       ++ ~Coins.~ GOTO NO_1
       ++ ~Memories.~ GOTO NO_1
       ++ ~Sleep.~ GOTO NO_1
       ++ ~Time.~ GOTO NO_1
       ++ ~Footsteps.~ DO ~AddExperienceParty(200)~ GOTO YES_1
       ++ ~Water.~ GOTO NO_1
       ++ ~Oxygen.~ GOTO NO_1
       ++ ~Daylight.~ GOTO NO_1
END

IF ~~ THEN BEGIN NO_1
   SAY ~*shakes her head* That's gonna cost ya'.~
IF ~~ THEN DO ~
   TakePartyGold(200)~ GOTO SECOND_8
END

IF ~~ THEN BEGIN YES_1
   SAY ~That's right! Which pocket would you like to check?~
       +~Global("h_LeftSecond","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftSecond","GLOBAL",1) GiveItemCreate("RING11",LastTalkedToBy,0,0,0)~ GOTO SECOND_7
       +~Global("h_RightSecond","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightSecond","GLOBAL",1) GiveGoldForce(1)~ GOTO SECOND_7
       +~Global("h_TopSecond","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopSecond","GLOBAL",1) GiveItemCreate("BELT01",LastTalkedToBy,0,0,0)~ GOTO SECOND_7
       +~Global("h_FrontSecond","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontSecond","GLOBAL",1) GiveItemCreate("BOOK21",LastTalkedToBy,0,0,0)~ GOTO SECOND_7
       +~Global("h_SecretSecond","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretSecond","GLOBAL",1) GiveItemCreate("DART01",LastTalkedToBy,0,0,0)~ GOTO SECOND_7
END

IF ~~ THEN BEGIN SECOND_7
   SAY ~*laughing* This never gets old. Onto to the next riddle!~ IF ~~ THEN GOTO SECOND_8
END

IF ~~ THEN BEGIN SECOND_8
   SAY ~Walk on the living, they don't even mumble. Walk on the dead, they mutter and grumble.~
       ++ ~Zombies.~ GOTO NO_2
       ++ ~Grass.~ GOTO NO_2
       ++ ~Skeleton.~ GOTO NO_2
       ++ ~Planets.~ GOTO NO_2
       ++ ~Fire.~ GOTO NO_2
       ++ ~Leaves.~ DO ~AddExperienceParty(300)~ GOTO YES_2
END

IF ~~ THEN BEGIN NO_2
   SAY ~Sorry, but the right answer was "leaves". You know, the things that get all crunchy after they die?~
IF ~~ THEN DO ~
   TakePartyGold(200)~ GOTO SECOND_10
END

IF ~~ THEN BEGIN YES_2
   SAY ~Good answer! Leaves get all crunchy after they die. Which pocket would you like to check?~
       +~Global("h_LeftSecond","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftSecond","GLOBAL",1) GiveItemCreate("RING11",LastTalkedToBy,0,0,0)~ GOTO SECOND_9
       +~Global("h_RightSecond","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightSecond","GLOBAL",1) GiveGoldForce(1)~ GOTO SECOND_9
       +~Global("h_TopSecond","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopSecond","GLOBAL",1) GiveItemCreate("BELT01",LastTalkedToBy,0,0,0)~ GOTO SECOND_9
       +~Global("h_FrontSecond","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontSecond","GLOBAL",1) GiveItemCreate("BOOK21",LastTalkedToBy,0,0,0)~ GOTO SECOND_9
       +~Global("h_SecretSecond","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretSecond","GLOBAL",1) GiveItemCreate("DART01",LastTalkedToBy,0,0,0)~ GOTO SECOND_9
END

IF ~~ THEN BEGIN SECOND_9
   SAY ~*laughing* This never gets old. Onto to the next riddle!~ IF ~~ THEN GOTO SECOND_10
END

IF ~~ THEN BEGIN SECOND_10
   SAY ~Forwards I am heavy, yet backwards I am not.~
       ++ ~A hat.~ GOTO NO_3
       ++ ~A coat.~ GOTO NO_3
       ++ ~The past.~ GOTO NO_3
       ++ ~A thought.~ GOTO NO_3
       ++ ~A sentence.~ GOTO NO_3
       ++ ~The present.~ GOTO NO_3
       ++ ~Ton.~ DO ~AddExperienceParty(400)~ GOTO YES_3
       ++ ~The future.~ GOTO NO_3
END

IF ~~ THEN BEGIN NO_3
   SAY ~A tricky one, this was. The answer was "ton", as backwards it spells n-o-t.~
IF ~~ THEN DO ~
   TakePartyGold(200)~ GOTO SECOND_11
END

IF ~~ THEN BEGIN YES_3
   SAY ~That is correct! This is your last pick. Which pocket would you like to check?~
       +~Global("h_LeftSecond","GLOBAL",0)~+ ~Left.~ DO ~SetGlobal("h_LeftSecond","GLOBAL",1) GiveItemCreate("RING11",LastTalkedToBy,0,0,0)~ GOTO SECOND_11
       +~Global("h_RightSecond","GLOBAL",0)~+ ~Right.~ DO ~SetGlobal("h_RightSecond","GLOBAL",1) GiveGoldForce(1)~ GOTO SECOND_11
       +~Global("h_TopSecond","GLOBAL",0)~+ ~Top.~ DO ~SetGlobal("h_TopSecond","GLOBAL",1) GiveItemCreate("BELT01",LastTalkedToBy,0,0,0)~ GOTO SECOND_11
       +~Global("h_FrontSecond","GLOBAL",0)~+ ~Front.~ DO ~SetGlobal("h_FrontSecond","GLOBAL",1) GiveItemCreate("BOOK21",LastTalkedToBy,0,0,0)~ GOTO SECOND_11
       +~Global("h_SecretSecond","GLOBAL",0)~+ ~Secret.~ DO ~SetGlobal("h_SecretSecond","GLOBAL",1) GiveItemCreate("DART01",LastTalkedToBy,0,0,0)~ GOTO SECOND_11
END

IF ~~ THEN BEGIN SECOND_11
   SAY ~I hope you enjoyed my new prizes, hehe!~
       ++ ~Yes, more junk that I don't need.~ DO ~SetGlobal("h_SecondRiddle","GLOBAL",2)~ EXIT
       ++ ~Thanks, Zeda, that was fun.~ DO ~SetGlobal("h_SecondRiddle","GLOBAL",2)~ EXIT
END