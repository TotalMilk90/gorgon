APPEND GELLAN

IF WEIGHT #-1 ~PartyHasItem("h_misc11")~ THEN BEGIN EURO_1
   SAY @36000 /* By Garl, that's Europea! Quickly, hand her over so I may tend to her wounds. */ IF ~~ THEN GOTO EURO_2
END

IF ~~ THEN BEGIN EURO_2
   SAY @36001 /* Poor child, where have you been all these years? */
       ++ @36002 /* She was living as a slave to someone in Beregost until she was somehow able to escape. She was eventually captured by some bounty hunters and that's when I intervined. */ GOTO EURO_3
END

IF ~~ THEN BEGIN EURO_3
   SAY @36003 /* That would explain this device around her neck. It was probably used by her captor to dull her mind. Here, let me try to remove it. */
       ++ @36004 /* Actually, I could use that collar. If I bring it back, they will believe her dead and will call off the bounty. */ GOTO EURO_4
END

IF ~~ THEN BEGIN EURO_4
   SAY @36005 /* You have a done a great service here and I thank you, graciously. */
       ++ @36006 /* It was my pleasure. */ GOTO EURO_5
       ++ @36007 /* I was hoping there would be some type of reward. */ GOTO EURO_6
END

IF ~~ THEN BEGIN EURO_5
   SAY @36008 /* Farewell, friend. */
IF ~~ THEN DO ~
   AddJournalEntry(@428,QUEST)
   TakePartyItem("h_misc11")
   DestroyItem("h_misc11")
   GiveItemCreate("h_misc10",LastTalkedToBy,0,0,0)
   ReputationInc(1)~ EXIT
END

IF ~~ THEN BEGIN EURO_6
   SAY @36009 /* Of course you were. I remember the days when helping others was satisfaction enough. */
IF ~~ THEN DO ~
   AddJournalEntry(@428,QUEST)
   TakePartyItem("h_misc11")
   DestroyItem("h_misc11")
   GiveItemCreate("h_misc10",LastTalkedToBy,0,0,0)
   GiveGoldForce(25)~ EXIT
END

END















