BEGIN h_gilbad

IF ~Global("h_GilbaldQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Welcome to the only high-stakes casino available in the entire Sword Coast! Our table minimums are large but so are the rewards! Make sure to bring lots of coin if you wish to win BIG!~ IF ~~ THEN EXIT
END

IF ~Global("h_GilbaldQuest","GLOBAL",6)~ THEN BEGIN 0
   SAY ~Welcome to the only high-stakes casino available in the entire Sword Coast! Our table minimums are large but so are the rewards! Make sure to bring lots of coin if you wish to win BIG!~ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_GilbaldQuest","GLOBAL",1) GlobalLT("h_GilbaldQuest","GLOBAL",6)~ THEN BEGIN 2
   SAY ~Have you made any progress in finding the culprit?~
       ++ ~Nothing to report yet.~ EXIT
       +~Global("h_KilledXevec","GLOBAL",1)~+ ~It was Xevec. I found the counterfeit gold on him and I promptly took his life.~ GOTO 3
       +~Global("h_KilledXevec","GLOBAL",2)~+ ~I discovered that Xevec unknowingly used the counterfeit gold that he received from the other woman who was here. She was one of the maids over at the Nashkel manor.~ GOTO 4
       +~Global("h_DidNotKillXevec","GLOBAL",1)~+ ~I discovered that Xevec unknowingly used the counterfeit gold that he received from the other woman who was here. She was one of the maids over at the Nashkel manor.~ GOTO 4
END

IF ~~ THEN BEGIN 3
   SAY ~Well, that was quick. Excellent work, <CHARNAME>. I'm glad I entrusted you with the job.~
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",6)
   AddJournalEntry(@615,QUEST_DONE)
   TakePartyItemAll("h_misc15")
   DestroyItem("h_misc15")
   AddExperienceParty(300)
   GiveGoldForce(400)~ EXIT
END

IF ~~ THEN BEGIN 4
   SAY ~Is that so? Great detective work, <CHARNAME>. I'm glad I entrusted you with the job. I'll have my men tend to the clean up.~
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",6)
   AddJournalEntry(@619,QUEST_DONE)
   TakePartyItemAll("h_misc15")
   DestroyItem("h_misc15")
   DestroyItem("h_misc15")
   AddExperienceParty(1000)
   GiveGoldForce(800)~ EXIT
END



CHAIN
   IF ~Global("h_GilbaldQuest","GLOBAL",1)~ THEN h_gilbad 0
~You have the step of a winner about you, <CHARNAME>. Care to roll the bones and see what fortune brings you?~
   == h_game2d
~Uh, Gilbald? I need you to come and take a look at something.~
   == h_gilbad
~Hmm? What is it?~
   == h_game2d
~Well, you see... I was going over the count from last night...~
   =
~and...~
   == h_gilbad
~By gods, spit it out man!~
   == h_game2d
~I think we've been had! Some of these coins don't feel right!~
   == h_gilbad
~Toss one here, let me have a look.~
   =
~Shit, you're right. This is fake! What kind of fool would think it wise to pull one over on us? Surely, they'd know the consequences would be death.~
   == h_game2d
~I'm sorry, sir. I don't know how it could have evaded my notice. I will assume full responsibility and accept any punishment you deem fit for my error.~
   == h_gilbad
~Noted. Yet, you are not fully to blame. The craftsmanship is rather brilliant. Whoever constructed these is certainly not without skill.~
   =
~<CHARNAME>, would you look into this for me? I'd rather not escalate the matter if unnecessary. Ask my men for details of last night and then investigate what you can.~
   =
~Feel free to kill the bastard on the spot.~
   DO ~
      SetGlobal("h_GilbaldQuest","GLOBAL",2)
      AddJournalEntry(@610,QUEST)~
EXIT



/*
IF ~~ THEN BEGIN 1
   SAY ~If you find success in your discoveries then I shall grant you a substantial reward. What do you say?~
       ++ ~Sure, I'll look into for you.~ DO ~SetGlobal("h_GilbaldQuest","GLOBAL",2) AddJournalEntry(@610,QUEST)~ EXIT
       ++ ~Sorry, but I'm not interested.~ DO ~SetGlobal("h_GilbaldQuest","GLOBAL",2)~ EXIT
END
*/

