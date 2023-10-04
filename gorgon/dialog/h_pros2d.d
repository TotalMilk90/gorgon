BEGIN h_pros2d

IF WEIGHT #-1 ~Global("h_Prost","GLOBAL",1)~ THEN BEGIN 0
   SAY ~Well, hello there, darling. What can a person like me do for someone as enchanting as you?~
       ++ ~Listen closely, and listen well. It would be in your best interest to ensure that guard's attention is elsewhere. You'd be wise to oblige.~ GOTO 1
       ++ ~You know, I overheard the guard saying he's quite taken with you. He'd be thrilled if you were to engage him for a while, give him a break from his duties.~ GOTO 2
       ++ ~You see, there's a small wager going on, and the guard's involved. If you could manage to draw his attention elsewhere, it could tip the odds in our favor.~ GOTO 3
END

IF ~~ THEN BEGIN 1
   SAY ~I won't be coerced into this. My talents are for the guests, and that's where they'll stay.~
       ++ ~You know, I overheard the guard saying he's quite taken with you. He'd be thrilled if you were to engage him for a while, give him a break from his duties.~ GOTO 2
       ++ ~You see, there's a small wager going on, and the guard's involved. If you could manage to draw his attention elsewhere, it could tip the odds in our favor.~ GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY ~My arrangement here is to fraternize with the patrons, not the guards. It's best if we stick to the original plan, I think.~
       ++ ~Listen closely, and listen well. It would be in your best interest to ensure that guard's attention is elsewhere. You'd be wise to oblige.~ GOTO 1
       ++ ~You see, there's a small wager going on, and the guard's involved. If you could manage to draw his attention elsewhere, it could tip the odds in our favor.~ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Oh, you are a clever one, aren't you? A little game of chance, I do enjoy a bit of excitement. Very well, let's see what I can do.~ IF ~~ THEN GOTO 4
END


IF ~RandomNum(8,8)~ THEN BEGIN 90
   SAY ~Well, they say a dance is just a vertical expression of a horizontal desire.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,1)~ THEN BEGIN 91
   SAY ~Oh, you're quite the bold one, aren't you? I do hope you can keep up with my... pace.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,2)~ THEN BEGIN 92
   SAY ~Ah, the night is young, and so are we. Let's make the most of it, shall we?~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,3)~ THEN BEGIN 93
   SAY ~You have a certain fire in your eyes. I wonder what other passions lie beneath the surface?~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,4)~ THEN BEGIN 94
   SAY ~You're a mystery, my dear. I wonder what secrets you hold, waiting to be discovered.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,5)~ THEN BEGIN 95
   SAY ~They say that true connection happens in the spaces between words. Care to find out?~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,6)~ THEN BEGIN 96
   SAY ~A night like this calls for bold moves and daring hearts, wouldn't you agree?~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,7)~ THEN BEGIN 97
   SAY ~There's a certain electricity between us, don't you think?~
IF ~~ THEN EXIT
END

CHAIN
   IF ~~ THEN h_pros2d 4
~Oh, yoohoo! Guard!~
   == h_bouncd
~Huh? Yes, what is it?~
   == h_pros2d
~A man of duty, so admirable. I must admit, there's something rather... alluring about a guard in uniform.~
   == h_bouncd
~Oh, uh, well, thank you, ma'am. It's just part of the job, you know.~
   == h_pros2d
~Part of the job, perhaps. But it does add a certain... appeal. You carry yourself with such confidence.~
   == h_bouncd
~I, uh, try my best. It's important to maintain a presence, I suppose~
   == h_pros2d
~Presence indeed. And may I say, you have a rather intriguing aura about you. It's not every day one encounters a man with such... magnetism.~
   =
~You know, I'd love to hear more about your... duties. Why don't you come over and keep me company for a while?~
   DO ~
      SetGlobal("h_BouncerTalk","GLOBAL",3)
      SetGlobal("h_Prost","GLOBAL",2)
      SetGlobal("h_Spirits","GLOBAL",3)
      AddJournalEntry(@512,QUEST)~
EXIT