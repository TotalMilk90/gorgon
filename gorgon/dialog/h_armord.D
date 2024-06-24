APPEND ~merch2~

IF WEIGHT #-1 ~Global("h_ProcusQuest","GLOBAL",1) Global("h_MerchantMoney","GLOBAL",0)~ THEN BEGIN M1
   SAY @10500 /* Step right up! The best armor this side of the Cloud Peaks, all here for your perusal. Anything in particular catch your eye, or are you looking for something special? */
       ++ @10501 /* Listen up, mate. This tent's got new owners now. Best pack up your bits and scarper, or things might get a bit rough, understand? */ GOTO M2
       +~CheckStatGT(Player1,17,CHR)~+ @10502 /* This tent's on the verge of collapsing. Carnival brass wants everyone out before it comes down like a sack of spuds. Best to clear out now. */ GOTO M4
       +~CheckStatLT(Player1,18,CHR)~+ @10502 /* This tent's on the verge of collapsing. Carnival brass wants everyone out before it comes down like a sack of spuds. Best to clear out now. */ GOTO M5
       ++ @10503 /* I'm interested in setting up shop here. How about we discuss a fair price for you to move along? */ GOTO M6
       ++ @10504 /* Those wares behind you... I'd like to examine them a bit more closely. (Snap his neck.) */ GOTO M16
       ++ @10505 /* Show me what you have. */ DO ~StartStore("sto4901",LastTalkedToBy(Myself))~ EXIT
       ++ @10506 /* I don't need anything today. */ EXIT
END

IF ~~ THEN BEGIN M2
   SAY @10507 /* New owners? I ain't heard nothing about that. I think you've got the wrong tent, friend, and I think it's best you move on. */
       ++ @10508 /* This ain't a discussion, it's a warning. Leave, quick-like, or you're gonna have more trouble than you bargained for. */ GOTO M3
       ++ @10509 /* We're seizing this tent. It's in your best interest to clear out, sharpish, before things get a tad unpleasant. */ GOTO M3
       ++ @10510 /* You really don't want to see what happens if you decide to stay. It won't end well for you, I guarantee it. */ GOTO M3
END

IF ~~ THEN BEGIN M3
   SAY @10511 /* You'll regret this, mark my words! I'll be sure to spread the word about the likes of you. You've made an enemy today, and you won't escape the consequences! */
IF ~~ THEN DO ~
   SetGlobal("h_ProcusQuest","GLOBAL",2)
   AddJournalEntry(@341,QUEST)
   ReputationInc(-1)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN M4
   SAY @10512 /* Collapsing, you say? Gods, I don't fancy getting squished under a pile of canvas. Right, I'm off then. Good luck with... whatever it is you're up to. */
IF ~~ THEN DO ~
   SetGlobal("h_ProcusQuest","GLOBAL",2)
   AddJournalEntry(@341,QUEST)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN M5
   SAY @10513 /* Nice try, but I'm not falling for that one. This tent's sturdy as they come. You'll have to come up with a better excuse than that! */
       ++ @10514 /* Just a bit of carnival fun, my friend. I'm actually looking to purchase your vendor location. Think we could make a deal? */ GOTO M6
       ++ @10515 /* I'll make this simple for you. This tent's got new owners. Walk away, and I'll let you leave in one piece. */ GOTO M2
       ++ @10516 /* Looks like we're taking the less pleasant route. (Snap his neck.) */ GOTO M16
END

IF ~~ THEN BEGIN M6
   SAY @10517 /* Hah! Do you have any idea what it took for me to secure this prime spot? You think you can just waltz in here and buy me out? */
       ++ @10518 /* Everything has a price, doesn't it? What would it take to convince you to consider another location? */ GOTO M7
       ++ @10519 /* How much are we talking here? Perhaps we can come to an arrangement. */ GOTO M7
       ++ @10520 /* Is there anything I can do to help persuade you differently? */ GOTO M7
END

IF ~~ THEN BEGIN M7
   SAY @10521 /* You want this spot? Fine, but it comes with a condition. */ IF ~~ THEN GOTO M8
END

IF ~~ THEN BEGIN M8
   SAY @10522 /* I've poured everything I have into this inventory. If you want me gone, you'll need to buy it all. Otherwise, you're out of luck. */
       ++ @10523 /* Buy out your entire stock? Just how much are we talking here? */ GOTO M9
       ++ @10524 /* Alright, if that's what it takes. How much are we looking at for the whole lot? */ GOTO M9
       ++ @10525 /* You drive a hard bargain, I'll give you that. What's the grand total for your entire inventory? */ GOTO M9
END

IF ~~ THEN BEGIN M9
   SAY @10526 /* I've priced it at 500 gold, and that's what it will be. Take it or leave it. */
       +~PartyGoldGT(499)~+ @10527 /* Alright, fair enough. Here's your 500 gold. Let's make the transfer and get this sorted. */ GOTO M10
       +~CheckStatGT(Player1,17,CHR) PartyGoldGT(399)~+ @10528 /* Is there any chance we could settle on 400 gold? */ GOTO M11
       +~CheckStatLT(Player1,18,CHR)~+ @10528 /* Is there any chance we could settle on 400 gold? */ GOTO M12
       +~PartyGoldLT(500)~+ @10529 /* I'll need to gather some more funds. I'll be back once I've got the 500 gold. */ GOTO M13
       ++ @10530 /* You know what? I've changed my mind. You're leaving, and you're leaving now. No gold, no negotiations. It's time to go. */ GOTO M15
       ++ @10531 /* Before I decide... allow me to examine your wares a little more closely. (Snap his neck.) */ GOTO M16
       ++ @10532 /* I'll need some more time to think about it first. */ GOTO M13
END

IF ~~ THEN BEGIN M10
   SAY @10533 /* A pleasure doing business with you. The spot is all yours. I'll start packing up right away. */
IF ~~ THEN DO ~
   SetGlobal("h_ProcusQuest","GLOBAL",2)
   AddJournalEntry(@341,QUEST)
   TakePartyGold(500)
   DestroyGold(500)
   GiveItemCreate("CHAN01",LastTalkedToBy,0,0,0)
   GiveItemCreate("CHAN01",LastTalkedToBy,0,0,0)
   GiveItemCreate("CHAN04",LastTalkedToBy,0,0,0)
   GiveItemCreate("LEAT01",LastTalkedToBy,0,0,0)
   GiveItemCreate("LEAT01",LastTalkedToBy,0,0,0)
   GiveItemCreate("LEAT01",LastTalkedToBy,0,0,0)
   GiveItemCreate("LEAT01",LastTalkedToBy,0,0,0)
   GiveItemCreate("LEAT01",LastTalkedToBy,0,0,0)
   GiveItemCreate("LEAT04",LastTalkedToBy,0,0,0)
   GiveItemCreate("LEAT04",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD01",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD01",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD01",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD01",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD01",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD03",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD03",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD05",LastTalkedToBy,0,0,0)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN M11
   SAY @10534 /* Very well, 400 gold it is. The spot's yours. Make sure to put it to good use. */
IF ~~ THEN DO ~
   SetGlobal("h_ProcusQuest","GLOBAL",2)
   AddJournalEntry(@341,QUEST)
   TakePartyGold(400)
   DestroyGold(400)
   GiveItemCreate("CHAN01",LastTalkedToBy,0,0,0)
   GiveItemCreate("CHAN01",LastTalkedToBy,0,0,0)
   GiveItemCreate("CHAN04",LastTalkedToBy,0,0,0)
   GiveItemCreate("LEAT01",LastTalkedToBy,0,0,0)
   GiveItemCreate("LEAT01",LastTalkedToBy,0,0,0)
   GiveItemCreate("LEAT01",LastTalkedToBy,0,0,0)
   GiveItemCreate("LEAT01",LastTalkedToBy,0,0,0)
   GiveItemCreate("LEAT01",LastTalkedToBy,0,0,0)
   GiveItemCreate("LEAT04",LastTalkedToBy,0,0,0)
   GiveItemCreate("LEAT04",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD01",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD01",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD01",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD01",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD01",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD03",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD03",LastTalkedToBy,0,0,0)
   GiveItemCreate("SHLD05",LastTalkedToBy,0,0,0)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN M12
   SAY @10535 /* I can't go any lower than 500 gold, friend. No room for bargaining, I'm afraid. */
       +~PartyGoldGT(499)~+ @10527 /* Alright, fair enough. Here's your 500 gold. Let's make the transfer and get this sorted. */ GOTO M10
       +~PartyGoldLT(500)~+ @10529 /* I'll need to gather some more funds. I'll be back once I've got the 500 gold. */ GOTO M13
       ++ @10530 /* You know what? I've changed my mind. You're leaving, and you're leaving now. No gold, no negotiations. It's time to go. */ GOTO M15
       ++ @10536 /* Before I decide, may I examine that small shield right behind you? (Snap his neck.) */ GOTO M16
       ++ @10532 /* I'll need some more time to think about it first. */ GOTO M13
END

IF ~~ THEN BEGIN M13
   SAY @10537 /* Take your time. Once you've got the 500 gold, we'll settle the deal. The spot will be waiting for you. */
IF ~~ THEN DO ~
   SetGlobal("h_MerchantMoney","GLOBAL",1)
   AddJournalEntry(@340,QUEST)~ EXIT
END

IF WEIGHT #-1 ~Global("h_ProcusQuest","GLOBAL",1) Global("h_MerchantMoney","GLOBAL",1)~ THEN BEGIN M14
   SAY @10538 /* Back so soon? Did you manage to gather the funds, or do we need to discuss this further? */
       +~PartyGoldGT(499)~+ @10539 /* Here's your 500 gold. Let's make the transfer and get this sorted. */ GOTO M10
       +~CheckStatGT(Player1,17,CHR) PartyGoldGT(399)~+ @10528 /* Is there any chance we could settle on 400 gold? */ GOTO M11
       +~CheckStatLT(Player1,18,CHR)~+ @10528 /* Is there any chance we could settle on 400 gold? */ GOTO M12
       +~PartyGoldLT(500)~+ @10529 /* I'll need to gather some more funds. I'll be back once I've got the 500 gold. */ GOTO M13
       ++ @10530 /* You know what? I've changed my mind. You're leaving, and you're leaving now. No gold, no negotiations. It's time to go. */ GOTO M15
       ++ @10536 /* Before I decide, may I examine that small shield right behind you? (Snap his neck.) */ GOTO M16
       ++ @10532 /* I'll need some more time to think about it first. */ GOTO M13
END

IF ~~ THEN BEGIN M15      
   SAY @10540 /* This is some sort of joke, isn't it? You can't expect me to just walk away. */
       ++ @10508 /* This ain't a discussion, it's a warning. Leave, quick-like, or you're gonna have more trouble than you bargained for. */ GOTO M3
       ++ @10509 /* We're seizing this tent. It's in your best interest to clear out, sharpish, before things get a tad unpleasant. */ GOTO M3
       ++ @10510 /* You really don't want to see what happens if you decide to stay. It won't end well for you, I guarantee it. */ GOTO M3
END

IF ~~ THEN BEGIN M16
   SAY @10541 /* Of course, friend. Allow me to get that for you. */
IF ~~ THEN DO ~
   Kill("merch2")
   SetGlobal("h_ProcusQuest","GLOBAL",2)
   AddJournalEntry(@341,QUEST)
   ReputationInc(-2)~ EXIT
END

END
