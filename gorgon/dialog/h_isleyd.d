BEGIN h_isleyd

IF ~Global("h_MerediaQuest","GLOBAL",3)~ THEN BEGIN 1
   SAY @6600
       ++ @6601 GOTO 2
       ++ @6602 GOTO 2
       ++ @6603 GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @6604
       ++ @6605 GOTO 3
       ++ @6606 GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @6607
       +~CheckStatGT(Player1,17,DEX) HasItemCategory(Player1,"BOW",0)~+ @6608
       DO ~Kill("h_isleyc") AddExperienceParty(250)~ EXIT
       +~CheckStatGT(Player1,17,DEX) HasItemCategory(Player1,"XBOW",0)~+ @6609
       DO ~Kill("h_isleyc") AddExperienceParty(250)~ EXIT
       ++ @6610 GOTO 4
       +~CheckStatLT(Player1,18,CHR)~+ @6611 GOTO 4
       +~CheckStatGT(Player1,17,CHR)~+ @6611  GOTO 5
       ++ @6612 GOTO 7
END

IF ~~ THEN BEGIN 4
   SAY @6613
IF ~~ THEN DO ~
   Kill("h_ilenac")
   SetGlobal("h_IlenaDied","GLOBAL",1)
   AddJournalEntry(@713,QUEST)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
   SAY @6614
IF ~~ THEN DO ~
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY @6615
       ++ @6616 GOTO 8
       ++ @6617 GOTO 8
       ++ @6618 GOTO 4
END

IF ~~ THEN BEGIN 8
   SAY @6619 IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @6620
       ++ @6621 GOTO 10
       ++ @6622 GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY @6623
IF ~~ THEN DO ~
   Face(N)
   Kill("h_ilenac")
   SetGlobal("h_IlenaDied","GLOBAL",1)
   AddJournalEntry(@713,QUEST)
   Enemy()~ EXIT
END


CHAIN
   IF ~Global("h_MerediaQuest","GLOBAL",2)~ THEN h_isleyd 0
@6624
   =
@6625
   =
@6626
   == h_ilenad
@6627
   == h_isleyd
@6628
   =
@6629
   == h_ilenad
@6630
   == h_isleyd
@6631
   DO ~
      SetGlobal("h_MerediaQuest","GLOBAL",3)
      SetGlobal("h_IsleyDialog","GLOBAL",1)~
EXIT
