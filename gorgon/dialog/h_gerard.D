APPEND NOBL10

IF WEIGHT #-1 ~Global("h_GerardQuest","GLOBAL",0) Global("h_RigaldoQuest","GLOBAL",4) Global("h_GerardGoodQuest","GLOBAL",0)~ THEN BEGIN G_10
   SAY @5600
       ++ @5601 GOTO G_11
       ++ @5602 GOTO G_11
       ++ @5603 GOTO GOOD_1
END

IF ~~ THEN BEGIN G_11
   SAY @5604
       ++ @5605 GOTO G_14
       ++ @5606 GOTO G_14
       ++ @5607 GOTO G_14
       +~CheckStatGT(Player1,17,STR)~+ @5608 GOTO G_12
       ++ @5609 GOTO G_14
END

IF ~~ THEN BEGIN G_12
   SAY @5610 IF ~~ THEN GOTO G_13
END

IF ~~ THEN BEGIN G_13
   SAY @5611
IF ~~ THEN DO ~
   SetGlobal("h_GerardQuest","GLOBAL",2)
   AddJournalEntry(@313,QUEST)
   GiveItemCreate("h_misc05",LastTalkedToBy,0,0,0)
   ReputationInc(-1)
   MoveToPoint([612.327])~ EXIT
END

IF ~~ THEN BEGIN G_14
   SAY @5612
IF ~~ THEN DO ~
   SetGlobal("h_GuardsAttack","GLOBAL",1)
   SetGlobal("h_GerardQuest","GLOBAL",1)~ EXIT
END

IF WEIGHT #-1 ~Global("h_GerardQuest","GLOBAL",1)~ THEN BEGIN G_15
   SAY @5613
IF ~~ THEN DO ~
   SetGlobal("h_GerardQuest","GLOBAL",2)
   AddJournalEntry(@313,QUEST)
   GiveItemCreate("h_misc05",LastTalkedToBy,0,0,0)
   ReputationInc(-1)
   MoveToPoint([612.327])~ EXIT
END

IF WEIGHT #-1 ~Global("h_GerardQuest","GLOBAL",2)~ THEN BEGIN G_16
   SAY @5614 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GOOD_1
   SAY @5615
       ++ @5616 GOTO GOOD_2
       ++ @5617 GOTO G_14
       +~CheckStatGT(Player1,17,STR)~+ @5618 GOTO G_12
END

IF ~~ THEN BEGIN GOOD_2
   SAY @5619
IF ~~ THEN DO ~
   SetGlobal("h_GuardsAttack","GLOBAL",1)
   SetGlobal("h_GerardGoodQuest","GLOBAL",1)~ EXIT
END

IF WEIGHT #-1 ~Global("h_GerardGoodQuest","GLOBAL",1)~ THEN BEGIN GOOD_3
   SAY @5620
IF ~~ THEN DO ~
   SetGlobal("h_GerardQuest","GLOBAL",2)
   AddJournalEntry(@313,QUEST)
   GiveItemCreate("h_misc05",LastTalkedToBy,0,0,0)
   MoveToPoint([612.327])~ EXIT
END

END