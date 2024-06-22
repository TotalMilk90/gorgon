BEGIN h_lordtd

IF ~Global("h_LordTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY @45000 /* Ah, a new face in the midst of the revelry! Welcome, welcome! I am Lord Thalric, and this fine evening promises to be one of splendid entertainment. */ IF ~~ THEN EXIT
END 

IF ~Global("h_LordTalk","GLOBAL",1)~ THEN BEGIN 1
   SAY @45001 /* Ah, my friend, life's too short for dour faces and somber moods. A good time, that's what I seek! Let the revelry commence! */ IF ~~ THEN EXIT
END
