APPEND Karp

IF ~~ THEN BEGIN THREAT_1
   SAY @6800
       ++ @6801 GOTO THREAT_2
       ++ @6802 GOTO THREAT_3
END

IF ~~ THEN BEGIN THREAT_2
   SAY @6803
IF ~~ THEN DO
   ~AddJournalEntry(@316,QUEST)
   GiveItem("h_misc17",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)
   GiveItem("h_misc06",LastTalkedToBy)
   ReputationInc(-1)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN THREAT_3
   SAY @6804
IF ~~ THEN DO
   ~AddJournalEntry(@316,QUEST)
   GiveItem("h_misc17",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)
   ReputationInc(-1)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN BLACKMAIL_1
   SAY @6805
       ++ @6806 GOTO BLACKMAIL_2
       ++ @6807 GOTO BLACKMAIL_3
END

IF ~~ THEN BEGIN BLACKMAIL_2
   SAY @6808
       ++ @6801 GOTO THREAT_2
       ++ @6802 GOTO THREAT_3
END

IF ~~ THEN BEGIN BLACKMAIL_3
   SAY @6809
       ++ @6810 GOTO BLACKMAIL_2
       ++ @6811 GOTO BLACKMAIL_4
END

IF ~~ THEN BEGIN BLACKMAIL_4
   SAY @6812
IF ~~ THEN DO ~
   SetGlobal("h_KarpWork","GLOBAL",1)
   AddJournalEntry(@316,QUEST)
   AddJournalEntry(@318,QUEST)
   GiveItem("h_misc17",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN CHARM_1
   SAY @6813
       ++ @6814 GOTO CHARM_4
       ++ @6815 GOTO CHARM_3
       ++ @6816 GOTO CHARM_2
       ++ @6817 GOTO CHARM_4
       ++ @6818 GOTO THREAT_1
END

IF ~~ THEN BEGIN CHARM_2
   SAY @6819
       +~CheckStatGT(Player1,17,CHR)~+ @6820 GOTO CHARM_3.5
       +~CheckStatLT(Player1,18,CHR)~+ @6820 GOTO CHARM_3
       ++ @6821 GOTO CHARM_4
       ++ @6818 GOTO THREAT_1
END

IF ~~ THEN BEGIN CHARM_3
   SAY @6822 IF ~~ THEN GOTO CHARM_4
END

IF ~~ THEN BEGIN CHARM_3.5
   SAY @6822 IF ~~ THEN GOTO CHARM_6.5
END

IF ~~ THEN BEGIN CHARM_4
   SAY @6823
       ++ @6824 GOTO CHARM_5
       ++ @6825 GOTO CHARM_5
       ++ @6826 GOTO CHARM_5
       ++ @6827 GOTO CHARM_5
       ++ @6828 GOTO CHARM_5
       ++ @6829 GOTO CHARM_6
       ++ @6830 GOTO CHARM_5
END

IF ~~ THEN BEGIN CHARM_5
   SAY @6831
       ++ @6818 GOTO THREAT_1
       ++ @6832 GOTO BLACKMAIL_1
END

IF ~~ THEN BEGIN CHARM_6
   SAY @6833 IF ~~ THEN GOTO CHARM_7
END

IF ~~ THEN BEGIN CHARM_6.5
   SAY @6834 IF ~~ THEN GOTO CHARM_7
END

IF ~~ THEN BEGIN CHARM_7
   SAY @6835
       ++ @6836 GOTO CHARM_8
       ++ @6837 GOTO CHARM_9
END

IF ~~ THEN BEGIN CHARM_8
   SAY @6838
IF ~~ THEN DO ~
   SetGlobal("h_KarpWork","GLOBAL",1)
   AddJournalEntry(@316,QUEST)
   AddJournalEntry(@318,QUEST)
   GiveItem("h_misc17",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN CHARM_9
   SAY @6839
IF ~~ THEN DO ~
   AddJournalEntry(@316,QUEST)
   GiveItem("h_misc17",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)
   EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~True() Global("h_KarpWork","GLOBAL",1)~ THEN BEGIN JOB_0
   SAY @6840
       ++ @6841 EXIT
END

IF WEIGHT #-2 ~True() Global("h_KarpWork","GLOBAL",2)~ THEN BEGIN JOB_1
   SAY @6840
       ++ @6842 GOTO JOB_2
END

IF ~~ THEN BEGIN JOB_2
   SAY @6843
IF ~~ THEN DO ~
   AddJournalEntry(@320,QUEST_DONE)
   GiveItem("h_misc06",LastTalkedToBy)
   AddExperienceParty(300)
   EscapeArea()~ EXIT
END

END

EXTEND_TOP KARP 0
   +~Global("h_RigaldoQuest","GLOBAL",7)~+ @6844 GOTO THREAT_1
   +~Global("h_RigaldoQuest","GLOBAL",7)~+ @6845 GOTO BLACKMAIL_1
   +~Global("h_RigaldoQuest","GLOBAL",7)~+ @6846 GOTO CHARM_1
END