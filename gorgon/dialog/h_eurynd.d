BEGIN h_eurynd

IF ~True()~ THEN BEGIN 0
   SAY ~I have a wide array of munitions for sale if you're interested in perusing my wares. Additionally, should you acquire any... liberated goods, I can help you locate any interested buyers.~
       +~Global("h_GuildItems","GLOBAL",1)~+ ~I am here to collect my guild armaments.~ GOTO ARMOR_2
       +~PartyHasItem("h_misc06")~+ ~Do you think you could forge anything out of this giant piece of metal?~ DO ~SetGlobal("h_KarpGood","GLOBAL",2)~ GOTO OGREBLADE_1
       +~PartyHasItem("h_misc03")~+ ~I have brought back what remains of the Kerykeion. Would you be able to repair it in any way?~ GOTO KERY_1
       ++ ~Sure, let me see what you have.~ GOTO STORE_1
       ++ ~Do I have any equipment that you can upgrade?~ GOTO UPGRADE_1
       ++ ~I'll be leaving now.~ EXIT
END

IF ~~ THEN BEGIN STORE_1
   SAY ~Excellent, right this way.~
IF ~~ THEN DO ~
   StartStore("h_rhasto",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN UPGRADE_1
   SAY ~Show me what you've brought. Keep in mind, there's a fee of 10,000 gold for any enhancements.~
       +~OR(4) PartyHasItem("AMUL16") PartyHasItem("CLCK16") PartyHasItem("RING08") PartyHasItem("RING08_")~+ ~Could you do anything with this wizard's item?~ GOTO TORQUE_1
       +~OR(3) PartyHasItem("h_dagg01") PartyHasItem("SW1H09") PartyHasItem("SW1H09_")~+ ~Could you do anything with this sword?~ GOTO KUKRI_1
       +~OR(2) PartyHasItem("RING21") PartyHasItem("HELM05")~+ ~Could you do anything with this item I have that grants infravision?~ GOTO COWL_1
       +~OR(3) PartyHasItem("h_ring01") PartyHasItem("h_ring02") PartyHasItem("h_ring03")~+ ~Could you do anything with this thieving ring?~ GOTO RING_1
       ++ ~I'll come back later.~ EXIT
END

IF ~~ THEN BEGIN TORQUE_1
   SAY ~I could combine the links of a Chainmail +3 with an Amulet of Metaspell Influence, an Amulet of Protection +1, the Ring of Wizardry, and the threads from a Robe of the Neutral Archmagi to create some type of necklace.~ IF ~~ THEN GOTO TORQUE_2
END

IF ~~ THEN BEGIN TORQUE_2
   SAY ~To perform the required alchemy, I would need the following reagents: 2 Potions of Genius, 2 Potions of Clarity, and 1 Diamond.~
       +~PartyHasItem("AMUL16") PartyHasItem("AMUL14") PartyHasItem("CLCK16") PartyHasItem("CHAN07") PartyHasItem("RING08") NumItemsPartyGT("POTN29",1) NumItemsPartyGT("POTN21",1) PartyHasItem("MISC42") PartyGoldGT(9999)~+ ~Alright, let's do it. I have all the required items, along with your fee.~ GOTO TORQUE_3
       +~PartyHasItem("AMUL16") PartyHasItem("AMUL14") PartyHasItem("CLCK16") PartyHasItem("CHAN07") PartyHasItem("RING08_") NumItemsPartyGT("POTN29",1) NumItemsPartyGT("POTN21",1) PartyHasItem("MISC42") PartyGoldGT(9999)~+ ~Alright, let's do it. I have all the required items, along with your fee.~ GOTO TORQUE_3
       ++ ~I'll come back later.~ EXIT
END

IF ~~ THEN BEGIN TORQUE_3
   SAY ~Perfect. I have already made the preparations so the transformation should be instantaneous.~
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
   SAY ~I could modify the Acid Kukri +1 by combining it with a Short Sword +2.~ IF ~~ THEN GOTO KUKRI_2
END

IF ~~ THEN BEGIN KUKRI_2
   SAY ~To perform the required alchemy, I would need the following reagents: 2 Antidotes, 1 Scroll of Melf's Acid Arrow, and 1 Sphene Gem.~
       +~PartyHasItem("h_dagg01") PartyHasItem("SW1H09") NumItemsPartyGT("POTN20",1) PartyHasItem("SCRL95") PartyHasItem("MISC37") PartyGoldGT(9999)~+ ~Alright, let's do it. I have all the required items, along with your fee.~ GOTO KUKRI_3
       +~PartyHasItem("h_dagg01") PartyHasItem("SW1H09_") NumItemsPartyGT("POTN20",1) PartyHasItem("SCRL95") PartyHasItem("MISC37") PartyGoldGT(9999)~+ ~Alright, let's do it. I have all the required items, along with your fee.~ GOTO KUKRI_3
       ++ ~I'll come back later.~ EXIT
END

IF ~~ THEN BEGIN KUKRI_3
   SAY ~Perfect. I have already made the preparations so the transformation should be instantaneous.~
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
   SAY ~I could combine the Helmet of Infravision, a Ring of Infravision, and a Ring of Invisibility to create a hooded cowl.~ IF ~~ THEN GOTO COWL_2
END

IF ~~ THEN BEGIN COWL_2
   SAY ~I can combine the Ring of Minor Lockpicking. the Ring of Awareness, and the Ring of the Cutpurse into a single band that would still maintain all of their abilities.~
       +~PartyHasItem("HELM05") PartyHasItem("RING21") PartyHasItem("RING05") NumItemsPartyGT("POTN10",1) PartyHasItem("SCRL1D") PartyHasItem("MISC27") PartyGoldGT(9999)~+ ~Alright, let's do it. I have all the required items, along with your fee.~ GOTO COWL_3
       ++ ~I'll come back later.~ EXIT
END

IF ~~ THEN BEGIN COWL_3
   SAY ~Perfect. I have already made the preparations so the transformation should be instantaneous.~
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
   SAY ~I can combine the Ring of Minor Lockpicking. the Ring of Awareness, and the Ring of the Cutpurse into a single band that would still maintain all of their abilities.~ IF ~~ THEN GOTO RING_2
END

IF ~~ THEN BEGIN RING_2
   SAY ~To perform the required alchemy, I would need the following reagents: 3 Potions of Master Thievery, 1 Scroll of Knock, and 1 Rogue Stone.~
       +~PartyHasItem("h_ring01") PartyHasItem("h_ring02") PartyHasItem("h_ring03") NumItemsPartyGT("POTN36",2) PartyHasItem("SCRL91") PartyHasItem("MISC45") PartyGoldGT(9999)~+ ~Alright, let's do it. I have all the required items, along with your fee.~ GOTO RING_3
       ++ ~I'll come back later.~ EXIT
END

IF ~~ THEN BEGIN RING_3
   SAY ~Perfect. I have already made the preparations so the transformation should be instantaneous.~
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
   SAY ~Interesting. It appears as if it were some type of weapon at one point. I can also detect a strong magical energy infused within it.~ IF ~~ THEN GOTO OGREBLADE_2
END

IF ~~ THEN BEGIN OGREBLADE_2
   SAY ~Whatever material this is, it doesn't seem like it can be properly tempered without the use of powerful magic.~ IF ~~ THEN GOTO OGREBLADE_3
END

IF ~~ THEN BEGIN OGREBLADE_3
   SAY ~Allow me time to conduct some tests and I'll get back to you if anything comes of it.~
IF ~~ THEN DO ~
   SetGlobal("h_OgreBlade","GLOBAL",1)
   TakePartyItem("h_misc06")
   DestroyItem("h_misc06")~ EXIT
END

IF ~~ THEN BEGIN KERY_1
   SAY ~Let me take a look at it.~ IF ~~ THEN GOTO KERY_2
END

IF ~~ THEN BEGIN KERY_2
   SAY ~It doesn't appear functional in its current form, but I may be able to transfer some of its power into a different weapon.~ IF ~~ THEN GOTO KERY_3
END

IF ~~ THEN BEGIN KERY_3
   SAY ~However, this material is completely foreign to me. I will need some time to conduct further testing.~ IF ~~ THEN GOTO KERY_4
END

IF ~~ THEN BEGIN KERY_4
   SAY ~If I am able to find success in my experiments, which type of weapon would you prefer to be crafted?~
       ++ ~Could you forge it into a throwing dart.~ DO ~ SetGlobal("h_KeryDart","GLOBAL",1)~ GOTO KERY_5
       ++ ~Could you forge it into short sword.~ DO ~ SetGlobal("h_KerySword","GLOBAL",1)~ GOTO KERY_5
       +~Global("h_OgreBlade","GLOBAL",1)~+ ~Could you forge it into a katana.~ DO ~ SetGlobal("h_KeryKatana","GLOBAL",1)~ GOTO KERY_5
END

IF ~~ THEN BEGIN KERY_5
   SAY ~I should be able to do that. But keep in mind I'll have no time frame on when it will be completed. There is truly no way of knowing. Continue on with your usual business and check back with me from time to time.~
IF ~~ THEN DO ~
   SetGlobal("h_BetrayBaldwin","GLOBAL",6)
   SetGlobalTimer("h_KeryWeapon","GLOBAL",FIVE_DAYS)
   TakePartyItem("h_misc03")
   DestroyItem("h_misc03")~ EXIT
END

IF WEIGHT #-1 ~GlobalTimerExpired("h_KeryWeapon","GLOBAL") Global("h_KeryDart","GLOBAL",1) GlobalGT("Chapter","GLOBAL",4)~ THEN BEGIN KERY_6
   SAY ~Welcome back, <CHARNAME>. The process was a success and the Kerykeion piece has been transformed into a deviously, deadly dart.~
IF ~~ THEN DO ~
   SetGlobal("h_KeryDart","GLOBAL",2)
   GiveItemCreate("h_dart01",LastTalkedToBy,0,0,0)~ EXIT
END

IF WEIGHT #-1 ~GlobalTimerExpired("h_KeryWeapon","GLOBAL") Global("h_KerySword","GLOBAL",1) GlobalGT("Chapter","GLOBAL",4)~ THEN BEGIN KERY_7
   SAY ~Welcome back, <CHARNAME>. The process was a success and the Kerykeion piece has been transformed into a very stealthy blade.~
IF ~~ THEN DO ~
   SetGlobal("h_KerySword","GLOBAL",2)
   GiveItemCreate("h_sw1h01",LastTalkedToBy,0,0,0)~ EXIT
END


IF WEIGHT #-1 ~GlobalTimerExpired("h_KeryWeapon","GLOBAL") Global("h_KeryKatana","GLOBAL",1) GlobalGT("Chapter","GLOBAL",4)~ THEN BEGIN KERY_8
   SAY ~I was able to infuse the Kerykeion piece with the large chunk of metal you brought me. It resulted in this extremely powerful katana.~
IF ~~ THEN DO ~
   SetGlobal("h_KeryKatana","GLOBAL",2)
   GiveItemCreate("h_sw1h02",LastTalkedToBy,0,0,0)~ EXIT
END

IF WEIGHT #-2 ~Global("h_BetrayBaldwin","GLOBAL",5)~ THEN BEGIN BETRAY_1
   SAY ~I'll be here for a little while longer to make sure the acquisition goes smoothly. Do you need any equipment in the meantime?~
       ++ ~Sure, let me see what you have.~ GOTO STORE_1
       ++ ~Do I have any equipment that you can upgrade?~ GOTO UPGRADE_1
       +~PartyHasItem("h_misc03")~+ ~I have brought back what remains of the Kerykeion. Would you be able to repair it in any way?~ GOTO KERY_1
       ++ ~I'll be leaving now.~ EXIT
END

IF ~~ THEN BEGIN ARMOR_2
   SAY ~Here, take these and prepare yourselves well for the coming skirmish. The Shadow Thieves are not untested in the ways of urban warfare.~
IF ~~ THEN DO ~
   SetGlobal("h_GuildItems","GLOBAL",2)
   GiveItemCreate("h_dagg01",LastTalkedToBy,0,0,0)
   GiveItemCreate("h_ring02",LastTalkedToBy,0,0,0)~ EXIT
END

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",17) Global("h_BountyNumber","GLOBAL",9) GlobalGT("h_BetrayBaldwin","GLOBAL",0) Global("h_FakeKery","GLOBAL",1) Global("h_FinalTalkRhade","GLOBAL",0)~ THEN BEGIN BETRAY_0
   SAY ~<CHARNAME>, over here a moment. A new weapon has just arrived from the far east, the Shortbow of the Shaar. I believe it may be of interest to you.~
IF ~~ THEN DO ~
   SetGlobal("h_BetrayBaldwin","GLOBAL",3)
   SetGlobal("h_GuildMusic","GLOBAL",3)
   SetGlobal("h_ShadowWar","GLOBAL",8)
   SetGlobal("h_FinalTalkRhade","GLOBAL",1)
   AddJournalEntry(@224,QUEST)~ EXIT
END

IF WEIGHT #-1 ~Global("h_BetrayBaldwin","GLOBAL",3) Global("h_StallEnding","GLOBAL",0)~ THEN BEGIN BETRAY_1
   SAY ~Keep your voice down and be smart. Are we on the same page?~
       ++ ~So, it's you then. You're the Shadow Thieves plant!~ GOTO BETRAY_3
       +~Gender(Player1,FEMALE)~+ ~I don't know what you're talking about.~ GOTO BETRAY_2
       +~Gender(Player1,MALE)~+ ~I don't know what you're talking about.~ GOTO BETRAY_2.5
END

IF ~~ THEN BEGIN BETRAY_2
   SAY ~There's a good lass. Now, listen up, we need to be quick.~ IF ~~ THEN GOTO BETRAY_4
END

IF ~~ THEN BEGIN BETRAY_2.5
   SAY ~There's a good lad. Now, listen up, we need to be quick.~ IF ~~ THEN GOTO BETRAY_4
END

IF ~~ THEN BEGIN BETRAY_3
   SAY ~I said keep your voice down! Now, listen up, we need to be quick.~ IF ~~ THEN GOTO BETRAY_4
END

IF ~~ THEN BEGIN BETRAY_4
   SAY ~I have men in the shadows awaiting my signal. When they are revealed, Baldwin will be forced to activate the Kerykeion, too rushed to discern the trap within.~ IF ~~ THEN GOTO BETRAY_5
END

IF ~~ THEN BEGIN BETRAY_5
   SAY ~When he does, the fusion process will fail, and it should kill him instantly. Afterwards, we will assume control of the guild and await further instructions.~
       ++ ~What about the rest of the guildmates?~ GOTO BETRAY_6
       ++ ~What if the plan fails and Baldwin survives?~ GOTO BETRAY_8
       ++ ~I am ready to begin.~ GOTO BETRAY_9
       ++ ~I need a little more time to prepare.~ GOTO BETRAY_10
END

IF ~~ THEN BEGIN BETRAY_6
   SAY ~They are a stubborn bunch, yet their loyalty to Baldwin remains in question. If they are smart, they will surrender. If not... then be prepared to fight.~
       ++ ~I didn't want to kill everyone, I just wanted to stop Baldwin.~ GOTO BETRAY_7
       ++ ~What if the plan fails and Baldwin survives?~ GOTO BETRAY_8
       ++ ~I am ready to begin.~ GOTO BETRAY_9
       ++ ~I need a little more time to prepare.~GOTO BETRAY_10
END

IF ~~ THEN BEGIN BETRAY_7
   SAY ~It might be a little too late for that, I'm afraid. We have brought the Shadow Thieves into their home. That is not something they will easily overlook.~
       ++ ~What if the plan fails and Baldwin survives?~ GOTO BETRAY_8
       ++ ~I am ready to begin.~ GOTO BETRAY_9
       ++ ~I need a little more time to prepare.~ GOTO BETRAY_10
END

IF ~~ THEN BEGIN BETRAY_8
   SAY ~Then prepare yourselves and make your peace. Baldwin is not a man to be underestimated.~
       ++ ~What about the rest of the guildmates?~ GOTO BETRAY_6
       ++ ~I am ready to begin.~ GOTO BETRAY_9
       ++ ~I need a little more time to prepare.~ GOTO BETRAY_10
END

IF ~~ THEN BEGIN BETRAY_9
   SAY ~Let us finish this then.~
IF ~~ THEN DO ~
   ActionOverride("h_danika",EscapeArea())
   SetGlobal("h_LiedelBetray","GLOBAL",4)
   SetGlobal("h_SpawnRichard","GLOBAL",1)
   SetGlobal("h_BetrayBaldwin","GLOBAL",4)
   CreateCreature("h_rich2c",[886.1320],N)
   CreateCreature("h_sthiec",[886.1365],N)
   CreateCreature("h_sthiec",[826.1365],N)
   CreateCreature("h_sthiec",[946.1365],N)~ EXIT
END

IF ~~ THEN BEGIN BETRAY_10
   SAY ~Alright, but be quick about it. We can't wait for much longer.~
IF ~~ THEN DO ~
   SetGlobal("h_StallEnding","GLOBAL",1)~ EXIT
END

IF WEIGHT #-1 ~Global("h_BetrayBaldwin","GLOBAL",3) Global("h_StallEnding","GLOBAL",1)~ THEN BEGIN BETRAY_1
   SAY ~We can not stall for much longer. Have you finished making your preparations?~
       ++ ~I am ready to begin.~ GOTO BETRAY_9
       ++ ~I need a little more time to prepare.~ GOTO BETRAY_10
END
