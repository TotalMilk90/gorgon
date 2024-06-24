BEGIN h_insped

IF ~Global("h_ArioshQuest","GLOBAL",13)~ THEN BEGIN 0
   SAY @39000 /* Astounding... gods, I didn't anticipate it would work so quickly. */ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @39001 /* You there, Gorgon's Eye. The man you've just dispatched, he was but a criminal, playing his part in this charade. */ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @39002 /* An act, for a promise I made... time off his sentencing. Seems I've kept to my word. */ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @39003 /* Here's the thing, Gorgon's Eye. I fed different tales to various members of the City Watch about meetings across the city. */ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @39004 /* This was the only one disrupted. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @39005 /* I now know which among us is your rat. Rest assured, I will extract every ounce of information from this degenerate. */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @39006 /* Take heed, Gorgon's Eye. Your reckoning is fast approaching. */
IF ~~ THEN DO ~
   AddJournalEntry(@538,QUEST)
   ReputationInc(-1)
   EscapeArea()~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",17)~ THEN BEGIN 7
   SAY @39007 /* What is the meaning of this interruption? Speak quickly, for my time is precious. */ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @39008 /* Ishani, is it?... ahem. Secrets, you say? The Gorgon's Eye is not an organization known for loose lips. What is it that you claim to know? */ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @39009 /* Moonshae whiskey... hmm. You have a discerning selection here. */ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY @39010 /* I've encountered many a deceptive face in my time. Yours, however, has a certain... charm. */ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY @39011 /* But don't think for a moment that it sways me from my duty. Justice is not always served through charm and guile. It requires decisive action and unwavering resolve. */ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY @39012 /* Let us see what revelations this night may bring. */
       +~RandomNum(2,1)~+ @39013 /* (Let Ishani continue.) */ DO ~SetGlobal("h_ArioshQuest","GLOBAL",18) SetGlobal("h_PoisonInspector","GLOBAL",1)~ GOTO 14
       +~RandomNum(2,2)~+ @39013 /* (Let Ishani continue.) */ DO ~SetGlobal("h_ArioshQuest","GLOBAL",18) SetGlobal("h_PoisonFailInspector","GLOBAL",1)~ GOTO 18
       ++ @39014 /* (Ignite the fuse.) */ DO ~SetGlobal("h_ArioshQuest","GLOBAL",18) SetGlobal("h_FireInspector","GLOBAL",1)~ GOTO 17
       ++ @39015 /* Enough of this! I want the pleasure of ending your life myself, Inspector. */ DO ~SetGlobal("h_ArioshQuest","GLOBAL",18) SetGlobal("h_FightInspector","GLOBAL",1)~ GOTO 16
END

IF ~~ THEN BEGIN 14
   SAY @39016 /* To the inevitable end of the Gorgon's Eye. */ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY @39017 /* What... have you...? */
IF ~~ THEN DO ~
   SetGlobal("h_WatchTalk","GLOBAL",1)
   Kill("h_inspec")
   AddExperienceParty(1200)~ EXIT
END

IF ~~ THEN BEGIN 16
   SAY @39018 /* Ah, I suspected there was more to this meeting than met the eye. It seems you've revealed your true colors, Gorgon's Eye scum. Very well, let's settle this once and for all. */
IF ~~ THEN DO ~
   AddJournalEntry(@548,QUEST)
   SetGlobal("h_InsWatchAttack","GLOBAL",1)
   ActionOverride("h_city3c",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 17
   SAY @39016 /* To the inevitable end of the Gorgon's Eye. */
IF ~~ THEN DO ~
   SetGlobal("h_WatchFireTalk","GLOBAL",1)
   ReputationInc(-4)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_fircut")~ EXIT
END

IF ~~ THEN BEGIN 18
   SAY @39019 /* To the inevitable end of the Gorgon's Eye... */ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY @39020 /* ...and to all those who dance in their shadow! */ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY @39021 /* I have eyes and ears everywhere, you foolish whore. Did you really believe you could conceal your deceit from me? */ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY @39022 /* I will rid this city of its festering darkness, and your time has come. Don't worry, it will be over quickly. */
       ++ @39023 /* Dont you touch her, Inspector. This fight's between you and me now. */ DO ~SetGlobal("h_ArioshQuest","GLOBAL",18) SetGlobal("h_FightInspector","GLOBAL",1)~ GOTO 22
       ++ @39024 /* I won't let you slip through my fingers again, Inspector. Prepare yourself! */ DO ~SetGlobal("h_ArioshQuest","GLOBAL",18) SetGlobal("h_FightInspector","GLOBAL",1)~ GOTO 22
       ++ @39025 /* Goodbye, Inspector. (Ignite the fuse.) */ DO ~SetGlobal("h_ArioshQuest","GLOBAL",18) SetGlobal("h_FireInspector","GLOBAL",1)~ DO ~
   SetGlobal("h_WatchFireTalk","GLOBAL",1)
   ReputationInc(-4)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_fircut")~ EXIT
END

IF ~~ THEN BEGIN 22
   SAY @39026 /* Ah, I suspected there were more of you rats scurrying around here. It seems you've revealed your true colors, Gorgon's Eye scum. Very well, let's settle this once and for all. */
IF ~~ THEN DO ~
   AddJournalEntry(@550,QUEST)
   SetGlobal("h_InsWatchAttack","GLOBAL",1)
   ActionOverride("h_city3c",Enemy())
   ActionOverride("h_ishanc",EscapeArea())~ EXIT
END

