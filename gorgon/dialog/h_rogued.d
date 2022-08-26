BEGIN h_rogued

IF ~Global("h_RigaldoQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~First time I seen yer face down here.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_RigaldoQuest","GLOBAL",0) GlobalLT("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN 1
   SAY ~Keep it movin'. I've been snippin' purses here since afore ye was born.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN CARNIVAL_1
   SAY ~Watch yer back in there.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN 2
   SAY ~Aye, <CHARNAME>. How ye be fairing lately?~ IF ~~ THEN EXIT
END
