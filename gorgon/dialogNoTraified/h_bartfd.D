APPEND ~bart5~

IF ~~ THEN BEGIN F1
   SAY ~Right, right... I've got it all right here. Just take it and go, will ya? We don't need any trouble with the Gorgon's Eye, no <SIRMAAM>.~
IF ~~ THEN DO ~
   SetGlobal("h_FeldpostDues","GLOBAL",1)
   AddJournalEntry(@529,QUEST)
   GiveItemCreate("h_misc23",LastTalkedToBy,0,0,0)~ EXIT
END

END

EXTEND_TOP BART5 0
   +~Global("h_ArioshQuest","GLOBAL",11) Global("h_FeldpostDues","GLOBAL",0)~+ ~Good evening. I've come to collect the Gorgon's Eye dues.~ GOTO F1
   +~Global("h_ArioshQuest","GLOBAL",11) Global("h_FeldpostDues","GLOBAL",0)~+ ~I'm here for the Gorgon's Eye's cut. Pay up now, and we won't have any trouble.~ GOTO F1
END
