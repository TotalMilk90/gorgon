BEGIN h_rich2d

IF ~Global("h_SpawnRichard","GLOBAL",3)~ THEN BEGIN 1
   SAY ~What is this abomination? The plan was a failure! Men, to arms!~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~<CHARNAME>! We must defeat Baldwin before he is allowed to escape! My rogues will assist you with the rest of the guild!~
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
   SAY ~My brother has soiled any significance it once held. I will offer it to you as a reward for your aid and to put our history behind us.~ IF ~~ THEN GOTO 7
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
~The Kerykeion has driven you to madness it seems. Surrender it to me and I will bring you in before the Shadowmaster. If you cooperate, your life shall be spared.~
   == h_baldwd
~Do you take me a for a fool, brother? After all these years, the Kerykeion is finally within my grasp. Yet, you offer me your dungeons, while I could have the world instead!~
   =
~It was a dream we both shared once, do you remember? Or did you forget that too, along with your honor, after betraying your own brother!~
   == h_rich2d
~I have not forgotten, yet I can't say the same for you. I spoke words of warning against the Kerykeion, not desire for its ressurection!~
   =
~You were the one who betrayed us. It appears your mania has distorted your memories and led you down a path of delusion.~
   =
~You are lost, Baldwin, and you have been for many years.~
   == h_baldwd
~I see you are as cowardly as you were on the day of my banishment. You are still restrained by your fear and lack of ambition, and that is why you will fail.~
   =
~Everyone, prepare yourselves for battle! <CHARNAME>, protect me while I finish making the final adjustments to the Kerykeion!~
   =
~...~
   =
~<CHARNAME>?~
   == h_rich2d
~Baldwin, your guild betrays you. <CHARNAME>, Rhade, they have seen through your delusions and now fight alongside us.~
   =
~As for the others, I give you this chance to join with me and strike down your master! Can't you see is only using you for his own agenda!~
   == h_zedadd
~<CHARNAME>, it's not true is it? How could you do this your own guild!~
   =
~I knew I smelled somethin' funny on you when you first walked in here!~
   == h_ariosd
~If it weren't for Baldwin, I'd still be out on the streets. I'll die before I let this guild fall into the hands of you lot!~
   == h_rigald
~What have you done, you traitorous bastards! Are you truly fool enough to bring the Shadow Thieves into our own den!~
   =
~No matter, *unsheathes blade* even alone I could slice through the lot of you like butter!~
   == h_lieded
~*laughing* Finally, some action around here! Sorry, Baldwin, but I think it's time for me to switch things up a bit.~
   =
~Consider this my official resignation from the Gorgon's Eye.~
   =
~I knew you were hiding something from us, <CHARNAME>, but, Eury, I never saw that coming.~
   == h_eurynd
~Heh. I'll take that as a compliment.~
   = 
~Shall we get to it then?~
   == h_baldwd
~It matters not how many of you turn coat against me. Your fruitless exchange has allowed me enough time to complete my preparations! Now, you will all suffer for the injustices you have wrought against me!~
   =
~AHHHHH!!!~
      DO ~
         Kill("h_baldwc")
         CreateCreature("h_snak2c",[919.1086],S)
         SetGlobal("h_SpawnRichard","GLOBAL",3)
         SetGlobal("h_BaldwinQuest","GLOBAL",12)
         SetGlobal("h_BetrayBaldwin","GLOBAL",5)
         PlaySound("h_figmus")~
EXIT













