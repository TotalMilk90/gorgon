BEGIN h_amriud

IF ~Global("h_AishaBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Bugger off. I don't know you and I don't care to.~
       ++ ~I'll be going now.~ EXIT
END

IF ~Global("h_AishaBounty","GLOBAL",1)~ THEN BEGIN 1
   SAY ~Bugger off. I don't know you and I don't care to.~
       ++ ~I'm here regarding the bounty on Aisha.~ GOTO 2
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 2
   SAY ~Unfortunate bit of business that is. As you can tell by my face though, she deserves whatever's coming to her.~
       ++ ~She said she was only defending herself from you, and that you fell because you were drunk.~ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~She would say anything to dissuade her attacker. She assaulted me, ask anybody in there. She pushed me into the table, cut my face and made me look an utter fool.~
       ++ ~I want you to remove the bounty, she doesn't deserve to die.~ GOTO 4
       +~CheckStatGT(Player1,17,STR)~+ ~If you don't remove the bounty, then I'll just kill you instead!~ GOTO 8
       +~CheckStatLT(Player1,18,STR)~+ ~If you don't remove the bounty, then I'll just kill you instead!~ GOTO 5
       ++ ~Is there anything I can do to make you reconsider?~ GOTO 6
       ++ ~After observing your condition, I tend to agree with you. I found Aisha next door at the Red Sheaf and I think I'll go pay her another visit.~ GOTO 9
       ++ ~I'll be going now.~ GOTO 10
END

IF ~~ THEN BEGIN 4
   SAY ~Why would I do that? She dishonered and embarrassed me in front of the whole tavern.~
       +~CheckStatGT(Player1,17,STR)~+ ~If you don't remove the bounty, then I'll just kill you instead!~ GOTO 8
       +~CheckStatLT(Player1,18,STR)~+ ~If you don't remove the bounty, then I'll just kill you instead!~ GOTO 5
       ++ ~Is there anything I can do to make you reconsider?~ GOTO 6
       ++ ~After observing your condition, I tend to agree with you. I found Aisha next door at the Red Sheaf and I think I'll go pay her another visit.~ GOTO 9
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
   SAY ~I'll remove the bounty for 300 gold coins. That amount would ease my ego enough to move on.~
       +~PartyGoldLT(300)~+ ~I'll be back with the money.~ EXIT
       +~PartyGoldGT(299)~+ ~Here take the coin then. I'll go inform Aisha.~ GOTO 7
       +~CheckStatGT(Player1,17,STR)~+ ~If you don't remove the bounty, then I'll just kill you instead!~ GOTO 8
       +~CheckStatLT(Player1,18,STR)~+ ~If you don't remove the bounty, then I'll just kill you instead!~ GOTO 5
       ++ ~After observing your condition, I tend to agree with you. I found Aisha next door at the Red Sheaf and I think I'll go pay her another visit.~ GOTO 9
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
   SAY ~Alright, fine. I wouldn't be able to win a fight in my current condition, anyway. As long as she doesn't show her face near me again, there won't be a problem.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",3)
   AddJournalEntry(@422,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 9
   SAY ~Excellent, I could tell you were a person of reason.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY ~Yeah, you do that.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",2)~ EXIT
END

IF ~Global("h_AishaBounty","GLOBAL",2)~ THEN BEGIN 11
   SAY ~You again, what is it you want now?~
       ++ ~I want you to remove the bounty, Aisha doesn't deserve to die.~ GOTO 4
       ++ ~Nothing, I'll be going now.~ EXIT
END

IF ~GlobalGT("h_AishaBounty","GLOBAL",2)~ THEN BEGIN 12
   SAY ~I've got nothin' to say to you.~ IF ~~ THEN EXIT
END

