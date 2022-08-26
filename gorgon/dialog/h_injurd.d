BEGIN h_injurd

IF ~True()~ THEN BEGIN 1
   SAY ~You there! You are in league with the Gorgon's Eye, are you not?~
       ++ ~Yes, I am. What can I do for you?~ GOTO 3
       ++ ~Who's asking?~ GOTO 3
       ++ ~Sorry, you have the wrong person.~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~I can't fault your cautiousness, yet I know who you are, <CHARNAME>.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I am one of Baldwin's Snake Heads, a black ops squadron of his most trusted and covert spies.~
       ++ ~You look pretty roughed up. How are you even alive, yet alone talking?~ GOTO 4
       ++ ~What happened to you?~ GOTO 5
END

IF ~~ THEN BEGIN 4
   SAY ~There is a reason I was chosen for ths position.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~I had discovered a contigent of Shadow Thieves not far from here and was forced into action. I was able to slay them but as you can see it was at quite the expense to myself.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Among their bloodied remains, I located this document with information regarding the client who hired the Shadow Thieves against us.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~You must bring this letter to Baldwin at once. Stop nowhere, and tell no one else.~
       ++ ~Alright, I'll go deliver the message now.~ GOTO 9
       ++ ~What of your wounds? I can provide some first aid before bringing you back for proper healing.~ GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~My injuries are far too severe. Even if I survive I will be broken and unable to resume my duty.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~There is one final task I ask of you. You must kill me here so that our enemies cannot get to me.~
       ++ ~I understand. Make you peace then.~ GOTO 10
       ++ ~I won't kill you if there is a chance for you to be saved.~ GOTO 11
END

IF ~~ THEN BEGIN 10
   SAY ~Farewell, <CHARNAME>.~
IF ~~ THEN DO ~
   Kill("h_injurc")
   AddJournalEntry(@202,USER)~ EXIT
END

IF ~~ THEN BEGIN 11
   SAY ~I will do it myself then. Farewell, <CHARNAME>.~
IF ~~ THEN DO ~
   Kill("h_injurc")
   AddJournalEntry(@202,USER)~ EXIT
END

