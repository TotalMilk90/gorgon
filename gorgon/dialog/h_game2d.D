BEGIN ~h_game2d~

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
