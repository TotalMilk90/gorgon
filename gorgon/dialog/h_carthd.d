BEGIN h_carthd

IF ~GlobalLT("h_LiedelQuest","GLOBAL",2) Global("h_CarthBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Can't a man savor a moment's solitude in his own chamber? Unless you're the waiter then please, begone.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_LiedelQuest","GLOBAL",1) Global("h_CarthBounty","GLOBAL",0)~ THEN BEGIN 1
   SAY ~Can't a man savor a moment's solitude in his own chamber? Unless you're the waiter then please, begone.~
       ++ ~Sorry Carth, but I hope you've had a good last meal. There is a bounty on your head and I'm here to collect it.~ GOTO 2
       ++ ~You must be Carth. I am here regarding your debt with the Zhentarim.~ GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY ~Oh, Gods! Please, wait!~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I was going to pay them back, I was! It's just... right before I was to leave, I was beset by the smells of the most delectable lamb and garlic mash drifting up from the kitchens.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~The beautiful aroma was enough to drive a man mad I tell you! No rational mind could allow their body to pass on such a pleasure.~ IF ~~ THEN GOTO 4.5
END

IF ~~ THEN BEGIN 4.5
   SAY ~Before I knew it, a dozen clean plates were all that remained, and not a single coin in my pocket.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~The chef, overjoyed by my appetite, persuaded Bently to provide me shelter until I regain my footing. But due to the bounty, I'm confined here.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Please, I just don't know what to do!~
       ++ ~How much remains of your debt? Perhaps I can settle it for you.~ GOTO 7
       ++ ~Sorry lad, but business is business. (Snap his neck.)~ DO ~
   Kill("h_carthc")
   SetGlobal("h_CarthBounty","GLOBAL",1)
   AddJournalEntry(@411,QUEST)
   ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY ~You would do that? Thank you! The loan stands at a precise 300 gold coins.~
       +~PartyGoldGT(299)~+ ~Here, take the coin then. But, if I find out you've used it to buy another feast, I won't be as forgiving next time.~ GOTO 11
       +~PartyGoldLT(300)~+ ~I don't have that much coin. Stay here until I can raise a bit more.~ GOTO 9
       ++ ~That's a bit too steep for me. Sorry, Carth, it's nothing personal. (Snap his neck.)~ DO ~
   Kill("h_carthc")
   SetGlobal("h_CarthBounty","GLOBAL",1)
   AddJournalEntry(@411,QUEST)
   ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 9
   SAY ~Ok. I'll stay right here until you return. Thank you!~
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",2)~ EXIT
END

IF ~Global("h_CarthBounty","GLOBAL",2)~ THEN BEGIN 10
   SAY ~You've returned! Do you have the 300 gold coins for me?~
       +~PartyGoldGT(299)~+ ~Here you go. Remember, no detours this time.~ GOTO 11
       +~PartyGoldLT(300)~+ ~Not yet. Stay here until I can raise a bit more.~ EXIT
       ++ ~Actually, I've decided to just kill you and collect the bounty. (Snap his neck.)~ DO ~
   Kill("h_carthc")
   SetGlobal("h_CarthBounty","GLOBAL",1)
   AddJournalEntry(@411,QUEST)
   ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 11
   SAY ~Thank you, kind stranger. I've learned my lesson, don't you worry!~
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",3)
   AddJournalEntry(@412,QUEST)
   TakePartyGold(300)
   DestroyGold(300)
   AddExperienceParty(300)
   ReputationInc(1)
   EscapeArea()~ EXIT
END

