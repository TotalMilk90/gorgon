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
   +~Global("h_ArioshQuest","GLOBAL",11) Global("h_FeldpostDues","GLOBAL",0)~+ ~Evening, barkeep. I'm here for the Gorgon's Eye dues. You know how this works.~ GOTO F1
END
