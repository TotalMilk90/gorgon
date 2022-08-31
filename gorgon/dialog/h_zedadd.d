BEGIN h_zedadd

IF ~Global("h_BaldwinQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~*sniff* *sniff* Hmmm. You smell of books... and blood.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_BaldwinQuest","GLOBAL",0)~ THEN BEGIN 1
   SAY ~I grew up on the streets of Westgate and was sailing spice into Cormyr by the time I was 9. I learned a lot in those days. If you're ever in need of my skills, trust that I shall deliver.~
       ++ ~I'll keep that in mind.~ EXIT
       +~Global("h_KarpWork","GLOBAL",1)~+ ~I met a woman in Nashkel who is looking to get her and her son smuggled into Athkatla. Is that something you can help her with?~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Didn't ya hear what I said? Of course I can! As long as she has the coin that is. Send them my way and I'll set them up with a proper escort.~
IF ~~ THEN DO ~
   SetGlobal("h_KarpWork","GLOBAL",2)
   AddJournalEntry(@319,QUEST)~ EXIT
END


