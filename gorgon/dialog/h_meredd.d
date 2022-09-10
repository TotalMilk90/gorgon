BEGIN h_meredd

IF ~Global("h_Meredia","GLOBAL",0) Global("h_EndMeredia","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Welcome yourselves to the Gorgon's Den, where we offer a diverse and highly skilled staff ready to attend your every desire.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Our current rates are 40 gold for the hour. Guild members will pay half. Would you be interested in our services?~
       ++ ~No, not at this time.~ GOTO 2
       +~GlobalGT("h_BaldwinQuest","GLOBAL",0) PartyGoldGT(19)~+ ~Yes, I think I would be.~ GOTO 4
       +~Global("h_BaldwinQuest","GLOBAL",0) PartyGoldGT(39)~+ ~Yes, I think I would be.~ GOTO 3
       +~Global("h_GilbaldQuest","GLOBAL",3)~+ ~I'm looking into a man named Xevec, who may have used counterfeit gold at Gilbald's casino. Can you tell me anything more about him?~ GOTO G_0
END

IF ~~ THEN BEGIN 2
   SAY ~Suit yourself. We'll be here when the urge strikes.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
   SAY ~Very good. Right this way then and I will introduce you to the available whores this evening.~
IF ~~ THEN DO ~
   SetGlobal("h_EndMeredia","GLOBAL",1)
   TakePartyGold(40)
   ClearAllActions()
   StartCutSceneMode()
   CutSceneId(Player1)
   FadeToColor([20.0],0)
   Wait(2)
   Rest()
   ActionOverride(Player2,Rest())
   ActionOverride(Player3,Rest())
   ActionOverride(Player4,Rest())
   ActionOverride(Player5,Rest())
   ActionOverride(Player6,Rest())
   Wait(2)
   FadeFromColor([20.0],0)
   Wait(1)
   EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 4
   SAY ~Very good. Right this way then and I will introduce you to the available whores this evening.~
IF ~~ THEN DO ~
   SetGlobal("h_EndMeredia","GLOBAL",1)
   TakePartyGold(20)
   ClearAllActions()
   StartCutSceneMode()
   CutSceneId(Player1)
   FadeToColor([20.0],0)
   Wait(2)
   Rest()
   ActionOverride(Player2,Rest())
   ActionOverride(Player3,Rest())
   ActionOverride(Player4,Rest())
   ActionOverride(Player5,Rest())
   ActionOverride(Player6,Rest())
   Wait(2)
   FadeFromColor([20.0],0)
   Wait(1)
   EndCutSceneMode()~ EXIT
END

IF ~Global("h_EndMeredia","GLOBAL",1)~ THEN BEGIN 5
   SAY ~I hope everything was to your satisfication. See us again soon, will you?~
IF ~~ THEN DO ~
   SetGlobal("h_EndMeredia","GLOBAL",0)~ EXIT
END

IF ~Global("h_Meredia","GLOBAL",1) Global("h_EndMeredia","GLOBAL",0)~ THEN BEGIN 20
   SAY ~Welcome, <CHARNAME>. Congratulations on becoming the new guildmaster. If you wish, you may use our services free of charge, of course.~
       ++ ~Yes, I would like that.~ GOTO 21
       ++ ~Not at this time.~ EXIT
END

IF ~~ THEN BEGIN 21
   SAY ~Very good. Right this way then and I will introduce you to the available whores this evening.~
IF ~~ THEN DO ~
   SetGlobal("h_EndMeredia","GLOBAL",1)
   ClearAllActions()
   StartCutSceneMode()
   CutSceneId(Player1)
   FadeToColor([20.0],0)
   Wait(2)
   Rest()
   ActionOverride(Player2,Rest())
   ActionOverride(Player3,Rest())
   ActionOverride(Player4,Rest())
   ActionOverride(Player5,Rest())
   ActionOverride(Player6,Rest())
   Wait(2)
   FadeFromColor([20.0],0)
   Wait(1)
   EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN G_0
   SAY ~Yes, I know Xevec well. In fact, he spent quite some time with us just last night. What would you like to know?~
       ++ ~Did he say or do anything that was unusual last night?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_1
       ++ ~Can you tell me anything more specific about him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_3
       ++ ~Can you check to see if this gold coin matches up with any of the ones he used here?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_4
       ++ ~Do you know where I could find him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_7
END

IF ~~ THEN BEGIN G_1
   SAY ~He wouldn't stop talking about a new job he was getting, that according to him, "Would set him up for life.".~ IF ~~ THEN GOTO G_2
END

IF ~~ THEN BEGIN G_2
   SAY ~Whoever hired Xevec paid him a hefty sum up front. He decided to spend it here to celebrate his success.~
       ++ ~Can you tell me anything more specific about him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_3
       ++ ~Can you check to see if this gold coin matches up with any of the ones he used here?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_4
       ++ ~Do you know where I could find him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_7
       +~GlobalGT("h_MerediaNumber","GLOBAL",3)~+ ~Thanks, Meredia. You have been a great help.~ GOTO G_9
END

IF ~~ THEN BEGIN G_3
   SAY ~Well, he's not the brightest man, to be sure. He's violent, crass, and always on the lookout for the next get-rich-quick scheme. Obviously, it's never worked out for him.~
       ++ ~Did he say or do anything that was unusual last night?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_1
       ++ ~Can you check to see if this gold coin matches up with any of the ones he used here?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_4
       ++ ~Do you know where I could find him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_7
       +~GlobalGT("h_MerediaNumber","GLOBAL",3)~+ ~Thanks, Meredia. You have been a great help.~ GOTO G_9
END

IF ~~ THEN BEGIN G_4
   SAY ~It will be tedious, as we don't seperate payments, but I can check through last nights count. Wait here a moment.~ IF ~~ THEN GOTO G_5
END

IF ~~ THEN BEGIN G_5
   SAY ~...~ IF ~~ THEN GOTO G_6
END

IF ~~ THEN BEGIN G_6
   SAY ~By Sune! They're all fake! Hundreds of them! How did I not notice? It has to be from Xevec, no one else spent as much as him last night!~
       ++ ~Did he say or do anything that was unusual last night?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_1
       ++ ~Can you tell me anything more specific about him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_3
       ++ ~Do you know where I could find him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_7
       +~GlobalGT("h_MerediaNumber","GLOBAL",3)~+ ~Thanks, Meredia. You have been a great help.~ GOTO G_9
END

IF ~~ THEN BEGIN G_7
   SAY ~He lives somewhere on the streets of Beregost, but I don't know where exactly.~ IF ~~ THEN GOTO G_8
END

IF ~~ THEN BEGIN G_8
   SAY ~I have seen him in the north-end on occasion. You might want to first check there.~
       ++ ~Did he say or do anything that was unusual last night?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_1
       ++ ~Can you tell me anything more specific about him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_3
       ++ ~Can you check to see if this gold coin matches up with any of the ones he used here?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_4
       +~GlobalGT("h_MerediaNumber","GLOBAL",3)~+ ~Thanks, Meredia. You have been a great help.~ GOTO G_9
END

IF ~~ THEN BEGIN G_9
   SAY ~Not problem, <CHARNAME>. It's always a pleasure seeing you.~
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",4)
   SetGlobal("h_SpawnXevec","GLOBAL",1)
   AddJournalEntry(@612,QUEST)~ EXIT
END



