BEGIN h_pits5d

IF ~Global("h_FightersTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY @52000 /* You think you have what it takes? We'll see. The pits don't suffer fools lightly. If you're not ready to bleed, you're not ready at all. */ IF ~~ THEN EXIT
END

IF ~Global("h_FightersTalk","GLOBAL",1)~ THEN BEGIN 0.5
   SAY @52001 /* This place doesn't suffer the weak. You step in, you fight. No room for hesitation or second-guessing. */ IF ~~ THEN EXIT
END

IF ~Global("h_BeatKhalid","GLOBAL",2)~ THEN BEGIN 1
   SAY @52002 /* You took down Khalid. Well, you'll find no accolades from me. It takes more than that to impress. */ IF ~~ THEN EXIT
END

IF ~Global("h_BeatGrom","GLOBAL",2)~ THEN BEGIN 2
   SAY @52003 /* Grom's tough, but that's no surprise. If you're thinking this changes anything, you're wrong. You've got a long way to go. */ IF ~~ THEN EXIT
END

IF ~Global("h_BeatLyria","GLOBAL",2)~ THEN BEGIN 3
   SAY @52004 /* Lyria's got some moves, I'll give her that. But that doesn't mean you'll get off easy with me. */ IF ~~ THEN EXIT
END

IF ~Global("h_BeatSerra","GLOBAL",2)~ THEN BEGIN 4
   SAY @52005 /* Serra had some tricks up her sleeve. Didn't help her much, did it? Prepare for a real fight. */ IF ~~ THEN EXIT
END

IF ~Global("h_BeatRoran","GLOBAL",2)~ THEN BEGIN 5
   SAY @52006 /* You might have bested me, but don't think for a moment that makes you the true champion. */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @52007 /* Not until you've faced Isla, and she'd tear you apart, limb by limb. */ IF ~~ THEN EXIT
END

IF ~Global("h_FightingPits","GLOBAL",4)~ THEN BEGIN 7
   SAY @52008 /* I... I can't believe Isla returned to the pits to fight someone like you. She's a legend, a true champion, and you... you're nothing. */ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @52009 /* You're in way over your head, and you'll pay the price for your arrogance. Enjoy your last moments in the arena, 'champion', because they'll be your last. */ IF ~~ THEN EXIT
END

IF ~Global("h_FightingPits","GLOBAL",5)~ THEN BEGIN 9
   SAY @52010 /* I never thought you had a chance in the pits, but you proved me wrong. You're stronger than I gave you credit for. */ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY @52011 /* You took on Isla, and you came out on top. That takes guts. You've earned my respect, for what it's worth. */ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY @52012 /* I'll be training, and getting stronger. And I'll look forward to the day we can face off again. */ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY @52013 /* And when that day comes, it won't be a walk in the park for you, I promise. */ IF ~~ THEN EXIT
END

