BEGIN h_lied2d

IF ~GlobalLT("h_LiedelWater","GLOBAL",2)~ THEN BEGIN 0
   SAY @43500 /* Thought you could sneak up on me, Shadow Thief? Time to meet your end! */
IF ~~ THEN DO ~
   FaceObject([PC])
   SetGlobal("h_LiedelWater","GLOBAL",2)~ EXIT
END

IF ~Global("h_LiedelWater","GLOBAL",2)~ THEN BEGIN 1
   SAY @43501 /* <CHARNAME>! Do you have a death wish? What in the seven hells are you doing sneaking up on me like that? I was this close to making you a permanent part of the scenery here! */
       ++ @43502 /* Just testing your reflexes, Liedel. You're as quick as they say. */ GOTO 2
       ++ @43503 /* Apologies, Liedel. I didn't mean to startle you. */ GOTO 3
       ++ @43504 /* What the hell was that? You almost gave me a new breathing hole! */ GOTO 4
END

IF ~~ THEN BEGIN 2
   SAY @43505 /* Well, you certainly got my heart racing, I'll give you that. I'll admit, I'm relieved to see you in one piece. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 3
   SAY @43506 /* No harm done, love. You certainly have a way of making an entrance. I'll admit, I'm relieved to see you in one piece. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4
   SAY @43507 /* You should know better than to sneak up on an assassin, love. I'll admit, I'm relieved to see you in one piece. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @43508 /* Now, why are you here, <CHARNAME>? After nearly giving me a heart attack... you must have a good reason. */
       ++ @43509 /* I came to see you, Liedel. I was worried about you after the attack. */ GOTO 6
       ++ @43510 /* If you'd prefer some solitude, I can leave. I didn't mean to intrude on your moment. */ GOTO 8
       ++ @43511 /* To be honest, I didn't expect to find you here, but after what happened, I'm glad I did. */ GOTO 9
END

IF ~~ THEN BEGIN 6
   SAY @43512 /* I... was worried about you too. In truth, I found myself here, lost in thoughts of you amidst the turmoil. */ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @43513 /* It seems our concerns mirrored each other, a rare connection in our world of veiled emotions. */ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 8
   SAY @43514 /* No, I... I'm glad you're here. Solitude has its place, but right now, your presence is more comforting than any silence could offer. */ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 9
   SAY @43515 /* I'm glad you did, too. Fate works in mysterious ways, doesn't it? Casting us into each other's orbit when we least expect it, but perhaps when we need it most. */ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY @43516 /* After the attack, finding solace seemed like a distant dream, yet here you are, turning it into a reality. I, too, am glad for this unexpected encounter. */
END

IF ~~ THEN BEGIN 11
   SAY @43517 /* When you left to fight the Shadow Thieves, I needed some solace, and this place... it brings me a strange kind of comfort. */
       ++ @43518 /* Ah, so the fearsome assassin has a soft spot after all. Who would have thought? */ GOTO 12
       ++ @43519 /* It's nice to know someone's got my back. Especially in times like these. */ GOTO 13
       ++ @43520 /* Save your worries, Liedel. I can handle myself just fine. */ GOTO 14
END

IF ~~ THEN BEGIN 12
   SAY @43521 /* Don't get used to it. I have a reputation to maintain, you know. */ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 13
   SAY @43522 /* We're in this together, aren't we? I wouldn't want my partner in crime to get soft on me now, would I? */ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14
   SAY @43523 /* You've got a couple tricks up your sleeve, I'll give that, love. Nothing I couldn't manage, of course. */ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY @43524 /* Actually, <CHARNAME>, there's something I've been meaning to talk to you about... */ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY @43525 /* Well... look up at the sky first, will you? The stars... they're quite remarkable from down here, aren't they? */ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY @43526 /* They remind me of my childhood, all alone on the streets of Selgaunt. They were my silent companions, always offering a glimmer of hope amidst the darkness. */ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY @43527 /* And tonight... they appear to be especially beautiful. */
       ++ @43528 /* It's a wonderous sight, Liedel... but their not quite as beautiful as you are. */ GOTO 21
       ++ @43529 /* You're right, they are quite something, aren't they? */ GOTO 21
       ++ @43530 /* Well, as much as I'd love to stargaze all night, I've got some things I need to do. */ GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY @43531 /* Of course, <CHARNAME>. Duty calls, as always. Until next time. */ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY @43532 /* And by the way, it might do you some good to pay more attention to what's right in front of you, instead of always looking to the horizon. Goodbye. */
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceActive","GLOBAL",0)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 21
   SAY @43533 /* <CHARNAME>... */
       ++ @43534 /* (Lean in, pressing your lips to hers.) */ DO ~SetGlobal("h_LiedelWater","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("h_liecut")~ EXIT
       ++ @43530 /* Well, as much as I'd love to stargaze all night, I've got some things I need to do. */ GOTO 19
END

IF ~Global("h_LiedelWater","GLOBAL",3)~ THEN BEGIN 22
   SAY @43535 /* Mmm, <CHARNAME>... That was... more delightful than I could have imagined. */ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY @43536 /* Twice now, you've managed to catch me off guard this night. I suppose that's one thing I can always count on when you're around. Life is never dull. */ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY @43537 /* Our time together, it's been... rather enjoyable, a rare blend of excitement and connection, don't you think? */
       ++ @43538 /* It's been more than enjoyable, Liedel. You've become something special in my life. */ GOTO 25
       ++ @43539 /* Well, I must admit, it's been quite the thrilling ride, and I'm eager to see where it leads. */ GOTO 25
       ++ @43540 /* Liedel, our time together has been unique, in a good way, and I'm truly glad we met. */ GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY @43541 /* I... I feel the same way, <CHARNAME>. You've brought something exhilarating into my world, and I find myself... caring for you. */ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY @43542 /* In a world where trust is as elusive as a wisp of smoke, finding enjoyment in someone's company like this, it's quite the treasure. */ IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY @43543 /* It's a sensation I wasn't prepared for, yet here I am, drawn to you in a way that goes beyond our shared shadows. */ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY @43544 /* In our line of work, where every emotion is often masked and every alliance temporary, this feeling for you stands out as something genuine, something vivid. */ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY @43545 /* It's as if amidst all the intrigue and duplicity, we've found a semblance of truth in each other. And that, <CHARNAME>, that is both rare and precious. */ IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY @43546 /* But, as much as I wish we could linger in this moment, duty calls us back to the guild. Our lives are bound to the shadows we navigate, after all. */ IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY @43547 /* Let's return, holding onto this rare truth we've found in each other. I've had a amazing night, <CHARNAME>, and there's a comfort in knowing that amidst the chaos, we have this... */ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY @43548 /* Until our next rendezvous, my dear companion. */
IF ~~ THEN DO ~
   IncrementGlobal("h_LiedelLove","GLOBAL",1)
   SetGlobal("h_LiedelKiss","GLOBAL",1)
   SetGlobal("h_LiedelWater","GLOBAL",4)
   EscapeArea()~ EXIT
END



   
   
   

