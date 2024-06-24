APPEND GAMES3

IF WEIGHT #-1 ~GlobalGT("h_RigaldoQuest","GLOBAL",9) GlobalLT("h_RigaldoQuest","GLOBAL",12) GlobalLT("h_ProcusQuest","GLOBAL",8)~ THEN BEGIN CARN_0
   SAY @21000 /* Those bloody thieves just messed with the wrong boys. They'll get what's coming to them. */ IF ~~ THEN EXIT
END


END
