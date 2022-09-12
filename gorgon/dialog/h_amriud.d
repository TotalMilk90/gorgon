BEGIN h_amriud

IF ~Global("h_AishaBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY @1200
       ++ @1201 EXIT
END

IF ~Global("h_AishaBounty","GLOBAL",1)~ THEN BEGIN 1
   SAY @1200
       ++ @1202 GOTO 2
       ++ @1201 EXIT
END

IF ~~ THEN BEGIN 2
   SAY @1203
       ++ @1204 GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @1205
       ++ @1206 GOTO 4
       +~CheckStatGT(Player1,17,STR)~+ @1207 GOTO 8
       +~CheckStatLT(Player1,18,STR)~+ @1207 GOTO 5
       ++ @1208 GOTO 6
       ++ @1209 GOTO 9
       ++ @1201 GOTO 10
END

IF ~~ THEN BEGIN 4
   SAY @1210
       +~CheckStatGT(Player1,17,STR)~+ @1207 GOTO 8
       +~CheckStatLT(Player1,18,STR)~+ @1207 GOTO 5
       ++ @1208 GOTO 6
       ++ @1209 GOTO 9
       ++ @1201 GOTO 10
END

IF ~~ THEN BEGIN 5
   SAY @1211
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",3)
   AddJournalEntry(@422,QUEST)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
   SAY @1212
       +~PartyGoldLT(300)~+ @1213 EXIT
       +~PartyGoldGT(299)~+ @1214 GOTO 7
       +~CheckStatGT(Player1,17,STR)~+ @1207 GOTO 8
       +~CheckStatLT(Player1,18,STR)~+ @1207 GOTO 5
       ++ @1209 GOTO 9
       ++ @1201 GOTO 10
END

IF ~~ THEN BEGIN 7
   SAY @1215
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",3)
   AddJournalEntry(@422,QUEST)
   TakePartyGold(300)~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY @1216
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",3)
   AddJournalEntry(@422,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 9
   SAY @1217
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY @1215
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",2)~ EXIT
END

IF ~Global("h_AishaBounty","GLOBAL",2)~ THEN BEGIN 11
   SAY @1218
       ++ @1219 GOTO 4
       ++ @1220 EXIT
END

IF ~GlobalGT("h_AishaBounty","GLOBAL",2)~ THEN BEGIN 12
   SAY @1221 IF ~~ THEN EXIT
END

