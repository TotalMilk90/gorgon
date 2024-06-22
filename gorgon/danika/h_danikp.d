BEGIN h_danikp

IF ~Global("h_DanikaKickedOut","GLOBAL",0) Global("h_BetrayBaldwin","GLOBAL",0)~ THEN BEGIN 0
   SAY @3100 /* I understand that circumstances and needs within a group such as ours can change. If you believe that it's best for me to step back from the party, I will respect that decision. */
       ++ @3101 /* I would like you to stay with us. Your skills and insights are too important to lose. */ DO ~JoinParty()~ EXIT
       ++ @3102 /* I appreciate your understanding, Danika. It's best for the team at this moment. */ GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @3103 /* My time with you has been an experience that I will carry with me as I return to the Gorgon's Eye to resume my duties. Should you find need of my abilities again, do not hesitate to call upon me. */ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @3104 /* For now, I will continue my work in the shadows, serving the needs of the Church as I was trained to do. May your path remain shrouded in the protective embrace of Mask. */
IF ~~ THEN DO ~
   SetGlobal("h_DanikaKickedOut","GLOBAL",1)
   SetGlobal("h_DanikaGoToGorgon","GLOBAL",1)
   EscapeArea()~ EXIT
END

IF ~Global("h_DanikaKickedOut","GLOBAL",0) GlobalGT("h_BetrayBaldwin","GLOBAL",0)~ THEN BEGIN 3
   SAY @3100 /* I understand that circumstances and needs within a group such as ours can change. If you believe that it's best for me to step back from the party, I will respect that decision. */
       ++ @3101 /* I would like you to stay with us. Your skills and insights are too important to lose. */ DO ~JoinParty()~ EXIT
       ++ @3102 /* I appreciate your understanding, Danika. It's best for the team at this moment. */ GOTO 4
END
   
IF ~~ THEN BEGIN 4
   SAY @3105 /* Given the current circumstances, I will make my way to Baldur's Gate. I have contacts working with Alatos, and I can continue to serve the interests of our faith in that capacity. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @3106 /* The experiences I've gained during my time with you have been invaluable and will surely influence my future endeavors. Should you find need of my abilities again, do not hesitate to call upon me. */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @3104 /* For now, I will continue my work in the shadows, serving the needs of the Church as I was trained to do. May your path remain shrouded in the protective embrace of Mask. */
IF ~~ THEN DO ~
   SetGlobal("h_DanikaKickedOut","GLOBAL",1)
   SetGlobal("h_DanikaGoToAlatos","GLOBAL",1)
   EscapeArea()~ EXIT
END



