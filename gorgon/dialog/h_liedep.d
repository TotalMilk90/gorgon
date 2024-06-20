BEGIN h_liedep

IF ~Global("h_KickedOut","GLOBAL",0) Global("h_LiedelNoGuild","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Well now, isn't this a twist in our tale? A moment ago, allies in adventure, and now... this. I must admit, I'm both intrigued and slightly amused.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~I understand this game. I'll return to the guild and delve into the depths of intrigue and danger once more. We both know the shadows are where I thrive best.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Until we cross paths again, may your adventures be as thrilling as the ones we dreamt of together. Goodbye, my dear companion.~
IF ~~ THEN DO ~
   SetGlobal("h_KickedOut","GLOBAL",1)
   EscapeArea()~ EXIT
END

IF ~Global("h_KickedOut","GLOBAL",0) Global("h_LiedelNoGuild","GLOBAL",1)~ THEN BEGIN 3
   SAY ~Well now, isn't this a twist in our tale? A moment ago, allies in adventure, and now... this. I must admit, I'm both intrigued and slightly amused.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~I understand this game. I'll go to the Shadow Thieves, as I originally intended, and immerse myself in their schemes and dangers. We both know the shadows are where I thrive best.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~Until we cross paths again, may your adventures be as thrilling as the ones we dreamt of together. Goodbye, my dear companion.~
IF ~~ THEN DO ~
   SetGlobal("h_KickedOut","GLOBAL",1)
   EscapeArea()~ EXIT
END
