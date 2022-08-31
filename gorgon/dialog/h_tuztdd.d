BEGIN h_tuztdd

IF ~True()~ THEN BEGIN 0
   SAY ~Lookee what we have here boys! A second-rate bounty hunter thinkin' they can come and steal our catch?~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Go on now, we got to her first. Ain't no room here for you milk-drinkers!~
       ++ ~I will not stand by while this defenseless girl suffers. Leave at once or I'll be forced to take action.~ GOTO 2
       ++ ~I didn't come all this way to watch you walk away with my prize. Step aside and I won't have to kill you.~ GOTO 2
       ++ ~What did you call me, you dumb hick! I'm going to enjoy slaughtering you animals.~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~I'd say don't make me laugh but... Haw haw!! And here I thought this would be just another boring fetch job. Come on boys, let's teach this brat a lesson!~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnEuropea","GLOBAL",3)
   Enemy()~ EXIT
END
