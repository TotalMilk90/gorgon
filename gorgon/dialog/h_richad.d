BEGIN h_richad

IF ~Global("h_SpawnRichard","GLOBAL",3)~ THEN BEGIN 1
   SAY @8800 IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @8801
IF ~~ THEN DO ~
   SetGlobal("h_SpawnRichard","GLOBAL",4)
   SetGlobal("h_ShadowWar","GLOBAL",9)
   EquipRanged()
   Attack("h_snak2c") ~ EXIT
END


IF ~Global("h_SpawnRichard","GLOBAL",4)~ THEN BEGIN 3
   SAY @8802 IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @8803 IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @8804 IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @8805 IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @8806 IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @8807
IF ~~ THEN DO ~
   SetGlobal("h_Saradin","GLOBAL",3)
   SetGlobal("h_ShadowWar","GLOBAL",10)
   GiveItemCreate("h_misc03",LastTalkedToBy,0,0,0)
   CreateCreature("h_saradc",[355.499],10)
   EscapeArea()~ EXIT
END


CHAIN
     IF ~Global("h_BaldwinQuest","GLOBAL",11)~ THEN h_richad 0
@8808
   == h_bald2d
@8809
   == h_richad
@8810
   == h_bald2d
@8811
   =
@8812
   == h_richad
@8813
   =
@8814
   =
@8815
   == h_bald2d
@8816
   =
@8817
   =
@8818
      DO ~
         Kill("h_bald2c")
         CreateCreature("h_snak2c",[655.322],S)
         SetGlobal("h_SpawnRichard","GLOBAL",3)
         SetGlobal("h_BaldwinQuest","GLOBAL",12)~
EXIT













