BEGIN h_richad

IF ~Global("h_SpawnRichard","GLOBAL",3)~ THEN BEGIN 1
   SAY ~<CHARNAME>! Set aside your quarrel with us. We must eliminate this abomination before it's too late!~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~If this creature should manage to escape, Faerun's fate will be sealed.~ IF ~~ THEN GOTO 2.5
END

IF ~~ THEN BEGIN 2.5
   SAY ~Come on, you men! Slay this atrocity before it consumes us all!~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnRichard","GLOBAL",4)
   SetGlobal("h_ShadowWar","GLOBAL",9)
   EquipRanged()
   Attack("h_snak2c") ~ EXIT
END


IF ~Global("h_SpawnRichard","GLOBAL",4)~ THEN BEGIN 3
   SAY ~Our objectives are complete and there is no further dispute among us.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~The piece Gerard held was a fake, a ruse, designed to deceive Baldwin.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~The intention was for it to react fatally when combined with a genuine fragment. This... transformation, however, was unforeseen.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Nevertheless, Baldwin now lies defeated, and the Kerykeion has disintegrated beyond repair.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~The final authentic fragment, however, has been kept in my possession, hidden for years.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~My brother has soiled any significance it once held. I will offer it to you as a token of gratitude for your assistance, and as an effort to move past our shared history.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~<CHARNAME>, your abilities have not gone unnoticed to those in our organization. Perhaps it would be beneficial for us to continue collaborating in some fashion.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Expect an envoy in the near future to discuss terms.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~Good day.~
IF ~~ THEN DO ~
   SetGlobal("h_Saradin","GLOBAL",3)
   SetGlobal("h_ShadowWar","GLOBAL",10)
   GiveItemCreate("h_misc03",LastTalkedToBy,0,0,0)
   CreateCreature("h_saradc",[355.499],10)
   EscapeArea()~ EXIT
END


CHAIN
     IF ~Global("h_BaldwinQuest","GLOBAL",11)~ THEN h_richad 0
~Baldwin, enough! Take hold of your senses and cease this folly at once!~
   == h_bald2d
~Ah, my dear brother, here to witness my ascent into godhood, are you? How considerate.~
   == h_richad
~Godhood? Are you mad! I've come to stop you, and take ownership of the Kerykeion.~
   =
~Surrender it, and I will bring you in before the Shadowmaster. There may still be mercy.~
   == h_bald2d
~Do you take me a for a fool, brother? After all these years, the Kerykeion is finally within my grasp.~
   =
~And here you stand, offering me your dungeons... when I could have the world, instead!~
   == h_richad
~Do not let the pull of the Kerykeion consume you! Relieve yourself of its grasp, and we will somehow find a path back from this madness.~
   == h_bald2d
~Ah, the voice of reason speaks! But it's far too late for that, the power is mine now, and with it, I shall have my retribution.~
   =
~It was a dream we both shared once, do you remember? Or is even that lost to you now, along with your honor, after betraying your own brother!~
   == h_richad
~I have not forgotten, yet, I cannot say the same for you.~
   =
~It is you who are lost, brother. Ensnared in the malevolent embrace of the Kerykeion, and from it, you've emerged a dark taint of delusion.~
   =
~You butcherd your kin. Cut them down like helpless dogs. There is no desire for retribution in your eyes, only malice.~
   == h_bald2d
~You remain restrained by fear, lacking ambition, and that is why you will fail. You are still the same coward as you were on the day of my banishment.~
   =
~Enough words, you utter and profound fool. I have stalled you long enough to complete my preperations for the fusion.~
   =
~Now, watch, brother... as I become a god!~
   =
~Dark sisters, I free you from your bonds! Grant me your eternal power!~
   =
~AaaAAHHHH!!!~
      DO ~
         Kill("h_bald2c")
         CreateCreature("h_snak2c",[655.322],S)
         SetGlobal("h_SpawnRichard","GLOBAL",3)
         SetGlobal("h_BaldwinQuest","GLOBAL",12)~
EXIT
