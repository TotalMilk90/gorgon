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
       +~See(Player1) Global("h_PitsChamp","GLOBAL",1)~+ ~Autograph? Hardly. I'm the reigning champ in the pits. They say you're my last true challenge.~ GOTO 3
       +~!See(Player1) Global("h_PitsChamp","GLOBAL",1)~+ ~Autograph? You've got it all wrong, old-timer. I'm here with the reigning champ, <CHARNAME>.~ GOTO 3.5
       +~Global("h_PitsChamp","GLOBAL",0)~+ ~I want to challenge you to a duel in the arena.~ GOTO 4
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 3
   SAY ~Oh, really? The current champion, are you? And you're here to challenge me to a duel in those pits? Hah! Well, color me thoroughly entertained.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3.5
   SAY ~<CHARNAME>? Never heard of 'em. I'll tell ya this, kid, there's always a new 'champ' strutting around. Sounds like just another chump in the ring to me.~ IF ~~ THEN GOTO 4
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

IF ~See(Player1) Global("h_IslaTalk","GLOBAL",1)~ THEN BEGIN 7
   SAY ~Well, well, what brings the mighty gladiator of the pits back to my corner of the world? You're not here for another duel, are you?~
       +~Global("h_IslaBounty","GLOBAL",1)~+ ~Isla Darkcloak, it seems your legend has caught up with you. There's a bounty on your head, and I'm here to collect.~ GOTO 8
       ++ ~I'll be going now.~ EXIT
END

IF ~!See(Player1) Global("h_IslaTalk","GLOBAL",1)~ THEN BEGIN 7.5
   SAY ~You again? I've already told you, I've hung up my dueling days. Unless it's a deathmatch, you won't find me in the ring.~
       +~Global("h_IslaBounty","GLOBAL",1)~+ ~Isla Darkcloak, it seems your legend has caught up with you. There's a bounty on your head, and I'm here to collect.~ GOTO 8
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY ~You're either incredibly brave or incredibly foolish to think you can collect a bounty in the heart of the black markets.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~This isn't the pits, and starting a brawl here won't end well for anyone involved. So, if you've come to make trouble, you might want to think twice.~
       +~See(Player1) Global("h_PitsChamp","GLOBAL",1)~+ ~Then I challenge you to a deathmatch. It's time to see if your talk is worth anything in the pits..~ GOTO 16
       +~!See(Player1) Global("h_PitsChamp","GLOBAL",1)~+ ~Then I challenge you to a deathmatch against <CHARNAME>, the reigning champ. It's time to see if your talk is worth anything in the pits.~ GOTO 19
       +~Global("h_PitsChamp","GLOBAL",0)~+ ~Trouble? This place doesn't scare me. What's stopping me from taking you out right now?~ GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~This isn't a place for bravado, it's a place for survival. If you so much as lift a finger in aggression, you'll find yourself dead within seconds.~ IF ~~ THEN GOTO 10.5
END

IF ~~ THEN BEGIN 10.5
   SAY ~These folks don't mess around, and neither do I. If you want any shot at taking me down, it's not going to be in here.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~Although, I will say... your boldness has certainly piqued my interest. So, allow me to propose an alternative.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~If you manage to run the gauntlet and defeat every fighter in the pits, becoming the undisputed champion, then I'll agree to face you in a deathmatch.~ IF ~~ THEN GOTO 13
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

IF WEIGHT #-1 ~See(Player1)Global("h_IslaTalk","GLOBAL",2) Global("h_PitsChamp","GLOBAL",1)~ THEN BEGIN 15
   SAY ~The pits have a new champion, it seems. Impressive. You've proven yourself in the arena. Now, let's see if you can handle a true deathmatch.~ IF ~~ THEN GOTO 17
END

IF WEIGHT #-1 ~!See(Player1)Global("h_IslaTalk","GLOBAL",2) Global("h_PitsChamp","GLOBAL",1)~ THEN BEGIN 15.5
   SAY ~The pits have a new champion, it seems. Impressive. <CHARNAME> has certainly proved themselves as a formidable fighter. Now, let's see if they can handle a true deathmatch.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 16
   SAY ~Hah! I haven't taken on a challenge like this in ages. A real deathmatch, like the good old days. Consider me intrigued.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 17
   SAY ~It's been some time since I've felt the rush of the pits, but now, I welcome the chance to step back into that arena.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18
   SAY ~Prepare yourself, champion. You're stepping into a whole new league.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 19
   SAY ~Hah! I haven't taken on a challenge like this in ages. A real deathmatch, like the good old days. Consider me intrigued.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~It's been some time since I've felt the rush of the pits, but now, I welcome the chance to step back into that arena.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~I hope your champion will come prepared, because this is a whole new league.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~I'm coming back to the pits, and I intend to make it a fight for the ages.~
IF ~~ THEN DO ~
   SetGlobal("h_IslaTalk","GLOBAL",3)
   SetGlobal("h_PitsChamp","GLOBAL",2)
   SetGlobal("h_FightingPits","GLOBAL",4)
   SetGlobal("h_BeatRoran","GLOBAL",3)
   AddJournalEntry(@459,QUEST)
   EscapeArea()~ EXIT
END