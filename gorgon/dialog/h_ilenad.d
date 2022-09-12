BEGIN h_ilenad

IF WEIGHT #-1 ~Global("h_MerediaQuest","GLOBAL",3)~ THEN BEGIN QUEST_0
   SAY ~<CHARNAME>! You rescued me from that damn lunatic! Oh, thank you!~ IF ~~ THEN GOTO QUEST_1
END

IF ~~ THEN BEGIN QUEST_1
   SAY ~His wife came home and caught us together! I tried to leave before things turned ugle but he wouldn't let me.~ IF ~~ THEN GOTO QUEST_2
END

IF ~~ THEN BEGIN QUEST_2
   SAY ~Hegot all crazy-eyed and attacked his wife! Then he knocked me out and brought me here. I didn't know what he was planning to do with me!~ IF ~~ THEN GOTO QUEST_3
END

IF ~~ THEN BEGIN QUEST_3
   SAY ~I'm heading back to the den! Thanks again, <CHARNAME>, I don't know how I can ever repay you.~
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",4)
   AddJournalEntry(@714,QUEST)
   EscapeArea()~ EXIT
END

IF ~  RandomNum(8,8)
~ THEN BEGIN 0
  SAY ~Ooo love. You're a cheeky monkey, aren't you?~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,1)
~ THEN BEGIN 1
  SAY ~I love a fighter in full plate. They just look so... hard.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,2)
~ THEN BEGIN 2
  SAY ~I generally avoid temptation unless I can't resist it.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,3)
~ THEN BEGIN 3
  SAY ~I'm no angel, but I've spread my wings a bit.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,4)
~ THEN BEGIN 4
  SAY ~It is better to be looked over than overlooked.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,5)
~ THEN BEGIN 5
  SAY ~The curve is more powerful than the sword.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,6)
~ THEN BEGIN 6
  SAY ~Too many girls follow the line of least resistance, but a good line is hard to resist.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(8,7)
~ THEN BEGIN 7
  SAY ~Anything worth doing is worth doing slowly.~
  IF ~~ THEN EXIT
END


