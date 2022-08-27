BEGIN h_vapuld

IF ~GlobalLT("h_LiedelQuest","GLOBAL",2)~ THEN BEGIN 0
   SAY ~Sorry friends, but I can't offer any services as of yet. I am still in training while completing my penance.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_LiedelQuest","GLOBAL",1)~ THEN BEGIN 1
   SAY ~Sorry friends, but I can't offer any services as of yet. I am still in training while completing my penance.~
       ++ ~That is quite alright, Vapula. Tell me, what is it you are repenting for?~ GOTO 2
       ++ ~I don't think your're going to finish your training, Vapula. I've come to collect your bounty.~ GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY ~If you know my name then you know my crimes.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I knew this day would come sooner or later. I am not afraid. If death is my final atonement then I will gladly give my life.~
       ++ ~So be it. Prepare yourself then, and I will send you to your god presently.~ GOTO 7
       ++ ~Hold on now. What made you betray your guild in the first place?~ GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Someone had to stand up to the evil we were committing. I could not allow another innocent person to be killed or mugged over nothing but measly coin!~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~I decided to turn on my guild, and was reborn under the light of Lathander.~
       ++ ~If I was able to find you, there will surely be more. They will not stop until you are dead. Even amongst clerics and monks you will never be safe.~ GOTO 6
       ++ ~No more words, Vapula. Let us end this.~ GOTO 7
END

IF ~~ THEN BEGIN 6
   SAY ~Allow me to flee then! I will travel the southern roads and aid those in need. If you bring back my pendant they will surely believe me dead.~
       ++ ~Alright, I will do as you ask. Good luck to you Vapula, and safe travels.~ GOTO 8
       ++ ~Sorry Vapula, but it's too risky to let you live.~ GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~A trial by combat then, under the watchful eyes of the gods! Let them judge whose cause is more righteous!~
IF ~~ THEN DO ~
   AddJournalEntry(@416,QUEST)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY ~Thank you, friend. I will never forgive myself for my past sins, but at least I can dedicate my future to making ammends.~
IF ~~ THEN DO ~
   AddJournalEntry(@417,QUEST)
   GiveItem("h_misc09",LastTalkedToBy)
   ReputationInc(1)
   EscapeArea()~ EXIT
END
