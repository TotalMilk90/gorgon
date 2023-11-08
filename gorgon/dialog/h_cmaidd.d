BEGIN h_cmaidd

IF ~Global("h_TalkedToMaid","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Ugh! Can't stomach the madam's wretched daughter. Someone oughta give that brat a lesson before I do it myself!~
       ++ ~She can't be that awful, can she?~ GOTO 1
       +~NumItemsParty("h_misc15",1)~+ ~Does this coin ring any bells for you?~ GOTO 2
       +~NumItemsPartyGT("h_misc15",1)~+ ~Care to explain how this coin ended up in your pocket?~ GOTO 4
END

IF ~~ THEN BEGIN 1
   SAY ~Whoops! Did I say that out loud? Please don't go telling the sir or madam. I'm just tired, is all.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
   SAY ~Oh! Uh... Nope. Can't say it does. Got a lot of work to do, so... uh. Bye.~
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToMaid","GLOBAL",1)~ EXIT
END

IF ~GlobalGT("h_TalkedToMaid","GLOBAL",0)~ THEN BEGIN 3
   SAY ~Thought I asked you to skedaddle.~
       ++ ~I'll be off now.~ EXIT
       +~NumItemsPartyGT("h_misc15",1)~+ ~Care to explain how this coin ended up in your pocket?~ GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~What! How'd you get that?~
       ++ ~Game's up! You slipped Xevec these forgeries to off Samantha, didn't you?~ GOTO 5
       ++ ~Doesn't matter. You dabbled with these at our joint, now you'll pay the price! (Snap her neck.)~ DO ~
   Kill("h_cmaidc")
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@616,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 5
   SAY ~Alright, fine, it's true! I hate that devil-woman! She's done nothing but make my life a living hell!~
       ++ ~Why go with fake gold, then?~ GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Didn't have enough genuine gold to cover that kind of job. Sought out Xevec, thinking he'd never catch on, the fool.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~Well, now that you're in the loop, what's the plan?~
       ++ ~You'll have to turn yourself in to the authorities.~ GOTO 9
       ++ ~Hand over everything valuable, and you'll get to keep breathin'.~ GOTO 8
       ++ ~Gonna take you down, of course. You're the reason fake gold tarnished our casino. (Snap her neck.)~ DO ~
   Kill("h_cmaidc")
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@616,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY ~Certainly, thank you! Take these, and we'll act like none of this happened.~
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@617,QUEST)
   GiveItemCreate("RING10",LastTalkedToBy,0,0,0)
   GiveItemCreate("MISC28",LastTalkedToBy,0,0,0)
   GiveGoldForce(25)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9
   SAY ~Suppose I've no say in this, do I? Least I'll still have my skin, I reckon. Ugh, I don't wanna go back to jail again.~
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@617,QUEST)
   EscapeArea()~ EXIT
END
