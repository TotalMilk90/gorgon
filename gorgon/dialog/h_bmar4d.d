BEGIN h_bmar4d

IF ~True()~ THEN BEGIN 0
   SAY @17500 /* Steel and shadow, my friend. Here you'll find weapons keen enough to whisper death, and armor silent as the grave. What is it you seek to sharpen your strike or shield your sins? */
       ++ @17501 /* Show me your finest blades and quietest mail. */ DO ~StartStore("h_bm4sto",LastTalkedToBy(Myself))~ EXIT
       ++ @17502 /* I'll pass today. My current steel has not yet sung its last song. */ EXIT
END
