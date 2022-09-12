BEGIN h_baldwd

IF WEIGHT #-1 ~Alignment(Player1,LAWFUL_GOOD)~ THEN BEGIN SORRY_0
   SAY @2000 IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN JOIN_0
   SAY @2001
       ++ @2002 GOTO JOIN_1
       ++ @2003 GOTO JOIN_2
       ++ @2004 GOTO JOIN_15
END

IF ~~ THEN BEGIN JOIN_1
   SAY @2005 IF ~~ THEN GOTO JOIN_3
END

IF ~~ THEN BEGIN JOIN_2
   SAY @2006 IF ~~ THEN GOTO JOIN_3
END

IF ~~ THEN BEGIN JOIN_3
   SAY @2007 IF ~~ THEN GOTO JOIN_4
END

IF ~~ THEN BEGIN JOIN_4
   SAY @2008 IF ~~ GOTO JOIN_5
END

IF ~~ THEN BEGIN JOIN_5
   SAY @2009 IF ~~ THEN GOTO JOIN_6
END

IF ~~ THEN BEGIN JOIN_6
   SAY @2010 IF ~~ THEN GOTO JOIN_7
END

IF ~~ THEN BEGIN JOIN_7
   SAY @2011
       ++ @2012 GOTO JOIN_8
       ++ @2013 GOTO JOIN_10
       ++ @2014 GOTO JOIN_11
       ++ @2015 GOTO JOIN_14
       ++ @2016 GOTO JOIN_14
       ++ @2017 GOTO JOIN_12
END

IF ~~ THEN BEGIN JOIN_8
   SAY @2018
       ++ @2019 GOTO JOIN_9
       ++ @2013 GOTO JOIN_10
       ++ @2014 GOTO JOIN_11
       ++ @2015 GOTO JOIN_14
       ++ @2016 GOTO JOIN_14
       ++ @2017 GOTO JOIN_12
END

IF ~~ THEN BEGIN JOIN_9
   SAY @2020
       ++ @2012 GOTO JOIN_8
       ++ @2013 GOTO JOIN_10
       ++ @2014 GOTO JOIN_11
       ++ @2015 GOTO JOIN_14
       ++ @2016 GOTO JOIN_14
       ++ @2017 GOTO JOIN_12
END

IF ~~ THEN BEGIN JOIN_10
   SAY @2021
       ++ @2012 GOTO JOIN_8
       ++ @2014 GOTO JOIN_11
       ++ @2015 GOTO JOIN_14
       ++ @2016 GOTO JOIN_14
       ++ @2017 GOTO JOIN_12
END

IF ~~ THEN BEGIN JOIN_11
   SAY @2022
       ++ @2012 GOTO JOIN_8
       ++ @2013 GOTO JOIN_10
       ++ @2015 GOTO JOIN_14
       ++ @2016 GOTO JOIN_14
       ++ @2017 GOTO JOIN_12
END

IF ~~ THEN BEGIN JOIN_12
   SAY @2023
IF ~~ THEN DO ~
   SetGlobal("h_DidNotJoin","GLOBAL",2)~ EXIT
END

IF ~Global("h_DidNotJoin","GLOBAL",2)~ THEN BEGIN JOIN_13
   SAY @2024
       ++ @2025 GOTO JOIN_14
       ++ @2013 GOTO JOIN_10
       ++ @2014 GOTO JOIN_11
       ++ @2026 GOTO JOIN_12
END

IF ~~ THEN BEGIN JOIN_14
   SAY @2027 IF ~~ THEN GOTO JOIN_14.5
END

IF ~~ THEN BEGIN JOIN_14.5
   SAY @2121
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",1)
   SetGlobal("h_DidNotJoin","GLOBAL",3)
   SetGlobal("h_BaldwinQuest","GLOBAL",1)
   AddJournalEntry(@200,USER)
   ReputationInc(-2)~ EXIT
END

IF ~~ THEN BEGIN JOIN_15
   SAY @2023
IF ~~ THEN DO ~
   SetGlobal("h_DidNotJoin","GLOBAL",1)~ EXIT
END

IF ~Global("h_DidNotJoin","GLOBAL",1)~ THEN BEGIN JOIN_16
   SAY @2028
       ++ @2029 GOTO JOIN_2
       ++ @2030 EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",1)~ THEN BEGIN JOIN_17
   SAY @2031 IF ~~ THEN EXIT
END


          ///////////////////////////////////////////
          ////////// Mage in the Mountains //////////
          ///////////////////////////////////////////


IF ~Global("h_BaldwinQuest","GLOBAL",2)~ THEN BEGIN MAGE_1
   SAY @2032 IF ~~ THEN GOTO MAGE_2
END

IF ~~ THEN BEGIN MAGE_2
   SAY @2033 IF ~~ THEN GOTO MAGE_3
END

IF ~~ THEN BEGIN MAGE_3
   SAY @2034 IF ~~ THEN GOTO MAGE_4
END

IF ~~ THEN BEGIN MAGE_4
   SAY @2035 IF ~~ THEN GOTO MAGE_5
END

IF ~~ THEN BEGIN MAGE_5
   SAY @2036 IF ~~ THEN GOTO MAGE_6
END

IF ~~ THEN BEGIN MAGE_6
   SAY @2037
       ++ @2038 GOTO MAGE_7
       ++ @2039 GOTO MAGE_8.5
       ++ @2040 GOTO MAGE_9
END

IF ~~ THEN BEGIN MAGE_7
   SAY @2041 IF ~~ THEN GOTO MAGE_8
END

IF ~~ THEN BEGIN MAGE_8
   SAY @2042
       ++ @2039 GOTO MAGE_8.5
       ++ @2040 GOTO MAGE_9
END

IF ~~ THEN BEGIN MAGE_8.5
   SAY @2043
       ++ @2044 GOTO MAGE_8.75
       ++ @2038 GOTO MAGE_7
       ++ @2040 GOTO MAGE_9
END

IF ~~ THEN BEGIN MAGE_8.75
   SAY @2045
       ++ @2038 GOTO MAGE_7
       ++ @2040 GOTO MAGE_9
END

IF ~~ THEN BEGIN MAGE_9
   SAY @2046 IF ~~ THEN GOTO MAGE_10
END

IF ~~ THEN BEGIN MAGE_10
   SAY @2047 IF ~~ THEN GOTO MAGE_11
END

IF ~~ THEN BEGIN MAGE_11
   SAY @2048 IF ~~ THEN GOTO MAGE_12
END

IF ~~ THEN BEGIN MAGE_12
   SAY @2049
       ++ @2050 GOTO MAGE_12.5
       ++ @2051 GOTO MAGE_13
END

IF ~~ THEN BEGIN MAGE_12.5
   SAY @2052
       ++ @2051 GOTO MAGE_13
END

IF ~~ THEN BEGIN MAGE_13
   SAY @2053
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",3)
   SetGlobal("h_SpawnDeneb","GLOBAL",1)
   SetGlobal("h_Saradin","GLOBAL",1)
   AddJournalEntry(@210,QUEST)~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",3)~ THEN BEGIN MAGE_14
   SAY @2054
       +~PartyHasItem("h_misc01")~+ @2055 GOTO MAGE_15
       ++ @2056 EXIT
END

IF ~~ THEN BEGIN MAGE_15
   SAY @2057 IF ~~ THEN GOTO MAGE_16
END

IF ~~ THEN BEGIN MAGE_16
   SAY @2058 IF ~~ THEN GOTO MAGE_17
END

IF ~~ THEN BEGIN MAGE_17
   SAY @2059 IF ~~ THEN GOTO MAGE_18
END

IF ~~ THEN BEGIN MAGE_18
   SAY @2060 IF ~~ THEN GOTO MAGE_19
END

IF ~~ THEN BEGIN MAGE_19
   SAY @2061 IF ~~ THEN GOTO MAGE_20
END

IF ~~ THEN BEGIN MAGE_20
   SAY @2062
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",4)
   SetGlobal("h_RigaldoQuest","GLOBAL",6)
   AddJournalEntry(@212,QUEST_DONE)
   TakePartyItem("h_misc01")
   DestroyItem("h_misc01")
   GiveItemCreate("h_ring01",LastTalkedToBy,0,0,0)
   AddExperienceParty(800)
   MoveToPoint([922.1052])
   Face(SW)~ EXIT
 //EscapeAreaMove("h_guilda",922,1052,SW)~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",4)~ THEN BEGIN MAGE_21
   SAY @2031 IF ~~ THEN EXIT
END


          ///////////////////////////////////
          /////// Bombs over Beregost ///////
          ///////////////////////////////////


IF ~Global("h_BaldwinQuest","GLOBAL",5)~ THEN BEGIN BOMBS_0
   SAY @2063
       ++ @2064 GOTO BOMBS_1
       +~NumDead("h_sthiec",12) NumDead("h_thiefc",11) PartyHasItem("h_misc08")~+ @2065 GOTO NAGATE_1
       ++ @2066 EXIT
END

IF ~~ THEN BEGIN BOMBS_1
   SAY @2067
       ++ @2068 GOTO BOMBS_2
END

IF ~~ THEN BEGIN BOMBS_2
   SAY @2069 IF ~~ THEN GOTO BOMBS_3
END

IF ~~ THEN BEGIN BOMBS_3
   SAY @2070 IF ~~ THEN GOTO BOMBS_4
END

IF ~~ THEN BEGIN BOMBS_4
   SAY @2071
       +~NumDead("h_sthiec",10) NumDead("h_thiefc",7) PartyHasItem("h_misc08")~+ @2065 GOTO NAGATE_1
       ++ @2072 EXIT
END


          ///////////////////////////////////
          ///////// Learn of Nagate /////////
          ///////////////////////////////////


IF ~~ THEN BEGIN NAGATE_1
   SAY @2073 IF ~~ THEN GOTO NAGATE_2
END

IF ~~ THEN BEGIN NAGATE_2
   SAY @2074 IF ~~ THEN GOTO NAGATE_3
END

IF ~~ THEN BEGIN NAGATE_3
   SAY @2075 IF ~~ THEN GOTO NAGATE_4
END

IF ~~ THEN BEGIN NAGATE_4
   SAY @2076 IF ~~ THEN GOTO NAGATE_5
END

IF ~~ THEN BEGIN NAGATE_5
   SAY @2077 IF ~~ THEN GOTO NAGATE_6
END

IF ~~ THEN BEGIN NAGATE_6
   SAY @2078 IF ~~ THEN GOTO NAGATE_7
END

IF ~~ THEN BEGIN NAGATE_7
   SAY @2079
IF ~~ THEN DO ~
   SetGlobal("h_GuildMusic","GLOBAL",2)
   SetGlobal("h_BaldwinQuest","GLOBAL",6)
   SetGlobal("h_RigaldoQuest","GLOBAL",14)
   SetGlobal("h_SpawnNagate","GLOBAL",1)
   SetGlobal("h_ShadowWar","GLOBAL",3)
   AddJournalEntry(@214,QUEST_DONE)
   AddJournalEntry(@215,QUEST)
   TakePartyItem("h_misc08")
   DestroyItem("h_misc08")~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",6)~ THEN BEGIN NAGATE_8
   SAY @2080 IF ~~ THEN EXIT
END


          ///////////////////////////////////
          //////// Return From Thamuz ///////
          ///////////////////////////////////


IF ~Global("h_BaldwinQuest","GLOBAL",7)~ THEN BEGIN THAMUZ_0
   SAY @2081
       ++ @2082 GOTO THAMUZ_1
END

IF ~~ THEN BEGIN THAMUZ_1
   SAY @2083
       ++ @2084 GOTO THAMUZ_2
END

IF ~~ THEN BEGIN THAMUZ_2
   SAY @2085
       ++ @2086 GOTO THAMUZ_4
       ++ @2087 GOTO THAMUZ_5
       ++ @2088 GOTO THAMUZ_7
       ++ @2089 GOTO THAMUZ_9
END

IF ~~ THEN BEGIN THAMUZ_4
   SAY @2090
       ++ @2087 GOTO THAMUZ_5
       ++ @2088 GOTO THAMUZ_7
       ++ @2089 GOTO THAMUZ_9
       ++ @2091 GOTO THAMUZ_10
END

IF ~~ THEN BEGIN THAMUZ_5
   SAY @2092 IF ~~ THEN GOTO THAMUZ_6
END

IF ~~ THEN BEGIN THAMUZ_6
   SAY @2093
       ++ @2086 GOTO THAMUZ_4
       ++ @2088 GOTO THAMUZ_7
       ++ @2094 GOTO THAMUZ_9
       ++ @2091 GOTO THAMUZ_10
END

IF ~~ THEN BEGIN THAMUZ_7
   SAY @2095 IF ~~ THEN GOTO THAMUZ_8
END

IF ~~ THEN BEGIN THAMUZ_8
   SAY @2096
       ++ @2086 GOTO THAMUZ_4
       ++ @2087 GOTO THAMUZ_5
       ++ @2089 GOTO THAMUZ_9
       ++ @2091 GOTO THAMUZ_10
END

IF ~~ THEN BEGIN THAMUZ_9
   SAY @2097
       ++ @2086 GOTO THAMUZ_4
       ++ @2087 GOTO THAMUZ_5
       ++ @2098 GOTO THAMUZ_7
       ++ @2091 GOTO THAMUZ_10
END

IF ~~ THEN BEGIN THAMUZ_10
   SAY @2099
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",8)
   SetGlobal("h_RigaldoQuest","GLOBAL",15)
   SetGlobal("h_LiedelQuest","GLOBAL",3)
   SetGlobal("h_SecondRiddle","GLOBAL",1)
   SetGlobal("h_MerediaQuest","GLOBAL",1)
   ActionOverride("h_ilenac",EscapeArea())
   AddJournalEntry(@217,QUEST_DONE)
   TakePartyItem("h_misc02")
   DestroyItem("h_misc02")
   AddExperienceParty(800)~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",8) NumItemsPartyLT("h_misc13",1)~ THEN BEGIN THAMUZ_12
   SAY @2031 IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc14")~ THEN BEGIN BETRAY_0
   SAY @2031
       ++ @2100 GOTO BETRAY_1
END

IF ~~ THEN BEGIN BETRAY_1
   SAY @2101
       ++ @2102 GOTO BETRAY_2
       ++ @2103 GOTO BETRAY_2
       ++ @2104 GOTO BETRAY_2
       ++ @2105 GOTO BETRAY_2
END

IF ~~ THEN BEGIN BETRAY_2
   SAY @2106 IF ~~ THEN GOTO BETRAY_3
END

IF ~~ THEN BEGIN BETRAY_3
   SAY @2107 IF ~~ THEN GOTO BETRAY_4
END

IF ~~ THEN BEGIN BETRAY_4
   SAY @2108
IF ~~ THEN DO ~
   SetGlobal("h_FakeKery","GLOBAL",1)
   TakePartyItem("h_misc14")
   DestroyItem("h_misc14")
   AddJournalEntry(@223,QUEST)~ EXIT
END


          ///////////////////////////////////
          ///////// Gerard's Gambit /////////
          ///////////////////////////////////


IF ~Global("h_BaldwinQuest","GLOBAL",8) PartyHasItem("h_misc13")~ THEN BEGIN GERARD_0
   SAY @2031
       ++ @2109 GOTO GERARD_1
END

IF ~~ THEN BEGIN GERARD_1
   SAY @2110 IF ~~ THEN GOTO GERARD_2
END

IF ~~ THEN BEGIN GERARD_2
   SAY @2074 IF ~~ THEN GOTO GERARD_3
END

IF ~~ THEN BEGIN GERARD_3
   SAY @2111 IF ~~ THEN GOTO GERARD_4
END

IF ~~ THEN BEGIN GERARD_4
   SAY @2112 IF ~~ THEN GOTO GERARD_5
END

IF ~~ THEN BEGIN GERARD_5
   SAY @2113
       ++ @2114 GOTO GERARD_6
       ++ @2115 GOTO GERARD_7
       ++ @2116 GOTO GERARD_8
END

IF ~~ THEN BEGIN GERARD_6
   SAY @2117
       ++ @2115 GOTO GERARD_7
       ++ @2116 GOTO GERARD_8
END

IF ~~ THEN BEGIN GERARD_7
   SAY @2118
       ++ @2119 GOTO GERARD_6
       ++ @2116 GOTO GERARD_8
END


IF ~~ THEN BEGIN GERARD_8
   SAY @2120
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",9)
   SetGlobal("h_ShadowWar","GLOBAL",8)
   SetGlobal("h_SpawnBaldwin","GLOBAL",1)
   AddJournalEntry(@218,QUEST)
   EscapeArea()~ EXIT
END