BEGIN h_opheld

IF ~True()~ THEN BEGIN 0
   SAY ~Take heed! There are potent potions scattered about. A single spill could lead to the most dire of consequences.~
       ++ ~Can I take a look at your inventory?~ GOTO 1
       ++ ~Sorry to have disturbed you.~ EXIT
END

IF ~~ THEN BEGIN 1
   SAY ~Alright, but be quick about it.~
IF ~~ THEN DO ~
   StartStore("h_ophsto",LastTalkedToBy(Myself))~ EXIT
END
