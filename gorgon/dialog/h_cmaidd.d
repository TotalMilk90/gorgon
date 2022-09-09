BEGIN h_cmaidd

IF ~Global("h_TalkedToMaid","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Ugh! I can't stand the madam's wretch of a daughter! Someone oughta teach that *brat* a lesson before I go upstairs and do it myself!~
       ++ ~She can't be that bad can she?~ GOTO 1
       +~NumItemsParty("h_misc15",1)~+ ~Does this coin look familiar to you?~ GOTO 2
       +~NumItemsPartyGT("h_misc15",1)~+ ~Care to explain how this coin ended up in your possession?~ GOTO 4
END

IF ~~ THEN BEGIN 1
   SAY ~Whoops! Did I say that out loud? Please don't tell the sir and madam, I'm just tired is all.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
   SAY ~Oh! Uh... nope. I can't say that it does. I have a lot of work to do so I'll need to ask you leave.~
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToMaid","GLOBAL",1)~ EXIT
END

IF ~GlobalGT("h_TalkedToMaid","GLOBAL",0)~ THEN BEGIN 3
   SAY ~I thought I told you to leave.~
       ++ ~I'll be going now.~ EXIT
       +~NumItemsPartyGT("h_misc15",1)~+ ~Care to explain how this coin ended up in your possession?~ GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~What! How did you get that?~
       ++ ~The jig is up! I know you've used these to pay Xevec, so he would kill Samantha for you!~ GOTO 5
       ++ ~It doesn't matter. You were involved with using these at our casino and now you will pay the price. (Snap her neck.)~ DO ~
   Kill("h_cmaidc")
   SetGlobal("h_KilledMaid","GLOBAL",1)
   AddJournalEntry(@616,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 5
   SAY ~*sigh* Alright, fine, it's true. I hate that devil-woman! She has done nothing but make my life a living hell!~
       ++ ~I don't understand though, why did you use counterfeit gold?~ GOTO 6
       ++ ~Well, I'm glad that's over. Nothing personal, but I'm going to have to kill you now. (Snap her neck.)~ DO ~
   Kill("h_cmaidc")
   SetGlobal("h_KilledMaid","GLOBAL",1)
   AddJournalEntry(@616,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 6
   SAY ~I don't have enough real gold to pay for that type of task. I sought out Xevec because I believed him fool enough to never notice the difference.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~So, now that you know, what is it that you plan on doing with this information?~
       ++ ~You need to turn yourself into the authorities.~ GOTO 9
       ++ ~Give me everything on you that is of value. I'll put all the blame on Xevec and allow you to live.~ GOTO 8
       ++ ~I'm going to kill you of course. You were the reason counterfeit gold was used at our casino. (Snap her neck.)~ DO ~
   Kill("h_cmaidc")
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@616,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY ~Certainly, thank you! Please, take these and we will go on as if this never happened.~
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@617,QUEST)
   GiveItemCreate("RING10",LastTalkedToBy,0,0,0)
   GiveItemCreate("MISC28",LastTalkedToBy,0,0,0)
   GiveGoldForce(25)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9
   SAY ~I don't have a choice in the matter do I? At least I'll still have my life, I guess. Ugh, I don't want to go back to jail again.~
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@617,QUEST)
   EscapeArea()~ EXIT
END
