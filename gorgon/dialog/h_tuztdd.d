BEGIN h_tuztdd

IF ~True()~ THEN BEGIN 0
   SAY ~Lookie here, boys! We got ourselves a second-rate bounty hunter reckonin' they can waltz in and snatch our prize!~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Now, go on, git! We got here first. This ain't no place for you fancy, city-folk milk-drinkers.~
       ++ ~I'll not stand by while this defenseless girl suffers. Leave at once or I'll be forced to take action.~ GOTO 2
       ++ ~Step aside, and I won't have to kill you.~ GOTO 2
       ++ ~What did you call me, you dumb hick! I'm going to enjoy slaughtering you animals.~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~I'd say don't make me chuckle but... Haw haw! Well, I reckoned wrong, thought this'd be a plain ol' fetch job. Come on, boys, let's teach this here brat a lesson!~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnEuropea","GLOBAL",3)
   Enemy()~ EXIT
END
