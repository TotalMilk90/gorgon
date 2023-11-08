BEGIN h_rogu2d

IF ~Global("h_BaldwinGuards","GLOBAL",2)~ THEN BEGIN 0
   SAY ~Stay sharp, mate. Baldwin's inside. Time to give him a hand now, innit?~ IF ~~ THEN EXIT
END

IF ~Global("h_BaldwinGuards","GLOBAL",3)~ THEN BEGIN 1
   SAY ~This 'ere's a Gorgon's Eye establishment now. New rightful owners, yeah? We're climbin' the ladder in this world, we are.~ IF ~~ THEN EXIT
END