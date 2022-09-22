BEGIN h_rigald

IF ~Global("h_RigaldoQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY @9000 IF ~~ THEN EXIT
END

          ///////////////////////////////////////
          ////////// The Taveler's Gem //////////
          ///////////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",1)~ THEN BEGIN GEM_1
   SAY @9001 IF ~~ THEN GOTO GEM_2
END

IF ~~ THEN BEGIN GEM_2
   SAY @9002
       ++ @9003 GOTO GEM_3
       ++ @9004 GOTO GEM_5
       ++ @9005 GOTO GEM_6
END

IF ~~ THEN BEGIN GEM_3
   SAY @9006
       ++ @9007 GOTO GEM_4
END

IF ~~ THEN BEGIN GEM_4
   SAY @9008
       ++ @9004 GOTO GEM_5
       ++ @9009 GOTO GEM_6
END

IF ~~ THEN BEGIN GEM_5
   SAY @9010
       ++ @9003 GOTO GEM_3
       ++ @9009 GOTO GEM_6
END

IF ~~ THEN BEGIN GEM_6
   SAY @9011
       ++ @9012 GOTO GEM_7
       ++ @9013 EXIT
END

IF ~~ THEN BEGIN GEM_7
   SAY @9014 IF ~~ THEN GOTO GEM_8
END

IF ~~ THEN BEGIN GEM_8
   SAY @9015
       ++ @9016 GOTO GEM_9
END

IF ~~ THEN BEGIN GEM_9
   SAY @9017 IF ~~ THEN GOTO GEM_10
END

IF ~~ THEN BEGIN GEM_10
   SAY @9018
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",2)
   AddJournalEntry(@310,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",2)~ THEN BEGIN GEM_11
   SAY @9019
       +~PartyHasItem("h_misc04")~+ @9020 GOTO GEM_12
       ++ @9021 EXIT
END

IF ~~ THEN BEGIN GEM_12
   SAY @9022 IF ~~ THEN GOTO GEM_13
END

IF ~~ THEN BEGIN GEM_13
   SAY @9023 IF ~~ THEN GOTO GEM_14
END

IF ~~ THEN BEGIN GEM_14
   SAY @9024 IF ~~ THEN GOTO GEM_15
END

IF ~~ THEN BEGIN GEM_15
   SAY @9025
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",3)
   AddJournalEntry(@311,QUEST_DONE)
   TakePartyItem("h_misc04")
   DestroyItem("h_misc04")
   GiveItemCreate("h_ring03",LastTalkedToBy,0,0,0)
   AddExperienceParty(300)~ EXIT
END


          /////////////////////////////////////
          /////// Mugging in the Manor ////////
          /////////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",3)~ THEN BEGIN GERARD_1
   SAY @9026
       ++ @9027 GOTO GERARD_2
       ++ @9021 EXIT
END

IF ~~ THEN BEGIN GERARD_2
   SAY @9028 IF ~~ THEN GOTO GERARD_3
END

IF ~~ THEN BEGIN GERARD_3
   SAY @9029 IF ~~ THEN GOTO GERARD_4
END

IF ~~ THEN BEGIN GERARD_4
   SAY @9030
       ++ @9031 GOTO GERARD_5
       ++ @9032 GOTO GERARD_6
       ++ @9033 GOTO GERARD_7
       ++ @9034 GOTO GERARD_7
END

IF ~~ THEN BEGIN GERARD_5
   SAY @9035
       ++ @9032 GOTO GERARD_6
       ++ @9033 GOTO GERARD_7
       ++ @9036 GOTO GERARD_7
END

IF ~~ THEN BEGIN GERARD_6
   SAY @9037
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",4)
   AddJournalEntry(@312,QUEST)~ EXIT
END

IF ~~ THEN BEGIN GERARD_7
   SAY @9038
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",4)
   AddJournalEntry(@312,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",4)~ THEN BEGIN GERARD_8
   SAY @9039
       +~PartyHasItem("h_misc05")~+ @9040 GOTO GERARD_9
       ++ @9021 EXIT
END

IF ~~ THEN BEGIN GERARD_9
   SAY @9041 IF ~~ THEN GOTO GERARD_10
END

IF ~~ THEN BEGIN GERARD_10
   SAY @9042 IF ~~ THEN GOTO GERARD_11
END

IF ~~ THEN BEGIN GERARD_11
   SAY @9043 IF ~~ THEN GOTO GERARD_12
END

IF ~~ THEN BEGIN GERARD_12
   SAY @9044
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",5)
   SetGlobal("h_BaldwinQuest","GLOBAL",2)
   SetGlobal("h_LiedelQuest","GLOBAL",1)
   SetGlobal("h_GilbaldQuest","GLOBAL",1)
   SetGlobal("h_ZedaRiddle","GLOBAL",1)
   AddJournalEntry(@314,QUEST_DONE)
   TakePartyItem("h_misc05")
   DestroyItem("h_misc05")
   GiveGoldForce(200)
   AddExperienceParty(300)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",5)~ THEN BEGIN GERARD_13
   SAY @9045 IF ~~ THEN EXIT
END

          /////////////////////////////////////
          ////////// Buried Treasure //////////
          /////////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",6)~ THEN BEGIN KARP_1
   SAY @9046 IF ~~ THEN GOTO KARP_2
END

IF ~~ THEN BEGIN KARP_2
   SAY @9047 IF ~~ THEN GOTO KARP_3
END

IF ~~ THEN BEGIN KARP_3
   SAY @9048 IF ~~ THEN GOTO KARP_4
END

IF ~~ THEN BEGIN KARP_4
   SAY @9049 IF ~~ THEN GOTO KARP_5
END

IF ~~ THEN BEGIN KARP_5
   SAY @9050 IF ~~ THEN GOTO KARP_6
END

IF ~~ THEN BEGIN KARP_6
   SAY @9051 IF ~~ THEN GOTO KARP_7
END

IF ~~ THEN BEGIN KARP_7
   SAY @9052 IF ~~ THEN GOTO KARP_8
END

IF ~~ THEN BEGIN KARP_8
   SAY @9053
       ++ @9054 GOTO KARP_9
       ++ @9055 GOTO KARP_9
       ++ @9056 GOTO KARP_9
       ++ @9057 GOTO KARP_9
END

IF ~~ THEN BEGIN KARP_9
   SAY @9058
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",7)
   AddJournalEntry(@315,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",7)~ THEN BEGIN KARP_10
   SAY @9059
       +~PartyHasItem("h_misc17")~+ @9060 GOTO KARP_11
       ++ @9021 EXIT
END

IF ~~ THEN BEGIN KARP_11
   SAY @9061
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",8)
   AddJournalEntry(@317,QUEST_DONE)
   TakePartyItem("h_misc17")
   DestroyItem("h_misc17")
   AddExperienceParty(600)~ EXIT
END

          ////////////////////////////////////////////
          ////////// It's All Fun and Games //////////
          ////////////////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",8)~ THEN BEGIN CARNIVAL_1
   SAY @9062 IF ~~ THEN GOTO CARNIVAL_2
END

IF ~~ THEN BEGIN CARNIVAL_2
   SAY @9063 IF ~~ THEN GOTO CARNIVAL_3
END

IF ~~ THEN BEGIN CARNIVAL_3
   SAY @9064 IF ~~ THEN GOTO CARNIVAL_4
END

IF ~~ THEN BEGIN CARNIVAL_4
   SAY @9065 IF ~~ THEN GOTO CARNIVAL_5
END

IF ~~ THEN BEGIN CARNIVAL_5
   SAY @9066
       ++ @9067 GOTO CARNIVAL_6
       ++ @9068 GOTO CARNIVAL_7
       ++ @9069 GOTO CARNIVAL_8
END

IF ~~ THEN BEGIN CARNIVAL_6
   SAY @9070
       ++ @9071 GOTO CARNIVAL_7
       ++ @9069 GOTO CARNIVAL_8
END

IF ~~ THEN BEGIN CARNIVAL_7
   SAY @9072 IF ~~ THEN GOTO CARNIVAL_7.5
END

IF ~~ THEN BEGIN CARNIVAL_7.5
   SAY @9073
       ++ @9067 GOTO CARNIVAL_6
       ++ @9069 GOTO CARNIVAL_8
END

IF ~~ THEN BEGIN CARNIVAL_8
   SAY @9074
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",9)
   SetGlobal("h_GuildThieves","GLOBAL",2)
   AddJournalEntry(@321,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN CARNIVAL_9
   SAY @9075 IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",10)~ THEN BEGIN CARNIVAL_10
   SAY @9076 IF ~~ THEN GOTO CARNIVAL_11
END

IF ~~ THEN BEGIN CARNIVAL_11
   SAY @9077
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",11)
   AddJournalEntry(@323,QUEST_DONE)
   GiveGoldForce(800)
   AddExperienceParty(600)~ EXIT
END


          ////////////////////////////////////////////
          ////////// Borland's Spicy Secret //////////
          ////////////////////////////////////////////


IF ~GlobalLT("CHAPTER","GLOBAL",3)
   Global("h_RigaldoQuest","GLOBAL",11)~ THEN BEGIN CHAPTER_1
   SAY @9078 IF ~~ THEN EXIT
END

IF ~GlobalGT("CHAPTER","GLOBAL",2)
   Global("h_RigaldoQuest","GLOBAL",11)
   Global("h_LiedelQuest","GLOBAL",1)~ THEN BEGIN CHAPTER_2
   SAY @9078 IF ~~ THEN EXIT
END

IF ~GlobalGT("CHAPTER","GLOBAL",2)
   Global("h_RigaldoQuest","GLOBAL",11)
   GlobalGT("h_LiedelQuest","GLOBAL",1)~ THEN BEGIN SPICE_0
   SAY @9079 IF ~~ THEN GOTO SPICE_1
END

IF ~~ THEN BEGIN SPICE_1
   SAY @9080 IF ~~ THEN GOTO SPICE_2
END

IF ~~ THEN BEGIN SPICE_2
   SAY @9081 IF ~~ THEN GOTO SPICE_3
END

IF ~~ THEN BEGIN SPICE_3
   SAY @9082 IF ~~ THEN GOTO SPICE_4
END

IF ~~ THEN BEGIN SPICE_4
   SAY @9083
       ++ @9084 GOTO SPICE_4.5
       ++ @9085 GOTO SPICE_5
END

IF ~~ THEN BEGIN SPICE_4.5
   SAY @9086
       ++ @9085 GOTO SPICE_5
END

IF ~~ THEN BEGIN SPICE_5
   SAY @9087
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",12)
   AddJournalEntry(@324,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",12)~ THEN BEGIN SPICE_6
   SAY @9088
       +~Global("h_BorlandQuest","GLOBAL",1) NumItemsPartyLT("h_misc07",1)~+ @9089 GOTO SPICE_7
       +~Global("h_BorlandQuest","GLOBAL",1) PartyHasItem("h_misc07")~+ @9090 GOTO SPICE_8
       +~Global("h_BorlandQuest","GLOBAL",2) PartyHasItem("h_misc07")~+ @9091 GOTO SPICE_9
       ++ @9021 EXIT
END

IF ~~ THEN BEGIN SPICE_7
   SAY @9092
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",13)
   SetGlobal("h_SpawnAriosh","GLOBAL",1)
   AddJournalEntry(@326,QUEST_DONE)
   AddExperienceParty(600)
   GiveGoldForce(400)~ EXIT
END

IF ~~ THEN BEGIN SPICE_8
   SAY @9093
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",13)
   SetGlobal("h_SpawnAriosh","GLOBAL",1)
   AddJournalEntry(@326,QUEST_DONE)
   TakePartyItem("h_misc07")
   DestroyItem("h_misc07")
   AddExperienceParty(600)
   GiveGoldForce(800)~ EXIT
END

IF ~~ THEN BEGIN SPICE_9
   SAY @9094
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",13)
   SetGlobal("h_SpawnAriosh","GLOBAL",1)
   AddJournalEntry(@326,QUEST_DONE)
   TakePartyItem("h_misc07")
   DestroyItem("h_misc07")
   AddExperienceParty(600)
   GiveGoldForce(400)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",13)~ THEN BEGIN SPICE_10
   SAY @9095 IF ~~ THEN EXIT
END


          /////////////////////////////////
          ////////// Black Lotus //////////
          /////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",14)~ THEN BEGIN LOTUS_0
   SAY @9096 IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",15)~ THEN BEGIN LOTUS_1
   SAY @9097 IF ~~ THEN GOTO LOTUS_2
END

IF ~~ THEN BEGIN LOTUS_2
   SAY @9098 IF ~~ THEN GOTO LOTUS_3
END

IF ~~ THEN BEGIN LOTUS_3
   SAY @9099 IF ~~ THEN GOTO LOTUS_4
END

IF ~~ THEN BEGIN LOTUS_4
   SAY @9100
       ++ @9101 GOTO LOTUS_5
       ++ @9102 GOTO LOTUS_6
       ++ @9103 GOTO LOTUS_7
END

IF ~~ THEN BEGIN LOTUS_5
   SAY @9104
       ++ @9102 GOTO LOTUS_6
       ++ @9103 GOTO LOTUS_7
END

IF ~~ THEN BEGIN LOTUS_6
   SAY @9105
       ++ @9101 GOTO LOTUS_5
       ++ @9103 GOTO LOTUS_7
END

IF ~~ THEN BEGIN LOTUS_7
   SAY @9106 IF ~~ THEN GOTO LOTUS_8
END

IF ~~ THEN BEGIN LOTUS_8
   SAY @9107
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",16)
   SetGlobal("h_FlamingFist","GLOBAL",1)
   AddJournalEntry(@327,QUEST)
   GiveItemCreate("h_misc07",LastTalkedToBy,5,0,0)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",16)~ THEN BEGIN LOTUS_9
   SAY @9108
       +~Global("h_LotusQuest","GLOBAL",1) PartyGoldGT(2999)~+ @9109 GOTO LOTUS_10
       +~Global("h_LotusQuest","GLOBAL",2) PartyGoldGT(2399)~+ @9110 GOTO LOTUS_11
       ++ @9021 EXIT
END

IF ~~ THEN BEGIN LOTUS_10
   SAY @9111
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@331,QUEST_DONE)
   TakePartyItemAll("h_misc07")
   TakePartyGold(3000)
   GiveGoldForce(750)~ EXIT
END

IF ~~ THEN BEGIN LOTUS_11
   SAY @9112
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@331,QUEST_DONE)
   TakePartyItemAll("h_misc07")
   TakePartyGold(2400)
   GiveGoldForce(480)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",17)~ THEN BEGIN LOTUS_12
   SAY @9078 IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",18)~ THEN BEGIN END_0
   SAY @9113 IF ~~ THEN EXIT
END

