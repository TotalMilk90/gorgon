BEGIN ~h_sorend~

IF ~Global("h_SorenQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~The winds of intrigue blow strong in these alleys. I'm Soren, and my ears catch whispers that many miss.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~You have the look of someone seeking... information. Lucky for you, knowledge is my trade. For the right price, of course.~
       +~OR(2) Global("h_Ravenscar","GLOBAL",1) Global("h_Ravenscar","GLOBAL",2)~+ ~There was a shipment of tomes bound for Candlekeep that never made it to their destination. Know anything about it?~ GOTO 2
       +~Global("h_IslaBounty","GLOBAL",1) Global("h_IslaSorenQuest","GLOBAL",0) Exists("h_islacc")~+ ~I need information on Isla Darkcloak. She's a fortress within these markets, untouchable. I need to know her usual routes, habits, weaknesses, anything that can be exploited.~ GOTO 28
       ++ ~I'm not interested.~ EXIT
END

IF ~~ THEN BEGIN 2
   SAY ~Missing tomes, destined for the hallowed halls of Candlekeep? Dangerous business, that. I might have a tidbit or two for you, if you're willing.~
       ++ ~How much will this information cost me?~ GOTO 3
       ++ ~Well, out with it. What do you know about the tomes?~ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Let's add a touch of intrigue, shall we? I suggest a fair exchange. A secret shared for a secret gathered.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~A common method by which I conduct my affairs. It allows me to extend my reach across the realm, you see.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~Provide me with information on a specific individual, and in turn, you shall receive the answers you seek.~
       ++ ~Very well, I'm in. What specific information do you need, and who is this individual?~ GOTO 10
       ++ ~I can't have those tomes vanish into thin air. Tell me where they are, and I'll return the favor after they're recovered.~ GOTO 6
       ++ ~Is there no way to expedite this with a sum of gold? I really don't have time for this.~ GOTO 8
END

IF ~~ THEN BEGIN 6
   SAY ~Sorry, friend. But that's not how this business works. Rest assured, the tomes you seek are safe, and won't be moving anytime soon.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~The seller is a cautious one, and knows when to bide their time. They'll be waiting for the heat to dissipate from the heist before making their move.~
       ++ ~Very well, I'm in. What specific information do you need, and who is this individual?~ GOTO 10
       ++ ~Is there no way to expedite this with a sum of gold? I really don't have time for this.~ GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Gold? A transaction so... pedestrian. While it may grease many a wheel, my friend, some matters require a touch more finesse.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9          
   SAY ~However, considering your urgency, I shall accept your proposal. 2000 gold coins, and you shall have your answers. A fair exchange, considering the value of those tomes.~
       +~PartyGoldGT(1999)~+ ~It's a deal. Now, tell me where I can find those books.~ GOTO 19
       ++ ~I'm not paying that much. What was the infomation you wanted me to uncover?~ GOTO 10
       ++ ~I can't have those tomes vanish into thin air. Tell me where they are, and I'll return the favor after they're recovered.~ GOTO 6
END

IF ~~ THEN BEGIN 10
   SAY ~There's a meeting of some significance transpiring on the second floor of the Keexie Tavern. Captain Velendra of the Flaming Fist and some foreign merchants are convening.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~Their discussions are veiled in secrecy, and I believe it pertains to a valuable shipment. You must be present, but concealed from their notice.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~Captain Velendra's got a sharp eye. Should she sense an eavesdropper, she's liable to vanish without a trace.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~Infiltrate the meeting, stick to the shadows, and gather the information. Once you've done so, I shall be here, ready to provide you with the location of those coveted tomes.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~Keep in mind, this task will require the finesse of a true rogue. Avoid relying on potions and spells, they won't suffice, and the Captain will know.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~Your success hinges on your own skills, your ability to blend into the shadows and move with silent grace. Trust in your instincts, and let your true rogue senses guide you.~
IF ~~ THEN DO ~
   SetGlobal("h_SorenQuest","GLOBAL",1)
   SetGlobal("h_SpawnVelendra","GLOBAL",1)
   AddJournalEntry(@353,QUEST)~ EXIT
END

IF ~Global("h_SorenQuest","GLOBAL",1)~ THEN BEGIN 16
   SAY ~Rely on your true rogue senses and skills to hide in the shadows. Once you've done so, I shall be here, ready to provide you with the location of those coveted tomes.~
       ++ ~Understood. I'll stick to the shadows and get the job done.~ EXIT
       +~Global("h_IslaBounty","GLOBAL",1) Global("h_IslaSorenQuest","GLOBAL",0) Exists("h_islacc")~+ ~I need information on Isla Darkcloak. She's a fortress within these markets, untouchable. I need to know her usual routes, habits, weaknesses, anything that can be exploited.~ GOTO 28
END

IF ~GlobalGT("h_SorenQuest","GLOBAL",2) GlobalLT("h_SorenQuest","GLOBAL",5)~ THEN BEGIN 17
   SAY ~Ah, you've returned. Have you uncovered the information we seek, or do you require more time?~
       +~Global("h_SorenQuest","GLOBAL",4)~+ ~They're meeting tomorrow at the northern gates to exchange a shipment of high-quality weaponry from Mirabar.~ GOTO 18
       +~Global("h_SorenQuest","GLOBAL",3)~+ ~Captain Velendra caught wind of my presence and left before discussing anything of significance.~ GOTO 21
END

IF ~~ THEN BEGIN 18
   SAY ~Excellent work, my stealthy friend. This information is of great value. With it, we hold leverage that could prove most beneficial. Now, for your reward.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~The missing tomes, they are to be displayed tonight for the eyes of potential buyers. Their meeting spot will be at the docks quartered near the Temple of Umberlee.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~A discrete gathering, no doubt. This intel is yours to exploit. Go, claim what is rightfully yours.~
IF ~~ THEN DO ~
   SetGlobal("h_SorenQuest","GLOBAL",6)
   SetGlobal("h_SpawnDorian","GLOBAL",1)
   AddJournalEntry(@357,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 21
   SAY ~Disappointing, indeed. Can't afford missteps in this line of work, especially with matters as delicate as this.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~If you're still intent on obtaining my information on the tomes, I'm afraid it will require compensation.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~2000 gold coins, no less. It's a steep price, but consider it an investment in your future endeavors.~
       +~PartyGoldGT(1999)~+ ~Very well, Soren. Here's the money. Tell me what I need to know.~ GOTO 19
       ++ ~I won't be swindled, Soren. Lower the price, or you'll get nothing from me.~ GOTO 24
       ++ ~I'm not ready to pay that much at the moment.~ GOTO 25
END

IF ~~ THEN BEGIN 24
   SAY ~Unfortunate, but I understand. The offer stands, should you change your mind.~
IF ~~ THEN DO ~
   AddJournalEntry(@356,QUEST)
   SetGlobal("h_SorenQuest","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN 25
   SAY ~Return when you've gathered the necessary funds. The information will be waiting for you, provided you come prepared.~
IF ~~ THEN DO ~
   AddJournalEntry(@356,QUEST)
   SetGlobal("h_SorenQuest","GLOBAL",5)~ EXIT
END

IF ~Global("h_SorenQuest","GLOBAL",5)~ THEN BEGIN 26
   SAY ~I trust you've come prepared with the necessary funds? Once I have them, I'll gladly share my information about the tomes.~
       +~PartyGoldGT(1999)~+ ~Here are the 2000 gold coins. Now, tell me what I need to know.~ GOTO 19
       +~Global("h_IslaBounty","GLOBAL",1) Global("h_IslaSorenQuest","GLOBAL",0) Exists("h_islacc")~+ ~I need information on Isla Darkcloak. She's a fortress within these markets, untouchable. I need to know her usual routes, habits, weaknesses, anything that can be exploited.~ GOTO 28
       ++ ~I'm still working on it.~ EXIT
END

IF ~Global("h_SorenQuest","GLOBAL",6)~ THEN BEGIN 27
   SAY ~Ah, the art of information. It's a dance of whispers and shadows, my friend. A dance I've become rather adept at, if I do say so myself.~
       ++ ~Your talents are noted, Soren. I'll reach out when your particular brand of expertise is required.~ EXIT
       +~Global("h_IslaBounty","GLOBAL",1) Global("h_IslaSorenQuest","GLOBAL",0) Exists("h_islacc")~+ ~I need information on Isla Darkcloak. She's a fortress within these markets, untouchable. I need to know her usual routes, habits, weaknesses, anything that can be exploited.~ GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY ~Keep you voice down, will you? She's got ears like a hawk and a temper to match, so keep this conversation discreet. This is a high-profile target you're sniffin' at.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~Now, I do hold the keys to the secrets you seek, but such knowledge comes at a price... and not just in gold.~ IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY ~There's a lock in the Flaming Fist Headquarter's basement, hiding some valuable documents I've had my eye on for a while.~ IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY ~If you can sneak in, pick that lock, and bring those papers to me, then we'll talk about Isla Darkcloak. Consider it a fair trade... your skills for my information.~
       ++ ~Consider those documents as good as yours.~ GOTO 35
       ++ ~I'm not sure breaking into the Flaming Fist Headquarters is a risk worth taking. There must be another way to get your information.~ GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~That's the deal on the table, friend. It's a risky venture, but that's the price for high-value information.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY ~If you're not up for it, then you'll need to find your answers elsewhere. My terms are firm on this one.~
       ++ ~Fine... I'll get you those documents. But this had better be worth it.~ GOTO 35
       ++ ~I'll pass. The risks outweigh the benefits here. I'll find another way to get what I need.~ GOTO 34
END

IF ~~ THEN BEGIN 34
   SAY ~Suit yourself. Offer's off the table then. In the shadows of Baldur's Gate, information like this doesn't come easy. Good luck finding another way in, you're going to need it.~
IF ~~ THEN DO ~
   SetGlobal("h_IslaSorenQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 35
   SAY ~Excellent. Remember, discretion is key in this job. Get in, get the documents, and get out without a trace.~ IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
   SAY ~Once you've got them, bring them back to me, and then we'll talk. Good luck.~
IF ~~ THEN DO ~
   SetGlobal("h_IslaSorenQuest","GLOBAL",2)
   SetGlobal("h_FFHQDocuments","GLOBAL",1)
   AddJournalEntry(@462,QUEST)~ EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc31")~ THEN BEGIN 37
   SAY ~Ah, I see you've returned in one piece. I trust you were able to slip in undetected. Do you have the documents with you?~
       ++ ~The documents are in my hands. Now it's time for you to hold up your end of the deal.~ GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY ~Alright, here's what I've got on Isla. Most nights, she frequents a tavern located near the city's gates.~ IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
   SAY ~She prefers a spot close to the exit, a tactical choice, no doubt, for a quick getaway if needed. It's one of her rare predictable habits.~ IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
   SAY ~If you're planning to approach her, that's your best shot. But be warned, she's always on her guard, even when she's enjoying her drink.~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
   SAY ~Good luck with Isla, you're going to need it. Now, keep it moving. You've got what you need.~
IF ~~ THEN DO ~
   SetGlobal("h_IslaSorenQuest","GLOBAL",3)
   SetGlobal("h_SpawnIslaAlt","GLOBAL",1)
   AddJournalEntry(@463,QUEST)
   TakePartyItem("h_misc31")
   DestroyItem("h_misc31")~ EXIT
END