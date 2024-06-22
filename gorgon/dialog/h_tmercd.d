BEGIN h_tmercd

IF ~True()~ THEN BEGIN 0
   SAY @53000 /* Here, we cater to those with discerning tastes. No questions asked, just transactions made. */
       ++ @53001 /* Alright, let's see what you've got. */ GOTO STORE_1
       ++ @53002 /* I'll pass for now, thanks. */ EXIT
END

IF ~~ THEN BEGIN STORE_1
   SAY @53003 /* Step right up, my friend. */
IF ~~ THEN DO ~
   StartStore("h_tensto",LastTalkedToBy(Myself))~ EXIT
END