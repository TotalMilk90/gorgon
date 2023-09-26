BEGIN h_aishad

IF ~GlobalLT("h_LiedelQuest","GLOBAL",2) Global("h_AishaBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Eek, you startled me! I-I'm truly sorry, but I'd appreciate some space if you don't mind.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_LiedelQuest","GLOBAL",1) Global("h_AishaBounty","GLOBAL",0)~ THEN BEGIN 1
   SAY ~Eek, you startled me! I-I'm truly sorry, but I'd appreciate some space if you don't mind.~
       ++ ~Steady yourself, Aisha. I'm clued in on the bounty. I just want to know why someones got it in for you.~ GOTO 3
       ++ ~Cut the crap, Aisha. I'm here for the bounty. Best not make this messier than it needs to be.~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Hold on! Please, give me a chance to explain before you pass your judgement!~
       ++ ~Alright, spill it. I'm listening.~ GOTO 3
       ++ ~Sorry sweetheart, but you ain't my type. (Snap her neck.)~ GOTO 10
END

IF ~~ THEN BEGIN 3
   SAY ~It was that fool Amrius who placed it on me! He tried to force himself on me after I denied his clumsy, drunken advances.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~I tried to fight back, but he was too strong. When he was trying to carry me out of the tavern, he lost his balance and collapsed into one of the tables.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~He was drenched in food, drink and blood, his face mangled from who knows what. Everyone around him saw and laughed. I took the opportunity to flee as fast as I could!~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~The next day I learned of the bounty and I've been holed up here ever since.~
       ++ ~Where can I find this Amrius? Maybe I can convince him to remove the bounty.~ GOTO 7
       ++ ~Sorry, but I've got a job to do. (Snap her neck.)~ GOTO 10
END

IF ~~ THEN BEGIN 7
   SAY ~Really? You would do that for me? Th-thank you! I know he frequents The Burning Wizard, maybe you can find him there.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",1)
   AddJournalEntry(@421,QUEST)~ EXIT
END

IF ~GlobalLT("h_AishaBounty","GLOBAL",4) GlobalGT("h_AishaBounty","GLOBAL",0)~ THEN BEGIN 8
   SAY ~You're back! Did you manage to speak with Amrius?~
       +~Global("h_AishaBounty","GLOBAL",3)~+ ~Yes, you don't have to worry about him anymore.~ GOTO 9
       +~GlobalLT("h_AishaBounty","GLOBAL",3)~+ ~Truth be told, I've decided to kill you and cash in on that bounty. (Snap her neck.)~ GOTO 10
       +~GlobalLT("h_AishaBounty","GLOBAL",3)~+ ~Not yet, I'll be heading there shortly.~ EXIT
END

IF ~~ THEN BEGIN 9
   SAY ~Oh, wonderful! Thank you so much! I have little gold, but hopefully this necklace can stand in as a suitable reward.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",4)
   AddJournalEntry(@423,QUEST)
   GiveItemCreate("AMUL04",LastTalkedToBy,0,0,0)
   AddExperienceParty(300)
   ReputationInc(1)~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY ~N-no! Stay back!~
IF ~~ THEN DO ~
   Kill("h_aishac")
   SetGlobal("h_AishaBounty","GLOBAL",5)
   AddJournalEntry(@420,QUEST)
   ReputationInc(-1)~ EXIT
END

IF ~GlobalGT("h_AishaBounty","GLOBAL",3)~ THEN BEGIN 11
   SAY ~Thank you again for helping me. I wish there was more I could do to repay you.~ IF ~~ THEN EXIT
END