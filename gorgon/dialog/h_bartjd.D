APPEND ~bart4~

IF ~~ THEN BEGIN J1
   SAY @14000 /* Ah, you're with them, are ya? Don't want no trouble, here ya go. Just want to get on with my business. */
       ++ @14001 /* Smart move. We appreciate your cooperation. Keep this up, and you'll have no problems with us. */ GOTO J2
       ++ @14002 /* That's wise. Loyalty goes a long way with the Eye. Remember that. */ GOTO J2
       ++ @14003 /* No need for any trouble, thanks for your time. */ GOTO J2
END

IF ~~ THEN BEGIN J2
   SAY @14004 /* Aye, I won't forget it. I've no intention of causing any trouble. Just doing what I have to. */
IF ~~ THEN DO ~
   SetGlobal("h_JovialDues","GLOBAL",1)
   SetGlobal("h_SpawnBarWatch","GLOBAL",1)
   AddJournalEntry(@535,QUEST)
   GiveItemCreate("h_misc23",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN A1
   SAY @14005 /* You're... you're mad! You can't be serious. The whole place would go up in flames! People would die! */ IF ~~ THEN GOTO A2
END

IF ~~ THEN BEGIN A2
   SAY @14006 /* Y-y-you must be pullin' my leg, yeah? Why should I believe you? You...you must be. */
       ++ @14007 /* Listen to your friend there. I've got no qualms about lighting this place up. */ GOTO A3
END

IF ~~ THEN BEGIN A3
   SAY @14008 /* Fine, fine! What do you want me to do? Just please, don't set that thing off! */
       ++ @14009 /* Send word to the Inspector. Tell him there's a woman here, Ishani, a former Gorgon's Eye member. She's got some valuable intel, and she's ready to spill it. */ GOTO A4
END

IF ~~ THEN BEGIN A4
   SAY @14010 /* The Inspector? A-alright. */
       ++ @14011 /* Offer him some of this. It's Moonshae whiskey, a rare find. Tell him it's a gesture of goodwill. */ DO ~TakePartyItem("h_misc25") DestroyItem("h_misc25")~ GOTO A5
END

IF ~~ THEN BEGIN A5
   SAY @14012 /* Right... right. I'll send a runner to the Watch. Might take an hour or so for them to arrive, though. */
       ++ @14013 /* You've got one hour, mate. Don't try anything funny. */ GOTO A6
       ++ @14014 /* Fair enough. Get to it, then. */ GOTO A6
END

IF ~~ THEN BEGIN A6
   SAY @14015 /* You there! Get to the City Watch, tell them Inspector Branic's needed at the Juggler. We've got someone here with crucial intel on the Gorgon's Eye! Hurry! */
IF ~~ THEN DO ~
   SetGlobal("h_JugglerScene","GLOBAL",1)
   CreateCreature("h_inspec",[440.1086],N)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_jugcut")~ EXIT
END

IF WEIGHT #-1 ~Global("h_FireInspector","GLOBAL",1) Global("h_ArioshQuest","GLOBAL",18)~ THEN BEGIN A7
   SAY @14016 /* By the gods... I'm... I'm alive! */ IF ~~ THEN GOTO A8
END

IF ~~ THEN BEGIN A8
   SAY @14017 /* What have you done? You've destroyed everything... and for what? */ IF ~~ THEN GOTO A9
END

IF ~~ THEN BEGIN A9
   SAY @14018 /* You're no better than a devil, bringing hellfire and death. You're a true monster! */ IF ~~ THEN EXIT
END

END

EXTEND_TOP BART4 0
   +~Global("h_ArioshQuest","GLOBAL",11) Global("h_JovialDues","GLOBAL",0)~+ @14019 /* Good evening. I've come to collect the Gorgon's Eye dues. */ GOTO J1
   +~Global("h_ArioshQuest","GLOBAL",11) Global("h_JovialDues","GLOBAL",0)~+ @14020 /* I'm here for the Gorgon's Eye's cut. Pay up now, and we won't have any trouble. */ GOTO J1
   +~HasItem("h_misc26","Container 1") Global("h_ArioshQuest","GLOBAL",17)~+ @14021 /* Listen closely, mate. I've planted a little surprise in your kitchen. A bottle filled with something highly flammable, with a fuse ready to light. You want to keep this place in one piece? You'll do as I say. */ GOTO A1
   +~HasItem("h_misc26","Container 1") Global("h_ArioshQuest","GLOBAL",17)~+ @14009 /* Send word to the Inspector. Tell him there's a woman here, Ishani, a former Gorgon's Eye member. She's got some valuable intel, and she's ready to spill it. */ GOTO A4
END
