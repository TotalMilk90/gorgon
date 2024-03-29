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
       ++ ~What can you tell me about the Gorgon's Eye and their recent activities?~ GOTO 6
       ++ ~Is there anything I can help assist you with?~ GOTO 11
       ++ ~I'll be going now.~ GOTO 14
END

IF ~~ THEN BEGIN 3
   SAY ~My name is Seraphina Whitewood, and I lead the Beregost City Watch. We're an auxiliary unit of the Flaming Fist, comprised solely of Beregost's own.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Our role is to ensure the safety and security of this town and its citizens. It's a duty I take to heart, especially in times like these.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~We face challenges from the likes of the Gorgon's Eye, and it's my responsibility to see that our streets remain safe and our community protected.~
       ++ ~What can you tell me about the Gorgon's Eye and their recent activities?~ GOTO 6
       ++ ~Is there anything I can help assist you with?~ GOTO 11
       ++ ~I'll be going now.~ GOTO 14
END

IF ~~ THEN BEGIN 6
   SAY ~The Gorgon's Eye is a notorious thieves guild that's been causing quite a stir in Beregost of late. Their activity has seen a noticeable uptick as of late, and it's not the usual mischief.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~At the helm of their operation stands a man of dangerous repute, known as Baldwin, "The Butcher". His name alone strikes fear into the hearts of many, and his notoriety is well-earned.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Baldwin is cunning, ruthless, and has a knack for turning even the most chaotic situations to his advantage. Begrudgingly, he's earned every bit of his moniker.~ IF ~~ THEN GOTO 9
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
       ++ ~What can you tell me about the Gorgon's Eye and their recent activities?~ GOTO 6
       ++ ~I'll be going now.~ GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~Very well, traveler. Remember, caution is your best ally in these uncertain times. Keep safe, and may your path be a steady one.~
IF ~~ THEN DO ~
   SetGlobal("h_WhitewoodDialog","GLOBAL",1)
   AddJournalEntry(@207,USER)~ EXIT
END

IF ~Global("h_WhitewoodDialog","GLOBAL",1)~ THEN BEGIN 15
   SAY ~Back again, I see. What can I assist you with this time?~
       +~GlobalGT("h_BaldwinQuest","GLOBAL",3)~+ ~I've infiltrated the Gorgon's Eye thieves guild and I'm willing to help you fight against them.~ GOTO 16
       ++ ~Can you tell me anything about yourself and your role here in the city?~ GOTO 3
       ++ ~What can you tell me about the Gorgon's Eye and their recent activities?~ GOTO 6
       +~GlobalLT("h_BaldwinQuest","GLOBAL",4)~+ ~Is there anything I can help assist you with?~ GOTO 11
       ++ ~I'll be going now.~ GOTO 14
END

IF ~~ THEN BEGIN 16
   SAY ~You've done what? That's a bold move. If what you say is true, then we have a rare opportunity on our hands.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~We wholeheartedly welcome your help in this endeavor, and the City Watch would be forever grateful for your assistance.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~Just give the word, and we'll launch a coordinated assault on the Gorgon's Eye. Together, we'll put an end to their reign of criminality.~
       ++ ~I've made all necessary preparations. Whenever you're ready, Commander, let us strike.~ GOTO 21
       ++ ~I need some time to get things in order. I'll give you the signal once I'm fully prepared.~ GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~Take all the time you need. When you're prepared to move, we'll be right here, ready to strike.~
IF ~~ THEN DO ~
   SetGlobal("h_WhitewoodDialog","GLOBAL",2)
   AddJournalEntry(@209,USER)~ EXIT
END

IF ~Global("h_WhitewoodDialog","GLOBAL",2)~ THEN BEGIN 20
   SAY ~Do you have everything you need to lead the assault on the Gorgon's Eye?~
       ++ ~I've made all necessary preparations. Whenever you're ready, Commander, let us strike.~ GOTO 21
       ++ ~I need some time to get things in order. I'll give you the signal once I'm fully prepared.~ GOTO 19
END

IF ~~ THEN BEGIN 21
   SAY ~That's what I like to hear. We'll be right behind you.~
IF ~~ THEN DO ~
   SetGlobal("h_WhitewoodDialog","GLOBAL",2)
   SetGlobal("h_WatchAssault","GLOBAL",1)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_betcut")~ EXIT
END

IF ~Global("h_WhitewoodDialog","GLOBAL",3) NumDeadLT("h_baldwc",1)~ THEN BEGIN 21.5
   SAY ~We can't allow Baldwin to escape. Sweep through every inch of this place. We'll corner him and put an end to this once and for all.~ IF ~~ THEN GOTO 21.51
END

IF ~~ THEN BEGIN 21.51
   SAY ~Maintain vigilance and watch each other's backs. Let's finish this, for Beregost!~ IF ~~ THEN EXIT
END

IF ~Global("h_WhitewoodDialog","GLOBAL",3) Dead("h_baldwc")~ THEN BEGIN 22
   SAY ~It is done. Beregost is free from the clutches of Baldwin and the terror of the Gorgon's Eye.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~For years, I've fought against their insidious influence, pouring heart and soul into my position in the City Watch.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~Today, we've accomplished what many believed impossible. But I never lost hope, even when the road was long and fraught with challenges.~ IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~The city will breathe easier, thanks to you. You've given us a chance for a brighter, safer Beregost.~ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY ~As for the non-combatants left, I'll see to their arrest. We'll ensure they face justice for their crimes.~ IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY ~And for the den itself, it's a blight on this city. We'll set explosives to the entrance, and create a cave-in. This dark chapter in Beregost's history will be sealed away forever.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY ~<CHARNAME>, you've proven yourself a true champion of Beregost. The city owes you a debt of gratitude that words cannot fully express.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~Thank you, from the depths of my heart, for your tireless efforts in ridding our streets of the Gorgon's Eye. We will be forever in your debt.~
IF ~~ THEN DO ~
   SetGlobal("h_WhitewoodDialog","GLOBAL",4)
   AddJournalEntry(@208,USER)
   EscapeArea()~ EXIT
END

IF ~Global("h_WhitewoodDialog","GLOBAL",4)~ THEN BEGIN 30
   SAY ~I can't express how grateful I am for your unwavering dedication. The streets will know peace, and it's thanks to you. The City Watch will honor your name for generations to come.~ IF ~~ THEN EXIT
END

