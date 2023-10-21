BEGIN h_whited

IF ~Global("h_WhitewoodDialog","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Welcome to Beregost, traveler. Take in the sights and savor the local offerings. There's much to enjoy here.~ IF ~~ THEN GOTO 01
END

IF ~~ THEN BEGIN 01
   SAY ~This is a place of warmth and community, where we look out for eachother as best we can.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~But lately, with the rise in activity from the Gorgon's Eye, we've had to be doubly vigilant. It's a challenging time, but we'll not let darkness take root.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Feel free to explore, just keep your senses sharp. If you need guidance or assistance, don't hesitate to ask.~
       ++ ~Can you tell me anything about yourself and your role here in the city?~ GOTO 3
       ++ ~What can you tell me about the Gorgon's Eye and their recent activity?~ GOTO 6
       ++ ~Is there anything I can help assist you with?~ GOTO 11
       ++ ~I'll be going now.~ GOTO 14
END

IF ~~ THEN BEGIN 3
   SAY ~My name is Seraphina Whitewood, and I lead the Beregost City Watch. We're an auxiliary unit of the Flaming Fist, comprised entirely of Beregost citizens.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Our role is to ensure the safety and security of this town and its citizens. It's a duty I take to heart, especially in times like these.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~We face challenges from the likes of the Gorgon's Eye, and it's my responsibility to see that our streets remain safe and our community protected.~
       ++ ~What can you tell me about the Gorgon's Eye and their recent activity?~ GOTO 6
       ++ ~Is there anything I can help assist you with?~ GOTO 11
       ++ ~I'll be going now.~ GOTO 14
END

IF ~~ THEN BEGIN 6
   SAY ~The Gorgon's Eye is a notorious thieves guild that's been causing quite a stir in Beregost of late. Their activity has seen a noticeable uptick as of late, and it's not the usual mischief.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~At the helm of their operation stands a man of dangerous repute, known simply as Baldwin, 'The Butcher'. His name alone strikes fear into the hearts of many, and his notoriety is well-earned.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Baldwin is cunning, ruthless, and has a knack for turning even the most chaotic situations to his advantage. His vile determination lays undeterred, and, begrudgingly, he's earned every bit of his moniker.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~The Gorgon's Eye has since evolved from a simple gang into an organized and highly effective thieves guild. They've infiltrated every layer of Beregost's society, making them a formidable force.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~We're doing all we can to stay ahead of them, but I fear their recent actions suggest something far more sinister on the horizon.~
       ++ ~Can you tell me anything about yourself and your role here in the city?~ GOTO 3
       ++ ~Is there anything I can help assist you with?~ GOTO 11
       ++ ~I'll be going now.~ GOTO 14
END

IF ~~ THEN BEGIN 11
   SAY ~Your willingness is appreciated, but the matters we're dealing with require a level of experience and familiarity with the town that only comes with time.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~It's worth noting that the people of Beregost take great pride in safeguarding their own, and many are eager to stand against this threat themselves.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~Keep an eye on things, learn the lay of the land, and perhaps in the future, we may have a task that suits your skills.~
       ++ ~Can you tell me anything about yourself and your role here in the city?~ GOTO 3
       ++ ~What can you tell me about the Gorgon's Eye and their recent activity?~ GOTO 6
       ++ ~I'll be going now.~ GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~Very well, traveler. Remember, caution is your best ally in these uncertain times. Keep safe, and may your path be a steady one.~
IF ~~ THEN DO ~
   SetGlobal("h_WhitewoodDialog","GLOBAL",1)~ EXIT
END

IF ~Global("h_WhitewoodDialog","GLOBAL",1)~ THEN BEGIN 15
   SAY ~Back again, I see. What can I assist you with this time?~
       ++ ~Can you tell me anything about yourself and your role here in the city?~ GOTO 3
       ++ ~What can you tell me about the Gorgon's Eye and their recent activity?~ GOTO 6
       ++ ~Is there anything I can help assist you with?~ GOTO 11
       ++ ~I'll be going now.~ GOTO 14
END