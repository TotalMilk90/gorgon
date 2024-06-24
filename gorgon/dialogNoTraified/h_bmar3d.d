BEGIN h_bmar3d

IF ~True()~ THEN BEGIN 0
   SAY ~Innovation is our hallmark. Behold an arsenal of traps that will leave your targets in awe, or their demise. From cunning decoys to devastating snares, we have it all.~
       ++ ~I've an eye for traps that make a statement. What have you got?~ DO ~StartStore("h_bm3sto",LastTalkedToBy(Myself))~ EXIT
       ++ ~I think I'll trust in my own craftsmanship for now.~ EXIT
END
