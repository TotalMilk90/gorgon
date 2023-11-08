BEGIN h_isleyd

IF ~Global("h_MerediaQuest","GLOBAL",3)~ THEN BEGIN 1
   SAY ~Who in the blazes are you?~
       ++ ~Hold your weapons and back off from Ilena, now.~ GOTO 2
       ++ ~I'm here to deliver a taste of justice, murderer, and make sure Ilena walks free.~ GOTO 2
       ++ ~Names aren't important now. Ungrip Ilena, and accept your fate.~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~So, you know this wench, do you? How the blazes did you track me down?~
       ++ ~Found a scrap of your fatigues left behind. Led me straight to ya.~ GOTO 3
       ++ ~You got sloppy, Isley, and now it will cost you your life.~ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~You son of a bitch! Try another step and I'll paint the grass with her blood, I swear it!~
       +~CheckStatGT(Player1,17,DEX) HasItemCategory(Player1,"BOW",0)~+ ~(Quickly draw and fire your bow.)~
       DO ~Kill("h_isleyc") AddExperienceParty(250)~ EXIT
       +~CheckStatGT(Player1,17,DEX) HasItemCategory(Player1,"XBOW",0)~+ ~(Quickly draw and fire your crossbow.)~
       DO ~Kill("h_isleyc") AddExperienceParty(250)~ EXIT
       ++ ~Think you're swift enough? Give it a shot!~ GOTO 4
       +~CheckStatLT(Player1,18,CHR)~+ ~You honorless craven! Face me and leave Ilena out of this!~ GOTO 4
       +~CheckStatGT(Player1,17,CHR)~+ ~You honorless craven! Face me and leave Ilena out of this!~  GOTO 5
       ++ ~Enough killing, Isley! Return to the garrison and admit your crimes. If not, I will serve you justice myself!~ GOTO 7
END

IF ~~ THEN BEGIN 4
   SAY ~You idiot!~
IF ~~ THEN DO ~
   Kill("h_ilenac")
   SetGlobal("h_IlenaDied","GLOBAL",1)
   AddJournalEntry(@713,QUEST)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
   SAY ~Who are you to question honor? Draw your blade and let's settle this!~
IF ~~ THEN DO ~
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY ~Think me daft, do you? Why would I choose suicide when freedom beckons before my eyes!~
       ++ ~You'll never escape your deeds! You murdered your wife and abducted Ilena! How do you think this ends?~ GOTO 8
       ++ ~It's the only righteous path! Atone for the death of your wife, and drop your weapons, now!~ GOTO 8
       ++ ~Then you leave me no choice. Time to die, Isley!~ GOTO 4
END

IF ~~ THEN BEGIN 8
   SAY ~Galatea's dead? No... no! She was breathing when I left! I thought... I thought...~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~I never meant for it to come to this, I swear! Merciful gods!~
       ++ ~Isley, let Ilena go, and turn yourself in. It's the only way you'll find peace.~ GOTO 10
       ++ ~Steady now, lad. Lower your weapon and come along. It'll all be over soon.~ GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY  ~I... I can't! I'll kill Ilena, I'll kill you, and then I'll kill myself! RraaAAAAAGH!~
IF ~~ THEN DO ~
   Face(N)
   Kill("h_ilenac")
   SetGlobal("h_IlenaDied","GLOBAL",1)
   AddJournalEntry(@713,QUEST)
   Enemy()~ EXIT
END


CHAIN
   IF ~Global("h_MerediaQuest","GLOBAL",2)~ THEN h_isleyd 0
~Hold still while I secure the ropes. Can't risk you slippin' away, now.~
   =
~Stand still and keep your mouth shut. Got it?~
   =
~I'm runnin' inside to grab some supplies. Then we're gettin' the hell out of here.~
   == h_ilenad
~Please, just let me go. I won't breathe a word of this! I swear!~
   == h_isleyd
~Keep your bloody mouth shut I said! Another word and I'll stuff a gag down your throat!~
   =
~That clear?~
   == h_ilenad
~*nods*~
   == h_isleyd
~Good, lass. Now, wait here and I'll be back in a minute.~
   DO ~
      SetGlobal("h_MerediaQuest","GLOBAL",3)
      SetGlobal("h_IsleyDialog","GLOBAL",1)~
EXIT
