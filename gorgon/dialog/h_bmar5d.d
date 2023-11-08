BEGIN h_bmar5d

IF ~True()~ THEN BEGIN 0
   SAY ~Steel and shadow, my friend. Here you'll find weapons keen enough to whisper death, and armor silent as the grave. What is it you seek to sharpen your strike or shield your sins?~
       ++ ~Reveal your hidden wares. I’m in search of a charm that whispers of power and secrets yet to be told.~ DO ~StartStore("h_bm5sto",LastTalkedToBy(Myself))~ EXIT
       ++ ~Another time, perhaps.~ EXIT
END
