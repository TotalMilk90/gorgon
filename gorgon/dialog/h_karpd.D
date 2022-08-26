APPEND Karp

IF ~~ THEN BEGIN THREAT_1
   SAY ~Wha... What? Please don't kill me, I have a s-s-son to care for! I'll give you the rings!~
       ++ ~What else have you found buried around here? Give me everything else you've got on you as well!~ GOTO THREAT_2
       ++ ~There's a good lass. Hurry up now.~ GOTO THREAT_3
END

IF ~~ THEN BEGIN THREAT_2
   SAY ~You're a monster!~
IF ~~ THEN DO
   ~AddJournalEntry(@316,QUEST)
   GiveItem("h_ring06",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)
   GiveItem("h_misc06",LastTalkedToBy)
   ReputationInc(-1)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN THREAT_3
   SAY ~Here. Now go, please!~
IF ~~ THEN DO
   ~AddJournalEntry(@316,QUEST)
   GiveItem("h_ring06",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)
   ReputationInc(-1)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN BLACKMAIL_1
   SAY ~Wha... What? Why would you do this? My husband beats me and he beats my son! I need this money so we can flee! Please.. Please don't do this!~
       ++ ~Then surely you won't want him finding out. Hand them over and I'll be on my way.~ GOTO BLACKMAIL_2
       ++ ~Well, that does change things. In good conscience I cannot subject you to that. However, I also cannot leave without those rings.~ GOTO BLACKMAIL_3
END

IF ~~ THEN BEGIN BLACKMAIL_2
   SAY ~You're an evil wretch you know that? Take the damned rings then and off to the nine hells with you!~
       ++ ~What else have you found buried around here? Give me everything else you've got on you as well!~ GOTO THREAT_2
       ++ ~There's a good lass. Hurry up now.~ GOTO THREAT_3
END

IF ~~ THEN BEGIN BLACKMAIL_3
   SAY ~Please whoever you are, I need this sale. I must buy passage for my son and I'm nowhere near the amount of coin I need. The buyer is already on his way.~
       ++ ~And I don't rightly care! I won't inform your husband of your deeds but if you dont give them to me then I'll bury your face in the dirt!~ GOTO BLACKMAIL_2
       ++ ~I will not pay you for them. But perhaps I can find a way to help your son.~ GOTO BLACKMAIL_4
END

IF ~~ THEN BEGIN BLACKMAIL_4
   SAY ~If you can guarantee his safe passage then I suppose I could trade you the rings. I have a sister in Athkatla who is willing to take him in until I can afford my expense as well. I guess I have no choice but to trust you. Here are the rings then.~
IF ~~ THEN DO ~
   SetGlobal("h_KarpWork","GLOBAL",1)
   AddJournalEntry(@316,QUEST)
   AddJournalEntry(@318,QUEST)
   GiveItem("h_ring06",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN CHARM_1
   SAY ~Oh, err... Yes of course, I wasn't expecting you so soon. You look a little more brutish than was described.~
       ++ ~Yes and with your name I was expecting to meet with a fish, but that isn't the case now is it?~ GOTO CHARM_2
       ++ ~Oh, yes well with all the bandits on the road it does add a bit of roughness to you as you travel.~ GOTO CHARM_4
       ++ ~Bah, enough of this! I am here to sieze your rings. Hand them over nice-like and I won't have to bury your face in the dirt.~ GOTO THREAT_1
END

IF ~~ THEN BEGIN CHARM_2
   SAY ~Haw haw! It's been a few years since I've heard that one. My daddy was a fisherman you know.~
       ++ ~Well you do seem like a fine catch if I've ever seen one.~ GOTO CHARM_3
       ++ ~Was he now? I've always enjoyed the sport myself. Shall we get to business then?~ GOTO CHARM_4
       ++ ~Bah, enough of this! I am here to sieze your rings. Hand them over nice-like and I won't have to bury your face in the dirt.~ GOTO THREAT_1
END

IF ~~ THEN BEGIN CHARM_3
   SAY ~Oh my, *blushes* well, thank you...~ IF ~~ THEN GOTO CHARM_4
END

IF ~~ THEN BEGIN CHARM_4
   SAY ~Hmm, I'd like to ask you a question, if I may. What did one snowman say to the other snowman?~
       ++ ~Melting is snow fun.~ GOTO CHARM_5
       ++ ~Ice to see you.~ GOTO CHARM_5
       ++ ~Let's roll.~ GOTO CHARM_5
       ++ ~We are stuck in a bloody snowglobe!~ GOTO CHARM_5
       ++ ~Freeze!~ GOTO CHARM_5
       ++ ~Smells like carrots.~ GOTO CHARM_6
       ++ ~What kind of question is that?~ GOTO CHARM_5
END

IF ~~ THEN BEGIN CHARM_5
   SAY ~I think you are not who you say you are, and I won't deal with the likes of you any longer.~
       ++ ~Bah, enough of this! I am here to sieze your rings. Hand them over nice-like and I won't have to bury your face in the dirt.~ GOTO THREAT_1
       ++ ~Alright, well maybe I'll go find your husband then and inform him of what is going on.~ GOTO BLACKMAIL_1
END

IF ~~ THEN BEGIN CHARM_6
   SAY ~*Laughs* That's right! I was worried for a moment that you weren't the one I was supposed to meet. Here are your rings then.~ IF ~~ THEN GOTO CHARM_7
END

IF ~~ THEN BEGIN CHARM_7
   SAY ~Actually, may I ask a favor of you? I'm looking to discretely obtain passage to Athkatla for my son and I. If you know of anyone who could provide such a service I would be eternally grateful.~
       ++ ~Sure, I will ask around and look into it for you.~ GOTO CHARM_8
       ++ ~Sorry but I don't really have the time for that right now.~ GOTO CHARM_9
END

IF ~~ THEN BEGIN CHARM_8
   SAY ~Oh, thank you! I'll still be here in the meantime, wandering about the farm.~
IF ~~ THEN DO ~
   SetGlobal("h_KarpWork","GLOBAL",1)
   AddJournalEntry(@316,QUEST)
   AddJournalEntry(@318,QUEST)
   GiveItem("h_ring06",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN CHARM_9
   SAY ~Oh, ok sorry. I didn't mean to trouble you. Take care.~
IF ~~ THEN DO ~
   AddJournalEntry(@316,QUEST)
   GiveItem("h_ring06",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)
   EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~True() Global("h_KarpWork","GLOBAL",1)~ THEN BEGIN JOB_0
   SAY ~You came back. Have you found a way out for my son?~
       ++ ~I'm sorry but I haven't heard of anything just yet.~ EXIT
END

IF WEIGHT #-2 ~True() Global("h_KarpWork","GLOBAL",2)~ THEN BEGIN JOB_1
   SAY ~You came back. Have you found a way out for my son?~
       ++ ~I have something lined up for you in Beregost. Flee tonight with your son and you will be contacted when you are sighted within the city.~ GOTO JOB_2
END

IF ~~ THEN BEGIN JOB_2
   SAY ~Thank you, truly. Here, I want you to have something, I found it buried here over a month ago and never was able to sell it. Maybe you can find a use for it. Farewell.~
IF ~~ THEN DO ~
   AddJournalEntry(@320,QUEST_DONE)
   GiveItem("h_misc06",LastTalkedToBy)
   AddExperienceParty(300)
   EscapeArea()~ EXIT
END

END

EXTEND_TOP KARP 0
   +~Global("h_RigaldoQuest","GLOBAL",7)~+ ~Listen here you dungy peasant! I know about the rings and I'm here to sieze them, so give them up right quick and I won't have to bury your body in the hole which you found them!~ GOTO THREAT_1
   +~Global("h_RigaldoQuest","GLOBAL",7)~+ ~Hello Karp. No need to be afraid. I know about the rings, and I know it's a secret from your husband. Be a good lass and hand them over, else you wish for him to find out.~ GOTO BLACKMAIL_1
   +~Global("h_RigaldoQuest","GLOBAL",7)~+ ~You must be Karp, yes? I have just finished my journey south from Ulgoth's Beard and I am here to collect the pair of rings I purchased.~ GOTO CHARM_1
END