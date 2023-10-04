BEGIN h_bouncd

IF WEIGHT #-1 ~GlobalLT("h_BouncerTalk","GLOBAL",3) PartyHasItem("h_misc20")~ THEN BEGIN CAUGHT_0
   SAY ~By the gods, what have we here? A common thief in our midst! The party is over! Everyone, clear out, now!~
IF ~~ THEN DO ~ 
   TakePartyItem("h_misc20")
   DestroyItem("h_misc20")~ GOTO CAUGHT_1
END

IF ~~ THEN BEGIN CAUGHT_1
   SAY ~Here's your purse back, Lord Thalric. Hurry and flee now, I'll alert the city watch.~
IF ~~ THEN DO ~
   SetGlobal("h_DrunkBrawl","GLOBAL",2)~ EXIT
END

IF ~Global("h_BouncerTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY ~We've got a finely tuned event here. Security's the top concern. Let's keep the proceedings orderly.~ IF ~~ THEN EXIT
END

IF ~Global("h_BouncerTalk","GLOBAL",1)~ THEN BEGIN 1
   SAY ~Enjoy the festivities, but keep in mind, any disturbances won't be tolerated. Bobo's only serving beer, none of that hard stuff allowed. Don't want the crowd getting too rowdy, is all.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~And mind the courtesans, will you? I'll admit, this crop does have a certain... allure about them, but keep things respectful.~
IF ~~ THEN DO ~
   SetGlobal("h_Spirits","GLOBAL",1)~ EXIT
END

IF ~Global("h_BouncerTalk","GLOBAL",2)~ THEN BEGIN 3
   SAY ~Hm? Oh, apologies. The evening's distractions have certainly caught my eye... ahem, I mean, 'attention', you know how it is.~
IF ~~ THEN DO ~
   SetGlobal("h_Prost","GLOBAL",1)~ EXIT
END

IF ~Global("h_BouncerTalk","GLOBAL",3)~ THEN BEGIN 3
   SAY ~What? Step back. I'm in the midst of mustering the confidence to approach that enchanting lady over yonder.~ IF ~~ THEN EXIT
END