BEGIN ~h_game2d~

IF WEIGHT #-1 ~Global("h_GilbaldQuest","GLOBAL",2)~ THEN BEGIN GOLD_0
   SAY @4800 IF ~~ THEN GOTO GOLD_1
END

IF ~~ THEN BEGIN GOLD_1
   SAY @4801 IF ~~ THEN GOTO GOLD_2
END

IF ~~ THEN BEGIN GOLD_2
   SAY @4802
       ++ @4803 DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_3
       ++ @4804 DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_6
       ++ @4805 DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_9
       +~GlobalGT("h_GamesNumber","GLOBAL",2)~+ @4806 GOTO GOLD_12
END

IF ~~ THEN BEGIN GOLD_3
   SAY @4807 IF ~~ THEN GOTO GOLD_4
END

IF ~~ THEN BEGIN GOLD_4
   SAY @4808 IF ~~ THEN GOTO GOLD_5
END

IF ~~ THEN BEGIN GOLD_5
   SAY @4809
       ++ @4804 DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_6
       ++ @4805 DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_9
       +~GlobalGT("h_GamesNumber","GLOBAL",2)~+ @4806 GOTO GOLD_12
END

IF ~~ THEN BEGIN GOLD_6
   SAY @4810 IF ~~ THEN GOTO GOLD_7
END

IF ~~ THEN BEGIN GOLD_7
   SAY @4811 IF ~~ THEN GOTO GOLD_8
END

IF ~~ THEN BEGIN GOLD_8
   SAY @4812
       ++ @4803 DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_3
       ++ @4805 DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_9
       +~GlobalGT("h_GamesNumber","GLOBAL",2)~+ @4806 GOTO GOLD_12
END

IF ~~ THEN BEGIN GOLD_9
   SAY @4813 IF ~~ THEN GOTO GOLD_10
END

IF ~~ THEN BEGIN GOLD_10
   SAY @4814 IF ~~ THEN GOTO GOLD_11
END

IF ~~ THEN BEGIN GOLD_11
   SAY @4815
       ++ @4803 DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_3
       ++ @4804 DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_6
       +~GlobalGT("h_GamesNumber","GLOBAL",2)~+ @4806 GOTO GOLD_12
END

IF ~~ THEN BEGIN GOLD_12
   SAY @4816
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",3)
   AddJournalEntry(@611,QUEST)
   GiveItemCreate("h_misc15",LastTalkedToBy,0,0,0)~ EXIT
END



IF ~  RandomNum(24,1)
~ THEN BEGIN 0
  SAY @4817
  IF ~  PartyGoldGT(9)
~ THEN REPLY @4818 DO ~TakePartyGold(10)
~ GOTO 1
  IF ~  PartyGoldGT(19)
~ THEN REPLY @4819 DO ~TakePartyGold(20)
~ GOTO 2
  IF ~  PartyGoldGT(49)
~ THEN REPLY @4820 DO ~TakePartyGold(50)
~ GOTO 3
  IF ~~ THEN REPLY @4821 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @4822
  IF ~~ THEN DO ~GiveGoldForce(200)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4823
  IF ~~ THEN DO ~GiveGoldForce(400)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4824
  IF ~~ THEN DO ~GiveGoldForce(1000)
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @4825
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @4826
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 6
  SAY @4817
  IF ~  PartyGoldGT(9)
~ THEN REPLY @4818 DO ~TakePartyGold(10)
~ GOTO 4
  IF ~  PartyGoldGT(19)
~ THEN REPLY @4819 DO ~TakePartyGold(20)
~ GOTO 4
  IF ~  PartyGoldGT(49)
~ THEN REPLY @4820 DO ~TakePartyGold(50)
~ GOTO 4
  IF ~~ THEN REPLY @4821 GOTO 5
END
