APPEND Karp

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",7) Global("h_KarpWork","GLOBAL",0) Global("h_KarpWorkGood","GLOBAL",0)~ THEN BEGIN START_0
   SAY ~Looks like we'll be gettin' a good harvest this year, thank the gods for that. Now, what is it I can help you with?~
       +~Global("h_RigaldoQuest","GLOBAL",7)~+ ~Listen here you dungy peasant! I know about the rings and I'm here to sieze them, so give them up right quick and I won't have to bury your body in the hole which you found them!~ GOTO THREAT_1
       +~Global("h_RigaldoQuest","GLOBAL",7)~+ ~Hello Karp. No need to be afraid. I know about the rings and I know it's a secret from your husband. Be a good lass and hand them over, else you wish for him to find out.~ GOTO BLACKMAIL_1
       +~Global("h_RigaldoQuest","GLOBAL",7)~+ ~Karp, I take it? I have just finished my journey south from Ulgoth's Beard and I am here to collect the pair of rings I purchased.~ GOTO CHARM_1
       +~Global("h_RigaldoQuest","GLOBAL",7)~+ ~You must be Karp, yes? I'm curious about your unlawful dealings in the black market. Care to elaborate?~ GOTO GOOD_1
END

IF ~~ THEN BEGIN THREAT_1
   SAY ~Wha... What? Please don't kill me, I have a s-s-son to care for! H-here! I'll give you the rings!~
       ++ ~Not good enough, sweetheart. Surrender everything else you've found buried around here as well!~ GOTO THREAT_2
       ++ ~There's a good lass. Hurry up now.~ GOTO THREAT_3
END

IF ~~ THEN BEGIN THREAT_2
   SAY ~You're a monster!~
IF ~~ THEN DO
   ~AddJournalEntry(@316,QUEST)
   GiveItem("h_misc17",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)
   GiveItem("h_misc06",LastTalkedToBy)
   ReputationInc(-1)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN THREAT_3
   SAY ~Here. Now go, please!~
IF ~~ THEN DO
   ~AddJournalEntry(@316,QUEST)
   GiveItem("h_misc17",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)
   ReputationInc(-1)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN BLACKMAIL_1
   SAY ~Wha... What? Why would you do this? My husband beats me and he beats my son! This gold is our only hope for escape! Please.. spare us this torment!~
       ++ ~Then surely you won't want him finding out. Depart with your rings and your secrets will remain buried.~ GOTO BLACKMAIL_2
       ++ ~I cannot condemn you to such suffering. Yet, the rings are my objective.~ GOTO BLACKMAIL_3
END

IF ~~ THEN BEGIN BLACKMAIL_2
   SAY ~You're an evil wretch you know that? Take the damned rings, and off to the nine hells with ya!~
       ++ ~Not good enough, sweetheart. Surrender everything else you've found buried around here as well!~ GOTO THREAT_2
       ++ ~There's a good lass. Hurry up now.~ GOTO THREAT_3
END

IF ~~ THEN BEGIN BLACKMAIL_3
   SAY ~Please, whoever you are, I need this sale. I must buy passage for my son and I'm nowhere near the amount of coin I need. The buyer is already on his way!~
       ++ ~And I don't rightly care! Give me the rings or I'll bury your face in the dirt!~ GOTO BLACKMAIL_2
       ++ ~If I can find you passage, would you depart with the rings?~ GOTO BLACKMAIL_4
END

IF ~~ THEN BEGIN BLACKMAIL_4
   SAY ~Oh, well, I guess I could, yes!~ IF ~~ THEN GOTO BLACKMAIL_5
END

IF ~~ THEN BEGIN BLACKMAIL_5
   SAY ~We are seeking a way further south, to the city of Athkatla. I have a sister there who is willing to take us in. If you can guarantee our safety, I will trade you the rings.~ IF ~~ THEN GOTO BLACKMAIL_6
END

IF ~~ THEN BEGIN BLACKMAIL_6
   SAY ~I'll still be around here in the meantime, tending to the farm.~
IF ~~ THEN DO ~
   SetGlobal("h_KarpWorkGood","GLOBAL",1)
   AddJournalEntry(@318,QUEST)~ EXIT
END

IF WEIGHT #-3 ~True() Global("h_KarpWorkGood","GLOBAL",1)~ THEN BEGIN GOOD_10
   SAY ~You came back! Have you found a way out for us?~
       ++ ~I'm sorry, I haven't heard of anything just yet.~ EXIT
END

IF WEIGHT #-3 ~True() Global("h_KarpWorkGood","GLOBAL",2)~ THEN BEGIN GOOD_11
   SAY ~You came back! Have you found a way out for us?~
       ++ ~I have something lined up for you in Beregost. Flee tonight with your son and you will be contacted when you are sighted within the city.~ GOTO GOOD_20
END

IF ~~ THEN BEGIN GOOD_20
   SAY ~Thank you, truly. Here are the rings as promised. I also want you to have something else. I found it buried here over a month ago and never was able to sell it. Maybe you can find a use for it. Farewell.~
IF ~~ THEN DO ~
   AddJournalEntry(@320,QUEST_DONE)
   AddJournalEntry(@318,QUEST)
   GiveItem("h_misc17",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)
   GiveItem("h_misc06",LastTalkedToBy)
   AddExperienceParty(300)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN CHARM_1
   SAY ~Oh, err... Yes of course, I wasn't expecting you so soon. You look a little more rough than was described.~
       ++ ~Travel-worn, m'lady, please forgive my appearance.~ GOTO CHARM_4
       ++ ~Well, know that I am quite embarrassed to be so dirty in front of someone as lovely as you.~ GOTO CHARM_3
       ++ ~Yes, and with your name I was expecting to meet with a fish, but that isn't the case now is it?~ GOTO CHARM_2
       ++ ~You can blame the bandits for that. The way down was abundant with peril.~ GOTO CHARM_4
       ++ ~Bah, enough of this! I am here to sieze your rings. Hand them over nice-like or meet the cold embrace of the earth.~ GOTO THREAT_1
END

IF ~~ THEN BEGIN CHARM_2
   SAY  ~Haw, haw! It's been a few years since I've heard that one. My daddy was a fisherman you know.~
       +~CheckStatGT(Player1,17,CHR)~+ ~Well you do seem like a fine catch if I've ever seen one.~ GOTO CHARM_3.5
       +~CheckStatLT(Player1,18,CHR)~+ ~Well you do seem like a fine catch if I've ever seen one.~ GOTO CHARM_3
       ++ ~Was he now? I've always enjoyed the sport myself. Well, now, shall we get to business?~ GOTO CHARM_4
       ++ ~Bah, enough of this! I am here to sieze your rings. Hand them over nice-like or meet the cold embrace of the earth.~ GOTO THREAT_1
END

IF ~~ THEN BEGIN CHARM_3
   SAY ~Oh my, *blushes* well, thank you...~ IF ~~ THEN GOTO CHARM_4
END

IF ~~ THEN BEGIN CHARM_3.5
   SAY~Oh my, *blushes* well, thank you...~ IF ~~ THEN GOTO CHARM_6.5
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
   SAY ~I think you are not who you say you are, and I won't be dealing with the likes of you any longer.~
       ++ ~Bah, enough of this! I am here to sieze your rings. Hand them over nice-like or meet the cold embrace of the earth.~ GOTO THREAT_1
       ++ ~Alright, well maybe I'll go find your husband then and inform him of what is going on.~ GOTO BLACKMAIL_1
END

IF ~~ THEN BEGIN CHARM_6
   SAY ~*laughs* That's right! I was worried for a moment that you weren't the one I was supposed to meet. Here are your rings then.~ IF ~~ THEN GOTO CHARM_7
END

IF ~~ THEN BEGIN CHARM_6.5
   SAY ~You know, I was worried for a moment that you weren't the one I was supposed to meet, but now I have no doubts. Here are your rings.~ IF ~~ THEN GOTO CHARM_7
END

IF ~~ THEN BEGIN CHARM_7
   SAY ~Actually, may I ask a favor of you? I'm looking to obtain discrete passage to Athkatla for my son and I. If you know of anyone who could provide such a service, I would be eternally grateful.~
       ++ ~Sure, I will ask around and look into it for you.~ GOTO CHARM_8
       ++ ~Sorry, but I don't really have the time for that right now.~ GOTO CHARM_9
END

IF ~~ THEN BEGIN CHARM_8
   SAY ~Oh, thank you! I'll still be around here in the meantime, tending to the farm.~
IF ~~ THEN DO ~
   SetGlobal("h_KarpWork","GLOBAL",1)
   AddJournalEntry(@316,QUEST)
   AddJournalEntry(@318,QUEST)
   GiveItem("h_misc17",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN CHARM_9
   SAY ~I see. Sorry for the trouble. Take care.~
IF ~~ THEN DO ~
   AddJournalEntry(@316,QUEST)
   GiveItem("h_misc17",LastTalkedToBy)
   GiveItem("RING06",LastTalkedToBy)
   EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~True() Global("h_KarpWork","GLOBAL",1)~ THEN BEGIN JOB_0
   SAY ~You came back! Have you found a way out for us?~
       ++ ~I'm sorry, I haven't heard of anything just yet.~ EXIT
END

IF WEIGHT #-2 ~True() Global("h_KarpWork","GLOBAL",2)~ THEN BEGIN JOB_1
   SAY ~You came back! Have you found a way out for us?~
       ++ ~I have something lined up for you in Beregost. Flee tonight with your son and you will be contacted when you are sighted within the city.~ GOTO JOB_2
END

IF ~~ THEN BEGIN JOB_2
   SAY ~Thank you, truly. Here, I want you to have something. I found it buried here over a month ago and never was able to sell it. Maybe you can find a use for it. Farewell.~
IF ~~ THEN DO ~
   AddJournalEntry(@320,QUEST_DONE)
   GiveItem("h_misc06",LastTalkedToBy)
   AddExperienceParty(300)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN GOOD_1
   SAY ~What! Oh, how do you know about that?~ IF ~~ THEN GOTO GOOD_2
END

IF ~~ THEN BEGIN GOOD_2
   SAY ~It is true. I'll admit it. It's because my husband, he... he beats me! He beats my son too! I'm selling these rings so I can find a way out for my boy!~
       ++ ~And I don't rightly care! Give me the rings or I'll bury your face in the dirt!~ GOTO BLACKMAIL_2
       ++ ~If I can find you passage, would you depart with the rings?~ GOTO BLACKMAIL_4
END

END
/*
EXTEND_TOP KARP 0
   +~Global("h_RigaldoQuest","GLOBAL",7)~+ ~Listen here you dungy peasant! I know about the rings and I'm here to sieze them, so give them up right quick and I won't have to bury your body in the hole which you found them!~ GOTO THREAT_1
   +~Global("h_RigaldoQuest","GLOBAL",7)~+ ~Hello Karp. No need to be afraid. I know about the rings and I know it's a secret from your husband. Be a good lass and hand them over, else you wish for him to find out.~ GOTO BLACKMAIL_1
   +~Global("h_RigaldoQuest","GLOBAL",7)~+ ~Karp, I take it? I have just finished my journey south from Ulgoth's Beard and I am here to collect the pair of rings I purchased.~ GOTO CHARM_1
   +~Global("h_RigaldoQuest","GLOBAL",7)~+ ~You must be Karp, yes? I'm curious about your unlawful dealings in the black market. Care to elaborate?~ GOTO GOOD_1
END
*/