BEGIN h_piratd

IF ~RandomNum(8,8)~ THEN BEGIN 0
   SAY ~Ah, the sea's a fickle mistress, she is. One day calm and gentle, next day wild and fierce. Keeps a sailor on their toes, it does.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,1)~ THEN BEGIN 1
   SAY ~There's a certain magic to watchin' the stars dance on the water at night. Nothin' like it, I tell ye.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,2)~ THEN BEGIN 2
   SAY ~Aye, there's a rhythm to the waves, a heartbeat of the ocean. Once it gets in yer blood, it never truly leaves.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,3)~ THEN BEGIN 3
   SAY ~I've seen storms that could swallow a ship whole, and sunsets that set the water ablaze. There's nothin' like it, mates.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,4)~ THEN BEGIN 4
   SAY ~I'd give me last piece of eight to feel the salt spray on me face again. The land just can't compare.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,5)~ THEN BEGIN 5
   SAY ~The sea's in me blood, and I'm wastin' away without it. I can't wait to set sail again, under Stardancer's flag.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,6)~ THEN BEGIN 6
   SAY ~Watch your step, landlubber. This here's Stardancer's crew, not a place for the faint-hearted.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,7)~ THEN BEGIN 7
   SAY ~Captain Stardancer's seen her share of battles. You best have the mettle to keep pace.~
IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN 6
   SAY ~Watch yer back in there, mate.~
IF ~~ THEN EXIT
END


