BEGIN h_yumild

IF ~True()~ THEN BEGIN 0
   SAY ~There's a small tunnel in the trees behind Feldpost's. Sometimes me and my friends like to throw rocks down there.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~One time we got real close at night and could hear noises coming out of it. When we looked inside a bunch of shadowy ghosts came flying out! Now we're too scared to go back.~
IF ~~ THEN DO ~
   AddJournalEntry(@203,USER)
   EscapeArea()~ EXIT
END
