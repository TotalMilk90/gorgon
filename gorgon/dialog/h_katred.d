BEGIN h_katred

IF ~Global("h_KatredaBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Isn't the Glimmerwood just beautiful?~ IF ~~ THEN EXIT
END

IF ~Global("h_KatredaBounty","GLOBAL",1)~ THEN BEGIN 1
   SAY ~Oh, please help me! These woods are in grave danger!~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Foul men have come to defile these ancient lands. They wish to destroy its trees and make it their personal hunting ground.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I have fought them off as best I could, but I'm afraid I will soon be overpowered. Please adventurer, I beg you for your assistance!~
       ++ ~I will help protect your home. Where can I find those responsible?~ GOTO 7
       ++ ~Sorry lady, but I was hired to remove you from the area. I'd advise you to leave peacefully, otherwise I will resort to violence.~ GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~You would help these men destroy this forest for a few coin? Are all you outsiders guided by nothing but greed? It's sickening! *sigh* Fine, I will play your little game.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~If you would assist me instead, I can offer you an old and magical weapon as compensation. Surely it is worth more than what those beasts have offered.~
       ++ ~I was sent here to do a job and I mean to finish it. This is your final warning.~ GOTO 6
       ++ ~You've got a deal. Where can I find these men?~ GOTO 7
END

IF ~~ THEN BEGIN 6
   SAY ~You monsters are all the same! I am not afraid to protect these lands with my life! Be warned, I am not without skill.~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",2)
   AddJournalEntry(@432,QUEST)
   ReputationInc(-1)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY ~They have a small camp set up just to the south of here. Their leader is a dangerous man by the name of Asnabel. He is not to be trusted!~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",3)
   AddJournalEntry(@434,QUEST)
   CreateCreature("h_asnabc",[2004.3428],S)
   CreateCreature("h_huntec",[2073.3482],S)
   CreateCreature("h_huntec",[2148.3489],S)
   CreateCreature("h_huntec",[1936.3506],S)~ EXIT
END

IF ~Global("h_KatredaBounty","GLOBAL",3)~ THEN BEGIN 8
   SAY ~I can still sense their presence in these woods. Why have you returned?~
       ++ ~I've decided to just kill you and collect the bounty.~ GOTO 6
       ++ ~Where is the campsite again?~ GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Head directly south from here and you should run right into it.~ IF ~~ THEN EXIT
END

IF ~Global("h_KatredaBounty","GLOBAL",4)~ THEN BEGIN 8
   SAY ~I am relieved to see you. The trees whispered to me that blood had been spilled and I feared the worst.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~You have done a great service here. Please, take this. It belonged to the elves who used to inhabit these lands many years ago.~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",5)
   AddJournalEntry(@436,QUEST)
   GiveItem("h_misc06",LastTalkedToBy)
   AddExperienceParty(600)
   ReputationInc(1)~ EXIT
END

IF ~Global("h_KatredaBounty","GLOBAL",5)~ THEN BEGIN 11
   SAY ~Thank you again for helping to protect the Glimmerwood.~ IF ~~ THEN EXIT
END



