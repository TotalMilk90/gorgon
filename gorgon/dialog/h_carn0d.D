APPEND GAMES

IF WEIGHT #-1 ~GlobalGT("h_RigaldoQuest","GLOBAL",9) GlobalLT("h_RigaldoQuest","GLOBAL",16)~ THEN BEGIN CARN_0
   SAY ~Sorry folks but I'm going to have to ask you to leave. We've just been robbed and we have to close up shop until we get everything in order.~ IF ~~ THEN EXIT
END


END
