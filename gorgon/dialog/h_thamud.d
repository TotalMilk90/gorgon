BEGIN h_thamud

IF ~Global("h_JoinShadow","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Greetings, <CHARNAME>. How are you faring this evening?~
       ++ ~Uh... pretty good?~ GOTO 1
       ++ ~I am well. Care to explain what just happened?~ GOTO 2
       ++ ~Who are you and how is it you know my name?~ GOTO 2
END

IF ~~ THEN BEGIN 1
   SAY ~Excellent!~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY ~Of course, where are my manners?~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~My name is Thamuz and I represent an organization known as the Shadow Thieves.~
       ++ ~Why did you kill Nagate? I thought you were meeting with him to negotiate a deal?~ GOTO 4
       ++ ~Ah, so you are the one called Thamuz. Baldwin mentioned that you were comrades once.~ GOTO 5
       ++ ~Why did you attack us in Beregost?~ GOTO 6
END

IF ~~ THEN BEGIN 4
   SAY ~That was me negotiating. I am now in possession of the item I came for, and he is unable to speak of our encounter.~
       ++ ~Ah, so you are the one called Thamuz. Baldwin mentioned that you were comrades once.~ GOTO 5
       ++ ~Why did you attack us in Beregost?~ GOTO 6
END

IF ~~ THEN BEGIN 5
   SAY ~Did he now? There was a time we regarded eachother as such, yes. But those days are buried in the past.~
       ++ ~Why did you kill Nagate? I thought you were meeting with him to negotiate a deal?~ GOTO 4
       ++ ~Why did you attack us in Beregost?~ GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~I would not expect you to understand the intricacies of our operations. However, seeing as though you will not survive this meeting, I will enlighten you on a few truths.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~We've allowed Baldwin to play his little game in Beregost, because quite honestly, he's been no threat to our organization. There isn't a single move he has made that we haven't been aware of.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~The reason we intervened was two-fold.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~We could not allow Baldwin to obtain the Kerykeion, for he would become a far greater threat to this world than you could imagine. And, you have also made another enemy, who is paying us quite the prize to exterminate you from Beregost.~
       ++ ~Who is this other enemy you speak of?~ GOTO 10
       ++ ~What do you know of Baldwin's plans for the Kerykeion?~ GOTO 11
       ++ ~Let us finish this then. Prepare yourself, Shadow Thief.~ GOTO 13
END

IF ~~ THEN BEGIN 10
   SAY ~Your death may be a certainty but I will not speak aloud each detail like some fool.~
       ++ ~What do you know of Baldwin's plans for the Kerykeion?~ GOTO 11
       ++ ~Let us finish this then. Prepare yourself, Shadow Thief.~ GOTO 13
END

IF ~~ THEN BEGIN 11
   SAY ~Bah! You do his bidding with total ignorance of the outcome you will receive. The Kerykeion cannot be wielded by any mortal, it will twist the mind and mutate the body of any who attempt it.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~Once reassembled, its power would instantly engulf his being. The amount of destruction his berserk state would inflict would be catastrophic.~
       ++ ~Who is this other enemy you speak of?~ GOTO 10
       ++ ~Let us finish this then. Prepare yourself, Shadow Thief.~ GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~Yes, enough words. I will avenge my comrades with your death.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",7)
   SetGlobal("h_ShadowWar","GLOBAL",4)
   SetGlobal("h_SpawnAriosh","GLOBAL",4)
   AddJournalEntry(@216,QUEST)~ EXIT
END




