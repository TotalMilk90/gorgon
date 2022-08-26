APPEND GAMES3

IF WEIGHT #-1 ~GlobalGT("h_RigaldoQuest","GLOBAL",9) GlobalLT("h_RigaldoQuest","GLOBAL",16)~ THEN BEGIN CARN_0
   SAY ~Those bloody thieves just messed with the wrong crew. They'll get what's coming to them.~ IF ~~ THEN EXIT
END


END
