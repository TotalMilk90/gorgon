BEGIN h_eurynd

IF ~True()~ THEN BEGIN 0
   SAY @4200
       ++ @4201 GOTO STORE_1
       ++ @4202 EXIT
       ++ @4203 GOTO UPGRADE_1
       +~Global("h_GuildItems","GLOBAL",1)~+ @4204 GOTO ARMOR_2
       +~PartyHasItem("h_misc03")~+ @4205 GOTO KERY_1
END

IF ~~ THEN BEGIN STORE_1
   SAY @4206
IF ~~ THEN DO ~
   StartStore("h_rhasto",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN UPGRADE_1
   SAY @4207
       +~OR(4) PartyHasItem("AMUL16") PartyHasItem("CLCK16") PartyHasItem("RING08") PartyHasItem("RING08_")~+ @4208 GOTO TORQUE_1
       +~OR(3) PartyHasItem("h_dagg01") PartyHasItem("SW1H09") PartyHasItem("SW1H09_")~+ @4209 GOTO KUKRI_1
       +~OR(2) PartyHasItem("RING21") PartyHasItem("HELM05")~+ @4210 GOTO COWL_1
       +~OR(3) PartyHasItem("h_ring01") PartyHasItem("h_ring02") PartyHasItem("h_ring03")~+ @4211 GOTO RING_1
       +~PartyHasItem("h_misc06")~+ @4212 GOTO OGREBLADE_1
       ++ @4213 EXIT
END

IF ~~ THEN BEGIN TORQUE_1
   SAY @4214 IF ~~ THEN GOTO TORQUE_2
END

IF ~~ THEN BEGIN TORQUE_2
   SAY @4215
       +~PartyHasItem("AMUL16") PartyHasItem("AMUL14") PartyHasItem("CLCK16") PartyHasItem("CHAN07") PartyHasItem("RING08") NumItemsPartyGT("POTN29",1) NumItemsPartyGT("POTN21",1) PartyHasItem("MISC42") PartyGoldGT(9999)~+ @4216 GOTO TORQUE_3
       +~PartyHasItem("AMUL16") PartyHasItem("AMUL14") PartyHasItem("CLCK16") PartyHasItem("CHAN07") PartyHasItem("RING08_") NumItemsPartyGT("POTN29",1) NumItemsPartyGT("POTN21",1) PartyHasItem("MISC42") PartyGoldGT(9999)~+ @4216 GOTO TORQUE_3
       ++ @4213 EXIT
END

IF ~~ THEN BEGIN TORQUE_3
   SAY @4217
IF ~~ THEN DO ~
   TakePartyGold(10000)
   DestroyGold(10000)
   TakePartyItemNum("AMUL16",1)
   TakePartyItemNum("AMUL14",1)
   TakePartyItemNum("CLCK16",1)
   TakePartyItemNum("CHAN07",1)
   TakePartyItemNum("RING08",1)
   TakePartyItemNum("RING08_",1)
   TakePartyItemNum("POTN29",2)
   TakePartyItemNum("POTN21",2)
   TakePartyItemNum("MISC42",1)
   DestroyItem("AMUL16")
   DestroyItem("AMUL14")
   DestroyItem("CLCK16")
   DestroyItem("CHAN07")
   DestroyItem("RING08")
   DestroyItem("RING08_")
   DestroyItem("POTN29")
   DestroyItem("POTN21")
   DestroyItem("MISC42")
   GiveItemCreate("h_amul01",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN KUKRI_1
   SAY @4218 IF ~~ THEN GOTO KUKRI_2
END

IF ~~ THEN BEGIN KUKRI_2
   SAY @4219
       +~PartyHasItem("h_dagg01") PartyHasItem("SW1H09") NumItemsPartyGT("POTN20",1) PartyHasItem("SCRL95") PartyHasItem("MISC37") PartyGoldGT(9999)~+ @4216 GOTO KUKRI_3
       +~PartyHasItem("h_dagg01") PartyHasItem("SW1H09_") NumItemsPartyGT("POTN20",1) PartyHasItem("SCRL95") PartyHasItem("MISC37") PartyGoldGT(9999)~+ @4216 GOTO KUKRI_3
       ++ @4213 EXIT
END

IF ~~ THEN BEGIN KUKRI_3
   SAY @4217
IF ~~ THEN DO ~
   TakePartyGold(10000)
   DestroyGold(10000)
   TakePartyItemNum("h_dagg01",1)
   TakePartyItemNum("SW1H09",1)
   TakePartyItemNum("SW1H09_",1)
   TakePartyItemNum("POTN20",2)
   TakePartyItemNum("SCRL95",1)
   TakePartyItemNum("MISC37",1)
   DestroyItem("h_dagg01")
   DestroyItem("SW1H09")
   DestroyItem("SW1H09_")
   DestroyItem("POTN20")
   DestroyItem("SCRL95")
   DestroyItem("POTN21")
   DestroyItem("MISC37")
   GiveItemCreate("h_dagg02",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN COWL_1
   SAY @4220 IF ~~ THEN GOTO COWL_2
END

IF ~~ THEN BEGIN COWL_2
   SAY @4221
       +~PartyHasItem("HELM05") PartyHasItem("RING21") PartyHasItem("RING05") NumItemsPartyGT("POTN10",1) PartyHasItem("SCRL1D") PartyHasItem("MISC27") PartyGoldGT(9999)~+ @4216 GOTO COWL_3
       ++ @4213 EXIT
END

IF ~~ THEN BEGIN COWL_3
   SAY @4217
IF ~~ THEN DO ~
   TakePartyGold(10000)
   DestroyGold(10000)
   TakePartyItemNum("HELM05",1)
   TakePartyItemNum("RING21",1)
   TakePartyItemNum("RING05",1)
   TakePartyItemNum("POTN10",2)
   TakePartyItemNum("SCRL1D",1)
   TakePartyItemNum("MISC27",1)
   DestroyItem("HELM05")
   DestroyItem("RING21")
   DestroyItem("RING05")
   DestroyItem("POTN10")
   DestroyItem("SCRL1D")
   DestroyItem("MISC27")
   GiveItemCreate("h_helm01",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN RING_1
   SAY @4222 IF ~~ THEN GOTO RING_2
END

IF ~~ THEN BEGIN RING_2
   SAY @4223
       +~PartyHasItem("h_ring01") PartyHasItem("h_ring02") PartyHasItem("h_ring03") NumItemsPartyGT("POTN36",2) PartyHasItem("SCRL91") PartyHasItem("MISC45") PartyGoldGT(9999)~+ @4216 GOTO RING_3
       ++ @4213 EXIT
END

IF ~~ THEN BEGIN RING_3
   SAY @4217
IF ~~ THEN DO ~
   TakePartyGold(10000)
   DestroyGold(10000)
   TakePartyItemNum("h_ring01",1)
   TakePartyItemNum("h_ring02",1)
   TakePartyItemNum("h_ring03",1)
   TakePartyItemNum("POTN36",3)
   TakePartyItemNum("SCRL91",1)
   TakePartyItemNum("MISC45",1)
   DestroyItem("h_ring01")
   DestroyItem("h_ring02")
   DestroyItem("h_ring03")
   DestroyItem("POTN36")
   DestroyItem("SCRL91")
   DestroyItem("MISC45")
   GiveItemCreate("h_ring04",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN OGREBLADE_1
   SAY @4224 IF ~~ THEN GOTO OGREBLADE_2
END

IF ~~ THEN BEGIN OGREBLADE_2
   SAY @4225 IF ~~ THEN GOTO OGREBLADE_3
END

IF ~~ THEN BEGIN OGREBLADE_3
   SAY @4226
IF ~~ THEN DO ~
   SetGlobal("h_OgreBlade","GLOBAL",1)
   TakePartyItem("h_misc06")
   DestroyItem("h_misc06")~ EXIT
END

IF ~~ THEN BEGIN KERY_1
   SAY @4227 IF ~~ THEN GOTO KERY_2
END

IF ~~ THEN BEGIN KERY_2
   SAY @4228 IF ~~ THEN GOTO KERY_3
END

IF ~~ THEN BEGIN KERY_3
   SAY @4229 IF ~~ THEN GOTO KERY_4
END

IF ~~ THEN BEGIN KERY_4
   SAY @4230
       ++ @4231 DO ~ SetGlobal("h_KeryDart","GLOBAL",1)~ GOTO KERY_5
       ++ @4232 DO ~ SetGlobal("h_KerySword","GLOBAL",1)~ GOTO KERY_5
       +~Global("h_OgreBlade","GLOBAL",1)~+ @4233 DO ~ SetGlobal("h_KeryKatana","GLOBAL",1)~ GOTO KERY_5
END

IF ~~ THEN BEGIN KERY_5
   SAY @4234
IF ~~ THEN DO ~
   SetGlobal("h_BetrayBaldwin","GLOBAL",6)
   SetGlobalTimer("h_KeryWeapon","GLOBAL",FIVE_DAYS)
   TakePartyItem("h_misc03")
   DestroyItem("h_misc03")~ EXIT
END

IF WEIGHT #-1 ~GlobalTimerExpired("h_KeryWeapon","GLOBAL") Global("h_KeryDart","GLOBAL",1) GlobalGT("Chapter","GLOBAL",4)~ THEN BEGIN KERY_6
   SAY @4235
IF ~~ THEN DO ~
   SetGlobal("h_KeryDart","GLOBAL",2)
   GiveItemCreate("h_dart01",LastTalkedToBy,0,0,0)~ EXIT
END

IF WEIGHT #-1 ~GlobalTimerExpired("h_KeryWeapon","GLOBAL") Global("h_KerySword","GLOBAL",1) GlobalGT("Chapter","GLOBAL",4)~ THEN BEGIN KERY_7
   SAY @4236
IF ~~ THEN DO ~
   SetGlobal("h_KerySword","GLOBAL",2)
   GiveItemCreate("h_sw1h01",LastTalkedToBy,0,0,0)~ EXIT
END


IF WEIGHT #-1 ~GlobalTimerExpired("h_KeryWeapon","GLOBAL") Global("h_KeryKatana","GLOBAL",1) GlobalGT("Chapter","GLOBAL",4)~ THEN BEGIN KERY_8
   SAY @4236
IF ~~ THEN DO ~
   SetGlobal("h_KeryKatana","GLOBAL",2)
   GiveItemCreate("h_sw1h02",LastTalkedToBy,0,0,0)~ EXIT
END

IF WEIGHT #-2 ~Global("h_BetrayBaldwin","GLOBAL",5)~ THEN BEGIN BETRAY_1
   SAY @4237
       ++ @4201 GOTO STORE_1
       ++ @4202 EXIT
       ++ @4203 GOTO UPGRADE_1
       +~PartyHasItem("h_misc03")~+ @4238 GOTO KERY_1
END

IF ~~ THEN BEGIN ARMOR_2
   SAY @4239
IF ~~ THEN DO ~
   SetGlobal("h_GuildItems","GLOBAL",2)
   GiveItemCreate("h_dagg01",LastTalkedToBy,0,0,0)
   GiveItemCreate("h_ring02",LastTalkedToBy,0,0,0)~ EXIT
END

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",17) Global("h_BountyNumber","GLOBAL",6) Global("h_BetrayBaldwin","GLOBAL",2) Global("h_FakeKery","GLOBAL",1)~ THEN BEGIN BETRAY_0
   SAY @4240
IF ~~ THEN DO ~
   SetGlobal("h_BetrayBaldwin","GLOBAL",3)
   SetGlobal("h_GuildMusic","GLOBAL",3)
   SetGlobal("h_ShadowWar","GLOBAL",8)
   AddJournalEntry(@224,QUEST)~ EXIT
END

IF WEIGHT #-1 ~Global("h_BetrayBaldwin","GLOBAL",3) Global("h_StallEnding","GLOBAL",0)~ THEN BEGIN BETRAY_1
   SAY @4241
       ++ @4242 GOTO BETRAY_3
       +~Gender(Player1,FEMALE)~+ @4243 GOTO BETRAY_2
       +~Gender(Player1,MALE)~+ @4243 GOTO BETRAY_2.5
END

IF ~~ THEN BEGIN BETRAY_2
   SAY @4244 IF ~~ THEN GOTO BETRAY_4
END

IF ~~ THEN BEGIN BETRAY_2.5
   SAY @4245 IF ~~ THEN GOTO BETRAY_4
END

IF ~~ THEN BEGIN BETRAY_3
   SAY @4246 IF ~~ THEN GOTO BETRAY_4
END

IF ~~ THEN BEGIN BETRAY_4
   SAY @4247 IF ~~ THEN GOTO BETRAY_5
END

IF ~~ THEN BEGIN BETRAY_5
   SAY @4248
       ++ @4249 GOTO BETRAY_6
       ++ @4250 GOTO BETRAY_8
       ++ @4251 GOTO BETRAY_9
       ++ @4252 GOTO BETRAY_10
END

IF ~~ THEN BEGIN BETRAY_6
   SAY @4253
       ++ @4254 GOTO BETRAY_7
       ++ @4250 GOTO BETRAY_8
       ++ @4251 GOTO BETRAY_9
       ++ @4252 GOTO BETRAY_10
END

IF ~~ THEN BEGIN BETRAY_7
   SAY @4255
       ++ @4250 GOTO BETRAY_8
       ++ @4251 GOTO BETRAY_9
       ++ @4252 GOTO BETRAY_10
END

IF ~~ THEN BEGIN BETRAY_8
   SAY @4256
       ++ @4249 GOTO BETRAY_6
       ++ @4251 GOTO BETRAY_9
       ++ @4252 GOTO BETRAY_10
END

IF ~~ THEN BEGIN BETRAY_9
   SAY @4257
IF ~~ THEN DO ~
   SetGlobal("h_SpawnRichard","GLOBAL",1)
   SetGlobal("h_BetrayBaldwin","GLOBAL",4)
   CreateCreature("h_rich2c",[886.1320],N)
   CreateCreature("h_sthiec",[886.1365],N)
   CreateCreature("h_sthiec",[826.1365],N)
   CreateCreature("h_sthiec",[946.1365],N)~ EXIT
END

IF ~~ THEN BEGIN BETRAY_10
   SAY @4258
IF ~~ THEN DO ~
   SetGlobal("h_StallEnding","GLOBAL",1)~ EXIT
END

IF WEIGHT #-1 ~Global("h_BetrayBaldwin","GLOBAL",3) Global("h_StallEnding","GLOBAL",1)~ THEN BEGIN BETRAY_1
   SAY @4259
       ++ @4260 GOTO BETRAY_9
       ++ @4261 GOTO BETRAY_10
END
