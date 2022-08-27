BEGIN h_rich2d

IF ~Global("h_SpawnRichard","GLOBAL",3)~ THEN BEGIN 1
   SAY ~What is this abomination?! The plan was a failure! Men, prepare yourselves!~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~<CHARNAME>! We must defeat Baldwin before he is allowed to escape! I will deal with him while my rogues assist you with the others!~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnRichard","GLOBAL",4)
   SetGlobal("h_ShadowWar","GLOBAL",9)
   SetGlobal("h_AttackedGuild","GLOBAL",1)
   EquipRanged()
   Attack("h_snak2c") ~ EXIT
END


IF WEIGHT #-1 ~Dead("h_snak2c")~ THEN BEGIN 3
   SAY ~The Kerykeion's power must have been stronger than we anticipated to allow him to transform into that... monstrosity.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Regardless, Baldwin now lays dead and the Kerykeion has disintegrated beyond repair.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~The real piece, however, has been secretly held in my possession for many years.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~My brother has soiled any significance it once held. I will offer it to you as a reward for your aid and we will put our history behind us. Rhade may be able to forge it into something quite special for you.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~With that, I shall take my leave. Rhade will stay behind and clean up whats left of the operations here. Good day.~
IF ~~ THEN DO ~
   SetGlobal("h_ShadowWar","GLOBAL",10)
   SetGlobal("h_GuildMusic","GLOBAL",4)
   AddJournalEntry(@225,QUEST_DONE)
   GiveItemCreate("h_misc03",LastTalkedToBy,0,0,0)
   EscapeArea()~ EXIT
END


CHAIN
     IF ~Global("h_BetrayBaldwin","GLOBAL",4)~ THEN h_rich2d 0
~Baldwin, this has gone on long enough! Take hold of your senses and cease this folly at once!~
   == h_baldwd
~Hello, brother. You've come just in time to witness my ascension into godhood.~
   == h_rich2d
~The Kerykeion has driven you to madness it seems. Surrender to me and I will bring you in before the Shadowmaster. If you cooperate, your life will be spared.~
   == h_baldwd
~Do you take me a for a fool, brother? After all these years, the Kerykeion is finally within my grasp. Yet, you offer me your dungeons, while I could have the world instead!~
   =
~It was a dream we both shared at one time. Don't you remember? Or did you forget that too, along with your honor after betraying your own brother?~
   == h_rich2d
~I have not forgotten, yet I can't say the same for you. My words were of warning and caution against the Kerykeion, not desire for its ressurection!~
   =
~You were the one who betrayed us. It seems the Kerykeion has distorted your memories.~
   =
~You are lost, Baldwin, and you have been for many years.~
   == h_baldwd
~I see you are as cowardly as you were on the day of my banishment. You are still restrained by your fear and lack of ambition, and that is why you will fail.~
   =
~Did you even notice, brother? I have stalled long enough to finish my preparations. Now you will all suffer for the injustices you have wrought against me!~
   =
~AHHHHH!!!~
      DO ~
         Kill("h_baldwc")
         CreateCreature("h_snak2c",[922.1052],S)
         SetGlobal("h_SpawnRichard","GLOBAL",3)
         SetGlobal("h_BaldwinQuest","GLOBAL",12)
         SetGlobal("h_BetrayBaldwin","GLOBAL",5)
         PlaySound("h_figmus")~
EXIT













