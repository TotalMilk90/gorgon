BEGIN h_alarid

IF ~True()~ THEN BEGIN 0
   SAY @9000 /* Ah, an unexpected visitor! How intriguing! What brings you to my abode? Are you here to witness the wonders of my concoctions? Or perhaps you seek something else entirely? */ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @9001 /* The mysteries of alchemy are boundless, you know! Boundless, I tell you! So, speak up, my friend, and let us unravel the secrets that dance in the eldritch vapors! */
       ++ @9002 /* I'm here to ensure your serum reaches those in need. The suffering caused by featherlung is far too great to ignore. */ GOTO 2
       ++ @9003 /* I've come to discuss a business proposition. Your featherlung serum could fetch a handsome price in the right hands. */ GOTO 2
       ++ @9004 /* (Snap his neck.) */ DO ~Kill("h_alaric") AddJournalEntry(@448,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 2
   SAY @9005 /* Featherlung? Featherlung! Blast it all! That was never my intention! I toil day and night, seeking to perfect a potion for poultry, not play savior to a city plagued by disease! */ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @9006 /* These chickens... these cursed, chaotic creatures! They multiply, but they've become nigh uncontrollable! */ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @9007 /* And yet, here you stand, prattling on about featherlung, as if it were my life's calling! Bah! I couldn't care less about that blasted ailment! */
       ++ @9008 /* This serum could change lives, but you're letting your obsession blind you to reason! */ GOTO 7
       ++ @9009 /* Could you at least spare a small sample? The healers might be able to study it, perhaps replicate it for wider use. */ GOTO 5
       ++ @9010 /* I fear there's a bounty on your head for this serum. If you don't hand it over, I'll be forced to collect it myself. */ GOTO 7
END

IF ~~ THEN BEGIN 5
   SAY @9011 /* No! No, no, no! It's mine, you hear? My creation! The culmination of my brilliance, my toil, my genius! I won't have it dissected and duplicated like some common formula! */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @9012 /* It's mine to control, mine to decide its fate! I won't let them take it from me, not now, not ever! */
       ++ @9013 /* I've tried to be patient, but lives are at stake. Give me a sample, or I'll take it myself! */ GOTO 7
       ++ @9014 /* If the healers can study the serum, there's a greater chance someone will crack the code to your perfect chicken formula. It's a win-win. */ GOTO 7
       ++ @9015 /* I've had enough of this, Alaric. Time to make your peace. (Snap his neck.) */ DO ~Kill("h_alaric") AddJournalEntry(@448,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY @9016 /* These are inconsequential trifles compared to the brilliance that stands before you! I will not be swayed by your feeble attempts at reason. */ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8                
   SAY @9017 /* The serum is mine, and mine alone! Its destiny rests in my hands, and I will see it through, consequences be damned! */
IF ~~ THEN DO ~
   AddJournalEntry(@449,QUEST)
   Enemy()~ EXIT
END