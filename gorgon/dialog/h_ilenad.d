BEGIN h_ilenad

IF WEIGHT #-1 ~Global("h_MerediaQuest","GLOBAL",3)~ THEN BEGIN QUEST_0
   SAY ~Oh, <CHARNAME>! It's such a relief to see you!~ IF ~~ THEN GOTO QUEST_1
END

IF ~~ THEN BEGIN QUEST_1
   SAY ~His wife returned unexpectedly and discovered us together! I was forced to witness the terrible events that followed.~ IF ~~ THEN GOTO QUEST_2
END

IF ~~ THEN BEGIN QUEST_2
   SAY ~I made an attempt to flee, but he overpowered me and knocked me out. When I awoke, we were on the road, heading south. I was so scared. I didn't know what he was going to do with me!~ IF ~~ THEN GOTO QUEST_3
END

IF ~~ THEN BEGIN QUEST_3
   SAY ~Thank you, <CHARNAME>. You truly are my savior! I don't know how I can ever repay you.~ IF ~~ THEN GOTO QUEST_4
END

IF ~~ THEN BEGIN QUEST_4
   SAY ~I'll be making my way back to the den now. I'm sure Meredia must have been beside herself with worry over my absence.~
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",4)
   SetGlobal("h_RespawnIlena","GLOBAL",1)
   AddJournalEntry(@714,QUEST)
   EscapeArea()~ EXIT
END

IF ~RandomNum(8,8)~ THEN BEGIN 0
   SAY ~A touch of the intimate keeps things... steamy, wouldn't you say, love?~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,1)~ THEN BEGIN 1
   SAY ~I've had my fair share of wild rides, and let me tell ya, I've developed quite the taste for 'em.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,2)~ THEN BEGIN 2
   SAY ~They say the cheekiest moves lead to the most unforgettable nights, don't they?~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,3)~ THEN BEGIN 3
   SAY ~I've got a soft spot for a bit of mischief, especially when it's as tempting as this.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,4)~ THEN BEGIN 4
   SAY ~You've got a twinkle in yer eye, don't ya? Fancy a bit of a romp, do ya?~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,5)~ THEN BEGIN 5
   SAY ~I can show you pleasures that even the stars envy.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,6)~ THEN BEGIN 6
   SAY ~Oh, darling, you're in for a night you won't forget.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,7)~ THEN BEGIN 7
   SAY ~You'll find my company is far more stimulating than polite conversation.~
IF ~~ THEN EXIT
END