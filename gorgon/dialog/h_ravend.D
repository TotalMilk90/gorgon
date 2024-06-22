APPEND ~alatos~

IF WEIGHT #-1 ~!Global("NarlenMove","GLOBAL",8) Dead("Resar") Global("h_Ravenscar","GLOBAL",1) Global("h_SpawnRavenscar","GLOBAL",0)~ THEN BEGIN A0
   SAY @55500 /* So you've killed the Halruaan. Well, don't take it personally that I let him attack you; he was a powerful mage, and there was little I could do to dissuade him from killing you. Don't worry, you have full run of the guild—if you're able to kill a Halruaan mage, I'm sure there's little that my guild members can do to you. Again, accept my apologies for the entire incident. */
       ++ @55501 /* I've come on behalf of the Gorgon's Eye to inquire about a recent robbery. One involving a shipment of books bound for Candlekeep. Have you perchance heard anything about it? */ GOTO A2
END

IF WEIGHT #-1 ~Global("NarlenMove","GLOBAL",9) GlobalGT("h_Ravenscar","GLOBAL",0) Global("h_SpawnRavenscar","GLOBAL",1)~ THEN BEGIN A1
   SAY @55502 /* Seems ye made quite the impression on the guild, ye did. It would also seem that I erred aligning with Resar. Blasted politics addles the brains, and time and again I should stay out! Still, we've his coin, and the story of his demise is ours to construct. Never a total loss to be had! Ye have earned a place in the guild, a tie that never breaks. */
       +~Global("h_Ravenscar","GLOBAL",1)~+ @55501 /* I've come on behalf of the Gorgon's Eye to inquire about a recent robbery. One involving a shipment of books bound for Candlekeep. Have you perchance heard anything about it? */ GOTO A2
       ++ @55503 /* A fortunate turn of events, I'd say. I'm glad to have made an impression. */ EXIT
END

IF ~~ THEN BEGIN A2
   SAY @55504 /* A recent robbery of books, ye say? It's funny how such tales tend to find their way into my ears. I may have overheard a whisper or two about such an endeavor. */ IF ~~ THEN GOTO A3
END

IF ~~ THEN BEGIN A3
   SAY @55505 /* If you're keen on delving into the shadows, I'd suggest perusing the black markets of Baldur's Gate, where secrets are sold in the darkest corners of the city. */
IF ~~ THEN DO ~
   AddJournalEntry(@352,QUEST)
   SetGlobal("h_Ravenscar","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN B1
   SAY @55506 /* Ah, the Gorgon's Eye. A known establishment, if one frequents the south. It's a quaint sort of place, in its own rustic way. Beregost, after all, isn't exactly the bustling heart of civilization, now is it? */ IF ~~ THEN GOTO B2
END

IF ~~ THEN BEGIN B2
   SAY @55507 /* How fares Baldwin? I trust he's keeping well, given the... simplicity of life in this corner of the realm. But, let's move on to more pressing matters. */ IF ~~ THEN GOTO B3
END

IF ~~ THEN BEGIN B3
   SAY @55508 /* Given your background in the field, there is a certain task I would ask of ye. In fact, it's precisly why I've sought ye out. */ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN B4
   SAY @55504 /* A recent robbery of books, ye say? It's funny how such tales tend to find their way into my ears. I may have overheard a whisper or two about such an endeavor. */ IF ~~ THEN GOTO B5
END

IF ~~ THEN BEGIN B5
   SAY @55505 /* If you're keen on delving into the shadows, I'd suggest perusing the black markets of Baldur's Gate, where secrets are sold in the darkest corners of the city. */ IF ~~ THEN GOTO B6
END

IF ~~ THEN BEGIN B6
   SAY @55509 /* But remember, <CHARNAME>, in our line of work, there's rarely something for nothing. You've come seeking my aid, and I've been more than willing to provide it. */ IF ~~ THEN GOTO B7
END

IF ~~ THEN BEGIN B7
   SAY @55510 /* Now, I find myself in need of a certain... service, and I expect you are prepared to reciprocate, as any proper professional would. */
IF ~~ THEN DO ~
   AddJournalEntry(@352,QUEST)
   SetGlobal("h_Ravenscar","GLOBAL",2)~ GOTO 9
END

END

EXTEND_TOP ALATOS 1
   +~GlobalGT("h_RigaldoQuest","GLOBAL",0) GlobalLT("h_RigaldoQuest","GLOBAL",14)~+ @55511 /* I understand the business well enough. I'm affiliated with the Gorgon's Eye guild in Beregost. */ GOTO B1
   +~Global("h_RigaldoQuest","GLOBAL",14)~+ @55501 /* I've come on behalf of the Gorgon's Eye to inquire about a recent robbery. One involving a shipment of books bound for Candlekeep. Have you perchance heard anything about it? */ GOTO B4
END