BEGIN h_vapuld

IF ~GlobalLT("h_LiedelQuest","GLOBAL",2)~ THEN BEGIN 0
   SAY @10200 IF ~~ THEN EXIT
END

IF ~GlobalGT("h_LiedelQuest","GLOBAL",1)~ THEN BEGIN 1
   SAY @10200
       ++ @10201 GOTO 2
       ++ @10202 GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY @10203 IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @10204
       ++ @10205 GOTO 7
       ++ @10206 GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @10207 IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @10208
       ++ @10209 GOTO 6
       ++ @10210 GOTO 7
END

IF ~~ THEN BEGIN 6
   SAY @10211
       ++ @10212 GOTO 8
       ++ @10213 GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @10214
IF ~~ THEN DO ~
   AddJournalEntry(@416,QUEST)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY @10215
IF ~~ THEN DO ~
   AddJournalEntry(@417,QUEST)
   GiveItem("h_misc09",LastTalkedToBy)
   ReputationInc(1)
   EscapeArea()~ EXIT
END
