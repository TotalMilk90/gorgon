BEGIN h_city6d


IF ~RandomNum(8,8)~ THEN BEGIN 0
   SAY @24500 /* <CHARNAME>, we've got everything under control here. We're at your service. Just say the word. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,1)~ THEN BEGIN 1
   SAY @24501 /* <CHARNAME>, is there anything pressing you'd like us to handle? */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,2)~ THEN BEGIN 2
   SAY @24502 /* Aye, <SIRMAAM>, the streets are secure now. What's our next move? */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,3)~ THEN BEGIN 3
   SAY @24503 /* The city's been bustling lately. More travelers passing through, and it's keeping us on our toes. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,4)~ THEN BEGIN 4
   SAY @24504 /* Don't worry about anything here, <SIRMAAM>, feel free to go about your business. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,5)~ THEN BEGIN 5
   SAY @24505 /* We're still the law here, but you know who we tip our hats to. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,6)~ THEN BEGIN 6
   SAY @24506 /* Your orders? We'll make sure to carry them out promptly, just like you'd expect. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,7)~ THEN BEGIN 7
   SAY @24507 /* Aye, Gorgon's Eye. Carry on. */
IF ~~ THEN EXIT
END
