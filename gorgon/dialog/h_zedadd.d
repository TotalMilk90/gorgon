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

/*   Would you like to play a little game with me to help pass the time?~
       ++ ~What's the game?~ GOTO RID_1
       ++ ~Sorry, I don't really have the time for that.~ EXIT
END

IF ~~ THEN BEGIN RID_1
   SAY ~I will put you through a series of 4 riddles. For each one that you answer wrong, you will have to give me, say... 100 gold. For each one that you guess right, however, I'll give you a random item from my Bag of Mysteries!~
       +~PartyGoldGT(399)~+ ~Bag of Mysteries? Alright, this sounds fun. Let's play.
       +~PartyGoldLT(400)~+ ~It seems I don't have enough gold to play your game.~ GOTO RID_2
       ++ ~I'm not interested.~ EXIT
END

IF ~~ THEN BEGIN RID_2
   SAY ~Are you serious? *laughing* How are you this far along without having 400 gold pieces on you?~ IF ~~ THEN EXIT
END
*/


