BEGIN ~h_game3d~

IF ~  RandomNum(3,1)
~ THEN BEGIN 0
  SAY @35000 /* A toss of the bones to make your fortune. Double your money on a winning roll. */
  IF ~  PartyGoldGT(99)
~ THEN REPLY @35001 /* Wager 100 gold. */ DO ~TakePartyGold(100)
~ GOTO 1
  IF ~  PartyGoldGT(249)
~ THEN REPLY @35002 /* Wager 250 gold. */ DO ~TakePartyGold(250)
~ GOTO 2
  IF ~~ THEN REPLY @35003 /* No, thanks. */ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @35004 /* The Lady smiles upon you! I take your 100 gold and you get 200! */
  IF ~~ THEN DO ~GiveGoldForce(200)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @35005 /* The Lady smiles upon you! I take your 250 gold and you get 500! */
  IF ~~ THEN DO ~GiveGoldForce(500)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @35006 /* The Lady looks away and you lose! Sorry. Next! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @35007 /* Step aside. You're blocking the paying customers. */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 5
  SAY @35000 /* A toss of the bones to make your fortune. Double your money on a winning roll. */
  IF ~  PartyGoldGT(99)
~ THEN REPLY @35001 /* Wager 100 gold. */ DO ~TakePartyGold(100)
~ GOTO 3
  IF ~  PartyGoldGT(249)
~ THEN REPLY @35002 /* Wager 250 gold. */ DO ~TakePartyGold(250)
~ GOTO 3
  IF ~~ THEN REPLY @35003 /* No, thanks. */ GOTO 4
END
