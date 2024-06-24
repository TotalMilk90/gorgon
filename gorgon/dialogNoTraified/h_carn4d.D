APPEND GAMES4

IF WEIGHT #-1 ~GlobalGT("h_RigaldoQuest","GLOBAL",9) GlobalLT("h_RigaldoQuest","GLOBAL",12) GlobalLT("h_ProcusQuest","GLOBAL",8)~ THEN BEGIN CARN_0
   SAY ~I almost feel sorry for those poor bastards. Once our proprietors get ahold of them, they'll be beggin' for a swift end.~ IF ~~ THEN EXIT
END


END
