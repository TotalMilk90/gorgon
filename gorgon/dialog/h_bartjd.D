APPEND ~bart4~

IF ~~ THEN BEGIN J1
   SAY ~Ah, you're with them, are ya? Don't want no trouble, here ya go. Just want to get on with my business.~
       ++ ~Smart move. We appreciate your cooperation. Keep this up, and you'll have no problems with us.~ GOTO J2
       ++ ~That's wise. Loyalty goes a long way with the Eye. Remember that.~ GOTO J2
END

IF ~~ THEN BEGIN J2
   SAY ~Aye, I won't forget it. I've no intention of causing any trouble. Just doing what I have to.~
IF ~~ THEN DO ~
   SetGlobal("h_JovialDues","GLOBAL",1)
   SetGlobal("h_SpawnBarWatch","GLOBAL",1)
   AddJournalEntry(@535,QUEST)
   GiveItemCreate("h_misc23",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN A1
   SAY ~You're... you're mad! You can't be serious. The whole place would go up in flames! People would die!~ IF ~~ THEN GOTO A2
END

IF ~~ THEN BEGIN A2
   SAY ~Y-y-you must be pullin' my leg, yeah? Why should I believe you? You...you must be.~
       ++ ~Listen to your friend there. I've got no qualms about lighting this place up.~ GOTO A3
END

IF ~~ THEN BEGIN A3
   SAY ~Fine, fine! What do you want me to do? Just please, don't set that thing off!~
       ++ ~Send word to the Inspector. Tell him there's a woman here, Ishani, a former Gorgon's Eye member. She's got some valuable intel, and she's ready to spill it.~ GOTO A4
END

IF ~~ THEN BEGIN A4
   SAY ~The Inspector? A-alright.~
       ++ ~Offer him some of this. It's Moonshae whiskey, a rare find. Tell him it's a gesture of goodwill.~ GOTO A5
END

IF ~~ THEN BEGIN A5
   SAY ~Right... right. I'll send a runner to the Watch. Might take an hour or so for them to arrive, though.~
       ++ ~You've got one hour, mate. Don't try anything funny.~ GOTO A6
END

IF ~~ THEN BEGIN A6
   SAY ~You there! Get to the City Watch, tell them Inspector Branic's needed at the Juggler. We've got someone here with crucial intel on the Gorgon's Eye! Hurry!~
IF ~~ THEN DO ~
   SetGlobal("h_JugglerScene","GLOBAL",1)
   CreateCreature("h_inspec",[440.1086],N)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_jugcut")~ EXIT
END

IF WEIGHT #-1 ~Global("h_FireInspector","GLOBAL",1) Global("h_ArioshQuest","GLOBAL",18)~ THEN BEGIN A7
   SAY ~By the gods... I'm... I'm alive!~ IF ~~ THEN GOTO A8
END

IF ~~ THEN BEGIN A8
   SAY ~What have you done? You've destroyed everything... and for what?~ IF ~~ THEN GOTO A9
END

IF ~~ THEN BEGIN A9
   SAY ~You're no better than a devil, bringing hellfire and death. You're a true monster.~ IF ~~ THEN EXIT
END

END

EXTEND_TOP BART4 0
   +~Global("h_ArioshQuest","GLOBAL",11) Global("h_JovialDues","GLOBAL",0)~+ ~Good evening. I've come to collect the Gorgon's Eye dues.~ GOTO J1
   +~HasItem("h_misc26","Container 1") Global("h_ArioshQuest","GLOBAL",17)~+ ~Listen closely, mate. I've planted a little surprise in your kitchen. A bottle filled with something highly flammable, with a fuse ready to light. You want to keep this place in one piece? You'll do as I say.~ GOTO A1
END
