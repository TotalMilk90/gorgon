BEGIN h_danikd

IF ~Global("h_ThiefBook","GLOBAL",0)~ THEN BEGIN 0
   SAY @3600
       ++ @3601 EXIT
       +~Class([PC],THIEF_ALL)~+ @3602 GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @3603 IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @3604 IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @3605 IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @3606 IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @3607
       ++ @3608 GOTO 7
END

IF ~~ THEN BEGIN 6
   SAY @3609
IF ~~ THEN DO ~
   SetGlobal("h_ThiefBook","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY @3610
       ++ @3611 GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @3612 IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @3613
IF ~~ THEN DO ~
   SetGlobal("h_ThiefBook","GLOBAL",1)~ EXIT
END


IF ~Global("h_ThiefBook","GLOBAL",1)~ THEN BEGIN 10
   SAY @3614
       ++ @3615 EXIT
       ++ @3616 GOTO INFO_0
       +~GlobalLT("h_BookNumber","GLOBAL",5)~+ @3617 GOTO DONATE_1
       +~GlobalGT("h_BookNumber","GLOBAL",4) GlobalLT("h_BookNumber","GLOBAL",11)~+ @3617 GOTO DONATE_2
       +~GlobalGT("h_BookNumber","GLOBAL",10) GlobalLT("h_BookNumber","GLOBAL",17)~+ @3617 GOTO DONATE_3
END


/////////////////////////////////
///////// FIRST SERIES //////////
/////////////////////////////////


IF ~~ THEN BEGIN DONATE_1
   SAY @3618
       +~Global("h_Book13","GLOBAL",0) PartyGoldGT(19999)~+ @3619 GOTO BOOK13_0
       +~Global("h_Book14","GLOBAL",0) PartyGoldGT(19999)~+ @3620 GOTO BOOK14_0
       +~Global("h_Book15","GLOBAL",0) PartyGoldGT(19999)~+ @3621 GOTO BOOK15_0
       +~Global("h_Book16","GLOBAL",0) PartyGoldGT(19999)~+ @3622 GOTO BOOK16_0
       +~Global("h_Book17","GLOBAL",0) PartyGoldGT(19999)~+ @3623 GOTO BOOK17_0
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK13_0
   SAY @3625
       ++ @3626 DO ~TakePartyGold(20000)~ GOTO BOOK13_1
       ++ @3627 GOTO DONATE_1
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK13_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book13","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book13",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK14_0
   SAY @3629
       ++ @3626 DO ~TakePartyGold(20000)~ GOTO BOOK14_1
       ++ @3627 GOTO DONATE_1
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK14_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book14","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book14",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK15_0
   SAY @3630
       ++ @3626 DO ~TakePartyGold(20000)~ GOTO BOOK15_1
       ++ @3627 GOTO DONATE_1
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK15_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book15","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book15",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK16_0
   SAY @3631
       ++ @3626 DO ~TakePartyGold(20000)~ GOTO BOOK16_1
       ++ @3627 GOTO DONATE_1
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK16_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book16","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book16",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK17_0
   SAY @3632
       ++ @3626 DO ~TakePartyGold(20000)~ GOTO BOOK17_1
       ++ @3627 GOTO DONATE_1
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK17_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book17","GLOBAL",0)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book17",LastTalkedToBy,0,0,0)~ EXIT
END


/////////////////////////////////
///////// SECOND SERIES /////////
/////////////////////////////////


IF ~~ THEN BEGIN DONATE_2
   SAY @3633
       +~Global("h_Book07","GLOBAL",0) PartyGoldGT(49999)~+ @3634 GOTO BOOK07_0
       +~Global("h_Book08","GLOBAL",0) PartyGoldGT(49999)~+ @3635 GOTO BOOK08_0
       +~Global("h_Book09","GLOBAL",0) PartyGoldGT(49999)~+ @3636 GOTO BOOK09_0
       +~Global("h_Book10","GLOBAL",0) PartyGoldGT(49999)~+ @3637 GOTO BOOK10_0
       +~Global("h_Book11","GLOBAL",0) PartyGoldGT(49999)~+ @3638 GOTO BOOK11_0
       +~Global("h_Book12","GLOBAL",0) PartyGoldGT(49999)~+ @3639 GOTO BOOK12_0
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK07_0
   SAY @3640
       ++ @3626 DO ~TakePartyGold(50000)~ GOTO BOOK07_1
       ++ @3627 GOTO DONATE_2
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK07_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book07","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book07",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK08_0
   SAY @3641
       ++ @3626 DO ~TakePartyGold(50000)~ GOTO BOOK08_1
       ++ @3627 GOTO DONATE_2
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK08_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book08","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book08",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK09_0
   SAY @3642
       ++ @3626 DO ~TakePartyGold(50000)~ GOTO BOOK09_1
       ++ @3627 GOTO DONATE_2
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK09_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book09","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book09",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK10_0
   SAY @3643
       ++ @3626 DO ~TakePartyGold(50000)~ GOTO BOOK10_1
       ++ @3627 GOTO DONATE_2
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK10_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book10","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book10",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK11_0
   SAY @3644
       ++ @3626 DO ~TakePartyGold(50000)~ GOTO BOOK11_1
       ++ @3627 GOTO DONATE_2
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK11_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book11","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book11",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK12_0
   SAY @3645
       ++ @3626 DO ~TakePartyGold(50000)~ GOTO BOOK12_1
       ++ @3627 GOTO DONATE_2
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK12_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book12","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book12",LastTalkedToBy,0,0,0)~ EXIT
END


/////////////////////////////////
///////// THIRD SERIES //////////
/////////////////////////////////


IF ~~ THEN BEGIN DONATE_3
   SAY @3646
       +~Global("h_Book01","GLOBAL",0) PartyGoldGT(99999)~+ @3647 GOTO BOOK01_0
       +~Global("h_Book02","GLOBAL",0) PartyGoldGT(99999)~+ @3648 GOTO BOOK02_0
       +~Global("h_Book03","GLOBAL",0) PartyGoldGT(99999)~+ @3649 GOTO BOOK03_0
       +~Global("h_Book04","GLOBAL",0) PartyGoldGT(99999)~+ @3650 GOTO BOOK04_0
       +~Global("h_Book05","GLOBAL",0) PartyGoldGT(99999)~+ @3651 GOTO BOOK05_0
       +~Global("h_Book06","GLOBAL",0) PartyGoldGT(99999)~+ @3652 GOTO BOOK06_0
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK01_0
   SAY @3653
       ++ @3626 DO ~TakePartyGold(100000)~ GOTO BOOK01_1
       ++ @3627 GOTO DONATE_3
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK01_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book01","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book01",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK02_0
   SAY @3654
       ++ @3626 DO ~TakePartyGold(100000)~ GOTO BOOK02_1
       ++ @3627 GOTO DONATE_3
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK02_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book02","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book02",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK03_0
   SAY @3655
       ++ @3626 DO ~TakePartyGold(100000)~ GOTO BOOK03_1
       ++ @3627 GOTO DONATE_3
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK03_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book03","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book03",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK04_0
   SAY @3656
       ++ @3626 DO ~TakePartyGold(100000)~ GOTO BOOK04_1
       ++ @3627 GOTO DONATE_3
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK04_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book04","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book04",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK05_0
   SAY @3657
       ++ @3626 DO ~TakePartyGold(100000)~ GOTO BOOK05_1
       ++ @3627 GOTO DONATE_3
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK05_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book05","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book05",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK06_0
   SAY @3658
       ++ @3626 DO ~TakePartyGold(100000)~ GOTO BOOK06_1
       ++ @3627 GOTO DONATE_3
       ++ @3624 EXIT
END

IF ~~ THEN BEGIN BOOK06_1
   SAY @3628
IF ~~ THEN DO ~
   SetGlobal("h_Book06","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book06",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN INFO_0
   SAY @3659 IF ~~ THEN GOTO INFO_1
END

IF ~~ THEN BEGIN INFO_1
   SAY @3660 IF ~~ THEN GOTO INFO_2
END

IF ~~ THEN BEGIN INFO_2
   SAY @3661 IF ~~ THEN GOTO INFO_3
END

IF ~~ THEN BEGIN INFO_3
   SAY @3662 IF ~~ THEN GOTO INFO_4
END

IF ~~ THEN BEGIN INFO_4
   SAY @3663
       ++ ~I'd like to ask you something else.~ GOTO 10
       ++ @3624 EXIT
END

IF WEIGHT #-1 ~Global("h_BookNumber","GLOBAL",17) Gender(Player1,MALE)~ THEN BEGIN ENDMALE_0
   SAY @3664 IF ~~ THEN GOTO ENDMALE_1
END

IF ~~ THEN BEGIN ENDMALE_1
   SAY @3665 IF ~~ THEN GOTO ENDMALE_2
END

IF ~~ THEN BEGIN ENDMALE_2
   SAY @3666
IF ~~ THEN DO ~
   GiveItemCreate("h_sw1h03",LastTalkedToBy,0,0,0)
   EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~Global("h_BookNumber","GLOBAL",17) Gender(Player1,FEMALE)~ THEN BEGIN ENDFEMALE_0
   SAY @3664 IF ~~ THEN GOTO ENDFEMALE_1
END

IF ~~ THEN BEGIN ENDFEMALE_1
   SAY @3665 IF ~~ THEN GOTO ENDFEMALE_2
END

IF ~~ THEN BEGIN ENDFEMALE_2
   SAY @3667
IF ~~ THEN DO ~
   GiveItemCreate("h_sw1h03",LastTalkedToBy,0,0,0)
   EscapeArea()~ EXIT
END








