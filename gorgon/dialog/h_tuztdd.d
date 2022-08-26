BEGIN h_tuztdd

IF ~True()~ THEN BEGIN 0
   SAY ~Lookee what we have here boys! A second-rate bounty hunter thinkin' they can come and steal our catch?~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Go on now, we got to her first. Ain't no room here for you milk-drinkers!~
       ++ ~I didn't come all the way out here to watch you walk away with my prize. Step aside and I won't have to kill you.~ GOTO 2
       ++ ~If you lay a hand on that girl I'll cut it off faster than you can blink. Move along and I won't have to slaughter you like the animals you are.~ GOTO 2
       ++ ~I will not stand by while this defenseless girl suffers. Leave at once or I'll be forced to take action.~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~I'd say don't make me laugh but... Haw haw!! And here I thought this would be another boring fetch job. Come on boys, let's teach this brat a lesson!~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnEuropea","GLOBAL",3)
   Enemy()~ EXIT
END
