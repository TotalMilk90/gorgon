BEGIN h_injurd

IF ~True()~ THEN BEGIN 1
   SAY ~You move in shadows, allied with the Gorgon's Eye, are you not?~
       ++ ~I do. State your purpose.~ GOTO 3
       ++ ~Who's asking?~ GOTO 3
       ++ ~I think you've mistaken me for someone else.~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~I commend your caution, <CHARNAME>. Yet, as an ally of your kin, it is misplaced.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I am nameless, trained as one of Baldwin's elite Snake Heads, a blade enshrouded in darkness, privy to the deepest mysteries.~
       ++ ~You look pretty roughed up. How are you even alive?~ GOTO 4
       ++ ~What happened to you?~ GOTO 5
END

IF ~~ THEN BEGIN 4
   SAY ~There is a reason I was chosen for ths position.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~I had discovered a contingent of Shadow Thieves and was compelled to intervine. Their demise came at great cost, yet the reward of information was invaluable.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Amidst their remains, I unearthed a missive revealing details of our enemy, and the whereabouts of the Kerykeion fragment.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~You must deliver this correspondence to Baldwin, at once. Hesitate not, and divulge not a word to another.~
       ++ ~Alright, I'll go deliver the message now.~ GOTO 9
       ++ ~And what of your wounds? Allow me to provide care before I can escort you for proper healing.~ GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~My injuries are too severe. Even if I endure, I shall be fractured, unfit to resume my duty.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~With this, there is one final task I will ask of you. Kill me here, so that our enemies cannot get to me.~
       ++ ~I understand. Make you peace then.~ GOTO 10
       ++ ~I won't kill you, not if there's a chance for you to be saved.~ GOTO 11
END

IF ~~ THEN BEGIN 10
   SAY ~Farewell, <CHARNAME>. Complete our duty.~
IF ~~ THEN DO ~
   Kill("h_injurc")
   AddJournalEntry(@202,USER)~ EXIT
END

IF ~~ THEN BEGIN 11
   SAY ~Nobility will not alter this course. I shall do it myself. Farewell, <CHARNAME>. Complete your duty.~
IF ~~ THEN DO ~
   Kill("h_injurc")
   AddJournalEntry(@202,USER)~ EXIT
END

