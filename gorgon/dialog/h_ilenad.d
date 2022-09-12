BEGIN h_ilenad

IF WEIGHT #-1 ~Global("h_MerediaQuest","GLOBAL",3)~ THEN BEGIN QUEST_0
   SAY ~Oh, <CHARNAME>! I'm so glad you found me!~ IF ~~ THEN GOTO QUEST_1
END

IF ~~ THEN BEGIN QUEST_1
   SAY ~His wife came home and caught us together! I had to watch as he cut her down with his sword!~ IF ~~ THEN GOTO QUEST_2
END

IF ~~ THEN BEGIN QUEST_2
   SAY ~I tried to run but he grabbed me and knocked me out. When I woke up we were on the road heading south. I was so scared, I didn't know what he was going to do with me!~ IF ~~ THEN GOTO QUEST_3
END

IF ~~ THEN BEGIN QUEST_3
   SAY ~Thank you, <CHARNAME>. You saved my life! My hero! I don't know how I can ever repay you.~ IF ~~ THEN GOTO QUEST_4
END

IF ~~ THEN BEGIN QUEST_4
   SAY ~I'm heading back to the den now. I'm sure Meredia has been worried sick about me.~
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",4)
   SetGlobal("h_RespawnIlena","GLOBAL",1)
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


