APPEND GELLAN

IF WEIGHT #-1 ~PartyHasItem("h_misc11")~ THEN BEGIN EURO_1
   SAY @5400 IF ~~ THEN GOTO EURO_2
END

IF ~~ THEN BEGIN EURO_2
   SAY @5401
       ++ @5402 GOTO EURO_3
END

IF ~~ THEN BEGIN EURO_3
   SAY @5403
       ++ @5404 GOTO EURO_4
END

IF ~~ THEN BEGIN EURO_4
   SAY @5405
       ++ @5406 GOTO EURO_5
       ++ @5407 GOTO EURO_6
END

IF ~~ THEN BEGIN EURO_5
   SAY @5408
IF ~~ THEN DO ~
   AddJournalEntry(@428,QUEST)
   TakePartyItem("h_misc11")
   DestroyItem("h_misc11")
   GiveItemCreate("h_misc10",LastTalkedToBy,0,0,0)
   ReputationInc(1)~ EXIT
END

IF ~~ THEN BEGIN EURO_6
   SAY @5409
IF ~~ THEN DO ~
   AddJournalEntry(@428,QUEST)
   TakePartyItem("h_misc11")
   DestroyItem("h_misc11")
   GiveItemCreate("h_misc10",LastTalkedToBy,0,0,0)
   GiveGoldForce(25)~ EXIT
END

END















