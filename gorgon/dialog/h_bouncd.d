BEGIN h_bouncd

IF WEIGHT #-1 ~GlobalLT("h_BouncerTalk","GLOBAL",3) PartyHasItem("h_misc20")~ THEN BEGIN CAUGHT_0
   SAY @20000 /* By the gods, what have we here? A common thief in our midst! The party is over! Everyone, clear out, now! */
IF ~~ THEN DO ~ 
   TakePartyItem("h_misc20")
   DestroyItem("h_misc20")~ GOTO CAUGHT_1
END

IF ~~ THEN BEGIN CAUGHT_1
   SAY @20001 /* Here's your purse back, Lord Thalric. Hurry and flee now, I'll alert the City Watch. */
IF ~~ THEN DO ~
   SetGlobal("h_DrunkBrawl","GLOBAL",2)
   SetGlobal("h_BouncerCaught","GLOBAL",1)~ EXIT
END

IF ~Global("h_BouncerTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY @20002 /* We've got a finely tuned event here. Security's the top concern. Let's keep the proceedings orderly. */ IF ~~ THEN EXIT
END

IF ~Global("h_BouncerTalk","GLOBAL",1)~ THEN BEGIN 1
   SAY @20003 /* Enjoy the festivities, but keep in mind, any disturbances won't be tolerated. Bobo's only serving beer, none of that hard stuff allowed. Don't want the crowd getting too rowdy, is all. */ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @20004 /* And mind the courtesans, will you? I'll admit, this crop does have a certain... allure about them, but keep things respectful. */
IF ~~ THEN DO ~
   SetGlobal("h_Spirits","GLOBAL",1)~ EXIT
END

IF ~Global("h_BouncerTalk","GLOBAL",2)~ THEN BEGIN 3
   SAY @20005 /* Hm? Oh, apologies. The evening's distractions have certainly caught my eye... ahem, I mean, 'attention', you know how it is. */
IF ~~ THEN DO ~
   SetGlobal("h_Prost","GLOBAL",1)~ EXIT
END

IF ~Global("h_BouncerTalk","GLOBAL",3)~ THEN BEGIN 3
   SAY @20006 /* What? Step back. I'm in the midst of mustering the confidence to approach that enchanting lady over yonder. */ IF ~~ THEN EXIT
END

CHAIN
   IF WEIGHT #-1 ~PartyHasItem("h_misc20") Global("h_SpiritsFail","GLOBAL",1)~ THEN h_bouncd FAIL_0
@20007 /* What is it now? Oh, hell... hey, you there! Enough of that nonsense, or you'll be spending the night in the cells! */
   == h_drunkd
@20008 /* Hah! You... you think you're somethin', don't ya? Here I am... sittin' on top of the world... while you... you're just a speck... a tiny, insignificant speck... */
   =
@20009 /* Sir Speck... think you're better... than me? You ain't... ain't nothin'. You'll... you'll see... when the shadows... swallow you whole... */
   =
@20010 /* Go on... get lost... before... before I decide... to eat ya alive... */
   == h_bouncd
@20011 /* That's it, you're done. You've had your fill, and now it's time to go. No more of this nonsense. Up you get! */
   == h_drunkd
@20012 /* I've got... the best aim... in Faerun. Take this! */
   == h_bouncd
@20013 /* Oh, hell! This ain't good. */
   =
@20014 /* Alright, everyone, show's over! Clear out, now, or you'll be escorted out! */
   DO ~
      SetGlobal("h_DrunkBrawl","GLOBAL",2)
      Kill("h_drun2c")~
EXIT