APPEND GAMES5

IF WEIGHT #-1 ~GlobalGT("h_RigaldoQuest","GLOBAL",9) GlobalLT("h_RigaldoQuest","GLOBAL",12) GlobalLT("h_ProcusQuest","GLOBAL",8)~ THEN BEGIN CARN_0
   SAY ~How'd those bastards even nick our weapons in the first place?~ IF ~~ THEN EXIT
END


END
