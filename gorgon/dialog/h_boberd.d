BEGIN h_boberd

IF WEIGHT #-1 ~Global("h_SpiritsFail","GLOBAL",1)~ THEN BEGIN CUTOFF
   SAY ~I've already made it clear, you've had enough for the night. You've certainly put a damper on your own evening. It's in your best interest to leave now.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_SpiritsFail","GLOBAL",0) GlobalGT("h_Spirits","GLOBAL",1)~ THEN BEGIN DRUNK
   SAY ~There's a bloke here, bit of a hot-head. Best keep your distance, and steer clear of trouble.~ IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 0
   SAY ~Evenin', friend! What can I get ya?~
       +~Global("h_Spirits","GLOBAL",1)~+ ~I'm told you're only serving beer. Any reason for that?~ GOTO 5
       ++ ~Tell me about the crowd tonight. Anything interesting happening?~ DO ~SetGlobal("h_LordTalk","GLOBAL",1)~ GOTO 1
       +~Global("h_Spirits","GLOBAL",0)~+ ~I'm here to keep an eye on things. Any troublemakers causing a ruckus?~ DO ~SetGlobal("h_BouncerTalk","GLOBAL",1)~ GOTO 3
       ++ ~I couldn't help but notice the courtesans mingling with the guests. Are they part of the entertainment for the evening?~ DO ~SetGlobal("h_CourtesanTalk","GLOBAL",1)~ GOTO 4
       ++ ~I'll be going now.~ GOTO END_0
END

IF ~~ THEN BEGIN 1
   SAY ~Yes indeed, there's a grand party happenin' here, courtesy of some Waterdhavian bigwigs. They're makin' their way down to the Nashkel Carnival, and they've spared no expense!~
       ++ ~Can you tell me anything about them?~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Well, I'll tell ya, the lord's a jolly sort, enjoys his fun, he does. The lady, bless her heart, tends to be a bit... uh, light-headed, if you catch my drift.~ IF ~~ THEN GOTO 2.5
END

IF ~~ THEN BEGIN 2.5
   SAY ~She's always bumping into folks, and losing who knows what. But the people seem to adore her, so we let her be.~
       +~Global("h_Spirits","GLOBAL",0)~+ ~I'm here to keep an eye on things. Any troublemakers causing a ruckus?~ DO ~SetGlobal("h_BouncerTalk","GLOBAL",1)~ GOTO 3
       ++ ~I couldn't help but notice the courtesans mingling with the guests. Are they part of the entertainment for the evening?~ DO ~SetGlobal("h_CourtesanTalk","GLOBAL",1)~ GOTO 4
       ++ ~I'll be going now.~ GOTO END_0
END

IF ~~ THEN BEGIN 3
   SAY ~Well, you'll be pleased to know that the bouncer over there is keeping things under tight watch. Security's a top priority, so you can relax and enjoy the festivities.~
       ++ ~Tell me about the crowd tonight. Anything interesting happening?~ DO ~SetGlobal("h_LordTalk","GLOBAL",1)~ GOTO 1
       ++ ~I couldn't help but notice the courtesans mingling with the guests. Are they part of the entertainment for the evening?~ DO ~SetGlobal("h_CourtesanTalk","GLOBAL",1)~ GOTO 4
       ++ ~I'll be going now.~ GOTO END_0
END

IF ~~ THEN BEGIN 4
   SAY ~Aye, they are indeed, adding a touch of elegance to the affair. They're skilled in the art of conversation and company, ensuring the guests have a memorable evening.~
       ++ ~Tell me about the crowd tonight. Anything interesting happening?~ DO ~SetGlobal("h_LordTalk","GLOBAL",1)~ GOTO 1
       +~Global("h_Spirits","GLOBAL",0)~+ ~I'm here to keep an eye on things. Any troublemakers causing a ruckus?~ DO ~SetGlobal("h_BouncerTalk","GLOBAL",1)~ GOTO 3
       ++ ~I'll be going now.~ GOTO END_0
END

IF ~~ THEN BEGIN 5
   SAY ~Aye, it's the guard's request. He wants to keep things from gettin' too rowdy. We wouldn't want no trouble during this fine affair, now would we?~
       ++ ~Is there a way we could work around this restriction? Some guests have a taste for the stronger stuff, and they might appreciate the option.~ GOTO 6
       +~CheckStatLT(Player1,16,CHR)~+ ~Sometimes rules can be... adjusted for the right compensation. Coin? Women?  Would that be the case here?~ GOTO BRIBE_0
       +~CheckStatGT(Player1,15,CHR)~+ ~Sometimes rules can be... adjusted for the right compensation. Coin? Women?  Would that be the case here?~ GOTO BRIBE_1
       +~CheckStatLT(Player1,19,STR)~+ ~I've heard serious accidents can be pretty common in this line of work. Let's just say it would be in your best interest to find a way to serve the stronger stuff.~ GOTO THREAT_0
       +~CheckStatGT(Player1,18,STR)~+ ~I've heard serious accidents can be pretty common in this line of work. Let's just say it would be in your best interest to find a way to serve the stronger stuff.~ GOTO THREAT_1
       ++ ~I'll be going now.~ GOTO END_0
END

IF ~~ THEN BEGIN 6
   SAY ~I understand your concern, I do. But I'm afraid I can't risk it. The guards are being quite vigilant, and I've got to think of the safety of everyone here. I hope you understand.~
       +~CheckStatLT(Player1,16,CHR)~+ ~Sometimes rules can be... adjusted for the right compensation. Coin? Women? What do you say?~ GOTO BRIBE_0
       +~CheckStatGT(Player1,15,CHR)~+ ~Sometimes rules can be... adjusted for the right compensation. Coin? Women? What do you say?~ GOTO BRIBE_1
       +~CheckStatLT(Player1,19,STR)~+ ~I've heard serious accidents can be pretty common in this line of work. Let's just say it would be in your best interest to find a way to serve the stronger stuff.~ GOTO THREAT_0
       +~CheckStatGT(Player1,18,STR)~+ ~I've heard serious accidents can be pretty common in this line of work. Let's just say it would be in your best interest to find a way to serve the stronger stuff.~ GOTO THREAT_1
       ++ ~I'll be going now.~ GOTO END_0
END

IF ~~ THEN BEGIN BRIBE_0
   SAY ~Well, now, I never! I run an honest establishment here, I do. The guards have been quite clear, and I won't be jeopardizing my business or anyone's safety for a bit of extra coin.~
       +~RandomNum(2,1)~+ ~What if I set you up with one of the lovely courtesans? My treat.~ GOTO FAILSPIRITS_0
       +~RandomNum(2,2)~+ ~What if I set you up with one of the lovely courtesans? My treat.~ GOTO BRIBE_1
       ++ ~Is there a way we could work around this restriction? Some guests have a taste for the stronger stuff, and they might appreciate the option.~ GOTO 6
       +~CheckStatLT(Player1,19,STR)~+ ~I've heard serious accidents can be pretty common in this line of work. Let's just say it would be in your best interest to find a way to serve the stronger stuff.~ GOTO THREAT_0
       +~CheckStatGT(Player1,18,STR)~+ ~I've heard serious accidents can be pretty common in this line of work. Let's just say it would be in your best interest to find a way to serve the stronger stuff.~ GOTO THREAT_1
       ++ ~I'll be going now.~ GOTO END_0
END

IF ~~ THEN BEGIN THREAT_0
   SAY ~Listen, I can handle myself just fine, thank you very much. But don't think for a moment I won't call the guard over if you force my hand, understood?~
       +~RandomNum(2,1)~+ ~Understand this, barkeep. Start dishin' out the hard stuff or you'll be havin' a private chat with my blade.~ GOTO FAILSPIRITS_0
       +~RandomNum(2,2)~+ ~Understand this, barkeep. Start dishin' out the hard stuff or you'll be havin' a private chat with my blade.~ GOTO THREAT_1
       ++ ~Is there a way we could work around this restriction? Some guests have a taste for the stronger stuff, and they might appreciate the option.~ GOTO 6
       +~CheckStatLT(Player1,16,CHR)~+ ~Sometimes rules can be... adjusted for the right compensation. Coin? Women?  Would that be the case here?~ GOTO BRIBE_0
       +~CheckStatGT(Player1,15,CHR)~+ ~Sometimes rules can be... adjusted for the right compensation. Coin? Women?  Would that be the case here?~ GOTO BRIBE_1
       ++ ~I'll be going now.~ GOTO END_0
END

IF ~~ THEN BEGIN FAILSPIRITS_0
   SAY ~I'm cuttin' you off for now, mate. I've got enough on my plate without your trouble.~
IF ~~ THEN DO ~
   SetGlobal("h_SpiritsFail","GLOBAL",1)
   SetGlobal("h_Spirits","GLOBAL",2)
   SetGlobal("h_BouncerTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN BRIBE_1
   SAY ~Oh... ahem. It's a deal. I'll see to it that the stronger spirits find their way, discreetly, of course. And you, my friend, be sure to speak highly of me to the lovely ladies.~ IF ~~ THEN GOTO BRIBE_2
END

IF ~~ THEN BEGIN BRIBE_2
   SAY ~Just try to keep any trouble to a minimum, alright? Be especially mindful of that one guest over there who appears rather prone to agitation.~
IF ~~ THEN DO ~
   SetGlobal("h_Spirits","GLOBAL",2)
   SetGlobal("h_BouncerTalk","GLOBAL",2)
   AddJournalEntry(@511,QUEST)~ EXIT
END

IF ~~ THEN BEGIN THREAT_1
   SAY ~Alright, I get it, no need to keep at it. I'll see to it that the stronger stuff finds its way into the hands of those who can handle it.~ IF ~~ THEN GOTO THREAT_2
END

IF ~~ THEN BEGIN THREAT_2
   SAY ~Just try to keep any trouble to a minimum, alright? Be especially mindful of... a particular guest over there who seems to be rather prone to agitation.~
IF ~~ THEN DO ~
   SetGlobal("h_Spirits","GLOBAL",2)
   SetGlobal("h_BouncerTalk","GLOBAL",2)
   AddJournalEntry(@511,QUEST)~ EXIT
END

IF ~~ THEN BEGIN END_0
   SAY ~Enjoy the party. If you need your mug filled, you know where to find me.~ IF ~~ THEN EXIT
END