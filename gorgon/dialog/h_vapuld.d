BEGIN h_vapuld

IF ~GlobalLT("h_LiedelQuest","GLOBAL",2)~ THEN BEGIN 0
   SAY @64500 /* I'm sorry, friend, but I can't offer any services just yet. I'm still in training, seeking to complete my penance. */ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_LiedelQuest","GLOBAL",1)~ THEN BEGIN 1
   SAY @64500 /* I'm sorry, friend, but I can't offer any services just yet. I'm still in training, seeking to complete my penance. */
       ++ @64501 /* Tell me, Vapula, exactly what is it you are repenting for? */ GOTO 2
       ++ @64502 /* I don't think your're going to finish your training, Vapula. I've come to collect your bounty. */ GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY @64503 /* If you know my name then you know my crimes. */ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @64504 /* I've long anticipated this day. I am not afraid. If death is the cost of my atonement, then I will gladly pay this price. */
       ++ @64505 /* So be it. Prepare yourself then, and I will send you to your god, presently. */ GOTO 7
       ++ @64506 /* What drove you to betray your guild in the first place? */ GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @64507 /* Someone had to stand up to the evil we were committing. I couldn't abide another innocent life taken or robbed for mere coin! */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @64508 /* I chose to turn against my guild, and was reborn under the light of Lathander. */
       ++ @64509 /* If I managed to track you down, others will surely follow. They will not stop until they believe you dead. */ GOTO 6
       ++ @64510 /* No more words, Vapula. Let us end this. */ GOTO 7
END

IF ~~ THEN BEGIN 6
   SAY @64511 /* Permit me to flee. I'll journey the southern roads, aiding those in need. If you return my pendant, they'll assume I've met my end. */
       ++ @64512 /* Very well, I'll do it. Good luck to you, Vapula. */ GOTO 8
       ++ @64513 /* Sorry, Vapula, but it's too risky to let you live. */ GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @64514 /* A trial by combat then, under the watchful eyes of the gods. Let them judge whose cause is more righteous! */
IF ~~ THEN DO ~
   AddJournalEntry(@416,QUEST)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY @64515 /* Thank you, my friend. I'll never forgive myself for my past transgressions, but at least I can devote my future to making amends. */
IF ~~ THEN DO ~
   SetGlobal("h_VapulaBounty","GLOBAL",1)
   AddJournalEntry(@417,QUEST)
   GiveItem("h_misc09",LastTalkedToBy)
   EscapeArea()~ EXIT
END
