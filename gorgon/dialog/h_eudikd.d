BEGIN h_eudikd

IF ~Global("h_EudikaTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY @31500 /* This estate is simply magnificent, isn't it? The Silvershields have impeccable taste. */ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @31501 /* Trademeet has its own charm, but I must admit, the opulence of Baldur's Gate is truly unparalleled. */
       ++ @31502 /* Excuse my curiosity, but I don't believe we've been properly introduced. Could you tell me a bit about yourself? */ GOTO 2
       ++ @31503 /* Trademeet? Are you originally from there? It's always fascinating to meet someone with ties to such a unique and vibrant city. */ GOTO 4
       ++ @31504 /* That necklace you're wearing, it's absolutely exquisite. May I ask where you acquired such a stunning piece? */ GOTO 6
       ++ @31505 /* It was a pleasure meeting you. If you'll excuse me, I must be on my way. */ GOTO 9
END

IF ~~ THEN BEGIN 2
   SAY @31506 /* Ah, you're quite the inquisitive one, aren't you? Very well, I don't mind sharing a little about myself. I've spent much of my life in Trademeet, a city known for its rich culture and vibrant markets. */ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @31507 /* I have a penchant for collecting unique artifacts and jewelry, which has led me to many interesting places. I'm currently staying with my dear friend Brilla, who has graciously invited me to her lovely estate here in Baldur's Gate. */
       ++ @31503 /* Trademeet? Are you originally from there? It's always fascinating to meet someone with ties to such a unique and vibrant city. */ GOTO 4
       ++ @31504 /* That necklace you're wearing, it's absolutely exquisite. May I ask where you acquired such a stunning piece? */ GOTO 6
       ++ @31505 /* It was a pleasure meeting you. If you'll excuse me, I must be on my way. */ GOTO 9
END

IF ~~ THEN BEGIN 4
   SAY @31508 /* Yes, I hail from Trademeet originally. It's a charming city, full of life and culture. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @31509 /* I do miss it from time to time, but I must say, the change of scenery here in Baldur's Gate has been quite invigorating. */
       ++ @31502 /* Excuse my curiosity, but I don't believe we've been properly introduced. Could you tell me a bit about yourself? */ GOTO 2
       ++ @31504 /* That necklace you're wearing, it's absolutely exquisite. May I ask where you acquired such a stunning piece? */ GOTO 6
       ++ @31505 /* It was a pleasure meeting you. If you'll excuse me, I must be on my way. */ GOTO 9
END

IF ~~ THEN BEGIN 6
   SAY @31510 /* Oh, this little trinket? It's called the Moonlit Cascade, a truly exquisite piece. Only a handful were ever crafted by a skilled artisan in Trademeet. */ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @31511 /* Each one is unique, you know. I'm fortunate to possess such a rare treasure. */
       +~CheckStatGT(Player1,18,DEX)~+ @31512 /* Pardon me, but it seems the clasp on your necklace is slightly askew. Allow me to fix it for you. */ DO ~GiveItem("h_misc24",LastTalkedToBy())~ GOTO 8
       ++ @31502 /* Excuse my curiosity, but I don't believe we've been properly introduced. Could you tell me a bit about yourself? */ GOTO 2
       ++ @31503 /* Trademeet? Are you originally from there? It's always fascinating to meet someone with ties to such a unique and vibrant city. */ GOTO 4
       ++ @31505 /* It was a pleasure meeting you. If you'll excuse me, I must be on my way. */ GOTO 9
END

IF ~~ THEN BEGIN 8
   SAY @31513 /* You certainly have a nimble touch, my dear. Thank you for your assistance. */
       ++ @31502 /* Excuse my curiosity, but I don't believe we've been properly introduced. Could you tell me a bit about yourself? */ GOTO 2
       ++ @31503 /* Trademeet? Are you originally from there? It's always fascinating to meet someone with ties to such a unique and vibrant city. */ GOTO 4
       ++ @31505 /* It was a pleasure meeting you. If you'll excuse me, I must be on my way. */ GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @31514 /* Very well. Safe travels to you, and may you find success in all your endeavors. */
IF ~~ THEN DO ~ 
   SetGlobal("h_EudikaTalk","GLOBAL",1)~ EXIT
END

IF ~Global("h_EudikaTalk","GLOBAL",1)~ THEN BEGIN 10
   SAY @31515 /* Oh, welcome back. I trust your ventures in the city have been fruitful? */ IF ~~ THEN EXIT
END