BEGIN h_richad

IF ~Global("h_SpawnRichard","GLOBAL",3)~ THEN BEGIN 1
   SAY ~<CHARNAME>! Set aside your quarrel with us. We must kill this abomination before it is too late!~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Come on you men! Attack!~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnRichard","GLOBAL",4)
   SetGlobal("h_ShadowWar","GLOBAL",9)
   EquipRanged()
   Attack("h_snak2c") ~ EXIT
END


IF ~Global("h_SpawnRichard","GLOBAL",4)~ THEN BEGIN 3
   SAY ~Our objectives are complete and we have no further dispute among us. The piece Gerard held was a fake, with the purpose of tricking Baldwin.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Using it in conjuction with a real piece should have killed him instantly. He took the bait but experienced a different reaction than we had planned.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~Regardless, Baldwin now lays dead and the Kerykeion has disintegrated beyond repair.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~The real piece, however, has been secretly held in my possession for many years.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~My brother has soiled any significance it once held. I will offer it to you as a reward for your aid and as a gesture to put our history behind us.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~<CHARNAME>, your abilities have not gone unnoticed to our organization. Perhaps it would be beneficial for us to continue collaborating in some fashion. Expect an envoy in the near future to discuss terms.~
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
~Hello, brother. Come to see my ascension into godhood, have you? How very gracious of you.~
   == h_richad
~The Kerykeion has driven you to madness it seems. Surrender it to me and I will bring you in before the Shadowmaster. If you cooperate, your life shall be spared.~
   == h_bald2d
~Do you take me a for a fool, brother? After all these years, the Kerykeion is finally within my grasp. Yet, you offer me your dungeons, while I could have the world instead!~
   =
~It was a dream we both shared once, do you remember? Or did you forget that too, along with your honor, after betraying your own brother!~
   == h_richad
~I have not forgotten, yet I can't say the same for you. I spoke words of warning against the Kerykeion, not desire for its ressurection!~
   =
~You were the one who betrayed us. It appears your mania has distorted your memories and led you down a path of delusion.~
   =
~You are lost, Baldwin, and you have been for many years.~
   == h_bald2d
~I see you are as cowardly as you were on the day of my banishment. You are still restrained by your fear and lack of ambition. That is why you will fail.~
   =
~Did you even notice, brother? I have stalled you long enough to complete my preparations. Now, you will all suffer for the injustices you have wrought against me!~
   =
~AHHHHH!!!~
      DO ~
         Kill("h_bald2c")
         CreateCreature("h_snak2c",[655.322],S)
         SetGlobal("h_SpawnRichard","GLOBAL",3)
         SetGlobal("h_BaldwinQuest","GLOBAL",12)~
EXIT













