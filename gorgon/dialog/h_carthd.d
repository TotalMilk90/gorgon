BEGIN h_carthd

IF ~GlobalLT("h_LiedelQuest","GLOBAL",2) Global("h_CarthBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY @3200 IF ~~ THEN EXIT
END

IF ~GlobalGT("h_LiedelQuest","GLOBAL",1) Global("h_CarthBounty","GLOBAL",0)~ THEN BEGIN 1
   SAY @3200
       ++ @3201 GOTO 2
       ++ @3202 GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY @3203 IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @3204 IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @3205 IF ~~ THEN GOTO 4.5
END

IF ~~ THEN BEGIN 4.5
   SAY @3206 IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @3207 IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @3208
       ++ @3209 GOTO 7
       ++ @3210 DO ~
   Kill("h_carthc")
   SetGlobal("h_CarthBounty","GLOBAL",1)
   AddJournalEntry(@411,QUEST)
   ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY @3211
       +~PartyGoldGT(299)~+ @3212 GOTO 11
       +~PartyGoldLT(300)~+ @3213 GOTO 9
       ++ @3214 DO ~
   Kill("h_carthc")
   SetGlobal("h_CarthBounty","GLOBAL",1)
   AddJournalEntry(@411,QUEST)
   ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 9
   SAY @3215
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",2)~ EXIT
END

IF ~Global("h_CarthBounty","GLOBAL",2)~ THEN BEGIN 10
   SAY @3216
       +~PartyGoldGT(299)~+ @3217 GOTO 11
       +~PartyGoldLT(300)~+ @3218 EXIT
       ++ @3219 DO ~
   Kill("h_carthc")
   SetGlobal("h_CarthBounty","GLOBAL",1)
   AddJournalEntry(@411,QUEST)
   ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 11
   SAY @3220
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",3)
   AddJournalEntry(@412,QUEST)
   TakePartyGold(300)
   AddExperienceParty(300)
   ReputationInc(1)
   EscapeArea()~ EXIT
END

