BEGIN h_drun2d

IF WEIGHT #-1 ~Global("h_Spirits","GLOBAL",3) Global("h_SpiritsFail","GLOBAL",0) PartyHasItem("h_misc20")~ THEN BEGIN SPIRITS_0
   SAY ~Hic! What're you lookin' at, eh? Ol' Bobo was holdin' out on the good stuff, hic... but nows I got a whole belly-full, heh.~ IF ~~ THEN GOTO SPIRITS_1
END

IF ~~ THEN BEGIN SPIRITS_1
   SAY ~Whoa, there's three of yas... hic! What in the hells are ya on about?~
       ++ ~By the gods! You have the manners of a tavern pig! Your mother must have been an ogre, teaching you nothing of courtesy!~ GOTO SPIRITS_2
       ++ ~You're a sorry sight, stumbling around like a blindfolded mule. You must get that from your mum, I take it?~ GOTO SPIRITS_2
END

IF ~~ THEN BEGIN SPIRITS_2
   SAY ~Hic! Who said that, eh? My mum's a... a blessed saint, I'll have you know! She's got the patience of a... of a... a nun and the heart of... a lioness, she does!~
       ++ ~It was that bloke over there! He said it, alright!~ GOTO SPIRITS_3
END

IF ~~ THEN BEGIN SPIRITS_3
   SAY ~I'll take on the whole blasted lot of ya! I've got fists like a... like a pair of siege hammers, I tell ya! Prepare for a reckoning!~
       ++ ~Fight! Fight! If you've an ounce of mettle, prove it now! Let's see who's got the stones for a proper brawl!~ GOTO SPIRITS_5
END

IF ~RandomNum(8,8)~ THEN BEGIN 0
   SAY ~I'm not drrrrunk, I'm jus' practicin' my interpretive dance moves!~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,1)~ THEN BEGIN 1
   SAY ~I've got a shixth shense... for findin' the nearesht mead barrel.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,2)~ THEN BEGIN 2
   SAY ~You see, the secret to a good mead is... hiccup... just keep pouring until you can't see the mug anymore.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,3)~ THEN BEGIN 3
   SAY ~I've decided to become a knight! I'm already skilled in the ancient art of... swaying.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,4)~ THEN BEGIN 4
   SAY ~You know what they say, a tankard of ale a day keeps the... uh... something away! More ale, I say!~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,5)~ THEN BEGIN 5
   SAY ~I've got a shhhecret... burp... a dragon'sh just a really big lizard, right?~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,6)~ THEN BEGIN 6
   SAY ~I've got a brilliant idea! We'll... we'll... oh, it's gone.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,7)~ THEN BEGIN 7
   SAY ~You know it'sh a grand night when the floor shtarts offerin' itsh complimments.~
IF ~~ THEN EXIT
END

CHAIN
   IF ~~ THEN h_drun2d SPIRITS_5
~Hic! Come on you lot! Let's liven this party up!~
   == h_bouncd
~Alright, that's enough of this nonsense! Show some respect or you'll be out on your ears, mark my words!~
   == h_drunkd
~I've been itch... hic... 'n for a... for a sc'ap all night! Let's... let's show 'em a real tus'sle!~
   == h_drun2d
~I... hic... I heard what ya said 'bout my... my mum! You're in for... for a right thrashin' now!~
   == h_bouncd
~By the gods, I've had my fill of this! Clear out, all of you! This party's over!~
   == h_pros2d
~Oh, noble guardian, must the festivities truly come to an end?~
   =
~Hehe! How'd I do, love? Who won the wager?~
   == h_bouncd
~Huh? What wager?~
   == h_drun2d
~I ain't... hic... gonna listen to ya! C'mon, lads, let's... let's settle this with our fists!~
   DO ~
      SetGlobal("h_DrunkBrawl","GLOBAL",1)
      AddJournalEntry(@513,QUEST)~
EXIT