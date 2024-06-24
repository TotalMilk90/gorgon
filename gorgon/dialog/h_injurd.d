BEGIN h_injurd

IF ~True()~ THEN BEGIN 1
   SAY @38500 /* You move in shadows, allied with the Gorgon's Eye, are you not? */
       ++ @38501 /* I do. State your purpose. */ GOTO 3
       ++ @38502 /* Who's asking? */ GOTO 3
       ++ @38503 /* I think you've mistaken me for someone else. */ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @38504 /* I commend your caution, <CHARNAME>. Yet, as an ally of your kin, it is misplaced. */ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @38505 /* I am nameless, trained as one of Baldwin's elite Snake Heads, a blade enshrouded in darkness, privy to the deepest mysteries. */
       ++ @38506 /* You look pretty roughed up. How are you even alive? */ GOTO 4
       ++ @38507 /* What happened to you? */ GOTO 5
END

IF ~~ THEN BEGIN 4
   SAY @38508 /* There is a reason I was chosen for ths position. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @38509 /* I had discovered a contingent of Shadow Thieves and was compelled to intervine. Their demise came at great cost, yet the reward of information was invaluable. */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @38510 /* Amidst their remains, I unearthed a missive revealing details of our enemy, and the whereabouts of the Kerykeion fragment. */ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @38511 /* You must deliver this correspondence to Baldwin, at once. Hesitate not, and divulge not a word to another. */
       ++ @38512 /* Alright, I'll go deliver the message now. */ GOTO 9
       ++ @38513 /* And what of your wounds? Allow me to provide care before I can escort you for proper healing. */ GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @38514 /* My injuries are too severe. Even if I endure, I shall be fractured, unfit to resume my duty. */ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @38515 /* With this, there is one final task I will ask of you. Kill me here, so that our enemies cannot get to me. */
       ++ @38516 /* I understand. Make you peace then. */ GOTO 10
       ++ @38517 /* I won't kill you, not if there's a chance for you to be saved. */ GOTO 11
END

IF ~~ THEN BEGIN 10
   SAY @38518 /* Farewell, <CHARNAME>. Complete our duty. */
IF ~~ THEN DO ~
   Kill("h_injurc")
   AddJournalEntry(@203,USER)~ EXIT
END

IF ~~ THEN BEGIN 11
   SAY @38519 /* Nobility will not alter this course. I shall do it myself. Farewell, <CHARNAME>. Complete your duty. */
IF ~~ THEN DO ~
   Kill("h_injurc")
   AddJournalEntry(@203,USER)~ EXIT
END

