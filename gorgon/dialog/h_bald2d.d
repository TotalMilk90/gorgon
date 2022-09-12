BEGIN h_bald2d

IF ~Global("h_BaldwinQuest","GLOBAL",10)~ THEN BEGIN FINAL_0
   SAY @1800 IF ~~ THEN GOTO FINAL_1
END

IF ~~ THEN BEGIN FINAL_1
   SAY @1801
       ++ @1802 GOTO FINAL_2
       ++ @1803 GOTO FINAL_6
       ++ @1804 GOTO FINAL_7
END

IF ~~ THEN BEGIN FINAL_2
   SAY @1805 IF ~~ THEN GOTO FINAL_4
END
/*
IF ~~ THEN BEGIN FINAL_3
   SAY ~~
END
*/
IF ~~ THEN BEGIN FINAL_4
   SAY @1806 IF ~~ THEN GOTO FINAL_5
END

IF ~~ THEN BEGIN FINAL_5
   SAY @1807 IF ~~ THEN GOTO FINAL_9
END

IF ~~ THEN BEGIN FINAL_6
   SAY @1808 IF ~~ THEN GOTO FINAL_8
END

IF ~~ THEN BEGIN FINAL_7
   SAY @1809 IF ~~ THEN GOTO FINAL_8
END

IF ~~ THEN BEGIN FINAL_8
   SAY @1810 IF ~~ THEN GOTO FINAL_9
END

IF ~~ THEN BEGIN FINAL_9
   SAY @1811
IF ~~ THEN DO ~
   CreateCreature("h_sthiec",[402.156],S)
   CreateCreature("h_richac",[331.351],E)
   CreateCreature("h_sthiec",[536.474],N)
   CreateCreature("h_sthiec",[752.407],W)
   SetGlobal("h_SpawnRichard","GLOBAL",1)
   SetGlobal("h_BaldwinQuest","GLOBAL",11)~ EXIT
END


CHAIN
   IF ~Global("h_BaldwinQuest","GLOBAL",9)~ THEN h_bald2d 0
@1812
   == NOBL10
@1813
   == h_bald2d
@1814
   =
@1815
   == NOBL10
@1816
   == h_bald2d
@1817
   DO ~
      Kill("NOBL10")
      SetGlobal("h_BaldwinQuest","GLOBAL",10) ~
EXIT





