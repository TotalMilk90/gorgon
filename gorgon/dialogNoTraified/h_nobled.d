APPEND NOBW2

IF ~~ THEN BEGIN h_1
   SAY ~Ah, Samantha, as she fancies herself these days.~ IF ~~ THEN GOTO h_2
END

IF ~~ THEN BEGIN h_2
   SAY ~Your concern, however, is rather disconcerting. I might find it prudent to involve the authorities.~
       ++ ~I fear your daughter may be in peril. It seems there are those who seek to do her harm.~ GOTO h_3
       ++ ~Alright, enough with the pleasantries. Word is, there's a mark on your girl. Spill the details, and make it quick.~ GOTO h_3
       ++ ~You know if she's ruffled any feathers? Stepped on the wrong toes, maybe?~ GOTO h_3
END

IF ~~ THEN BEGIN h_3
   SAY ~Samantha is a well-behaved young lady, and these claims seem preposterous at best.~
       ++ ~You sure about that? I had a chat with the maid, and it's clear they don't see eye to eye.~ GOTO h_4
END

IF ~~ THEN BEGIN h_4
   SAY ~Such revelations do not astonish me. Samantha and I share a mutual disdain for the wretched girl. Just a week ago, she was apprehended with Samantha's missing necklace secreted about her person.~ IF ~~ THEN GOTO h_5
END

IF ~~ THEN BEGIN h_5
   SAY ~I would not hesitate to have her confined to the dungeons, but she is regrettably kin to my husband, who remains obstinate on this matter.~ IF ~~ THEN GOTO h_6
END

IF ~~ THEN BEGIN h_6
   SAY ~One can only wonder what other valuables she may have discreetly absconded with from my residence.~
       +~PartyHasItem("h_misc15")~+ ~Does this coin look familiar to you?~ GOTO h_7
END

IF ~~ THEN BEGIN h_7
   SAY ~Quite the contrary. In fact, its grotesque forgery makes me feel unwell. Kindly remove it from my presence at once.~
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToMaid","GLOBAL",2)
   AddJournalEntry(@620,QUEST)~ EXIT
END

END

EXTEND_TOP NOBW2 0
   +~Global("h_TalkedToMaid","GLOBAL",1)~+ ~Is your daughter's name Sam, by chance?~ GOTO h_1
   ++ ~I'll be going now.~ EXIT
END