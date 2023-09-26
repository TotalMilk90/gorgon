APPEND ~mtown3%eet_var%~

IF WEIGHT #-1 ~Global("h_ExtraQuest","GLOBAL",1) Global("h_PruflasQuest","GLOBAL",1)~ THEN BEGIN PRUF_0
   SAY ~Apologies, but constantly hearing Pruflas' chatter about trees and squirrels is making it impossible to concentrate! I cannot conduct business whilst he prattles so!~ IF ~~ THEN GOTO PRUF_1
END

IF ~~ THEN BEGIN PRUF_1
   SAY ~Please, I implore you. Persuade Pruflas to return home to his wife, and I will be utterly overjoyed. She's been pleading with me to bring him back home, after all.~
IF ~~ THEN DO ~
   SetGlobal("h_PruflasQuest","GLOBAL",1)
   AddJournalEntry(@333,QUEST)~ EXIT
END

IF WEIGHT #-1 ~Global("h_ExtraQuest","GLOBAL",1) Global("h_PruflasQuest","GLOBAL",2) Global("h_RigaldoQuest","GLOBAL",16)~ THEN BEGIN PRUF_0
   SAY ~He's driving me mad, I tell you!~ IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~Global("h_ExtraQuest","GLOBAL",1) Global("h_PruflasQuest","GLOBAL",3) Global("h_RigaldoQuest","GLOBAL",16)~ THEN BEGIN L_10
   SAY ~Well, thank the heavens that's over with. I'd reward you with a taste of the divine lotus, yet it seems we've just exhausted our supply. Bad timing, my friend.~
       ++ ~Lucky for you, I've just arrived with a fresh batch, ready to make a deal.~ GOTO L_11
END

IF ~~ THEN BEGIN L_11
   SAY ~Prompt as ever! I'll offer six-hundred gold pieces per pound, as discussed, if the quality is of high standard, that is.~ IF ~~ THEN GOTO L_12
END

IF ~~ THEN BEGIN L_12
   SAY ~So, how much of this precious cargo have you managed to haul in?~
       +~NumItemsParty("h_misc07",5)~+ ~Five pounds of Faerun's finest. It doesn't get any better than this.~ GOTO L_13
       +~NumItemsParty("h_misc07",4)~+ ~Four pounds of Faerun's finest. It doesn't get any better than this.~ GOTO L_13
END

IF ~~ THEN BEGIN L_13
   SAY ~Well, well! This is almost too pretty to grind into a powder. Almost, mind you! Excellent quality, my friend!~ IF ~~ THEN GOTO L_14
END

IF ~~ THEN BEGIN L_14
   SAY ~Why not stay for a round? It'll take but a moment to prepare the petals.~
       +~NumItemsParty("h_misc07",5)~+ ~Perhaps another time, I must be going now.~ GOTO L_15
       +~NumItemsParty("h_misc07",4)~+ ~Perhaps another time, I must be going now.~ GOTO L_16
       +~NumItemsParty("h_misc07",5)~+ ~Sure, why not? I'll give it a try.~ GOTO L_17
       +~NumItemsParty("h_misc07",4)~+ ~Sure, why not? I'll give it a try.~ GOTO L_18
END

IF ~~ THEN BEGIN L_15
   SAY ~Very good. I shall call upon you if I am need of your services again.~
IF ~~ THEN DO ~
   SetGlobal("h_LotusQuest","GLOBAL",1)
   SetGlobal("h_ShadowWar","GLOBAL",5)
   SetGlobal("h_SpawnQuass","GLOBAL",1)
   SetGlobal("h_ExtraQuest","GLOBAL",4)
   AddJournalEntry(@330,QUEST)
   TakePartyItemAll("h_misc07")
   GiveGoldForce(3000)~ EXIT
END

IF ~~ THEN BEGIN L_16
   SAY ~Very good. I shall call upon you if I am need of your services again.~
IF ~~ THEN DO ~
   SetGlobal("h_LotusQuest","GLOBAL",2)
   SetGlobal("h_ShadowWar","GLOBAL",5)
   SetGlobal("h_SpawnQuass","GLOBAL",1)
   SetGlobal("h_ExtraQuest","GLOBAL",4)
   AddJournalEntry(@330,QUEST)
   TakePartyItemAll("h_misc07")
   GiveGoldForce(2400)~ EXIT
END

IF ~~ THEN BEGIN L_17
   SAY ~Very good. Expand your consciousness and let the lotus take hold.~
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
   SetGlobal("h_SpawnQuass","GLOBAL",1)
   SetGlobal("h_ExtraQuest","GLOBAL",4)
   SetGlobal("h_LotusCutscene","GLOBAL",1)
   AddJournalEntry(@330,QUEST)
   TakePartyItemAll("h_misc07")
   DestroyItem("h_misc07")
   GiveGoldForce(3000)~ EXIT
END

IF ~~ THEN BEGIN L_18
   SAY ~Very good. Expand your consciousness and let the lotus take hold.~
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
   SetGlobal("h_SpawnQuass","GLOBAL",1)
   SetGlobal("h_ExtraQuest","GLOBAL",4)
   SetGlobal("h_LotusCutscene","GLOBAL",1)
   AddJournalEntry(@330,QUEST)
   TakePartyItemAll("h_misc07")
   DestroyItem("h_misc07")
   GiveGoldForce(2400)~ EXIT
END

IF WEIGHT #-1 ~Global("h_LotusCutscene","GLOBAL",1)~ THEN BEGIN L_19
   SAY ~Whoa. I could have sworn I was just talking to an elephant...~
IF ~~ THEN DO ~
   SetGlobal("h_LotusCutscene","GLOBAL",0)~ EXIT
END

END

