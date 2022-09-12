APPEND ~mtown3%eet_var%~

IF WEIGHT #-1 ~Global("h_LotusQuest","GLOBAL",0) Global("h_RigaldoQuest","GLOBAL",16)~ THEN BEGIN L_10
   SAY @7400
       ++ @7401 GOTO L_11
END

IF ~~ THEN BEGIN L_11
   SAY @7402 IF ~~ THEN GOTO L_12
END

IF ~~ THEN BEGIN L_12
   SAY @7403
       +~NumItemsParty("h_misc07",5)~+ @7404 GOTO L_13
       +~NumItemsParty("h_misc07",4)~+ @7405 GOTO L_13
END

IF ~~ THEN BEGIN L_13
   SAY @7406
       +~NumItemsParty("h_misc07",5)~+ @7407 GOTO L_14
       +~NumItemsParty("h_misc07",4)~+ @7407 GOTO L_15
       +~NumItemsParty("h_misc07",5)~+ @7408 GOTO L_16
       +~NumItemsParty("h_misc07",4)~+ @7408 GOTO L_17
END

IF ~~ THEN BEGIN L_14
   SAY @7409
IF ~~ THEN DO ~
   SetGlobal("h_LotusQuest","GLOBAL",1)
   SetGlobal("h_ShadowWar","GLOBAL",5)
   AddJournalEntry(@330,QUEST)
   TakePartyItemAll("h_misc07")
   GiveGoldForce(3000)~ EXIT
END

IF ~~ THEN BEGIN L_15
   SAY @7409
IF ~~ THEN DO ~
   SetGlobal("h_LotusQuest","GLOBAL",2)
   SetGlobal("h_ShadowWar","GLOBAL",5)
   AddJournalEntry(@330,QUEST)
   TakePartyItemAll("h_misc07")
   GiveGoldForce(2400)~ EXIT
END

IF ~~ THEN BEGIN L_16
   SAY @7410
IF ~~ THEN DO ~
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
   EndCutSceneMode()
   SetGlobal("h_LotusQuest","GLOBAL",1)
   SetGlobal("h_ShadowWar","GLOBAL",5)
   SetGlobal("h_LotusCutscene","GLOBAL",1)
   AddJournalEntry(@330,QUEST)
   TakePartyItemAll("h_misc07")
   DestroyItem("h_misc07")
   GiveGoldForce(3000)~ EXIT
END

IF ~~ THEN BEGIN L_17
   SAY @7410
IF ~~ THEN DO ~
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
   EndCutSceneMode()
   SetGlobal("h_LotusQuest","GLOBAL",2)
   SetGlobal("h_ShadowWar","GLOBAL",5)
   SetGlobal("h_LotusCutscene","GLOBAL",1)
   AddJournalEntry(@330,QUEST)
   TakePartyItemAll("h_misc07")
   DestroyItem("h_misc07")
   GiveGoldForce(2400)~ EXIT
END

IF WEIGHT #-1 ~Global("h_LotusCutscene","GLOBAL",1)~ THEN BEGIN L_18
   SAY @7411
IF ~~ THEN DO ~
   SetGlobal("h_LotusCutscene","GLOBAL",0)~ EXIT
END

END

