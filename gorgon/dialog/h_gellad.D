APPEND GELLAN

IF WEIGHT #-1 ~PartyHasItem("h_misc11")~ THEN BEGIN EURO_1
   SAY ~By Garl, that's Europea! Quickly, hand her over so I may tend her wounds.~ IF ~~ THEN GOTO EURO_2
END

IF ~~ THEN BEGIN EURO_2
   SAY ~Poor child, where have you been all these years?~
       ++ ~She's been a slave to someone living in Beregost. Luckily, she was somehow able to escape, even after having a bounty placed on her.~ GOTO EURO_3
END

IF ~~ THEN BEGIN EURO_3
   SAY ~That would explain this device around her neck. It was probably used by her captor to dull her mind. Here, let me try to remove it.~
       ++ ~Actually, I could use that collar. If I bring it back, they will believe her dead and will call off the bounty.~ GOTO EURO_4
END

IF ~~ THEN BEGIN EURO_4
   SAY ~You have a done a great service here and I graciously thank you.~
       ++ ~It was my pleasure.~ GOTO EURO_5
       ++ ~I was hoping there would be some type of reward.~ GOTO EURO_6
END

IF ~~ THEN BEGIN EURO_5
   SAY ~Farewell, friend.~
IF ~~ THEN DO ~
   AddJournalEntry(@428,QUEST)
   TakePartyItem("h_misc11")
   DestroyItem("h_misc11")
   GiveItemCreate("h_misc10",LastTalkedToBy,0,0,0)
   ReputationInc(1)~ EXIT
END

IF ~~ THEN BEGIN EURO_6
   SAY ~Of course you were. *sigh* I remember the days when helping others was satisfaction enough.~
IF ~~ THEN DO ~
   AddJournalEntry(@428,QUEST)
   TakePartyItem("h_misc11")
   DestroyItem("h_misc11")
   GiveItemCreate("h_misc10",LastTalkedToBy,0,0,0)
   GiveGoldForce(25)~ EXIT
END

END















