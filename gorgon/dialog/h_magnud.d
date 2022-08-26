BEGIN h_magnud

IF ~Global("h_MagnusBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Sorry, I'm a bit in my thoughts at the moment. If you don't mind, I'd prefer to be alone.~ IF ~~ THEN EXIT
END

IF ~Global("h_MagnusBounty","GLOBAL",1)~ THEN BEGIN 1
   SAY ~What a beautiful part of town this is. One can't help but feel nostalgic while gazing into its waters.~
       ++ ~Quite a magnificent pool isn't it? The swirling of the water is absolutely mesmerizing. (Snap his neck.)~ GOTO 10
       ++ ~Sorry to interrupt your soul-searching, but there is a necromancer in the city who wishes you dead.~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Really? What could I have possible done to offend this person? I spend near all my time in solitude, and I have no quarrels or debts with anyone.~
       ++ ~He wants to use your corpse for his ressurection experiments. He believes your blue hair will have some sort of benefit to his reseach.~ GOTO 3
       ++ ~I don't remember. I don't really want to get involved honestly, I just figured I'd let you know.~ GOTO 9
END

IF ~~ THEN BEGIN 3
   SAY ~Interesting. What is it he is trying to learn from me?~
       ++ ~He believes he can figure out a way to make ressurection easier and more affordable for the common folk.~ GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~I see. Well if that is the case, then I have no objection. I've lived a great life and this has been a wonderful day.~
       ++ ~Wait, what? You can't be serious.~ GOTO 5
       ++ ~I'm not going to kill you, I came here to warn you!~ GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~My mother was killed many years ago and the healers of my village refused to revive her. I have never been able to accept their decision and have resented them ever since.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~If my death allows others to avoid this suffering then I will gladly give my life in the name of progress.~
       ++ ~Are you sure about this?~ GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~I am.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~These pools remind me of my mother, you know. I think she would have liked it here.~
       ++ ~(Snap his neck.)~ GOTO 11
       ++ ~This is crazy, I'm not going to kill you!~ GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~I understand. Thank you then, friend. Take care, and be safe on your travels.~
IF ~~ THEN DO ~
   SetGlobal("h_ZhontacBounty","GLOBAL",3)
   SetGlobal("h_MagnusBounty","GLOBAL",2)
   AddJournalEntry(@442,QUEST)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY ~Yes, it certainly is...~
IF ~~ THEN DO ~
   DestroySelf()
   SetGlobal("h_ZhontacBounty","GLOBAL",3)
   SetGlobal("h_KilledMagnus","GLOBAL",1)
   AddJournalEntry(@441,QUEST)
   GiveItemCreate("h_misc12",LastTalkedToBy,0,0,0)
   ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 11
   SAY ~I'll be with you soon...~
IF ~~ THEN DO ~
   DestroySelf()
   SetGlobal("h_ZhontacBounty","GLOBAL",3)
   SetGlobal("h_KilledMagnus","GLOBAL",1)
   AddJournalEntry(@441,QUEST)
   GiveItemCreate("h_misc12",LastTalkedToBy,0,0,0)~ EXIT
END