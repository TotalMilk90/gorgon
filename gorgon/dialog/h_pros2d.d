BEGIN h_pros2d

IF WEIGHT #-1 ~Global("h_Prost","GLOBAL",1)~ THEN BEGIN 0
   SAY @53000 /* Well, hello there, darling. What can a person like me do for someone as enchanting as you? */
       ++ @53001 /* Listen closely, and listen well. It would be in your best interest to ensure that guard's attention is elsewhere. You'd be wise to oblige. */ GOTO 1
       ++ @53002 /* You know, I overheard the guard saying he's quite taken with you. He'd be thrilled if you were to engage him for a while, give him a break from his duties. */ GOTO 2
       ++ @53003 /* You see, there's a small wager going on, and the guard's involved. If you could manage to draw his attention elsewhere, it could tip the odds in our favor. */ GOTO 3
END

IF ~~ THEN BEGIN 1
   SAY @53004 /* I won't be coerced into this. My talents are for the guests, and that's where they'll stay. */
       ++ @53002 /* You know, I overheard the guard saying he's quite taken with you. He'd be thrilled if you were to engage him for a while, give him a break from his duties. */ GOTO 2
       ++ @53003 /* You see, there's a small wager going on, and the guard's involved. If you could manage to draw his attention elsewhere, it could tip the odds in our favor. */ GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY @53005 /* My arrangement here is to fraternize with the patrons, not the guards. It's best if we stick to the original plan, I think. */
       ++ @53001 /* Listen closely, and listen well. It would be in your best interest to ensure that guard's attention is elsewhere. You'd be wise to oblige. */ GOTO 1
       ++ @53003 /* You see, there's a small wager going on, and the guard's involved. If you could manage to draw his attention elsewhere, it could tip the odds in our favor. */ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @53006 /* Oh, you are a clever one, aren't you? A little game of chance, I do enjoy a bit of excitement. Very well, let's see what I can do. */ IF ~~ THEN GOTO 4
END


IF ~RandomNum(8,8)~ THEN BEGIN 90
   SAY @53007 /* Well, they say a dance is just a vertical expression of a horizontal desire. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,1)~ THEN BEGIN 91
   SAY @53008 /* Oh, you're quite the bold one, aren't you? I do hope you can keep up with my... pace. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,2)~ THEN BEGIN 92
   SAY @53009 /* Ah, the night is young, and so are we. Let's make the most of it, shall we? */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,3)~ THEN BEGIN 93
   SAY @53010 /* You have a certain fire in your eyes. I wonder what other passions lie beneath the surface? */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,4)~ THEN BEGIN 94
   SAY @53011 /* You're a mystery, my dear. I wonder what secrets you hold, waiting to be discovered. */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,5)~ THEN BEGIN 95
   SAY @53012 /* They say that true connection happens in the spaces between words. Care to find out? */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,6)~ THEN BEGIN 96
   SAY @53013 /* A night like this calls for bold moves and daring hearts, wouldn't you agree? */
IF ~~ THEN EXIT
END

IF ~RandomNum(8,7)~ THEN BEGIN 97
   SAY @53014 /* There's a certain electricity between us, don't you think? */
IF ~~ THEN EXIT
END

CHAIN
   IF ~~ THEN h_pros2d 4
@53015 /* Oh, yoohoo! Guard! */
   == h_bouncd
@53016 /* Huh? Yes, what is it? */
   == h_pros2d
@53017 /* A man of duty, so admirable. I must admit, there's something rather alluring about a guard in uniform. */
   == h_bouncd
@53018 /* Oh, uh, well, thank you, ma'am. It's just part of the job, you know. */
   == h_pros2d
@53019 /* Part of the job, perhaps. But it does add a certain... appeal. You carry yourself with such confidence. */
   == h_bouncd
@53020 /* I, uh, try my best. It's important to maintain a presence, I suppose. */
   == h_pros2d
@53021 /* Presence indeed. And may I say, you have a rather intriguing aura about you. It's not every day one encounters a man with such magnetism. */
   =
@53022 /* You know, I'd love to hear more about your... duties. Why don't you come over and keep me company for a while? */
   DO ~
      SetGlobal("h_BouncerTalk","GLOBAL",3)
      SetGlobal("h_Prost","GLOBAL",2)
      SetGlobal("h_Spirits","GLOBAL",3)
      AddJournalEntry(@512,QUEST)~
EXIT