BEGIN h_rich2d

IF ~Global("h_SpawnRichard","GLOBAL",3)~ THEN BEGIN 1
   SAY @8600 IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @8601
IF ~~ THEN DO ~
   SetGlobal("h_SpawnRichard","GLOBAL",4)
   SetGlobal("h_ShadowWar","GLOBAL",9)
   SetGlobal("h_AttackedGuild","GLOBAL",1)
   EquipRanged()
   Attack("h_snak2c") ~ EXIT
END


IF WEIGHT #-1 ~Dead("h_snak2c")~ THEN BEGIN 3
   SAY @8602 IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @8603 IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @8604 IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @8605 IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @8606
IF ~~ THEN DO ~
   SetGlobal("h_ShadowWar","GLOBAL",10)
   SetGlobal("h_GuildMusic","GLOBAL",4)
   AddJournalEntry(@225,QUEST_DONE)
   GiveItemCreate("h_misc03",LastTalkedToBy,0,0,0)
   EscapeArea()~ EXIT
END


CHAIN
     IF ~Global("h_BetrayBaldwin","GLOBAL",4)~ THEN h_rich2d 0
@8607
   == h_baldwd
@8608
   == h_rich2d
@8609
   == h_baldwd
@8610
   =
@8611
   == h_rich2d
@8612
   =
@8613
   =
@8614
   == h_baldwd
@8615
   =
@8616
   =
@8617
   =
@8618
   == h_rich2d
@8619
   =
@8620
   == h_zedadd
@8621
   =
@8622
   == h_ariosd
@8623
   == h_rigald
@8624
   =
@8625
   == h_lieded
@8626
   =
@8627
   =
@8628
   == h_eurynd
@8629
   = 
@8630
   == h_baldwd
@8631
   =
@8632
      DO ~
         Kill("h_baldwc")
         CreateCreature("h_snak2c",[919.1086],S)
         SetGlobal("h_SpawnRichard","GLOBAL",3)
         SetGlobal("h_BaldwinQuest","GLOBAL",12)
         SetGlobal("h_BetrayBaldwin","GLOBAL",5)
         PlaySound("h_figmus")~
EXIT













