BEGIN ~h_isladd~

IF ~Global("h_IslaTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY ~You seem like you have a purpose, but let's not kid ourselves. My services don't come cheap, and I don't often take just any job that comes my way.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~You'll find my expertise goes hand in hand with my price. Now, what brings someone like you to my little corner of the world?~
       +~Global("h_IslaBounty","GLOBAL",1)~+ ~Isla Darkcloak, it seems your legend has caught up with you. There's a bounty on your head, and I'm here to collect.~ GOTO 8
       +~Global("h_IslaBounty","GLOBAL",0)~+ ~I've heard stories about you, Isla Darkcloak. The legendary champion of the fighting pits.~ GOTO 2
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 2
   SAY ~Oh, not this again. Spare me the act, alright? I don't do autographs.~
       +~Global("h_PitsChamp","GLOBAL",1)~+ ~Autograph? Hardly. I'm the reigning champ in the pits. They say you're my last true challenge.~ GOTO 3
       +~Global("h_PitsChamp","GLOBAL",1)~+ ~I'm the current champion in the pits, and you're the final obstacle to my legacy.~ GOTO 3
       +~Global("h_PitsChamp","GLOBAL",0)~+ ~I want to challenge you to a duel in the arena.~ GOTO 4
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 3
   SAY ~Oh, really? The current champion, are you? And you're here to challenge me to a duel in those pits? Hah! Well, color me thoroughly entertained.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Let me make myself perfectly clear. I don't participate in those dull, predictable spectacles anymore.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~I'm only interested in deathmatches, where the stakes are real and the thrill is genuine.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~If that's what you're after, then we may have something to discuss. But until then, don't expect me to grace that arena with my presence for a mere duel.~
IF ~~ THEN DO ~
   SetGlobal("h_IslaTalk","GLOBAL",1)~ EXIT
END

IF ~Global("h_IslaTalk","GLOBAL",1)~ THEN BEGIN 7
   SAY ~Well, well, what brings the mighty gladiator of the pits back to my corner of the world? You're not here for another duel, are you?~
       +~Global("h_IslaBounty","GLOBAL",1)~+ ~Isla Darkcloak, it seems your legend has caught up with you. There's a bounty on your head, and I'm here to collect.~ GOTO 8
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY ~You're either incredibly brave or incredibly foolish to think you can collect a bounty in the heart of the black markets.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~This isn't the pits, and starting a brawl here won't end well for anyone involved. So, if you've come to make trouble, you might want to think twice.~
       +~Global("h_PitsChamp","GLOBAL",1)~+ ~Then I challenge you to a deathmatch in the fighting pits.~ GOTO 16
       +~Global("h_PitsChamp","GLOBAL",0)~+ ~Trouble? This place doesn't scare me. What's stopping me from taking you out right now?~ GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~This isn't a place for bravado, it's a place for survival. If you so much as lift a finger in aggression, you'll find yourself dead within seconds.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~These folks don't mess around, and neither do I. But, you know what? Your boldness has piqued my interest.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~So, I'll strike you a deal. If you manage to run the gauntlet and defeat every fighter in the pits, becoming the undisputed champion, then I'll agree to face you in a death match.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~It's a tall order, mind you, but if you have what it takes, we'll see just how skilled you truly are.~
IF ~~ THEN DO ~
   SetGlobal("h_IslaTalk","GLOBAL",2)
   AddJournalEntry(@458,QUEST)~ EXIT
END

IF ~Global("h_IslaTalk","GLOBAL",2)~ THEN BEGIN 14
   SAY ~Good luck, champion-to-be. If you manage to climb the ranks, we may just have a fight worth remembering.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_IslaTalk","GLOBAL",2) Global("h_PitsChamp","GLOBAL",1)~ THEN BEGIN 15
   SAY ~The pits have a new champion, it seems. Impressive. You've proven yourself in the arena. Now, let's see if you can handle a deathmatch.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 16
   SAY ~Very well, champion. You've got yourself a deathmatch.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~It's been some time since I've felt the rush of the pits, but against you, I welcome the chance to step back into that arena.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~I'll make my way there now to start the preparations with Diomedes. We'll give the crowd a spectacle they won't soon forget.~
IF ~~ THEN DO ~
   SetGlobal("h_IslaTalk","GLOBAL",3)
   SetGlobal("h_PitsChamp","GLOBAL",2)
   SetGlobal("h_FightingPits","GLOBAL",4)
   SetGlobal("h_BeatRoran","GLOBAL",3)
   AddJournalEntry(@459,QUEST)
   EscapeArea()~ EXIT
END