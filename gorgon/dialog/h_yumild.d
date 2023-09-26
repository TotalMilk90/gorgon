BEGIN h_yumild

IF ~True()~ THEN BEGIN 0
   SAY ~Have you seen all those white trees behind Feldepost's? There's a real spooky tunnel back there that's totally haunted!~
       ++ ~What makes you think that?~ GOTO 1
       ++ ~Get lost, kid. I don't have time for this.~ GOTO 4
END

IF ~~ THEN BEGIN 1
   SAY ~I've seen ghosts and shadows, flickering lights at night, strange noises, all the classic signs of spirits!~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Once I saw some men back there. Bad men. They told me to get lost or the ghost'll get me!~
       ++ ~Heh. Thanks for the laugh, kid. Now beat it.~ GOTO 4
       ++ ~I've always been interested in the paranormal. I must go have a look for myself.~ GOTO 4
       ++ ~I'm afraid of ghosts! I'm not going anywhere near there!~ GOTO 5
       ++ ~Sounds like it could be a hideout for thieves. Does this city have a reputation for crime?~ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I guess so. Auntie always makes us lock the doors, even though we don't have nothin' special to take. Can't cut through the back-alleys no more, neither.~
       ++ ~Your auntie sounds like a wise woman. Here's a coin for telling me straight.~ GOTO 6
       ++ ~Sounds like my kind of place. Now shove off, kid.~ GOTO 7
       ++ ~Thanks for the info, kid. I'll go have a look at this tunnel for myself.~ GOTO 7
       ++ ~I'm not going anywhere near there!~ GOTO 8
END

IF ~~ THEN BEGIN 4
   SAY ~Don't say I didn't warn ya!~
IF ~~ THEN DO ~
   AddJournalEntry(@200,USER)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
   SAY ~Aww don't be such a scaredy-cat!~
IF ~~ THEN DO ~
   AddJournalEntry(@200,USER)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
   SAY ~Wow! Thanks!~
IF ~~ THEN DO ~
   AddJournalEntry(@201,USER)
   TakePartyGold(1)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY ~Don't say I didn't warn ya!~
IF ~~ THEN DO ~
   AddJournalEntry(@201,USER)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY ~Aww don't be such a scaredy-cat!~
IF ~~ THEN DO ~
   AddJournalEntry(@201,USER)
   EscapeArea()~ EXIT
END