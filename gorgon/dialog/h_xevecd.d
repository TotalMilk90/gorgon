BEGIN h_xevecd

IF ~Global("h_GilbaldQuest","GLOBAL",4)~ THEN BEGIN 0
   SAY @58000 /* Don'tcha look down on me! I'll be rollin' in riches, bigger 'n the Silvershields, mark me words! */ IF ~~ THEN GOTO 0.5
END

IF ~~ THEN BEGIN 0.5
   SAY @58001 /* Alright then, what is you want? Quickly! I'm an important man, ya know. */
       ++ @58002 /* Greetings, Xevec. Care to shed some light on these counterfeit coins you've been using around town? */ GOTO 2
       ++ @58003 /* Xevec, you've been accused of using fake gold at our establishments. What do you have to say for yourself? */ GOTO 2
       ++ @58004 /* I think it's time for me to end you misery, Xevec. Any last words? */ GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @58005 /* Nah, nah, I ain't just rollin' over! This gold's mine, earned it with my blade, fair 'n square! */
       ++ @58006 /* Allow me to test your skills then! */ GOTO 10
       ++ @58003 /* Xevec, you've been accused of using fake gold at our establishments. What do you have to say for yourself? */ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @58007 /* Absurd, I tell ya! No fake gold here, none! */
       ++ @58008 /* It was used at Gilbald's and Meredia's, and you frequented them both. */ GOTO 3
       ++ @58009 /* Then allow me to examine your gold. */ GOTO 4
       ++ @58010 /* I don't believe you. Time to die! */ GOTO 10
END

IF ~~ THEN BEGIN 3
   SAY @58011 /* Spent some time there, sure, but not so foolish as to flaunt fake coins in their faces, no <PRO_SIRMAAM>! */
       ++ @58009 /* Then allow me to examine your gold. */ GOTO 4
       ++ @58010 /* I don't believe you. Time to die! */ GOTO 10
END

IF ~~ THEN BEGIN 4
   SAY @58012 /* Alright, alright, but try any tricks, and I'll take your fingers as souvenirs, got it? */
       ++ @58013 /* I knew it! See? All of these coins are fake. */ GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @58014 /* What? Impossible, impossible, I say! */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @58015 /* Deceived, tricked, by that woman with the coins! Lost my senses, I did! */
       ++ @58016 /* What woman? Who decieved you? */ GOTO 7
       ++ @58017 /* You better not be lying, Xevec. */ GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @58018 /* Hired me, she did! Finalized at Gilbald's, but never got her name or place! */ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @58019 /* Wanted Sam dead, she did! In Nashkel! Paid up front, promised more after the deed. */
       ++ @58020 /* Sam in Nashkel? I'll look into it. */ GOTO 9
       ++ @58021 /* I don't have time for all that. Time to die, Xevec! */ GOTO 10
END

IF ~~ THEN BEGIN 9
   SAY @58022 /* No lies, no lies! She spoke like she knew Sam. */ IF ~~ THEN GOTO 9.5
END

IF ~~ THEN BEGIN 9.5
   SAY @58023 /* Find the mark, find the woman, mark my words! */
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",5)
   AddJournalEntry(@613,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY @58024 /* Enough chit-chat, let's get to it! Got skills, me! */
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",5)
   SetGlobal("h_KilledXevec","GLOBAL",1)
   AddJournalEntry(@614,QUEST)
   Enemy()~ EXIT
END
       
IF ~Global("h_GilbaldQuest","GLOBAL",5)~ THEN BEGIN 11
   SAY @58025 /* What now? Not my fault, I swear! */
       +~Global("h_TalkedToMaid","GLOBAL",2)~+ @58026 /* I found the woman who hired you Xevec, looks like you were telling the truth. */ GOTO 12
       ++ @58027 /* I'll be back later. */ EXIT
END

IF ~~ THEN BEGIN 12
   SAY @58028 /* Great news, eh? Cleared my name, didn't you? */
       ++ @58029 /* I'll inform Gilbald of your involvement and he will decide your fate. */ GOTO 13
       ++ @58030 /* I did, Xevec. Might want to stay clear of the Den for a while, though, to be safe. */ GOTO 13
       ++ @58031 /* Well, not quite. You still used counterfeit gold, and the punishment is death. Sorry Xevec. */ GOTO 14
END

IF ~~ THEN BEGIN 13
   SAY @58032 /* Understood, understood. Gilbald's fair, he'll hear the tale, I'm sure of it! */
IF ~~ THEN DO ~
   SetGlobal("h_DidNotKillXevec","GLOBAL",1)
   AddJournalEntry(@618,QUEST)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 14
   SAY @58033 /* Enough talking then, let's get to it! I got skills, me! */
IF ~~ THEN DO ~
   SetGlobal("h_KilledXevec","GLOBAL",2)
   AddJournalEntry(@614,QUEST)
   Enemy()~ EXIT
END

       
       
       
       
       



//I was celebrating a rather lucrative contract I had just received.
//None of that really matters anymore, Xevec.