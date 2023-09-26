APPEND GAMES

IF WEIGHT #-1 ~GlobalGT("h_RigaldoQuest","GLOBAL",9) GlobalLT("h_RigaldoQuest","GLOBAL",16)~ THEN BEGIN CARN_0
   SAY ~Sorry folks, but I have to ask you to clear out. We just got hit by robbers, and we need to shut down 'til we sort things out.~ IF ~~ THEN EXIT
END


END
