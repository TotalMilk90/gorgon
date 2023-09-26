BEGIN h_amriud

IF ~Global("h_AishaBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Sod off. I don't know you and I don't care to.~ IF ~~ THEN EXIT
END

IF ~Global("h_AishaBounty","GLOBAL",1)~ THEN BEGIN 1
   SAY ~Sod off. I don't know you and I don't care to.~
       ++ ~I'm here regarding the bounty on Aisha.~ GOTO 2
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 2
   SAY ~Unfortunate bit of business that is. As you can tell by my mug though, she deserves what's comin'.~
       ++ ~She said she was only defending herself from you, and that you fell because you were drunk.~ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~She would say anything to dissuade her attacker. She jumped me, ask anybody in there. She slammed me into a table, cut my face, and made me look like a right git!~
       ++ ~I want that bounty gone, Aisha ain't worth a one-way ticket to the afterlife.~ GOTO 4
       +~CheckStatGT(Player1,17,STR)~+ ~If you don't ditch the bounty, then I'll do you in instead!~ GOTO 8
       +~CheckStatLT(Player1,18,STR)~+ ~If you don't ditch the bounty, then I'll do you in instead!~ GOTO 5
       ++ ~What can I do to make you reconsider?~ GOTO 6
       ++ ~Seeing you now, I'm leaning your way. Found Aisha next door at the Red Sheaf. I think I'll go pay her another visit.~ GOTO 9
       ++ ~I'll be going now.~ GOTO 10
END

IF ~~ THEN BEGIN 4
   SAY ~Why in the bleedin' hell would I do that? She dishonered and shamed me in front of the whole tavern!~
       +~CheckStatGT(Player1,17,STR)~+ ~If you don't ditch the bounty, then I'll do you in instead!~ GOTO 8
       +~CheckStatLT(Player1,18,STR)~+ ~If you don't ditch the bounty, then I'll do you in instead!~ GOTO 5
       ++ ~What can I do to make you reconsider?~ GOTO 6
       ++ ~Seeing you now, I'm leaning your way. Found Aisha next door at the Red Sheaf. I think I'll go pay her another visit.~ GOTO 9
       ++ ~I'll be going now.~ GOTO 10
END

IF ~~ THEN BEGIN 5
   SAY ~Bring it on then! I ain't afraid of you!~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",3)
   AddJournalEntry(@422,QUEST)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
   SAY ~I'll remove the bounty for 300 gold coins. Enough to soothe my ego and move on.~
       +~PartyGoldLT(300)~+ ~I'll be back with the money.~ EXIT
       +~PartyGoldGT(299)~+ ~Take the coin then. I'll go inform Aisha.~ GOTO 7
       +~CheckStatGT(Player1,17,STR)~+ ~If you don't ditch the bounty, then I'll do you in instead!~ GOTO 8
       +~CheckStatLT(Player1,18,STR)~+ ~If you don't ditch the bounty, then I'll do you in instead!~ GOTO 5
       ++ ~Seeing you now, I'm leaning your way. Found Aisha next door at the Red Sheaf. I think I'll go pay her another visit.~ GOTO 9
       ++ ~I'll be going now.~ GOTO 10
END

IF ~~ THEN BEGIN 7
   SAY ~Yeah, you do that.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",3)
   AddJournalEntry(@422,QUEST)
   TakePartyGold(300)~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY ~Alright, fine. I can't pick a brawl in my current condition, anyway. So long as Aisha keeps her distance, there won't be any problems.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",3)
   AddJournalEntry(@422,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 9
   SAY ~Smart. Seems you've got a head on your shoulders after all.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY ~Yeah, you do that.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",2)~ EXIT
END

IF ~Global("h_AishaBounty","GLOBAL",2)~ THEN BEGIN 11
   SAY ~Thought I told you to sod off.~
       ++ ~I want that bounty gone, Aisha ain't worth a one-way ticket to the afterlife.~ GOTO 4
       ++ ~I'll be going now.~ EXIT
END

IF ~GlobalGT("h_AishaBounty","GLOBAL",2)~ THEN BEGIN 12
   SAY ~I've got nothin' to say to you.~ IF ~~ THEN EXIT
END

