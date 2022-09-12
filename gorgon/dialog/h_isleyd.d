BEGIN h_isleyd

IF ~Global("h_MerediaQuest","GLOBAL",3)~ THEN BEGIN 1
   SAY ~Who in the blazes are you?~
       ++ ~Drop your weapons and step away from Ilena!~ GOTO 2
       ++ ~I have come to bring you to justice, murderer, and to escort Ilena safely home.~ GOTO 2
       ++ ~Who I am is unimportant. I have come to rescue Ilena from your evil clutches.~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~So, you know this wench? How in the nine hells were you able to find me?~
       ++ ~You left a piece of your uniform behind and I was able to track you down.~ GOTO 3
       ++ ~You were sloppy, Isley, and now it will cost you your life.~ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~You son of a bitch! Take another step and I'll cut her throat! Don't think I'm bluffing neither!~
       +~CheckStatGT(Player1,17,DEX) HasItemCategory(Player1,"BOW",0)~+ ~(Quickly draw and fire your bow.)~
       DO ~Kill("h_isleyc") AddExperienceParty(250)~ EXIT
       +~CheckStatGT(Player1,17,DEX) HasItemCategory(Player1,"XBOW",0)~+ ~(Quickly draw and fire your crossbow.)~
       DO ~Kill("h_isleyc") AddExperienceParty(250)~ EXIT
       ++ ~Go ahead and try, if you think yourself fast enough!~ GOTO 4
       +~CheckStatLT(Player1,18,CHR)~+ ~You coward! Have you no honor? Face me and leave Ilena out of it!~ GOTO 4
       +~CheckStatGT(Player1,17,CHR)~+ ~You coward! Have you no honor? Face me and leave Ilena out of it!~  GOTO 5
       ++ ~Enough killing, Isley! Return to the garrison and admit to your crimes. If not, I will serve you justice myself!~ GOTO 7
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
   SAY ~Who are you to question my honor? Draw your blade then and let's have at it!~
IF ~~ THEN DO ~
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY ~*laughing* Do you believe me to be daft? Why should I submit myself to suicide while freedom stares me right in the face!~
       ++ ~You will never be free from what you have done! You murdered your wife and took Ilena against her will! How do you think this will end?~ GOTO 8
       ++ ~It is the right thing to do! Drop your weapon and I'll escort you there myself.~ GOTO 8
       ++ ~Then you leave me no choice. Draw steel!~ GOTO 4
END

IF ~~ THEN BEGIN 8
   SAY ~Galatea is dead? No... no! She was alive when I left! I thought... I thought...~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~I didn't mean to kill her, I swear! Oh gods!~
       ++ ~Isley, let Ilena go, and turn yourself in. It is the only way you will find some semblance of peace.~ GOTO 10
       ++ ~It's alright, lad. Lower your weapon and come with me. It will all be over soon.~ GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~I... I can't! I'll kill Ilena, I'll kill you, and then I'll kill myself! RraaAAAAAGH!~
IF ~~ THEN DO ~
   Face(N)
   Kill("h_ilenac")
   SetGlobal("h_IlenaDied","GLOBAL",1)
   AddJournalEntry(@713,QUEST)
   Enemy()~ EXIT
END


CHAIN
   IF ~Global("h_MerediaQuest","GLOBAL",2)~ THEN h_isleyd 0
~Hold still while I secure the ropes. I have to make sure you won't run off on me now.~
   =
~Stay right here and keep your mouth shut. You got that?~
   =
~I'm going to run inside and grab my supplies. Then we're getting the hell out of here.~
   == h_ilenad
~Please, just let me go. I won't tell anyone about what happened! I promise!~
   == h_isleyd
~Keep your bloody mouth shut I said! Another sound outta you and I'll stuff a gag down your throat!~
   =
~Is that clear?~
   == h_ilenad
~*nods*~
   == h_isleyd
~Good. Now, wait here and I'll be back in a minute.~
   DO ~
      SetGlobal("h_MerediaQuest","GLOBAL",3)
      SetGlobal("h_IsleyDialog","GLOBAL",1)~
EXIT
