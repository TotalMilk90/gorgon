BEGIN ~h_gamesd~

IF ~  RandomNum(38,1)
~ THEN BEGIN 0
  SAY @35500 /* The game is roulette in its simplest form. You pick your number and you take your chances. One will get you thirty-six on a winning spin. */
  IF ~  PartyGoldGT(9)
~ THEN REPLY @35501 /* Wager 10 gold. */ DO ~TakePartyGold(10)
~ GOTO 1
  IF ~  PartyGoldGT(19)
~ THEN REPLY @35502 /* Wager 20 gold. */ DO ~TakePartyGold(20)
~ GOTO 2
  IF ~  PartyGoldGT(49)
~ THEN REPLY @35503 /* Wager 50 gold. */ DO ~TakePartyGold(50)
~ GOTO 3
  IF ~  PartyGoldGT(99)
~ THEN REPLY @35504 /* Wager 100 gold. */ DO ~TakePartyGold(100)
~ GOTO 4
  IF ~~ THEN REPLY @35505 /* No, thanks. */ GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY @35506 /* We have a winner! I take the 10 gold you bet and give you 360 back! */
  IF ~~ THEN DO ~GiveGoldForce(360)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @35507 /* We have a winner! I take the 10 gold you bet and give you 720 back! */
  IF ~~ THEN DO ~GiveGoldForce(720)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @35508 /* We have a winner! I take the 10 gold you bet and give you 1800 back! */
  IF ~~ THEN DO ~GiveGoldForce(1800)
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @35509 /* We have a winner! I take the 10 gold you bet and give you 3600 back! */
  IF ~~ THEN DO ~GiveGoldForce(3600)
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @35510 /* Oooooh, I'm so very sorry. Next! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @35511 /* Then step aside. I need this space for people willing to play. */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 7
  SAY @35500 /* The game is roulette in its simplest form. You pick your number and you take your chances. One will get you thirty-six on a winning spin. */
  IF ~  PartyGoldGT(9)
~ THEN REPLY @35501 /* Wager 10 gold. */ DO ~TakePartyGold(10)
~ GOTO 5
  IF ~  PartyGoldGT(19)
~ THEN REPLY @35502 /* Wager 20 gold. */ DO ~TakePartyGold(20)
~ GOTO 5
  IF ~  PartyGoldGT(49)
~ THEN REPLY @35503 /* Wager 50 gold. */ DO ~TakePartyGold(50)
~ GOTO 5
  IF ~  PartyGoldGT(99)
~ THEN REPLY @35504 /* Wager 100 gold. */ DO ~TakePartyGold(100)
~ GOTO 5
  IF ~~ THEN REPLY @35505 /* No, thanks. */ GOTO 6
END
