BEGIN h_zedadd

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",13)~ THEN BEGIN WAR_0
   SAY @10800 IF ~~ THEN EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY @10801 IF ~~ THEN EXIT
END

IF ~GlobalGT("h_BaldwinQuest","GLOBAL",0)~ THEN BEGIN 1
   SAY @10802
       ++ @10803 EXIT
       +~Global("h_ZedaRiddle","GLOBAL",1)~+ @10804 GOTO RIDDLE_0
       +~Global("h_SecondRiddle","GLOBAL",1) Global("h_ZedaRiddle","GLOBAL",2)~+ @10805 GOTO SECOND_0
       +~Global("h_KarpWork","GLOBAL",1)~+ @10806 GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @10807
IF ~~ THEN DO ~
   SetGlobal("h_KarpWork","GLOBAL",2)
   AddJournalEntry(@319,QUEST)~ EXIT
END

IF ~~ THEN BEGIN RIDDLE_0
   SAY @10808 IF ~~ THEN GOTO RIDDLE_0.5
END

IF ~~ THEN BEGIN RIDDLE_0.5
   SAY @10809
       ++ @10810 GOTO RIDDLE_1
       ++ @10811 EXIT
END

IF ~~ THEN BEGIN RIDDLE_1
   SAY @10812 IF ~~ THEN GOTO RIDDLE_1.5
END

IF ~~ THEN BEGIN RIDDLE_1.5
   SAY @10813
       +~PartyGoldGT(399)~+ @10814 GOTO RIDDLE_3
       +~PartyGoldLT(400)~+ @10815 GOTO RIDDLE_2
       ++ @10811 EXIT
END

IF ~~ THEN BEGIN RIDDLE_2
   SAY @10816 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RIDDLE_3
   SAY @10817 IF ~~ THEN GOTO RIDDLE_4
END

IF ~~ THEN BEGIN RIDDLE_4
   SAY @10818
       ++ @10819 GOTO WRONG_1
       ++ @10820 GOTO WRONG_1
       ++ @10821 GOTO WRONG_1
       ++ @10822 DO ~AddExperienceParty(50)~ GOTO CORRECT_1
       ++ @10823 GOTO WRONG_1
END

IF ~~ THEN BEGIN WRONG_1
   SAY @10824
IF ~~ THEN DO ~
   TakePartyGold(100)~ GOTO RIDDLE_5
END

IF ~~ THEN BEGIN CORRECT_1
   SAY @10825
       +~Global("h_LeftRiddle","GLOBAL",0)~+ @10826 DO ~SetGlobal("h_LeftRiddle","GLOBAL",1) GiveItemCreate("AROW01",LastTalkedToBy,0,0,0)~ GOTO PRIZE_0
       +~Global("h_RightRiddle","GLOBAL",0)~+ @10827 DO ~SetGlobal("h_RightRiddle","GLOBAL",1) GiveItemCreate("MISC59",LastTalkedToBy,0,0,0)~ GOTO PRIZE_0
       +~Global("h_TopRiddle","GLOBAL",0)~+ @10828 DO ~SetGlobal("h_TopRiddle","GLOBAL",1) GiveItemCreate("POTN32",LastTalkedToBy,0,0,0)~ GOTO PRIZE_0
       +~Global("h_FrontRiddle","GLOBAL",0)~+ @10829 DO ~SetGlobal("h_FrontRiddle","GLOBAL",1) GiveItemCreate("SCRL76",LastTalkedToBy,0,0,0)~ GOTO PRIZE_0
       +~Global("h_SecretRiddle","GLOBAL",0)~+ @10830 DO ~SetGlobal("h_SecretRiddle","GLOBAL",1) GiveGoldForce(1)~ GOTO PRIZE_0
END

IF ~~ THEN BEGIN PRIZE_0
   SAY @10831 IF ~~ THEN GOTO RIDDLE_5
END

IF ~~ THEN BEGIN RIDDLE_5
   SAY @10832
       ++ @10833 DO ~AddExperienceParty(100)~ GOTO CORRECT_2
       ++ @10834 GOTO WRONG_2
       ++ @10835 GOTO WRONG_2
       ++ @10836 GOTO WRONG_2
END

IF ~~ THEN BEGIN WRONG_2
   SAY @10837
IF ~~ THEN DO ~
   TakePartyGold(100)~ GOTO RIDDLE_6
END

IF ~~ THEN BEGIN CORRECT_2
   SAY @10838
       +~Global("h_LeftRiddle","GLOBAL",0)~+ @10826 DO ~SetGlobal("h_LeftRiddle","GLOBAL",1) GiveItemCreate("AROW01",LastTalkedToBy,0,0,0)~ GOTO PRIZE_1
       +~Global("h_RightRiddle","GLOBAL",0)~+ @10827 DO ~SetGlobal("h_RightRiddle","GLOBAL",1) GiveItemCreate("MISC59",LastTalkedToBy,0,0,0)~ GOTO PRIZE_1
       +~Global("h_TopRiddle","GLOBAL",0)~+ @10828 DO ~SetGlobal("h_TopRiddle","GLOBAL",1) GiveItemCreate("POTN32",LastTalkedToBy,0,0,0)~ GOTO PRIZE_1
       +~Global("h_FrontRiddle","GLOBAL",0)~+ @10829 DO ~SetGlobal("h_FrontRiddle","GLOBAL",1) GiveItemCreate("SCRL76",LastTalkedToBy,0,0,0)~ GOTO PRIZE_1
       +~Global("h_SecretRiddle","GLOBAL",0)~+ @10830 DO ~SetGlobal("h_SecretRiddle","GLOBAL",1) GiveGoldForce(1)~ GOTO PRIZE_1
END

IF ~~ THEN BEGIN PRIZE_1
   SAY @10831 IF ~~ THEN GOTO RIDDLE_6
END

IF ~~ THEN BEGIN RIDDLE_6
   SAY @10839
       ++ @10840 GOTO WRONG_3
       ++ @10841 GOTO WRONG_3
       ++ @10842 GOTO WRONG_3
       ++ @10843 GOTO WRONG_3
       ++ @10844 GOTO WRONG_3
       ++ @10845 DO ~AddExperienceParty(150)~ GOTO CORRECT_3
       ++ @10846 GOTO WRONG_3
       ++ @10847 GOTO WRONG_3
       ++ @10848 GOTO WRONG_3
END

IF ~~ THEN BEGIN WRONG_3
   SAY @10849
IF ~~ THEN DO ~
   TakePartyGold(100)~ GOTO RIDDLE_7
END

IF ~~ THEN BEGIN CORRECT_3
   SAY @10850
       +~Global("h_LeftRiddle","GLOBAL",0)~+ @10826 DO ~SetGlobal("h_LeftRiddle","GLOBAL",1) GiveItemCreate("AROW01",LastTalkedToBy,0,0,0)~ GOTO PRIZE_2
       +~Global("h_RightRiddle","GLOBAL",0)~+ @10827 DO ~SetGlobal("h_RightRiddle","GLOBAL",1) GiveItemCreate("MISC59",LastTalkedToBy,0,0,0)~ GOTO PRIZE_2
       +~Global("h_TopRiddle","GLOBAL",0)~+ @10828 DO ~SetGlobal("h_TopRiddle","GLOBAL",1) GiveItemCreate("POTN32",LastTalkedToBy,0,0,0)~ GOTO PRIZE_2
       +~Global("h_FrontRiddle","GLOBAL",0)~+ @10829 DO ~SetGlobal("h_FrontRiddle","GLOBAL",1) GiveItemCreate("SCRL76",LastTalkedToBy,0,0,0)~ GOTO PRIZE_2
       +~Global("h_SecretRiddle","GLOBAL",0)~+ @10830 DO ~SetGlobal("h_SecretRiddle","GLOBAL",1) GiveGoldForce(1)~ GOTO PRIZE_2
END

IF ~~ THEN BEGIN PRIZE_2
   SAY @10831 IF ~~ THEN GOTO RIDDLE_7
END

IF ~~ THEN BEGIN RIDDLE_7
   SAY @10851
       ++ @10852 GOTO WRONG_4
       ++ @10853 GOTO WRONG_4
       ++ @10854 GOTO WRONG_4
       ++ @10855 GOTO WRONG_4
       ++ @10856 GOTO WRONG_4
       ++ @10857 GOTO WRONG_4
       ++ @10858 GOTO WRONG_4
       ++ @10859 DO ~AddExperienceParty(200)~ GOTO CORRECT_4
       ++ @10860 GOTO WRONG_4
END

IF ~~ THEN BEGIN WRONG_4
   SAY @10861
IF ~~ THEN DO ~
   TakePartyGold(100)~ GOTO END_0
END

IF ~~ THEN BEGIN CORRECT_4
   SAY @10862
       +~Global("h_LeftRiddle","GLOBAL",0)~+ @10826 DO ~SetGlobal("h_LeftRiddle","GLOBAL",1) GiveItemCreate("AROW01",LastTalkedToBy,0,0,0)~ GOTO END_0
       +~Global("h_RightRiddle","GLOBAL",0)~+ @10827 DO ~SetGlobal("h_RightRiddle","GLOBAL",1) GiveItemCreate("MISC59",LastTalkedToBy,0,0,0)~ GOTO END_0
       +~Global("h_TopRiddle","GLOBAL",0)~+ @10828 DO ~SetGlobal("h_TopRiddle","GLOBAL",1) GiveItemCreate("POTN32",LastTalkedToBy,0,0,0)~ GOTO END_0
       +~Global("h_FrontRiddle","GLOBAL",0)~+ @10829 DO ~SetGlobal("h_FrontRiddle","GLOBAL",1) GiveItemCreate("SCRL76",LastTalkedToBy,0,0,0)~ GOTO END_0
       +~Global("h_SecretRiddle","GLOBAL",0)~+ @10830 DO ~SetGlobal("h_SecretRiddle","GLOBAL",1) GiveGoldForce(1)~ GOTO END_0
END

IF ~~ THEN BEGIN END_0
   SAY @10863
       ++ @10864 DO ~SetGlobal("h_ZedaRiddle","GLOBAL",2)~ EXIT
       ++ @10865 DO ~SetGlobal("h_ZedaRiddle","GLOBAL",2)~ EXIT
       ++ @10866 DO ~SetGlobal("h_ZedaRiddle","GLOBAL",2)~ EXIT
END


       //////////////////////
       ////////Second////////
       //////////////////////


IF ~~ THEN BEGIN SECOND_0
   SAY @10867 IF ~~ THEN GOTO SECOND_1
END
                                                                                                   
IF ~~ THEN BEGIN SECOND_1
   SAY @10868
       +~PartyGoldGT(799)~+ @10869 GOTO SECOND_3
       +~PartyGoldLT(800)~+ @10815 GOTO SECOND_2
       ++ @10870 EXIT
END

IF ~~ THEN BEGIN SECOND_2
   SAY @10871 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SECOND_3
   SAY @10872 IF ~~ THEN GOTO SECOND_4
END

IF ~~ THEN BEGIN SECOND_4
   SAY @10873
       ++ @10874 GOTO NO_0
       ++ @10875 DO ~AddExperienceParty(100)~ GOTO YES_0
       ++ @10876 GOTO NO_0
       ++ @10877 GOTO NO_0
       ++ @10878 GOTO NO_0
       ++ @10879 GOTO NO_0
       ++ @10880 GOTO NO_0
END

IF ~~ THEN BEGIN NO_0
   SAY @10881
IF ~~ THEN DO ~
   TakePartyGold(200)~ GOTO SECOND_6
END

IF ~~ THEN BEGIN YES_0
   SAY @10882
       +~Global("h_LeftSecond","GLOBAL",0)~+ @10826 DO ~SetGlobal("h_LeftSecond","GLOBAL",1) GiveItemCreate("RING11",LastTalkedToBy,0,0,0)~ GOTO SECOND_5
       +~Global("h_RightSecond","GLOBAL",0)~+ @10827 DO ~SetGlobal("h_RightSecond","GLOBAL",1) GiveGoldForce(1)~ GOTO SECOND_5
       +~Global("h_TopSecond","GLOBAL",0)~+ @10828 DO ~SetGlobal("h_TopSecond","GLOBAL",1) GiveItemCreate("BELT01",LastTalkedToBy,0,0,0)~ GOTO SECOND_5
       +~Global("h_FrontSecond","GLOBAL",0)~+ @10829 DO ~SetGlobal("h_FrontSecond","GLOBAL",1) GiveItemCreate("BOOK21",LastTalkedToBy,0,0,0)~ GOTO SECOND_5
       +~Global("h_SecretSecond","GLOBAL",0)~+ @10830 DO ~SetGlobal("h_SecretSecond","GLOBAL",1) GiveItemCreate("DART01",LastTalkedToBy,0,0,0)~ GOTO SECOND_5
END

IF ~~ THEN BEGIN SECOND_5
   SAY @10883 IF ~~ THEN GOTO SECOND_6
END

IF ~~ THEN BEGIN SECOND_6
   SAY @10884
       ++ @10885 GOTO NO_1
       ++ @10886 GOTO NO_1
       ++ @10887 GOTO NO_1
       ++ @10888 GOTO NO_1
       ++ @10855 DO ~AddExperienceParty(200)~ GOTO YES_1
       ++ @10889 GOTO NO_1
       ++ @10890 GOTO NO_1
       ++ @10891 GOTO NO_1
END

IF ~~ THEN BEGIN NO_1
   SAY @10892
IF ~~ THEN DO ~
   TakePartyGold(200)~ GOTO SECOND_8
END

IF ~~ THEN BEGIN YES_1
   SAY @10893
       +~Global("h_LeftSecond","GLOBAL",0)~+ @10826 DO ~SetGlobal("h_LeftSecond","GLOBAL",1) GiveItemCreate("RING11",LastTalkedToBy,0,0,0)~ GOTO SECOND_7
       +~Global("h_RightSecond","GLOBAL",0)~+ @10827 DO ~SetGlobal("h_RightSecond","GLOBAL",1) GiveGoldForce(1)~ GOTO SECOND_7
       +~Global("h_TopSecond","GLOBAL",0)~+ @10828 DO ~SetGlobal("h_TopSecond","GLOBAL",1) GiveItemCreate("BELT01",LastTalkedToBy,0,0,0)~ GOTO SECOND_7
       +~Global("h_FrontSecond","GLOBAL",0)~+ @10829 DO ~SetGlobal("h_FrontSecond","GLOBAL",1) GiveItemCreate("BOOK21",LastTalkedToBy,0,0,0)~ GOTO SECOND_7
       +~Global("h_SecretSecond","GLOBAL",0)~+ @10830 DO ~SetGlobal("h_SecretSecond","GLOBAL",1) GiveItemCreate("DART01",LastTalkedToBy,0,0,0)~ GOTO SECOND_7
END

IF ~~ THEN BEGIN SECOND_7
   SAY @10894 IF ~~ THEN GOTO SECOND_8
END

IF ~~ THEN BEGIN SECOND_8
   SAY @10895
       ++ @10896 GOTO NO_2
       ++ @10897 GOTO NO_2
       ++ @10898 GOTO NO_2
       ++ @10899 GOTO NO_2
       ++ @10900 GOTO NO_2
       ++ @10901 DO ~AddExperienceParty(300)~ GOTO YES_2
END

IF ~~ THEN BEGIN NO_2
   SAY @10902
IF ~~ THEN DO ~
   TakePartyGold(200)~ GOTO SECOND_10
END

IF ~~ THEN BEGIN YES_2
   SAY @10903
       +~Global("h_LeftSecond","GLOBAL",0)~+ @10826 DO ~SetGlobal("h_LeftSecond","GLOBAL",1) GiveItemCreate("RING11",LastTalkedToBy,0,0,0)~ GOTO SECOND_9
       +~Global("h_RightSecond","GLOBAL",0)~+ @10827 DO ~SetGlobal("h_RightSecond","GLOBAL",1) GiveGoldForce(1)~ GOTO SECOND_9
       +~Global("h_TopSecond","GLOBAL",0)~+ @10828 DO ~SetGlobal("h_TopSecond","GLOBAL",1) GiveItemCreate("BELT01",LastTalkedToBy,0,0,0)~ GOTO SECOND_9
       +~Global("h_FrontSecond","GLOBAL",0)~+ @10829 DO ~SetGlobal("h_FrontSecond","GLOBAL",1) GiveItemCreate("BOOK21",LastTalkedToBy,0,0,0)~ GOTO SECOND_9
       +~Global("h_SecretSecond","GLOBAL",0)~+ @10830 DO ~SetGlobal("h_SecretSecond","GLOBAL",1) GiveItemCreate("DART01",LastTalkedToBy,0,0,0)~ GOTO SECOND_9
END

IF ~~ THEN BEGIN SECOND_9
   SAY @10894 IF ~~ THEN GOTO SECOND_10
END

IF ~~ THEN BEGIN SECOND_10
   SAY @10904
       ++ @10905 GOTO NO_3
       ++ @10906 GOTO NO_3
       ++ @10907 GOTO NO_3
       ++ @10908 GOTO NO_3
       ++ @10909 GOTO NO_3
       ++ @10910 GOTO NO_3
       ++ @10911 DO ~AddExperienceParty(400)~ GOTO YES_3
       ++ @10912 GOTO NO_3
END

IF ~~ THEN BEGIN NO_3
   SAY @10913
IF ~~ THEN DO ~
   TakePartyGold(200)~ GOTO SECOND_11
END

IF ~~ THEN BEGIN YES_3
   SAY @10914
       +~Global("h_LeftSecond","GLOBAL",0)~+ @10826 DO ~SetGlobal("h_LeftSecond","GLOBAL",1) GiveItemCreate("RING11",LastTalkedToBy,0,0,0)~ GOTO SECOND_11
       +~Global("h_RightSecond","GLOBAL",0)~+ @10827 DO ~SetGlobal("h_RightSecond","GLOBAL",1) GiveGoldForce(1)~ GOTO SECOND_11
       +~Global("h_TopSecond","GLOBAL",0)~+ @10828 DO ~SetGlobal("h_TopSecond","GLOBAL",1) GiveItemCreate("BELT01",LastTalkedToBy,0,0,0)~ GOTO SECOND_11
       +~Global("h_FrontSecond","GLOBAL",0)~+ @10829 DO ~SetGlobal("h_FrontSecond","GLOBAL",1) GiveItemCreate("BOOK21",LastTalkedToBy,0,0,0)~ GOTO SECOND_11
       +~Global("h_SecretSecond","GLOBAL",0)~+ @10830 DO ~SetGlobal("h_SecretSecond","GLOBAL",1) GiveItemCreate("DART01",LastTalkedToBy,0,0,0)~ GOTO SECOND_11
END

IF ~~ THEN BEGIN SECOND_11
   SAY @10915
       ++ @10916 DO ~SetGlobal("h_SecondRiddle","GLOBAL",2)~ EXIT
       ++ @10866 DO ~SetGlobal("h_SecondRiddle","GLOBAL",2)~ EXIT
END