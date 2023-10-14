BEGIN h_eudikd

IF ~True()~ THEN BEGIN 0
   SAY ~This estate is simply magnificent, isn't it? The Silvershields have impeccable taste.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Trademeet has its own charm, but I must admit, the opulence of Baldur's Gate is truly unparalleled.~
       ++ ~Excuse my curiosity, but I don't believe we've been properly introduced. Could you tell me a bit about yourself?~ GOTO 2
       ++ ~Trademeet? Are you originally from there? It's always fascinating to meet someone with ties to such a unique and vibrant city.~ GOTO 4
       ++ ~That necklace you're wearing, it's absolutely exquisite. May I ask where you acquired such a stunning piece?~ GOTO 6
       ++ ~It was a pleasure meeting you. If you'll excuse me, I must be on my way.~ GOTO 9
END

IF ~~ THEN BEGIN 2
   SAY ~Ah, you're quite the inquisitive one, aren't you? Very well, I don't mind sharing a little about myself. I've spent much of my life in Trademeet, a city known for its rich culture and vibrant markets.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I have a penchant for collecting unique artifacts and jewelry, which has led me to many interesting places. I'm currently staying with my dear friend Brilla, who has graciously invited me to her lovely estate here in Baldur's Gate.~
       ++ ~Trademeet? Are you originally from there? It's always fascinating to meet someone with ties to such a unique and vibrant city.~ GOTO 4
       ++ ~That necklace you're wearing, it's absolutely exquisite. May I ask where you acquired such a stunning piece?~ GOTO 6
       ++ ~It was a pleasure meeting you. If you'll excuse me, I must be on my way.~ GOTO 9
END

IF ~~ THEN BEGIN 4
   SAY ~Yes, I hail from Trademeet originally. It's a charming city, full of life and culture.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~I do miss it from time to time, but I must say, the change of scenery here in Baldur's Gate has been quite invigorating.~
       ++ ~Excuse my curiosity, but I don't believe we've been properly introduced. Could you tell me a bit about yourself?~ GOTO 2
       ++ ~That necklace you're wearing, it's absolutely exquisite. May I ask where you acquired such a stunning piece?~ GOTO 6
       ++ ~It was a pleasure meeting you. If you'll excuse me, I must be on my way.~ GOTO 9
END

IF ~~ THEN BEGIN 6
   SAY ~Oh, this little trinket? It's called the Moonlit Cascade, a truly exquisite piece. Only a handful were ever crafted by a skilled artisan in Trademeet.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~Each one is unique, you know. I'm fortunate to possess such a rare treasure.~
       +~CheckStatGT(Player1,18,DEX)~+ ~Pardon me, but it seems the clasp on your necklace is slightly askew. Allow me to fix it for you.~ DO ~GiveItem("h_misc24",LastTalkedToBy())~ GOTO 8
       ++ ~Excuse my curiosity, but I don't believe we've been properly introduced. Could you tell me a bit about yourself?~ GOTO 2
       ++ ~Trademeet? Are you originally from there? It's always fascinating to meet someone with ties to such a unique and vibrant city.~ GOTO 4
       ++ ~It was a pleasure meeting you. If you'll excuse me, I must be on my way.~ GOTO 9
END

IF ~~ THEN BEGIN 8
   SAY ~You certainly have a nimble touch, my dear. Thank you for your assistance.~
       ++ ~Excuse my curiosity, but I don't believe we've been properly introduced. Could you tell me a bit about yourself?~ GOTO 2
       ++ ~Trademeet? Are you originally from there? It's always fascinating to meet someone with ties to such a unique and vibrant city.~ GOTO 4
       ++ ~It was a pleasure meeting you. If you'll excuse me, I must be on my way.~ GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Very well. Safe travels to you, and may you find success in all your endeavors.~ IF ~~ THEN EXIT
END