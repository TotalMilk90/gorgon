BEGIN h_gilbad

IF ~Global("h_GilbaldQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY @5800 IF ~~ THEN EXIT
END

IF ~Global("h_GilbaldQuest","GLOBAL",6)~ THEN BEGIN 0
   SAY @5800 IF ~~ THEN EXIT
END

IF ~GlobalGT("h_GilbaldQuest","GLOBAL",1) GlobalLT("h_GilbaldQuest","GLOBAL",6)~ THEN BEGIN 2
   SAY @5801
       ++ @5802 EXIT
       +~Global("h_KilledXevec","GLOBAL",1)~+ @5803 GOTO 3
       +~Global("h_KilledXevec","GLOBAL",2)~+ @5804 GOTO 4
       +~Global("h_DidNotKillXevec","GLOBAL",1)~+ @5804 GOTO 4
END

IF ~~ THEN BEGIN 3
   SAY @5805
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",6)
   AddJournalEntry(@615,QUEST_DONE)
   TakePartyItemAll("h_misc15")
   DestroyItem("h_misc15")
   AddExperienceParty(300)
   GiveGoldForce(400)~ EXIT
END

IF ~~ THEN BEGIN 4
   SAY @5806
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",6)
   AddJournalEntry(@619,QUEST_DONE)
   TakePartyItemAll("h_misc15")
   DestroyItem("h_misc15")
   DestroyItem("h_misc15")
   AddExperienceParty(1000)
   GiveGoldForce(800)~ EXIT
END



CHAIN
   IF ~Global("h_GilbaldQuest","GLOBAL",1)~ THEN h_gilbad 0
@5807
   == h_game2d
@5808
   == h_gilbad
@5809
   == h_game2d
@5810
   =
@5811
   == h_gilbad
@5812
   == h_game2d
@5813
   == h_gilbad
@5814
   =
@5815
   == h_game2d
@5816
   == h_gilbad
@5817
   =
@5818
   =
@5819
   DO ~
      SetGlobal("h_GilbaldQuest","GLOBAL",2)
      AddJournalEntry(@610,QUEST)~
EXIT



/*
IF ~~ THEN BEGIN 1
   SAY ~If you find success in your discoveries then I shall grant you a substantial reward. What do you say?~
       ++ ~Sure, I'll look into for you.~ DO ~SetGlobal("h_GilbaldQuest","GLOBAL",2) AddJournalEntry(@610,QUEST)~ EXIT
       ++ ~Sorry, but I'm not interested.~ DO ~SetGlobal("h_GilbaldQuest","GLOBAL",2)~ EXIT
END
*/

