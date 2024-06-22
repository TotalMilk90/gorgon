BEGIN h_valerd

IF ~Global("h_ValeraQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Well, well, if it isn't our elusive friend, <CHARNAME>, from the Gorgon's Eye. What brings you to this little moonlit rendezvous?~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~You've caught me at a busy time, I'm afraid. I'm just out here for a bit of late-night business, keeping an eye out for any likely targets.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~A girl's got to make a living somehow, doesn't she? Now, lovely as this little chat's been, I best be on my way. Plenty of shadows left to explore, you know how it is.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Unless you'd care to join me for a little stroll, sweetheart? Valera and <CHARNAME>, I reckon we could do extraordinary things together, don't you think?~
       ++ ~Spare me the act, Valera. We've got the low-down on your little game with the City Watch, and I'm here to end it.~ GOTO 4
       ++ ~It's over, Valera. We know about your deals with the Watch. There's still an opportunity to cut through this mess. Perhaps we can figure out a way to settle this.~ GOTO 4
       ++ ~You've danced a dangerous dance, makin' your bed with the Watch. If you don't start talking, things are about to get very messy, very fast.~ GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Well, <CHARNAME>, you've got me cornered, haven't you? Caught right in the act. I played the game a bit too close to the edge, I suppose, and let greed get the best of me.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~But, can you really blame me? A girl's got dreams, after all... aspirations and desires that beg fulfillment.~ IF ~~ THEN GOTO 5.5
END

IF ~~ THEN BEGIN 5.5
   SAY ~We all yearn for something greater, don't we? Something to make this treacherous world a little more bearable.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Maybe... maybe we could work something out? I've gathered quite a bit of information about the City Watch during my time working both sides. Valuable details that only I know.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~You let me slip away, and I'll share my little secrets with you. Consider it a parting gift, love.~
       ++ ~No deals, Valera. You knew the risks. It's time to face the consequences.~ GOTO 9
       ++ ~Ariosh won't settle for anything less than your demise. It's time to make your peace.~ GOTO 9
       ++ ~Share your secret, Valera, and perhaps there will be an alternative to this grim end for you. ~ GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Promises in our line of work, <CHARNAME>, tend to be as fragile as a spider's web in a storm. Will you swear it on your life, and give me your word that I will be unharmed?~
       ++ ~Sorry, Valera, but that ain't in the cards. It's time to face the music.~ GOTO 9
       ++ ~I'll vouch for you, but in the end, it's Ariosh's call. Let's return to the guild and bring this matter to a close.~ GOTO 10
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
~Ariosh, love, I... I didn't reckon it'd come to this, but I had to secure my future. You've got to understand, it was the glint of gold, the promise of a brighter path.~
   == h_ariosd
~Listen up, Valera. If it weren't for <CHARNAME>'s pull in these shadows, we wouldn't even be having this little parley.~
   =
~So, whatever you're holding, it better be worth every breath you're takin' right now. Loyalty means something, even in our trade. You've put us all at risk.~
   == h_valerd
~I understand, and I'm ready to face the reckoning. But hear me out, I've got the lowdown on the City Watch. Information that could save lives, keep us one step ahead.~
   == h_ariosd
~This better be worth it, then. Spill your secrets, and then we'll decide what comes next.~
   == h_valerd
~They're brewing a storm, Ariosh. The Watch is doubling down, gearing up for a sweep. Word is, someone big from the Gate is coming, and they're not here for tea and biscuits.~
   =
~Heard the whispers straight from Whitewood, herself. I've got a knack for playing shadows at the perfect moment. Most of the Watch don't even know yet.~
   == h_ariosd
~I'll give you credit, Valera, you've been weaving quite the web with that silver tongue of yours. But remember, in our world, even the best threads can unravel.~
   =
~I'm sorry it's come to this, but we really can't afford any loose ends. It's the way of things.~
   =
~You once walked these shadows with us, Valera. May they now embrace you.~
   DO ~
      Kill("h_valerc")
      SetGlobal("h_ValeraQuest","GLOBAL",2)~
EXIT
