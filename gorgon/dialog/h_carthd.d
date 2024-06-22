BEGIN h_carthd

IF ~GlobalLT("h_LiedelQuest","GLOBAL",2) Global("h_CarthBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY @22500 /* Can't a man savor a moment's solitude in his own chamber? Unless you're the waiter then please, begone. */ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_LiedelQuest","GLOBAL",1) Global("h_CarthBounty","GLOBAL",0)~ THEN BEGIN 1
   SAY @22500 /* Can't a man savor a moment's solitude in his own chamber? Unless you're the waiter then please, begone. */
       ++ @22501 /* Sorry Carth, but I hope you've had a good last meal. There is a bounty on your head and I'm here to collect it. */ GOTO 2
       ++ @22502 /* You must be Carth. I am here regarding your debt with the Zhentarim. */ GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY @22503 /* Oh, Gods! Please, wait! */ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @22504 /* I was going to pay them back, I was! It's just... right before I was to leave, I was beset by the smells of the most delectable lamb and garlic mash drifting up from the kitchens. */ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @22505 /* The beautiful aroma was enough to drive a man mad I tell you! No rational mind could allow their body to pass on such a pleasure. */ IF ~~ THEN GOTO 4.5
END

IF ~~ THEN BEGIN 4.5
   SAY @22506 /* Before I knew it, a dozen clean plates were all that remained, and not a single coin left in my pocket. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @22507 /* The chef, overjoyed by my appetite, persuaded Bently to provide me shelter until I regain my footing. But due to the bounty, I've been confined here. */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @22508 /* Please, I just don't know what to do! */
       ++ @22509 /* How much remains of your debt? Perhaps I can settle it for you. */ GOTO 7
       ++ @22510 /* I do. (Snap his neck.) */ DO ~
   Kill("h_carthc")
   SetGlobal("h_CarthBounty","GLOBAL",1)
   AddJournalEntry(@411,QUEST)
   ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY @22511 /* You would do that? Thank you! The loan stands at a precise 300 gold coins. */
       +~PartyGoldGT(299)~+ @22512 /* Here, take the coin then. But, if I find out you've used it to buy another feast, I won't be as forgiving next time. */ GOTO 11
       +~PartyGoldLT(300)~+ @22513 /* I don't have that much coin. Stay here until I can raise a bit more. */ GOTO 9
       ++ @22514 /* That's a bit too steep for me. Sorry, Carth, it's nothing personal. (Snap his neck.) */ DO ~
   Kill("h_carthc")
   SetGlobal("h_CarthBounty","GLOBAL",1)
   AddJournalEntry(@411,QUEST)
   ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 9
   SAY @22515 /* Ok. I'll stay right here until you return. Thank you! */
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",2)~ EXIT
END

IF ~Global("h_CarthBounty","GLOBAL",2)~ THEN BEGIN 10
   SAY @22516 /* You've returned! Do you have the 300 gold coins for me? */
       +~PartyGoldGT(299)~+ @22517 /* Here you go. Remember, no detours this time. */ GOTO 11
       +~PartyGoldLT(300)~+ @22518 /* Not yet. Stay here until I can raise a bit more. */ EXIT
       ++ @22519 /* Actually, I've decided to just kill you and collect the bounty. (Snap his neck.) */ DO ~
   Kill("h_carthc")
   SetGlobal("h_CarthBounty","GLOBAL",1)
   AddJournalEntry(@411,QUEST)
   ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN 11
   SAY @22520 /* Thank you, kind stranger. I've learned my lesson, don't you worry! */
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",3)
   AddJournalEntry(@412,QUEST)
   TakePartyGold(300)
   DestroyGold(300)
   AddExperienceParty(300)
   ReputationInc(1)
   EscapeArea()~ EXIT
END

