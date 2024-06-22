BEGIN h_isleyd

IF ~Global("h_MerediaQuest","GLOBAL",3)~ THEN BEGIN 1
   SAY @41000 /* Who in the blazes are you? */
       ++ @41001 /* Hold your weapons and back off from Ilena, now. */ GOTO 2
       ++ @41002 /* I'm here to deliver a taste of justice, murderer, and make sure Ilena walks free. */ GOTO 2
       ++ @41003 /* Names aren't important now. Ungrip Ilena, and accept your fate. */ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @41004 /* So, you know this wench, do you? How the blazes did you track me down? */
       ++ @41005 /* Found a scrap of your fatigues left behind. Led me straight to ya. */ GOTO 3
       ++ @41006 /* You got sloppy, Isley, and now it will cost you your life. */ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @41007 /* You son of a bitch! Try another step and I'll paint the grass with her blood, I swear it! */
       +~CheckStatGT(Player1,17,DEX) HasItemCategory(Player1,"BOW",0)~+ @41008 /* (Quickly draw and fire your bow.) */
       DO ~Kill("h_isleyc") AddExperienceParty(250)~ EXIT
       +~CheckStatGT(Player1,17,DEX) HasItemCategory(Player1,"XBOW",0)~+ @41009 /* (Quickly draw and fire your crossbow.) */
       DO ~Kill("h_isleyc") AddExperienceParty(250)~ EXIT
       ++ @41010 /* Think you're swift enough? Give it a shot! */ GOTO 4
       +~CheckStatLT(Player1,18,CHR)~+ @41011 /* You honorless craven! Face me and leave Ilena out of this! */ GOTO 4
       +~CheckStatGT(Player1,17,CHR)~+ @41011 /* You honorless craven! Face me and leave Ilena out of this! */  GOTO 5
       ++ @41012 /* Enough killing, Isley! Return to the garrison and admit your crimes. If not, I will serve you justice myself! */ GOTO 7
END

IF ~~ THEN BEGIN 4
   SAY @41013 /* You idiot! */
IF ~~ THEN DO ~
   Kill("h_ilenac")
   SetGlobal("h_IlenaDied","GLOBAL",1)
   AddJournalEntry(@713,QUEST)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
   SAY @41014 /* Who are you to question honor? Draw your blade and let's settle this! */
IF ~~ THEN DO ~
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY @41015 /* Think me daft, do you? Why would I choose suicide when freedom beckons before my eyes! */
       ++ @41016 /* You'll never escape your deeds! You murdered your wife and abducted Ilena! How do you think this ends? */ GOTO 8
       ++ @41017 /* It's the only righteous path! Atone for the death of your wife, and drop your weapons, now! */ GOTO 8
       ++ @41018 /* Then you leave me no choice. Time to die, Isley! */ GOTO 4
END

IF ~~ THEN BEGIN 8
   SAY @41019 /* Galatea's dead? No... no! She was breathing when I left! I thought... I thought... */ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @41020 /* I never meant for it to come to this, I swear! Merciful gods! */
       ++ @41021 /* Isley, let Ilena go, and turn yourself in. It's the only way you'll find peace. */ GOTO 10
       ++ @41022 /* Steady now, lad. Lower your weapon and come along. It'll all be over soon. */ GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY  @41023 /* I... I can't! I'll kill Ilena, I'll kill you, and then I'll kill myself! RraaAAAAAGH! */
IF ~~ THEN DO ~
   Face(N)
   Kill("h_ilenac")
   SetGlobal("h_IlenaDied","GLOBAL",1)
   AddJournalEntry(@713,QUEST)
   Enemy()~ EXIT
END


CHAIN
   IF ~Global("h_MerediaQuest","GLOBAL",2)~ THEN h_isleyd 0
@41024 /* Hold still while I secure the ropes. Can't risk you slippin' away, now. */
   =
@41025 /* Stand still and keep your mouth shut. Got it? */
   =
@41026 /* I'm runnin' inside to grab some supplies. Then we're gettin' the hell out of here. */
   == h_ilenad
@41027 /* Please, just let me go. I won't breathe a word of this! I swear! */
   == h_isleyd
@41028 /* Keep your bloody mouth shut I said! Another word and I'll stuff a gag down your throat! */
   =
@41029 /* That clear? */
   == h_ilenad
@41030 /* Mhm. */
   == h_isleyd
@41031 /* Good, lass. Now, wait here and I'll be back in a minute. */
   DO ~
      SetGlobal("h_MerediaQuest","GLOBAL",3)
      SetGlobal("h_IsleyDialog","GLOBAL",1)~
EXIT
