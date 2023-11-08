BEGIN h_bmar4d

IF ~True()~ THEN BEGIN 0
   SAY ~Charms and enchantments, cloaked in secrecy. My trinkets hold power that cling to the edges of legend. Do you seek protection, or perhaps a subtler edge? Peruse my collection and choose your hidden advantage.~
       ++ ~Show me your finest blades and quietest mail.~ DO ~StartStore("h_bm4sto",LastTalkedToBy(Myself))~ EXIT
       ++ ~I'll pass today. My current steel has not yet sung its last song.~ EXIT
END
