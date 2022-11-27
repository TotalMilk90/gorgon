BEGIN h_meredd

IF WEIGHT #-1 ~Global("h_MerediaQuest","GLOBAL",1)~ THEN BEGIN Q_0
   SAY @7800
       ++ @7801 GOTO Q_1
       ++ @7802 GOTO Q_1
       ++ @7803 GOTO Q_3
END

IF ~~ THEN BEGIN Q_1
   SAY @7804 IF ~~ THEN GOTO Q_2
END

IF ~~ THEN BEGIN Q_2
   SAY @7805
       ++ @7806 GOTO Q_4
       ++ @7803 GOTO Q_3
END

IF ~~ THEN BEGIN Q_3
   SAY @7807
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN Q_4
   SAY @7808
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",2)
   SetGlobal("h_SpawnGalatea","GLOBAL",1)
   AddJournalEntry(@710,QUEST)~ EXIT
END

IF WEIGHT #-2 ~GlobalGT("h_MerediaQuest","GLOBAL",1) GlobalLT("h_MerediaQuest","GLOBAL",4)~ THEN BEGIN Q_5
   SAY @7809
       ++ @7810 EXIT
       +~PartyHasItem("h_misc16")~+ @7811 GOTO Q_6
       +~Global("h_IlenaDied","GLOBAL",1)~+ @7812 GOTO DEAD_0
END

IF ~~ THEN BEGIN Q_6
   SAY @7813
IF ~~ THEN DO ~
   TakePartyItem("h_misc16")
   DestroyItem("h_misc16")~ GOTO Q_7
END

IF ~~ THEN BEGIN Q_7
   SAY @7814 IF ~~ THEN GOTO Q_8
END

IF ~~ THEN BEGIN Q_8
   SAY @7815 IF ~~ THEN GOTO Q_9
END

IF ~~ THEN BEGIN Q_9
   SAY @7816
IF ~~ THEN DO ~
   SetGlobal("h_SpawnIsley","GLOBAL",1)
   AddJournalEntry(@712,QUEST)~ EXIT
END

IF WEIGHT #-3 ~Global("h_MerediaQuest","GLOBAL",4)~ THEN BEGIN ALIVE_0
   SAY @7817 IF ~~ THEN GOTO ALIVE_1
END

IF ~~ THEN BEGIN ALIVE_1
   SAY @7818 IF ~~ THEN GOTO ALIVE_2
END

IF ~~ THEN BEGIN ALIVE_2
   SAY @7819
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",5)
   AddJournalEntry(@715,QUEST_DONE)
   AddExperienceParty(1000)
   GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN DEAD_0
   SAY @7820 IF ~~ THEN GOTO DEAD_1
END

IF ~~ THEN BEGIN DEAD_1
   SAY @7821
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",5)
   AddJournalEntry(@716,QUEST_DONE)
   AddExperienceParty(800)~ EXIT
END



IF ~Global("h_Meredia","GLOBAL",0) Global("h_EndMeredia","GLOBAL",0)~ THEN BEGIN 0
   SAY @7822 IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @7823
       ++ @7824 GOTO 2
       +~GlobalGT("h_BaldwinQuest","GLOBAL",0) PartyGoldGT(19)~+ @7825 GOTO 4
       +~Global("h_BaldwinQuest","GLOBAL",0) PartyGoldGT(39)~+ @7825 GOTO 3
       +~Global("h_GilbaldQuest","GLOBAL",3)~+ @7826 GOTO G_0
END

IF ~~ THEN BEGIN 2
   SAY @7827 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
   SAY @7828
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
   SAY @7828
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
   SAY @7829
IF ~~ THEN DO ~
   SetGlobal("h_EndMeredia","GLOBAL",0)~ EXIT
END

IF ~Global("h_Meredia","GLOBAL",1) Global("h_EndMeredia","GLOBAL",0)~ THEN BEGIN 20
   SAY @7830
       ++ @7831 GOTO 21
       ++ @7832 EXIT
       +~Global("h_GilbaldQuest","GLOBAL",3)~+ @7826 GOTO G_0
END

IF ~~ THEN BEGIN 21
   SAY @7828
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
   SAY @7833
       ++ @7834 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_1
       ++ @7835 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_3
       ++ @7836 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_4
       ++ @7837 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_7
END

IF ~~ THEN BEGIN G_1
   SAY @7838 IF ~~ THEN GOTO G_2
END

IF ~~ THEN BEGIN G_2
   SAY @7839
       ++ @7835 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_3
       ++ @7836 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_4
       ++ @7837 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_7
       +~GlobalGT("h_MerediaNumber","GLOBAL",3)~+ @7840 GOTO G_9
END

IF ~~ THEN BEGIN G_3
   SAY @7841
       ++ @7834 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_1
       ++ @7836 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_4
       ++ @7837 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_7
       +~GlobalGT("h_MerediaNumber","GLOBAL",3)~+ @7840 GOTO G_9
END

IF ~~ THEN BEGIN G_4
   SAY @7842 IF ~~ THEN GOTO G_5
END

IF ~~ THEN BEGIN G_5
   SAY @7843 IF ~~ THEN GOTO G_6
END

IF ~~ THEN BEGIN G_6
   SAY @7844
       ++ @7834 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_1
       ++ @7835 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_3
       ++ @7837 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_7
       +~GlobalGT("h_MerediaNumber","GLOBAL",3)~+ @7840 GOTO G_9
END

IF ~~ THEN BEGIN G_7
   SAY @7845 IF ~~ THEN GOTO G_8
END

IF ~~ THEN BEGIN G_8
   SAY @7846
       ++ @7834 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_1
       ++ @7835 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_3
       ++ @7836 DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_4
       +~GlobalGT("h_MerediaNumber","GLOBAL",3)~+ @7840 GOTO G_9
END

IF ~~ THEN BEGIN G_9
   SAY @7847
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",4)
   SetGlobal("h_SpawnXevec","GLOBAL",1)
   AddJournalEntry(@612,QUEST)~ EXIT
END



