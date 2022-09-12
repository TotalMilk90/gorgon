BEGIN h_isleyd

IF ~Global("h_MerediaQuest","GLOBAL",3)~ THEN BEGIN 1
   SAY ~Who in the blazes are you?~
       ++ ~Drop your weapons and step away from Ilena!~ GOTO 2
       ++ ~I have come to bring you to justice, murderer, and to escort Ilena safely home.~ GOTO 2
       ++ ~I am the last thing you will ever see in this world. Now, Die!~ GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY ~So, you know this wench? How in the nine hells were you able to find me?~
       ++ ~You left a piece of your uniform behind covered in your wife's blood. If I were to bring it to the guards they would have your head.~ GOTO 3
       ++ ~You were sloppy, Isley, and now it will cost you your life.~ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~You son of a bitch! Take another step and I'll cut her throat! Don't think I'm bluffing neither!~
       +~OR(4) HasItemEquipedReal("BOW05",Player1) HasItemEquipedReal("BOW06",Player1) HasItemEquipedReal("BOW08",Player1) HasItemEquipedReal("BOW18",Player1) CheckStatGT(Player1,17,DEX)~+ ~(Quickly draw and fire your bow.)~
       DO ~Kill("h_isleyc")~ EXIT
       +~OR(3) HasItemEquipedReal("XBOW04",Player1) HasItemEquipedReal("XBOW05",Player1) HasItemEquipedReal("XBOW06",Player1) CheckStatGT(Player1,17,DEX)~+ ~(Quickly draw and fire your crossbow.)~
       DO ~Kill("h_isleyc")~ EXIT
       ++ ~Go ahead and try, if you think yourself fast enough!~ GOTO 4
       +~CheckStatLT(Player1,18,CHR)~+ ~You coward! Have you no honor? Let us duel and the winner gets Ilena!~ GOTO 4
       +~CheckStatGT(Player1,17,CHR)~+ ~You coward! Have you no honor? Let us duel and the winner gets Ilena!~  GOTO 5
       ++ ~Enough killing, Isley! Return to the garrison and admit to your crimes. If not, I will serve you justice myself!~ GOTO 7
       +~CheckStatGT(Player1,17,INT)~+ ~I don't believe you. Why go through all this trouble to just kill Ilena?~ GOTO 6
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
   SAY ~HA! I accpet your challenge! Draw your blade and let's have at her!~
IF ~~ THEN DO ~
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
   SAY ~*laughing* I guess you're not as dumb as you look. Alright, let's have at it then!~
IF ~~ THEN DO ~
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY ~*laughing* Do you believe me daft? Why would I submit myself to suicide while freedom lies right in front of me!~
       ++ ~You will never be free from what you have done! You murdered your wife and took Ilena against her will! How do you think this will end?~ GOTO 8
       ++ ~It is the right thing to do! Drop your weapon and I'll escort you there myself.~ GOTO 4
       ++ ~Then you leave me no choice. Draw steel!~ GOTO 4
END

IF ~~ THEN BEGIN 8
   SAY ~Galatea is dead? She was alive when I left! I thought... I thought...~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~I didn't mean to kill her, I swear! Oh gods!~
       ++ ~Isley, let Ilena go, and turn yourself in. It is the only way you will find some semblance of peace.~ GOTO 10
       ++ ~It's alright, lad. Lower your weapon and come with me. It will all be over soon.~ GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~I... I can't! I'll kill Ilena, I'll kill you, and then I'll kill myself! RraaAAAAAGH!~
IF ~~ THEN DO ~
   Kill("h_ilenac")
   SetGlobal("h_IlenaDied","GLOBAL",1)
   AddJournalEntry(@713,QUEST)
   Enemy()~ EXIT
END


CHAIN
   IF ~Global("h_MerediaQuest","GLOBAL",2)~ THEN h_isleyd 0
~Hold still while I secure the ropes. I have to make sure you won't run off on me now.~
   =
~Alright, stay right here and keep your mouth shut. You got that?~
   =
~I'm going to run inside, grab my supplies and then were getting the hell out of here.~
   == h_ilenad
~Please, just let me go. I won't tell anyone about what happened! I promise!~
   == h_isleyd
~Keep your bloody mouth shut I said! Make another sound and I'll stuff a gag down your throat. Is that clear?~
   == h_ilenad
~*nods*~
   == h_isleyd
~Wait here like a good lass and I'll be back in a minute.~
   DO ~
      SetGlobal("h_MerediaQuest","GLOBAL",3)~
EXIT
