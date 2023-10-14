APPEND ~bart13~

IF ~~ THEN BEGIN B1
   SAY ~What's this, another wolf tryin' to milk me? Paid a bloke not an hour past.~
       ++ ~That's not possible. I'm collecting tonight.~ GOTO B2
       ++ ~You think I'm a fool, do you? Lying to me would be a grave mistake.~ GOTO B2
       ++ ~Not my concern, fork over the dues or there'll be hell to pay.~ GOTO B3
END

IF ~~ THEN BEGIN B2
   SAY ~Swear on me mum's life, I do! Looked the part, he did. Gorgon's Eye. Then off 'e went, headed 'round the back.~
       ++ ~You better not be trying to set me up, or else this place'll be cinders.~ GOTO B5
       ++ ~I'm not buying it. Pay up or they'll be trouble.~ GOTO B3
END

IF ~~ THEN BEGIN B3
   SAY ~Oh, please, kind sir! I ain't lyin' to ya, I swear on the Devil's arse. I don't have anything left for ya!~
       ++ ~Then hand over whatever you've got, quick now! I won't leave empty-handed.~ GOTO B4
       ++ ~I'll take a look, but if you're lying, I'll be back with a vengeance.~ GOTO B5
END

IF ~~ THEN BEGIN B4
   SAY ~Blast ye Gorgon devils! Take it then and leave me in peace.~
IF ~~ THEN DO ~
   SetGlobal("h_BurningDues","GLOBAL",1)
   SetGlobal("h_BlackLeave","GLOBAL",0)
   SetGlobal("h_SpawnBarth","GLOBAL",1)
   ReputationInc(-1)
   GiveGoldForce(100)
   AddJournalEntry(@530,QUEST)~ EXIT
END

IF ~~ THEN BEGIN B5
   SAY ~I ain't! Saw him bolting 'round the back, I did. He might still be lurkin' out there!~
IF ~~ THEN DO ~
   SetGlobal("h_BurningDues","GLOBAL",1)
   SetGlobal("h_BlackLeave","GLOBAL",0)
   SetGlobal("h_SpawnBarth","GLOBAL",1)
   AddJournalEntry(@530,QUEST)~ EXIT
END

END

EXTEND_TOP BART13 0
   +~Global("h_ArioshQuest","GLOBAL",11) Global("h_BurningDues","GLOBAL",0)~+ ~I'm here to collect the dues for the Gorgon's Eye. You know the drill.~ GOTO B1
END
