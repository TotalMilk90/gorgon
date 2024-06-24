BEGIN h_katred

IF ~Global("h_KatredaBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Isn't the Glimmerwood just beautiful?~ IF ~~ THEN EXIT
END

IF ~Global("h_KatredaBounty","GLOBAL",1)~ THEN BEGIN 1
   SAY ~Oh, please, help me! These woods are in grave danger!~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Foul men have come to defile these ancient lands. They aim to fell its trees and turn it into their personal hunting ground.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I've fought them off as best I can, but I fear I'll soon be overwhelmed. Adventurer, I implore you for your aid!~
       ++ ~I will help protect your home. Where can I find those responsible?~ GOTO 7
       ++ ~Sorry lady, but I was hired to remove you from the area. I advise you to leave peacefully, lest I become violent.~ GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~You would aid these men for a handful of coin? Is greed the only guide for outsiders like you? It's revolting! But, very well, I'll shall play your little game.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~If you'd assist me instead, I can give you an ancient and enchanted amulet. Surely it holds greater worth than what those beasts have offered.~
       ++ ~I was sent here to complete a job, and I intend to see it through. Let this be your final warning.~ GOTO 6
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
   SAY ~They've set up a small camp just south of here. Their leader is a treacherous man named Asnabel. Trust him not!~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",3)
   AddJournalEntry(@434,QUEST)
   CreateCreature("h_asnabc",[2004.3428],S)
   CreateCreature("h_huntec",[2073.3482],S)
   CreateCreature("h_huntec",[2148.3489],S)
   CreateCreature("h_huntec",[1936.3506],S)~ EXIT
END

IF ~Global("h_KatredaBounty","GLOBAL",3)~ THEN BEGIN 8
   SAY ~I still sense their presence in these woods. Why have you returned?~
       ++ ~I've chosen to end this now and collect the bounty.~ GOTO 6
       ++ ~Could you remind me where the campsite is?~ GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Head directly south from here, and you'll stumble right upon it.~ IF ~~ THEN EXIT
END

IF ~Global("h_KatredaBounty","GLOBAL",4)~ THEN BEGIN 8
   SAY ~I'm relieved to see you. The trees spoke to me of spilled blood, and I dreaded the worst.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~You've done a tremendous service. Please, accept this necklace. It once belonged to the elves who dwelled here many ages ago.~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",5)
   AddJournalEntry(@436,QUEST)
   GiveItem("AMUL22",LastTalkedToBy)
   AddExperienceParty(600)
   ReputationInc(1)~ EXIT
END

IF ~Global("h_KatredaBounty","GLOBAL",5)~ THEN BEGIN 11
   SAY ~Once more, thank you for safeguarding the Glimmerwood.~ IF ~~ THEN EXIT
END



