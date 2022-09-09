BEGIN h_xevecd

IF ~Global("h_GilbaldQuest","GLOBAL",4)~ THEN BEGIN 0
   SAY ~Don't you look down on me! I'll be richer than the Silvershields come soon enough.~
       ++ ~I don't think you'll live long enough to see that.~ GOTO 1
       ++ ~You have been accused of using fake gold at the Gorgon's Eye hideout. What do you have to say for yourself?~ GOTO 2
END

IF ~~ THEN BEGIN 1
   SAY ~I won't just roll over and die so you can steal MY gold! I earned it fair-and-square from the skills I wield with a blade!~
       ++ ~Yeah? Well, we'll just see about that!~ GOTO 10
       ++ ~You have been accused of using fake gold at the Gorgon's Eye hideout. What do you have to say for yourself?~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~That is absurd. I have done no such thing!~
       ++ ~You used it at both Gilbald's and Meredia's and it appears to lead directly back to you.~ GOTO 3
       ++ ~Then allow me to examine some of the gold you are carrying.~ GOTO 4
       ++ ~I don't believe you. Time to die!~ GOTO 10
END

IF ~~ THEN BEGIN 3
   SAY ~I spent some time there the other night, I won't deny it. Yet, I am not *that* foolish to openly use fake coins in such an establishment.~
       ++ ~Then allow me to examine some of the gold you are carrying.~ GOTO 4
       ++ ~I don't believe you. Time to die!~ GOTO 10
END

IF ~~ THEN BEGIN 4
   SAY ~Fine, but if you try to pull a fast one on me, I'll cut your fingers clean off! You got me? *shows you his gold*~
       ++ ~I knew it! See? All of these coins are fake.~ GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~What! That is impossible!...~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~I have been deceived! How could I be so foolish? I knew something was off about that woman, but she flashed those coins in my face and I lost all sense!~
       ++ ~Regardless of intent, you have used counterfeit gold and the punishment is death.~ GOTO 10
       ++ ~What woman are you talking about?~ GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~She was the woman who hired me! We finalized our contract at Gilbald's last night, but I never got her name or where to find her.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~She wanted me to kill a young woman by the name of Sam, who is residing in Nashkel. She gave me a large payment up front and promised a substantial amount more after I finished.~
       ++ ~Hmm. Alright, Xevec, I believe you. I will look into this further but if I find out that you're lying, then you're a dead man.~ GOTO 9
       ++ ~I don't have time for all that. Time to die, Xevec!~ GOTO 10
END

IF ~~ THEN BEGIN 9
   SAY ~I'm lying! I promise! The woman who hired me made it sound as if she knew Sam personally. Seek out the mark and you may find the woman close by.~
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",5)
   AddJournalEntry(@613,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY ~Let's have it then! There's a reason my skills are so desired!~
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",5)
   SetGlobal("h_KilledXevec","GLOBAL",1)
   AddJournalEntry(@614,QUEST)
   Enemy()~ EXIT
END
       
IF ~Global("h_GilbaldQuest","GLOBAL",5)~ THEN BEGIN 11
   SAY ~What now? I told you it wasn't my fault!~
       +~Global("h_TalkedToMaid","GLOBAL",2)~+ ~You were right. I found the woman who hired you.~ GOTO 12
       ++ ~I'll be back later.~ EXIT
END

IF ~~ THEN BEGIN 12
   SAY ~That is great news! I knew you would clear my name.~
       ++ ~Well, not quite. Regardless of intent, you have used counterfeit gold and the punishment is death.~ GOTO 14
       ++ ~I will still have to inform Gilbald of your involvement and he will decide your fate.~ GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~I understand. Gilald is a reasonable man. When he hears the facts I'm sure he will show benevolence in his ruling.~
IF ~~ THEN DO ~
   SetGlobal("h_DidNotKillXevec","GLOBAL",1)
   AddJournalEntry(@618,QUEST)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 14
   SAY ~Let's have it then! There's a reason my skills are desired!~
IF ~~ THEN DO ~
   SetGlobal("h_KilledXevec","GLOBAL",2)
   AddJournalEntry(@614,QUEST)
   Enemy()~ EXIT
END

       
       
       
       
       



//I was celebrating a rather lucrative contract I had just received.
//None of that really matters anymore, Xevec.