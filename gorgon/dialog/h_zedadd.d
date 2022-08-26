BEGIN h_zedadd

IF ~Global("h_BaldwinQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~*sniff* *sniff* Hmmm. You smell of books... and blood. Name's Zeda by the way, and behind me is the finest smugglin' crew to be found.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_BaldwinQuest","GLOBAL",0)~ THEN BEGIN 1
   SAY ~If you need somethin' smuggled, I'm your girl.~
       ++ ~I'll keep that in mind~ EXIT
       +~Global("h_KarpWork","GLOBAL",1)~+ ~I met a woman in Nashkel who is looking to get her and her son smuggled into Athkatla. Is that something you can help her with?~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Didn't ya hear what I said? Of course I can! As long as she has the coin that is. Send them my way and I'll set them up with a proper escort.~
IF ~~ THEN DO ~
   SetGlobal("h_KarpWork","GLOBAL",2)
   AddJournalEntry(@319,QUEST)~ EXIT
END


