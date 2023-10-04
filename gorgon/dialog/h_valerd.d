BEGIN h_valerd

IF ~Global("h_ValeraQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Well, well, if it isn't our elusive friend, <CHARNAME>, from the shadows. What brings you to this moonlit rendezvous?~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~You've caught me at a busy time, love. I'm just out here for a bit of late-night business, keeping an eye out for any likely targets.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~A girl's got to make a living somehow, doesn't she? Now, <CHARNAME>, lovely as this little chat's been, I best be on my way. Plenty of shadows left to explore, you know how it is.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Unless you'd care to join me for a little stroll, sweetheart? Valera and <CHARNAME>, I reckon we could do extraordinary things together, don't you think?~
       ++ ~Spare me the act, traitor. We've got the low-down on your little game with the City Watch.~ GOTO 4
       ++ ~There's still a chance to untangle this web, Valera. Maybe we can find a way to smooth things out.~ GOTO 4
       ++ ~You've played too close to the fire. If you don't come clean, things are gonna get real messy, real quick.~ GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Well, <CHARNAME>, you've got me cornered, haven't you? Caught right in the act. I suppose I played the game a bit too close to the edge and let greed get the best of me.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~But, can you blame me? A girl's got dreams, after all. Maybe... maybe we could work something out?~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~I've gathered quite a bit of information about the City Watch during my time working both sides. Valuable details that only I know.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~You let me slip away, and I'll share my little secrets you. Consider it a parting gift, love.~
       ++ ~No deals, Valera. You knew the risks. It's time to face the consequences.~ GOTO 9
       ++ ~Ariosh won't settle for anything less than your demise. It's time to make your peace.~ GOTO 9
       ++ ~Betraying the guild has its price. Share your secret, and I might consider an alternative.~ GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Promises in our line of work, <CHARNAME>, tend to be as fragile as a spider's web in a storm. Will you swear it on your life, and give me your word that I will be unharmed?~
       ++ ~Sorry, Valera, but that ain't in the cards. It's time to face the music.~ GOTO 9
       ++ ~Let's head back to the guild and face Ariosh. I give you my word, I'll vouch for your safety.~ GOTO 10
END

IF ~~ THEN BEGIN 9
   SAY ~So be it, <CHARNAME>. If this is the path you choose, then let the shadows bear witness to our dance.~
IF ~~ THEN DO ~
   SetGlobal("h_KilledValera","GLOBAL",1)
   AddJournalEntry(@526,QUEST)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY ~Very well, <CHARNAME>. Lead the way, but remember, any double-cross and I won't hesitate to show you just how sharp my blade can be.~
IF ~~ THEN DO ~
   SetGlobal("h_BlackLeave","GLOBAL",0)
   SetGlobal("h_ValeraQuest","GLOBAL",1)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_valcut")~ EXIT
END

CHAIN
   IF ~Global("h_ValeraQuest","GLOBAL",1)~ THEN h_valerd 0
~Ariosh, love, I... I didn't reckon it'd come to this, but I had to secure my future. You've got to understand, it was the glint of gold, not the promise of a safer path.~
   == h_ariosd
~Listen up, Valera. If it weren't for <CHARNAME>'s pull in these shadows, we wouldn't be having this parley.~
   =
~So, whatever you're holding, it better be worth every breath you're takin' right now. Loyalty means something, even in our trade. You've put us all at risk.~
   == h_valerd
~I know, and I'm ready to face the reckoning. But hear me out, I've got the lowdown on the City Watch. Information that could save lives, keep us one step ahead.~
   == h_ariosd
~This better be worth it, then. Spill your secrets, and then we'll decide what comes next.~
   == h_valerd
~They're brewing a storm, Ariosh. The Watch is doubling down, gearing up for a sweep. Word is, someone big from the Gate is coming, and they're not here for tea and biscuits.~
   =
~Heard the whispers straight from Whitewood herself. Most of the Watch don't even know yet. I got a knack for playin' shadows at right time.~
   == H_ariosd
~I'll give you credit, Valera, you've been weaving quite the web with that silver tongue of yours. But remember, in our world, even the best threads can unravel.~
   =
~I'm sorry it's come to this, but we really can't afford any loose ends. It's the way of things.~
   =
~Valera, you once walked these shadows with us. May they now embrace you.~
   DO ~
      Kill("h_valerc")
      SetGlobal("h_ValeraQuest","GLOBAL",2)
      //CreateCreature("h_blackc",[848.1241],N)~
EXIT
