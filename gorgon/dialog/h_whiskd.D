APPEND ~bart16~

IF ~~ THEN BEGIN J1
   SAY @66500 /* Aye, that's right. Costs a pretty penny, it does. The sailors bring it in straight from the isles, and they only make the trip once a year. Four hundred gold for a bottle. */
       +~PartyGoldGT(399)~+ @66501 /* Alright, four hundred gold it is. Here you are. */ GOTO J6
       +~CheckStatGT(Player1,19,STR)~+ @66502 /* 'Free' sounds like a much better deal for me, if you're not wanting any trouble that is. */ GOTO J2
       +~CheckStatLT(Player1,20,STR)~+ @66502 /* 'Free' sounds like a much better deal for me, if you're not wanting any trouble that is. */ GOTO J3
       +~PartyGoldGT(399) CheckStatGT(Player1,17,CHR)~+ @66503 /* Could you go any lower? My Grandfather was from Alaron. I was hoping to get him a small reminder of his home, before he... well, you know. */ GOTO J4
       +~PartyGoldGT(399) CheckStatLT(Player1,18,CHR)~+ @66503 /* Could you go any lower? My Grandfather was from Alaron. I was hoping to get him a small reminder of his home, before he... well, you know. */ GOTO J5
       ++ @66504 /* I'll come back another time. */ EXIT
END

IF ~~ THEN BEGIN J2
   SAY @66505 /* Alright, alright! No need for trouble. Here, take the bottle. Just go easy, yeah? */
IF ~~ THEN DO ~
   SetGlobal("h_Whiskey","GLOBAL",2)
   AddJournalEntry(@544,QUEST)
   GiveItemCreate("h_misc25",LastTalkedToBy,0,0,0)
   ReputationInc(-1)~ EXIT
END

IF ~~ THEN BEGIN J3
   SAY @66506 /* Trouble? You won't find any trouble here, friend. But you'll have to pay for the bottle like everyone else. */
       +~PartyGoldGT(399)~+ @66501 /* Alright, four hundred gold it is. Here you are. */ GOTO J6
       +~PartyGoldGT(399) CheckStatGT(Player1,17,CHR)~+ @66503 /* Could you go any lower? My Grandfather was from Alaron. I was hoping to get him a small reminder of his home, before he... well, you know. */ GOTO J4
       +~PartyGoldGT(399) CheckStatLT(Player1,18,CHR)~+ @66503 /* Could you go any lower? My Grandfather was from Alaron. I was hoping to get him a small reminder of his home, before he... well, you know. */ GOTO J5
       ++ @66504 /* I'll come back another time. */ EXIT
END

IF ~~ THEN BEGIN J4
   SAY @66507 /* Ah, Alaron, you say? I suppose I could lower it a bit for a sentimental reason. Let's call it three hundred gold, shall we? */
       +~PartyGoldGT(299)~+ @66508 /* Alright, it's a deal. Thank you, sir. */ GOTO J7
       ++ @66504 /* I'll come back another time. */ EXIT
END

IF ~~ THEN BEGIN J5
   SAY @66509 /* Look, mate, I've heard every tall tale you could imagine these sailors be bringin' in. It's all the same. The price stays at four hundred gold. Take it or leave it. */
       +~PartyGoldGT(399)~+ @66501 /* Alright, four hundred gold it is. Here you are. */ GOTO J6
       +~CheckStatGT(Player1,19,STR)~+ @66502 /* 'Free' sounds like a much better deal for me, if you're not wanting any trouble that is. */ GOTO J2
       +~CheckStatLT(Player1,20,STR)~+ @66502 /* 'Free' sounds like a much better deal for me, if you're not wanting any trouble that is. */ GOTO J3
       ++ @66504 /* I'll come back another time. */ EXIT
END

IF ~~ THEN BEGIN J6
   SAY @66510 /* Wise choice, mate. Enjoy your Moonshae whiskey. */
IF ~~ THEN DO ~
   SetGlobal("h_Whiskey","GLOBAL",2)
   AddJournalEntry(@544,QUEST)
   GiveItemCreate("h_misc25",LastTalkedToBy,0,0,0)
   TakePartyGold(400)
   DestroyGold(400)~ EXIT
END

IF ~~ THEN BEGIN J7
   SAY @66510 /* Wise choice, mate. Enjoy your Moonshae whiskey. */
IF ~~ THEN DO ~
   SetGlobal("h_Whiskey","GLOBAL",2)
   AddJournalEntry(@544,QUEST)
   GiveItemCreate("h_misc25",LastTalkedToBy,0,0,0)
   TakePartyGold(300)
   DestroyGold(300)~ EXIT
END

END

EXTEND_TOP BART16 0
   +~Global("h_Whiskey","GLOBAL",1)~+ @66511 /* I've been told you serve a special Moonshae whiskey here. I'd like a bottle. */ GOTO J1
END
