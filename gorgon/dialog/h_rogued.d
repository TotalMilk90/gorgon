BEGIN h_rogued

IF ~Global("h_RigaldoQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY @9200 IF ~~ THEN EXIT
END

IF ~GlobalGT("h_RigaldoQuest","GLOBAL",0) GlobalLT("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN 1
   SAY @9201 IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN CARNIVAL_1
   SAY @9202 IF ~~ THEN EXIT
END

IF ~GlobalGT("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN 2
   SAY @9203 IF ~~ THEN EXIT
END
