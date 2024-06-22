BEGIN h_yumild

IF ~True()~ THEN BEGIN 0
   SAY @68500 /* Have you seen all those white trees behind Feldepost's? There's a real spooky tunnel back there that's totally haunted! */
       ++ @68501 /* What makes you think that? */ GOTO 1
       ++ @68502 /* Get lost, kid. I don't have time for this. */ EXIT
END

IF ~~ THEN BEGIN 1
   SAY @68503 /* I've seen ghosts and shadows, flickering lights at night, strange noises, all the classic signs of spirits! */ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @68504 /* One time, I saw some men back there. Bad men. They told me to scram or the ghost would get me! */
       ++ @68505 /* Heh. Thanks for the laugh, kid. Now beat it. */ GOTO 4
       ++ @68506 /* I've always been interested in the paranormal. I should go have a look for myself. */ GOTO 4
       ++ @68507 /* I'm not going anywhere near there! */ GOTO 5
       ++ @68508 /* Sounds like it could be a hideout for thieves. Does this city have a reputation for crime? */ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @68509 /* I guess so. Auntie always makes us lock the doors, even though we don't have nothin' special worth takin'. Can't cut through the back-alleys no more, neither. */
       ++ @68510 /* Your auntie sounds like a wise woman. Here's a coin for telling me straight. */ GOTO 6
       ++ @68511 /* Sounds like my kind of place. Now shove off, kid. */ GOTO 7
       ++ @68512 /* Thanks for the info, kid. I'll go have a look at this tunnel for myself. */ GOTO 7
       ++ @68507 /* I'm not going anywhere near there! */ GOTO 8
END

IF ~~ THEN BEGIN 4
   SAY @68513 /* Don't say I didn't warn ya! */
IF ~~ THEN DO ~
   AddJournalEntry(@200,USER)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
   SAY @68514 /* Aww, don't be such a scaredy-cat! */
IF ~~ THEN DO ~
   AddJournalEntry(@200,USER)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
   SAY @68515 /* Wow! Thanks! */
IF ~~ THEN DO ~
   AddJournalEntry(@201,USER)
   TakePartyGold(1)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY @68513 /* Don't say I didn't warn ya! */
IF ~~ THEN DO ~
   AddJournalEntry(@201,USER)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY @68516 /* Aww don't be such a scaredy-cat! */
IF ~~ THEN DO ~
   AddJournalEntry(@201,USER)
   EscapeArea()~ EXIT
END