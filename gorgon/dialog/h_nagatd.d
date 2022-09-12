BEGIN h_nagatd

IF ~True()~ THEN BEGIN 0
   SAY @8000
       ++ @8001 GOTO 1
       ++ @8002 GOTO 8
       ++ @8003 GOTO 8
END

IF ~~ THEN BEGIN 1
   SAY @8004
       ++ @8005 GOTO 2
       ++ @8003 GOTO 8
END

IF ~~ THEN BEGIN 2
   SAY @8006 IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @8007
       ++ @8008 GOTO 4
       ++ @8003 GOTO 8
END

IF ~~ THEN BEGIN 4
   SAY @8009
       ++ @8010 GOTO 5
       ++ @8003 GOTO 8
END

IF ~~ THEN BEGIN 5
   SAY @8011
       +~PartyGoldLT(40000)~+ @8012 GOTO 6
       +~PartyGoldGT(39999)~+ @8013 GOTO 7
       ++ @8003 GOTO 8
END

IF ~~ THEN BEGIN 6
   SAY @8014 IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7
   SAY @8015 IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8
   SAY @8016 IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @8017 IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY @8018 IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY @8019
IF ~~ THEN DO ~
   Kill("h_nagatc")
   CreateCreature("h_thamuc",[1975.2858],S)
   CreateCreature("h_sthiec",[1738.3095],S)
   CreateCreature("h_sthiec",[2007.3141],S)
   CreateCreature("h_sthiec",[2254.3008],S)
   SetGlobal("h_SpawnThamuz","GLOBAL",1)~ EXIT
END


