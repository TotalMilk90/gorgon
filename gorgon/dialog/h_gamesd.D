BEGIN ~h_gamesd~

IF ~  RandomNum(38,1)
~ THEN BEGIN 0
  SAY @5200
  IF ~  PartyGoldGT(9)
~ THEN REPLY @5201 DO ~TakePartyGold(10)
~ GOTO 1
  IF ~  PartyGoldGT(19)
~ THEN REPLY @5202 DO ~TakePartyGold(20)
~ GOTO 2
  IF ~  PartyGoldGT(49)
~ THEN REPLY @5203 DO ~TakePartyGold(50)
~ GOTO 3
  IF ~  PartyGoldGT(99)
~ THEN REPLY @5204 DO ~TakePartyGold(100)
~ GOTO 4
  IF ~~ THEN REPLY @5205 GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY @5206
  IF ~~ THEN DO ~GiveGoldForce(360)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5207
  IF ~~ THEN DO ~GiveGoldForce(720)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @5208
  IF ~~ THEN DO ~GiveGoldForce(1800)
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @5209
  IF ~~ THEN DO ~GiveGoldForce(3600)
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @5210
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @5211
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 7
  SAY @5200
  IF ~  PartyGoldGT(9)
~ THEN REPLY @5201 DO ~TakePartyGold(10)
~ GOTO 5
  IF ~  PartyGoldGT(19)
~ THEN REPLY @5202 DO ~TakePartyGold(20)
~ GOTO 5
  IF ~  PartyGoldGT(49)
~ THEN REPLY @5203 DO ~TakePartyGold(50)
~ GOTO 5
  IF ~  PartyGoldGT(99)
~ THEN REPLY @5204 DO ~TakePartyGold(100)
~ GOTO 5
  IF ~~ THEN REPLY @5205 GOTO 6
END
