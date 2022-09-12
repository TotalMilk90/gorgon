APPEND MTBE5

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",12) Global("h_BorlandQuest","GLOBAL",0)~ THEN BEGIN B_9
   SAY @2200
       ++ @2201 GOTO B_10
       ++ @2202 GOTO GOOD_1
       ++ @2203 EXIT
END

IF ~~ THEN BEGIN B_10
   SAY @2204
       ++ @2205 GOTO B_11
END

IF ~~ THEN BEGIN B_11
   SAY @2206
       ++ @2207 GOTO B_12
       ++ @2208 GOTO B_13
       ++ @2209 GOTO B_14
       ++ @2210 GOTO B_14
       ++ @2211 GOTO B_13
END

IF ~~ THEN BEGIN B_12
   SAY @2212
       ++ @2208 GOTO B_13
       ++ @2209 GOTO B_14
       ++ @2210 GOTO B_14
       ++ @2211 GOTO B_13
END

IF ~~ THEN BEGIN B_13
   SAY @2213
       ++ @2214 GOTO B_15
       ++ @2215 GOTO B_16
END

IF ~~ THEN BEGIN B_14
   SAY @2216
       ++ @2214 GOTO B_15
       ++ @2215 GOTO B_16
END

IF ~~ THEN BEGIN B_15
   SAY @2217
IF ~~ THEN DO ~
   SetGlobal("h_BorlandQuest","GLOBAL",1)
   SetGlobal("h_GuildThieves","GLOBAL",5)
   AddJournalEntry(@325,QUEST)~ EXIT
END

IF ~~ THEN BEGIN B_16
   SAY @2218
IF ~~ THEN DO ~
   SetGlobal("h_BorlandQuest","GLOBAL",1)
   SetGlobal("h_GuildThieves","GLOBAL",5)
   AddJournalEntry(@325,QUEST)
   GiveItemCreate("h_misc07",LastTalkedToBy,0,0,0)                                           
   GiveGoldForce(300)~ EXIT
END

IF WEIGHT #-1 ~Global("h_BorlandQuest","GLOBAL",1)~ THEN BEGIN B_18
   SAY @2219 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GOOD_1
   SAY @2220
       ++ @2221 GOTO GOOD_2
       ++ @2222 GOTO GOOD_3
END

IF ~~ THEN BEGIN GOOD_2
   SAY @2212
       ++ @2222 GOTO GOOD_3
       ++ @2223 GOTO GOOD_4
END

IF ~~ THEN BEGIN GOOD_3
   SAY @2224
       ++ @2221 GOTO GOOD_2
       ++ @2223 GOTO GOOD_4
END

IF ~~ THEN BEGIN GOOD_4
   SAY @2225
IF ~~ THEN DO ~
   SetGlobal("h_BorlandQuest","GLOBAL",2)
   SetGlobal("h_GuildThieves","GLOBAL",5)
   AddJournalEntry(@325,QUEST)
   GiveItemCreate("h_misc07",LastTalkedToBy,0,0,0)                                           
   GiveGoldForce(300)~ EXIT
END

IF WEIGHT #-1 ~Global("h_BorlandQuest","GLOBAL",2)~ THEN BEGIN GOOD_5
   SAY @2226 IF ~~ THEN EXIT
END


END
