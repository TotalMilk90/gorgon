BEGIN h_asnabd

IF ~Global("h_KatredaBounty","GLOBAL",3)~ THEN BEGIN 0
   SAY ~If I don't get rid of that damn dryad soon we might just have to pack it up and head home. She raided our camp again last night and destroyed half our supplies.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~You wouldn't be here on our behalf now would you? I offered a reward for the removal of this witch, Katreda, but so far none have answered the call.~
       ++ ~I have just finished speaking with Katreda and I have decided to help her. Take your men and go. Find another wood to build your lodge in.~ GOTO 2
       ++ ~Katreda has offered me a more substantial reward. You'll have to do better if you want my help.~ GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY ~Why in gods name would you help that... fiendish creature!~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
   SAY ~Bah! You bounty hunter scum are all the same!~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Normally, I would despise killing anything without conducting a proper chase, but now I tire of these games.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~I'll deal with the dryad myself after I finish with you lot. You see, these weapons aren't just for hunting boar!~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",4)
   AddJournalEntry(@435,QUEST)
   Enemy()~ EXIT
END


