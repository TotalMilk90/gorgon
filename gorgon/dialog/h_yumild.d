BEGIN h_yumild

IF ~True()~ THEN BEGIN 0
   SAY ~There's a small tunnel in the trees behind Feldpost's. Sometimes my friends and I like to throw rocks down there.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~One night, we got really close and could hear strange noises coming out of it. When we went to look inside, a bunch of shadowy ghosts came flying out! Now we're too scared to go back.~
IF ~~ THEN DO ~
   AddJournalEntry(@203,USER)
   EscapeArea()~ EXIT
END
