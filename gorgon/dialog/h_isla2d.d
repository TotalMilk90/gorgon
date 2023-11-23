BEGIN h_isla2d

IF ~True()~ THEN BEGIN 0
   SAY ~Well, well, color me impressed. Not many find their way to my little hideaway. You must have a good reason for seeking me out in a place like this.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Now, I'm a busy woman, and patience isn't a virtue I entertain often. Spit it out, what do you want?~
       ++ ~Your time has come, Isla. There's no shield protecting you here. Face me, and let's see who the real champion is.~ GOTO 2
       ++ ~You're a hard person to track, Isla, but even you can't hide forever. There's a price on your head, and I'm here to collect.~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Oh, you're serious? Hah! Now, that's a good one. You've got spirit, I'll give you that.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Fine, if it's a fight you're after, then I'm more than willing to oblige.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Let's see if you're as tough as you think you are!~
IF ~~ THEN DO ~
   SetGlobal("h_IslaAltJournal","GLOBAL",1)
   SetGlobal("h_IslaBounty","GLOBAL",3)
   Enemy()~ EXIT
END