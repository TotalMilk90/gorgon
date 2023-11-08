BEGIN h_lied2d

IF ~Global("h_LiedelWater","GLOBAL",1)~ THEN BEGIN 0
   SAY ~Thought you could sneak up on me, Shadow Thief? Time to meet your end!~
IF ~~ THEN DO ~
   FaceObject([PC])
   SetGlobal("h_LiedelWater","GLOBAL",2)~ EXIT
END

IF ~Global("h_LiedelWater","GLOBAL",2)~ THEN BEGIN 1
   SAY ~<CHARNAME>! Wha... what in the shadows are you doing sneaking up on me like that? I was one inch away from spilling your blood! Do you have a death wish?~
       ++ ~Just testing your reflexes, Liedel. You're as quick as they say.~ GOTO 2
       ++ ~Apologies, Liedel. I didn't mean to startle you. I'm just glad you're safe.~ GOTO 3
       ++ ~What the hell was that? You almost gave me a new breathing hole!~ GOTO 4
END

IF ~~ THEN BEGIN 2
   SAY ~Well, you certainly got my heart racing. I'll give you that.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 3
   SAY ~No harm done, love. You certainly have a way of making an entrance. I'm relieved to see you in one piece.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4
   SAY ~You should know better than to sneak up on an assassin, love. That could have ended very badly for you.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~Now, of all the places you could have chosen to appear, you've picked this one. Why are you here, <CHARNAME>?~
       ++ ~I came to see you, Liedel. I was worried about you after the attack.~ GOTO 6
       ++ ~If you'd prefer some solitude, I can leave. I didn't mean to intrude on your moment.~ GOTO 7
       ++ ~I didn't expect to find you here, but I'm glad I did.~ GOTO 8
END

IF ~~ THEN BEGIN 6
   SAY ~I... I was worried about you too.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7
   SAY ~No, I'm... glad you're here. I... I was worried about you.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8
   SAY ~I'm glad you did, too. I... I was worried about you~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~After you left to fight the Shadow Thieves, I needed some solace, and this place... it brings me a strange kind of comfort.~
       ++ ~Ah, so the fearsome assassin has a soft spot after all. Who would have thought?~ GOTO 10
       ++ ~It's nice to know someone's got my back. Especially in times like these.~ GOTO 11
       ++ ~Save your worries, Liedel. I can handle myself just fine.~ GOTO 12
END

IF ~~ THEN BEGIN 10
   SAY ~Don't get used to it. I have a reputation to maintain, you know.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 11
   SAY ~We're in this together, aren't we? I wouldn't want my partner to get soft on me now, would I?~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 12
   SAY ~You've got a couple tricks up your sleeve, I'll give that, love. Nothing I couldn't manage, of course.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~Actually, <CHARNAME>, there's something I've been meaning to talk to you about...~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~Well... look up at the sky, will you? The stars... they're quite mesmerizing from here, aren't they?~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~They remind me of my childhood, all alone on the streets of Selgaunt. They were my silent companions, always offering a glimmer of hope amidst the darkness.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~And tonight... they appear to be especially beautiful.~
       ++ ~It is wonderous sight, Liedel, but their not quite as beautiful as you.~ GOTO 19
       ++ ~You're right, they are quite something, aren't they?~ GOTO 19
       ++ ~As much as I'd love to stargaze all night, I've got some things I need to do.~ GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~Of course, <CHARNAME>. Duty calls, as always. Until next time.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~And by the way, it might do you some good to pay more attention to what's right in front of you, instead of always looking to the horizon. Goodbye.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceEnd","GLOBAL",1)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 19
   SAY ~<CHARNAME>...~
       ++ ~(Lean in, pressing her lips to yours.)~ DO ~SetGlobal("h_LiedelWater","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("h_liecut")~ EXIT
       ++ ~As much as I'd love to stargaze all night, I've got some things I need to do.~ GOTO 16
END

IF ~Global("h_LiedelWater","GLOBAL",3)~ THEN BEGIN 20
   SAY ~Oh, <CHARNAME>... That was... quite the surprise.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~Twice now, you've managed to catch me off guard this night. I suppose that's one thing I can always count on when you're around. Life is never dull.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~Our time together, it's been... rather enjoyable, don't you think?~
       ++ ~It's been more than enjoyable, Liedel. You've become something special in my life, and I'm beginning to really care for you.~ GOTO 23
       ++ ~Well, I must admit, it's been quite the thrilling ride, and I'm eager to see where it leads.~ GOTO 23
       ++ ~Liedel, our time together has been unique, in a good way, and I'm truly glad we met.~ GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~I... I feel the same way, <CHARNAME>. You've brought something exhilarating into my world, and I find myself caring for you... deeply.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~There's something undeniably stimulating about giving in to our desires, isn't there? The thrill of the moment, the rush of anticipation.~ IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~It's a dance between two souls, each seeking to uncover the depths of the other's passions.~ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY ~I must admit, I've had a amazing night, <CHARNAME>. But duty calls, and I should return to the guild. Until our next rendezvous, my dear companion.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomance","GLOBAL",4)
   SetGlobal("h_LiedelWater","GLOBAL",4)
   EscapeArea()~ EXIT
END



   
   
   

