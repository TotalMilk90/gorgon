BEGIN ~h_game3d~

IF ~  RandomNum(3,1)
~ THEN BEGIN 0
  SAY ~A toss of the bones to make your fortune. Double your money on a winning roll.~
  IF ~  PartyGoldGT(99)
~ THEN REPLY ~Wager 100 gold.~ DO ~TakePartyGold(100)
~ GOTO 1
  IF ~  PartyGoldGT(249)
~ THEN REPLY ~Wager 250 gold.~ DO ~TakePartyGold(250)
~ GOTO 2
  IF ~~ THEN REPLY ~No, thanks.~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY ~A winner! You've doubled your coins! I take your 100 gold and give you 200.~
  IF ~~ THEN DO ~GiveGoldForce(200)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~A winner! You've doubled your coins! I take your 250 gold and give you 500.~
  IF ~~ THEN DO ~GiveGoldForce(500)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~The Lady looks away and you lose! Sorry. Next!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Step aside. You're blocking the paying customers.~
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 5
  SAY ~A toss of the bones to make your fortune. Double your money on a winning roll.~
  IF ~  PartyGoldGT(99)
~ THEN REPLY ~Wager 100 gold.~ DO ~TakePartyGold(100)
~ GOTO 3
  IF ~  PartyGoldGT(249)
~ THEN REPLY ~Wager 250 gold.~ DO ~TakePartyGold(250)
~ GOTO 3
  IF ~~ THEN REPLY ~No, thanks.~ GOTO 4
END
