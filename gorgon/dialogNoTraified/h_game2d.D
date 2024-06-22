BEGIN ~h_game2d~

IF WEIGHT #-1 ~Global("h_GilbaldQuest","GLOBAL",2)~ THEN BEGIN GOLD_0
   SAY ~I'm hopin' Gilbald won't give me too much grief. If you can finger the culprit quick-like, maybe he'll let me off easy.~ IF ~~ THEN GOTO GOLD_1
END

IF ~~ THEN BEGIN GOLD_1
   SAY ~I had three big players last night, and truthfully, each one of 'em seemed a bit dodgy.~ IF ~~ THEN GOTO GOLD_2
END

IF ~~ THEN BEGIN GOLD_2
   SAY ~There's our usual bloke, Xevec. A woman, whose name I didn't catch, and a one-handed dwarf, named Hugo.~
       +~Global("h_GamesXevec","GLOBAL",0)~+ ~Tell me about Xevec.~ DO ~SetGlobal("h_GamesXevec","GLOBAL",1)~ GOTO GOLD_3
       +~Global("h_GamesWoman","GLOBAL",0)~+ ~Tell me about the woman.~ DO ~SetGlobal("h_GamesWoman","GLOBAL",1)~ GOTO GOLD_6
       +~Global("h_GamesHugo","GLOBAL",0)~+ ~Tell me about Hugo.~ DO ~SetGlobal("h_GamesHugo","GLOBAL",1)~ GOTO GOLD_9
END

IF ~~ THEN BEGIN GOLD_3
   SAY ~Xevec's a low-born troublemaker from Beregost. Too useless for any proper job, so he resorts to petty thievin' and beggin'.~ IF ~~ THEN GOTO GOLD_4
END

IF ~~ THEN BEGIN GOLD_4
   SAY ~Had a strange interest in the woman he was playing with, made her visibly uncomfortable. They chatted for a bit, but that's it.~ IF ~~ THEN GOTO GOLD_5
END

IF ~~ THEN BEGIN GOLD_5
   SAY ~After she left, he headed for the courtesan wing. Might be worth havin' some words with Meredia about him.~
       +~Global("h_GamesXevec","GLOBAL",1) Global("h_GamesWoman","GLOBAL",1) Global("h_GamesHugo","GLOBAL",1)~+ ~I'll see what I can dig up.~ GOTO GOLD_12
       +~Global("h_GamesXevec","GLOBAL",0)~+ ~Tell me about Xevec.~ DO ~SetGlobal("h_GamesXevec","GLOBAL",1)~ GOTO GOLD_3
       +~Global("h_GamesWoman","GLOBAL",0)~+ ~Tell me about the woman.~ DO ~SetGlobal("h_GamesWoman","GLOBAL",1)~ GOTO GOLD_6
       +~Global("h_GamesHugo","GLOBAL",0)~+ ~Tell me about Hugo.~ DO ~SetGlobal("h_GamesHugo","GLOBAL",1)~ GOTO GOLD_9
END

IF ~~ THEN BEGIN GOLD_6
   SAY ~The woman dressed and talked like nobility, but her body language said otherwise.~ IF ~~ THEN GOTO GOLD_7
END

IF ~~ THEN BEGIN GOLD_7
   SAY ~She seemed a bit off and jittery. Initially, I thought it was because of Xevec, but now I'm not so sure.~ IF ~~ THEN GOTO GOLD_8
END

IF ~~ THEN BEGIN GOLD_8
   SAY ~Didn't catch her name, but I do recall her mentioning someone named, 'Sam'. Might be kin or somethin'.~
       +~Global("h_GamesXevec","GLOBAL",1) Global("h_GamesWoman","GLOBAL",1) Global("h_GamesHugo","GLOBAL",1)~+ ~I'll see what I can dig up.~ GOTO GOLD_12
       +~Global("h_GamesXevec","GLOBAL",0)~+ ~Tell me about Xevec.~ DO ~SetGlobal("h_GamesXevec","GLOBAL",1)~ GOTO GOLD_3
       +~Global("h_GamesWoman","GLOBAL",0)~+ ~Tell me about the woman.~ DO ~SetGlobal("h_GamesWoman","GLOBAL",1)~ GOTO GOLD_6
       +~Global("h_GamesHugo","GLOBAL",0)~+ ~Tell me about Hugo.~ DO ~SetGlobal("h_GamesHugo","GLOBAL",1)~ GOTO GOLD_9
END

IF ~~ THEN BEGIN GOLD_9
   SAY ~Hugo's your typical dwarf, first-timer here. Only odd thing on 'em was the missing hand.~ IF ~~ THEN GOTO GOLD_10
END

IF ~~ THEN BEGIN GOLD_10
   SAY ~Got tight-lipped about it when prodded. Could be the mark of a caught thief or cheat.~ IF ~~ THEN GOTO GOLD_11
END

IF ~~ THEN BEGIN GOLD_11
   SAY ~It's possible he tried his tricks here, then scarpered off to his next job. He might be a slippery one to track down.~
       +~Global("h_GamesXevec","GLOBAL",1) Global("h_GamesWoman","GLOBAL",1) Global("h_GamesHugo","GLOBAL",1)~+ ~I'll see what I can dig up.~ GOTO GOLD_12
       +~Global("h_GamesXevec","GLOBAL",0)~+ ~Tell me about Xevec.~ DO ~SetGlobal("h_GamesXevec","GLOBAL",1)~ GOTO GOLD_3
       +~Global("h_GamesWoman","GLOBAL",0)~+ ~Tell me about the woman.~ DO ~SetGlobal("h_GamesWoman","GLOBAL",1)~ GOTO GOLD_6
       +~Global("h_GamesHugo","GLOBAL",0)~+ ~Tell me about Hugo.~ DO ~SetGlobal("h_GamesHugo","GLOBAL",1)~ GOTO GOLD_9
END

IF ~~ THEN BEGIN GOLD_12
   SAY ~Right. I'll leave ya to it then. Thanks, <CHARNAME>.~
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",3)
   AddJournalEntry(@611,QUEST)
   GiveItemCreate("h_misc15",LastTalkedToBy,0,0,0)~ EXIT
END



IF ~  RandomNum(24,1)
~ THEN BEGIN 0
  SAY ~Roll up and take a chance on the big wheel. One will get you twenty on a winning spin.~
  IF ~  PartyGoldGT(9)
~ THEN REPLY ~Wager 10 gold.~ DO ~TakePartyGold(10)
~ GOTO 1
  IF ~  PartyGoldGT(19)
~ THEN REPLY ~Wager 20 gold.~ DO ~TakePartyGold(20)
~ GOTO 2
  IF ~  PartyGoldGT(49)
~ THEN REPLY ~Wager 50 gold.~ DO ~TakePartyGold(50)
~ GOTO 3
  IF ~~ THEN REPLY ~No, thanks.~ GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY ~The Lady smiles upon you! I take your 10 gold and you get 200!~
  IF ~~ THEN DO ~GiveGoldForce(200)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~The Lady smiles upon you! I take your 20 gold and you get 400!~
  IF ~~ THEN DO ~GiveGoldForce(400)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~The Lady smiles upon you! I take your 50 gold and you get 1000!~
  IF ~~ THEN DO ~GiveGoldForce(1000)
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~So sorry! You'll have to try again.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Move along then.~
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 6
  SAY ~Roll up and take a chance on the big wheel. One will get you twenty on a winning spin.~
  IF ~  PartyGoldGT(9)
~ THEN REPLY ~Wager 10 gold.~ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~  PartyGoldGT(19)
~ THEN REPLY ~Wager 20 gold.~ DO ~TakePartyGold(20)
~ GOTO 4
  IF ~  PartyGoldGT(49)
~ THEN REPLY ~Wager 50 gold.~ DO ~TakePartyGold(50)
~ GOTO 4
  IF ~~ THEN REPLY ~No, thanks.~ GOTO 5
END
