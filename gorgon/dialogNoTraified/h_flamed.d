BEGIN h_flamed

IF ~Global("h_SpawnZylark","GLOBAL",4)~ THEN BEGIN 0
   SAY ~You there! What was all that commotion in there? What kind of business do you have with Borland?~
       ++ ~Officer! This man has been peddling illegal substances, and I've come to put an end to it. You must apprehend him immediately.~ GOTO 1
       ++ ~Get lost. My business is my own.~ GOTO 3
       ++ ~Who? I heard noises over here myself and came by to investigate.~ GOTO 4
       +~PartyHasItem("h_misc07")~+ ~Look, I have a pound of spice on me. Why don't you take it and allow me to leave.~ GOTO 6
       ++ ~Sorry officer, just clumsy is all. I dropped a helmet on my damned foot and screamed for bloody murder.~ GOTO 7
       ++ ~I don't have time for this! Step aside or things'll get ugly.~ GOTO FIGHT_0
END

IF ~~ THEN BEGIN 1
   SAY ~Is that so? No, no, I don't think I'll be doing that. You see, Borland is a good friend of mine, and I can't simply go around arresting my friends, you see.~
       ++ ~So you're in on his little enterprise too then, you corrupt bastard!~ GOTO 2
       ++ ~Look, I have a pound of spice on me. Why don't you take it and allow me to leave.~ GOTO 6
       ++ ~I don't have time for this! Step aside or things'll get ugly.~ GOTO FIGHT_0
END

IF ~~ THEN BEGIN 2
   SAY ~Yeah, that's right. You got something to say about it?~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 3
   SAY ~You think you can talk to me like that get away with it?~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 4
   SAY ~You idiot! I just watched you step out of his house. Borland is under my protection and I demand you start giving me some answers!~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~This is your last chance to tell me what happened before I take you in.~
       ++ ~So you're in on his little enterprise too then, you corrupt bastard!~ GOTO 2
       +~PartyHasItem("h_misc07")~+ ~Look, I have a pound of spice on me. Why don't you take it and allow me to leave.~ GOTO 6
       ++ ~I don't have time for this! Get out of my way or I'll cut you down too.~ GOTO FIGHT_0
END

IF ~~ THEN BEGIN 6
   SAY ~You're right, I think I will. But I still won't be letting you go. Not until I find out what...~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 7
   SAY ~You idiot. Do you really expect me to believe that?~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Wait a minute... Is that Zylark in there? Shit! You bastards killed him!~ IF ~~ THEN GOTO FIGHT_0
END

IF ~~ THEN BEGIN FIGHT_0
   SAY ~I'm gonna need some backup here!~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnZylark","GLOBAL",5)
   CreateCreature("h_flamec",[3515.2101],E)
   CreateCreature("h_flamec",[3707.1818],E)~ EXIT
END

