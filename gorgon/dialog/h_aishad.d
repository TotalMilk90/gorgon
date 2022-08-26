BEGIN h_aishad

IF ~GlobalLT("h_LiedelQuest","GLOBAL",2) Global("h_AishaBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Oh my, you startled me! Please, I don't mean any rudeness, but I wish to be left alone.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_LiedelQuest","GLOBAL",1) Global("h_AishaBounty","GLOBAL",0)~ THEN BEGIN 1
   SAY ~Oh my, you startled me! Please, I don't mean any rudeness, but I wish to be left alone.~
       ++ ~Don't be alarmed, Aisha. I know about the bounty and I'm just here to find out why someone would want you dead.~ GOTO 3
       ++ ~I'm here to collect your bounty, Aisha. Let's not make this harder than it needs to be.~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Wait! Please let me explain before you make your judgement!~
       ++ ~Ok, I will listen to what you have to say.~ GOTO 3
       ++ ~Sorry, but I don't have time for this. (Snap her neck.)~ GOTO 10
END

IF ~~ THEN BEGIN 3
   SAY ~It was that fool Amrius who placed it on me! He tried to force himself upon me after I denied his clumsy, drunken advances.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~I tried to fight back, but he was too strong. When he was trying to carry me out of the tavern he lost his balance and collapsed into one of the tables.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~He was covered in food, drink and blood from something cutting his face. Everyone around him saw and laughed. I took the opportunity to flee as fast as I could.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~The next day I learned he placed a bounty on my head and I've been hiding out here ever since.~
       ++ ~Where can I find this Amrius? Maybe I can convince him to remove the bounty.~ GOTO 7
       ++ ~Sorry Aisha, but I have a job to do. (Snap her neck.)~ GOTO 10
END

IF ~~ THEN BEGIN 7
   SAY ~Really? You would do that for me? Th-thank you! I know he frequents The Burning Wizard fairly often, so he could be staying there.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",1)
   AddJournalEntry(@421,QUEST)~ EXIT
END

IF ~GlobalLT("h_AishaBounty","GLOBAL",4) GlobalGT("h_AishaBounty","GLOBAL",0)~ THEN BEGIN 8
   SAY ~You're back! Were you able to find Amrius?~
       +~Global("h_AishaBounty","GLOBAL",3)~+ ~Yes, you don't have to worry about him anymore.~ GOTO 9
       +~GlobalLT("h_AishaBounty","GLOBAL",3)~+ ~Not yet, I'll be heading there shortly.~ EXIT
       +~GlobalLT("h_AishaBounty","GLOBAL",3)~+ ~I've decided to just kill you and collect the bounty.~ GOTO 10
END

IF ~~ THEN BEGIN 9
   SAY ~Oh wonderful, thank you so much! Here, I don't have any gold but hopefully this necklace will be a suitable reward.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",4)
   AddJournalEntry(@423,QUEST)
   GiveItemCreate("AMUL04",LastTalkedToBy,0,0,0)
   ReputationInc(1)~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY ~No! Stay back!~
IF ~~ THEN DO ~
   Kill("h_aishac")
   SetGlobal("h_AishaBounty","GLOBAL",5)
   AddJournalEntry(@420,QUEST)
   ReputationInc(-1)~ EXIT
END

IF ~GlobalGT("h_AishaBounty","GLOBAL",3)~ THEN BEGIN 11
   SAY ~Thanks again for helping me. I wish there was more I could do to repay you.~ IF ~~ THEN EXIT
END