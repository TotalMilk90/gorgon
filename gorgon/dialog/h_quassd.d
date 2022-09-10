BEGIN h_quassd

IF ~True()~ THEN BEGIN 0
   SAY ~Easy there there, <CHARNAME>. Hands at your side and refrain from any sudden movements. Refuse and your life will be forfeit.~
       ++ ~Good luck with that. Do you know how many of your kin I have killed already?~ GOTO 1
       ++ ~If you wanted us dead you would have done it already. What is it you have to say?~ GOTO 2
       ++ ~That won't be happening. Draw steel you cowards!~ GOTO 10
END

IF ~~ THEN BEGIN 1
   SAY ~If we brought the full might of the Shadow Thieves down upon you then your feeble guild would stand no chance against us.~ IF ~~ THEN GOTO 1.5
END

IF ~~ THEN BEGIN 1.5
   SAY ~However, I did not come here pursuing confrontation.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY ~Very perceptive, and straight to the point. I will respect that by doing the same.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I seek to parley and discuss a proposition that I believe to be mutually beneficial.~
       ++ ~Alright, I'm listening.~ GOTO 4
       ++ ~Don't waste your breath. I wouldn't trust anything you had to say.~ GOTO 10
END

IF ~~ THEN BEGIN 4
   SAY ~The threat your guildmaster wishes to bring into this world must be extinguished at all costs.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~He cannot be allowed to collect the final piece of the Kerykeion and I would have you ensure us of that.~
       ++ ~What's in it for me?~ GOTO 6
       ++ ~Not a chance. I'm not going to betray my guildmaster.~ GOTO 10
END

IF ~~ THEN BEGIN 6
   SAY ~Aside from preventing a catastrophic amount of destruction, you mean? Bah! Alongside sparing your life, if you cooperate with us then you will recieve quite a substantial reward.~
       ++ ~Sorry, but that's not good enough.~ GOTO 10
       ++ ~Alright, you've got a deal. I will betray the Gorgon's Eye. What do you need me to do?~ GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~We have created a fake Kerykeion piece that you will bring back to Baldwin. If he tries to fuse it together with any real piece, then the process will fail and result in his death.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~We have a spy on the inside who will contact you when necessary. Their identity will be revealed by their use of the code word, "The shortbow of the Shaar.".~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~By order of the Shadow Thieves, I officially decree you as part of our auxiliary forces. You are hereby required to carry out your duty, under penalty of death. Good day.~
IF ~~ THEN DO ~
   SetGlobal("h_BetrayBaldwin","GLOBAL",1)
   AddJournalEntry(@222,QUEST)
   GiveItemCreate("h_misc14",LastTalkedToBy,0,0,0)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY ~A pity. Then we will end this with bloodshed.~
IF ~~ THEN DO ~
   SetGlobal("h_ShadowWar","GLOBAL",7)
   Enemy()~ EXIT
END
