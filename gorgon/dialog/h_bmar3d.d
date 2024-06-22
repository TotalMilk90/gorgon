BEGIN h_bmar3d

IF ~True()~ THEN BEGIN 0
   SAY @17000 /* Innovation is our hallmark. Behold an arsenal of traps that will leave your targets in awe, or their demise. From cunning decoys to devastating snares, we have it all. */
       ++ @17001 /* I've an eye for traps that make a statement. What have you got? */ DO ~StartStore("h_bm3sto",LastTalkedToBy(Myself))~ EXIT
       ++ @17002 /* I think I'll trust in my own craftsmanship for now. */ EXIT
END
