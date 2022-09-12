APPEND NOBW2

IF ~~ THEN BEGIN h_1
   SAY @8200 IF ~~ THEN GOTO h_2
END

IF ~~ THEN BEGIN h_2
   SAY @8201
       ++ @8202 GOTO h_3
       ++ @8203 GOTO h_3
       ++ @8204 GOTO h_3
END

IF ~~ THEN BEGIN h_3
   SAY @8205
       ++ @8206 GOTO h_4
END

IF ~~ THEN BEGIN h_4
   SAY @8207 IF ~~ THEN GOTO h_5
END

IF ~~ THEN BEGIN h_5
   SAY @8208 IF ~~ THEN GOTO h_6
END

IF ~~ THEN BEGIN h_6
   SAY @8209
       +~PartyHasItem("h_misc15")~+ @8210 GOTO h_7
END

IF ~~ THEN BEGIN h_7
   SAY @8211
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@620,QUEST)~ EXIT
END

END

EXTEND_TOP NOBW2 0
   +~Global("h_TalkedToMaid","GLOBAL",1)~+ @8212 GOTO h_1
   ++ @8213 EXIT
END