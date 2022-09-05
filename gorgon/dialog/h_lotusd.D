APPEND MTOWN3

IF WEIGHT #-0 ~Global("h_LotusQuest","GLOBAL",0) Global("h_RigaldoQuest","GLOBAL",16)~ THEN BEGIN L_10
   SAY ~I would offer you a chance to partake in the pleasures of the black lotus, but I'm afraid we've just ran out.~
       ++ ~I seem to have arrived just in time then, as I have a fresh supply that I am ready to unload.~ GOTO L_11
END

IF ~~ THEN BEGIN L_11
   SAY ~Yes, of course! I did not expect you so soon. I am willing to pay 600 gold pieces per pound, if the quality is of high standard, that is.~ IF ~~ THEN GOTO L_12
END

IF ~~ THEN BEGIN L_12
   SAY ~How much black lotus have you managed to bring me?~
       +~NumItemsParty("h_misc07",5)~+ ~I have brought all five pounds and as you can see it is of the finest quality.~ GOTO L_13
       +~NumItemsParty("h_misc07",4)~+ ~I ran into a little trouble on the road, but I was still able to bring in four pounds. As you can see, it is of the finest quality.~ GOTO L_13
END

IF ~~ THEN BEGIN L_13
   SAY ~Indeed it is. Here is your payment then, friend. Would you care to join us for a round? It will only take but a moment to prepare the petals.~
       +~NumItemsParty("h_misc07",5)~+ ~Perhaps another time, I must be going now.~ GOTO L_14
       +~NumItemsParty("h_misc07",4)~+ ~Perhaps another time, I must be going now.~ GOTO L_15
       +~NumItemsParty("h_misc07",5)~+ ~Sure, why not? I'll give it a try.~ GOTO L_16
       +~NumItemsParty("h_misc07",4)~+ ~Sure, why not? I'll give it a try.~ GOTO L_17
END

IF ~~ THEN BEGIN L_14
   SAY ~Very good. I shall call upon you if I am need of your services again.~
IF ~~ THEN DO ~
   SetGlobal("h_LotusQuest","GLOBAL",1)
   SetGlobal("h_ShadowWar","GLOBAL",5)
   AddJournalEntry(@330,QUEST)
   TakePartyItemAll("h_misc07")
   GiveGoldForce(3000)~ EXIT
END

IF ~~ THEN BEGIN L_15
   SAY ~Very good. I shall call upon you if I am need of your services again.~
IF ~~ THEN DO ~
   SetGlobal("h_LotusQuest","GLOBAL",2)
   SetGlobal("h_ShadowWar","GLOBAL",5)
   AddJournalEntry(@330,QUEST)
   TakePartyItemAll("h_misc07")
   GiveGoldForce(2400)~ EXIT
END

IF ~~ THEN BEGIN L_16
   SAY ~Right this way then.~
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
   SAY ~Right this way then.~
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

IF  WEIGHT #-0 ~Global("h_LotusCutscene","GLOBAL",1)~ THEN BEGIN L_18
   SAY ~Whoa. I could have sworn I was just talking to an elephant...~
IF ~~ THEN DO ~
   SetGlobal("h_LotusCutscene","GLOBAL",0)~ EXIT
END

END

