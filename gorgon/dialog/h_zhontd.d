BEGIN h_zhontd

IF ~Global("h_ZhontacBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Shoo, shoo! Away with you.~ IF ~~ THEN EXIT
END

IF ~Global("h_ZhontacBounty","GLOBAL",1)~ THEN BEGIN 1
   SAY ~Visitors, oh my! I don't have much to offer, just a warning, watch your step. The ground, you see, it's become quite... uneven.~ IF ~~ THEN GOTO 1.5
END

IF ~~ THEN BEGIN 1.5
   SAY ~You're here for my offer, aren't you?~
       ++ ~Yes I am. Tell me what it is you need me to do.~ GOTO 3
       ++ ~Quite the contrary, I'm here to kill you. Your last victim escaped and placed a bounty on your head, and I'll be glad to take it!~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~What! Mari survived? By gods, this changes everything! Give pause to your barbarity and I'll explain the situation.~
       ++ ~Alright, I'm listening.~ GOTO 3
       ++ ~Not a chance. Prepare to die, necromancer!~ GOTO 11
END

IF ~~ THEN BEGIN 3
   SAY ~I'm working on a way to mimic the effects of a resurrection spell, while only using a fraction of the mental acuity involved in its normal spellcasting.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~The effects of this research would drastically lower the cost and effort that is typically involved with this type of service.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~Something that was once restricted to the rich and elite might now be available to even the poorest of citizens.~
       ++ ~If that is your goal, why not seek aid from the temples or infirmaries? Surely they would help with such a noble goal.~ GOTO 6
       ++ ~I don't care about any of that. Time to die!~ GOTO 11
END

IF ~~ THEN BEGIN 6
   SAY ~Those imbeciles view my approach perverse and unorthodox. Yet, their unwillingness to justify my methods is making themselves those very things!~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~Here is what I wish of you.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~I have spotted the perfect specimen for my next experiment. In the early mornings, I have seen a man frequent the southern fountains with the most fascinating peculiarity about him.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~His hair is the color of the clearest skies and the calmest seas. I have never seen anything like it! Imagine what could be learned from testing on someone which such a rare oddity!~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~I want you to kill him and bring me back his corpse, so that I may progress my research.~
       ++ ~How could his hair color possibly contribute anything of value to your research?~ GOTO 10.5
       ++ ~I'll meet you back here after it's done.~ GOTO 12
       ++ ~What you are doing is evil and I will have no part of it!~ GOTO 11
END

IF ~~ THEN BEGIN 10.5
   SAY ~How could it not? His hair is blue! I mean... what more is there to get?~
       ++ ~I'll meet you back here after it's done.~ GOTO 12
       ++ ~What you are doing is evil and I will have no part of it!~ GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~Then I guess I will have to use your corpse instead! Hehehe! Die fool!~
IF ~~ THEN DO ~
   SetGlobal("h_ZhontacBounty","GLOBAL",4)
   AddJournalEntry(@440,QUEST)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
   SAY ~Excellent. I have... other business to attend to during the day, so don't excpect to find me here until nightfall.~
IF ~~ THEN DO ~
   SetGlobal("h_MagnusBounty","GLOBAL",1)
   SetGlobal("h_ZhontacBounty","GLOBAL",2)
   AddJournalEntry(@439,QUEST)~ EXIT

END

IF ~Global("h_ZhontacBounty","GLOBAL",2)~ THEN BEGIN NEW
   SAY ~You can leave now. Go to the southern fountains at daybreak and you should find the man with blue hair.~ IF ~~ THEN EXIT
END

IF ~Global("h_ZhontacBounty","GLOBAL",3)~ THEN BEGIN 13
   SAY ~Ah, there you are. I trust your operation was a success?~
       +~Global("h_MagnusBounty","GLOBAL",2)~+ ~Actually, I've changed my mind and decided to just kill you instead!~ GOTO 11
       +~Global("h_KilledMagnus","GLOBAL",1)~+ ~Yes, it was. I have his body with me right here.~ GOTO 14
       ++ ~I have a few other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN 14
   SAY ~Excellent! An honorable sacrifice made for the greater good. Now, if you'll excuse me, I have a lot of work to do.~
       ++ ~Pleasure doing business with you, Zhontac. Good luck with your experiments.~ GOTO 15
       ++ ~It's nothing personal, Zhontac, but there's still the matter of your bounty, and I mean to collect it.~ GOTO 16
END

IF ~~ THEN BEGIN 15
   SAY ~Yes, yes, I have to concentrate now, so be on your way.~
IF ~~ THEN DO ~
   SetGlobal("h_MagnusBounty","GLOBAL",3)
   AddJournalEntry(@443,QUEST)
   TakePartyItem("h_misc12")
   DestroyItem("h_misc12")
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 16
   SAY ~Then you are a fool who will be another corpse for me to dissect!~
IF ~~ THEN DO ~
   SetGlobal("h_KilledMagnus","GLOBAL",2)
   AddJournalEntry(@440,QUEST)
   TakePartyItem("h_misc12")
   DestroyItem("h_misc12")
   Enemy()~ EXIT
END