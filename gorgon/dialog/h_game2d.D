BEGIN ~h_game2d~

IF WEIGHT #-1 ~Global("h_GilbaldQuest","GLOBAL",2)~ THEN BEGIN GOLD_0
   SAY ~I hope Gilbald goes easy on me. If you can successfully find the culprit, then maybe this whole thing will just blow over and I'll be let off with only a warning.~ IF ~~ THEN GOTO GOLD_1
END

IF ~~ THEN BEGIN GOLD_1
   SAY ~I had 3 players last night and each one of them seemed a bit suspect.~ IF ~~ THEN GOTO GOLD_2
END

IF ~~ THEN BEGIN GOLD_2
   SAY ~There was a man named, Xevec. A woman, whose name I did not catch, and a dwarf by the name, Hugo.~
       ++ ~Tell me about Xevec.~ DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_3
       ++ ~Tell me about the woman.~ DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_6
       ++ ~Tell me about Hugo.~ DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_9
       +~GlobalGT("h_GamesNumber","GLOBAL",2)~+ ~That's all I need to know for now.~ GOTO GOLD_12
END

IF ~~ THEN BEGIN GOLD_3
   SAY ~Xevec is a low-born miscreant of Beregost. He is too unskilled to find stable work in any field, so he mainly resorts to petty crime and begging.~ IF ~~ THEN GOTO GOLD_4
END

IF ~~ THEN BEGIN GOLD_4
   SAY ~He held some strange interest in the other woman who was playing, leading to her obvious discomfort. They spoke a few times but nothing more ever came of it.~ IF ~~ THEN GOTO GOLD_5
END

IF ~~ THEN BEGIN GOLD_5
   SAY ~After she left, Xevec headed over the courtesan wing. It would be worth asking Meredia about him before you leave.~
       ++ ~Tell me about the woman.~ DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_6
       ++ ~Tell me about Hugo.~ DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_9
       +~GlobalGT("h_GamesNumber","GLOBAL",2)~+ ~That's all I need to know for now.~ GOTO GOLD_12
END

IF ~~ THEN BEGIN GOLD_6
   SAY ~The woman dressed and spoke as if nobility, yet her body language and demeanor outed her as common.~ IF ~~ THEN GOTO GOLD_7
END

IF ~~ THEN BEGIN GOLD_7
   SAY ~She seemed a bit off and nervous as well. At first I assumed it was due to Xevec, but the more I think of it, it might have been something more.~ IF ~~ THEN GOTO GOLD_8
END

IF ~~ THEN BEGIN GOLD_8
   SAY ~Like I said, I didn't catch her name, but I do recall her mentioning something about a "Sam". I think it may have been the name of her daughter or relative.~
       ++ ~Tell me about Xevec.~ DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_3
       ++ ~Tell me about Hugo.~ DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_9
       +~GlobalGT("h_GamesNumber","GLOBAL",2)~+ ~That's all I need to know for now.~ GOTO GOLD_12
END

IF ~~ THEN BEGIN GOLD_9
   SAY ~Hugo is a typical dwarf and a first timer here at the den. The only thing unusual thing about him was that he was missing a hand.~ IF ~~ THEN GOTO GOLD_10
END

IF ~~ THEN BEGIN GOLD_10
   SAY ~When provoked, he refused to discuss it. It could be the mark of a thief or cheat who was caught in the act.~ IF ~~ THEN GOTO GOLD_11
END

IF ~~ THEN BEGIN GOLD_11
   SAY ~It's possible he tried his antics here and then fled off towards his next hit. He may be a tricky one to find.~
       ++ ~Tell me about Xevec.~ DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_3
       ++ ~Tell me about the woman.~ DO ~IncrementGlobal("h_GamesNumber","GLOBAL",1)~ GOTO GOLD_6
       +~GlobalGT("h_GamesNumber","GLOBAL",2)~+ ~That's all I need to know for now.~ GOTO GOLD_12
END

IF ~~ THEN BEGIN GOLD_12
   SAY ~I shall leave you to your investigations. Report your findings to Gilbald upon your return.~
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
