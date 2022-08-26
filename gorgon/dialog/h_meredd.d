BEGIN h_meredd

IF ~Global("h_Meredia","GLOBAL",0) Global("h_EndMeredia","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Welcome to The Den. If you've come seeking restful pleasures then look no further. I have a most diverse and highly skilled staff who will attend to your every desire.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Our current rates are 40 gold for the hour. Guild members pay half. Would you be interested in our services?~
       +~Global("h_BaldwinQuest","GLOBAL",0) PartyGoldGT(39)~+ ~Yes, I think I would be.~ GOTO 3
       +~GlobalGT("h_BaldwinQuest","GLOBAL",0) PartyGoldGT(19)~+ ~Yes, I think I would be.~ GOTO 4
       ++ ~No, not at this time.~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Suit yourself. We'll be here when the urge strikes.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
   SAY ~Very good. Right this way please and you may choose who you'd like to accompany you this evening.~
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
   SAY ~Very good. Right this way please and you may choose who you'd like to accompany you this evening.~
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
   SAY ~I hope everything was to your satisfication. Come see us again soon will you?~
IF ~~ THEN DO ~
   SetGlobal("h_EndMeredia","GLOBAL",0)~ EXIT
END

IF ~Global("h_Meredia","GLOBAL",1) Global("h_EndMeredia","GLOBAL",0)~ THEN BEGIN 20
   SAY ~Welcome, <CHARNAME>. Congratulations on becoming the new guildmaster. If you wish, you may use of services free of charge of course.~
       ++ ~Yes, I would.~ GOTO 21
       ++ ~Not at this time.~ EXIT
END

IF ~~ THEN BEGIN 21
   SAY ~Very good. Right this way please and you may choose who you'd like to accompany you this evening.~
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

