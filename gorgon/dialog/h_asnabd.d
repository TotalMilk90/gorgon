BEGIN h_asnabd

IF ~Global("h_KatredaBounty","GLOBAL",3)~ THEN BEGIN 0
   SAY ~If I don't rid myself of that cursed dryad soon, we might just have to abandon this place and head home. She raided our camp again last night, laying waste to half our supplies.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~You wouldn't happen to be here on our behalf, would you? I've put a reward on the head of that witch Katreda, but so far, no one has stepped up to the task.~
       ++ ~I'm here to assist Katreda. Gather your men and depart. Seek another forest for your lodge.~ GOTO 2
       ++ ~Katreda has offered me a more substantial reward. You'll have to do better if you want my help.~ GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY ~Why on earth would you support that... malevolent creature?~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
   SAY ~Bah! You bounty hunter scum are all the same!~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Normally I would despise killing anything without conducting a proper chase, alas, I tire of these games.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~I'll deal with the dryad myself after I finish with you lot. You see, these weapons weren't just made for hunting boar!~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",4)
   AddJournalEntry(@435,QUEST)
   Enemy()~ EXIT
END


