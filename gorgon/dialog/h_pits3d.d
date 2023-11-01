BEGIN h_pits3d

IF ~Global("h_FightersTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY ~You're not the first to seek the secrets of the pits, nor will you be the last. But remember, in these shadows, not everything is as it seems.~ IF ~~ THEN EXIT
END

IF ~Global("h_FightersTalk","GLOBAL",1)~ THEN BEGIN 0.5
   SAY ~Curiosity often leads us to unexpected places, doesn't it? It takes more than strength to prevail, young shadow. The path to victory is rarely a straight one.~
       ++ ~Lyria, what's your story? I'd like to learn more about you.~ GOTO 1
       ++ ~Any tips for a newcomer trying to make a mark in the pits?~ GOTO 8
       ++ ~Have you faced any memorable opponents in the arena?~ GOTO 12
       ++ ~I'll be going now.~ GOTO 19
END

IF ~~ THEN BEGIN 1
   SAY ~Ah, you're looking to learn a bit about me, aren't you? Well, I suppose there's no harm in a tale or two.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~I hail from Ravens Bluff, a city of shadows and secrets. Back in those days, I led a merry band of thieves, and we were quite the notorious lot.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~But, as it often goes, things change. One day, I found myself in the midst of a colossal fighting tournament.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Imagine it, the clash of steel, the roar of the crowd, it was intoxicating. I fought my heart out, and though I didn't take the top spot, I secured a proud second place.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~From that moment on, I knew my path was forever altered. The arena, the thrill of combat, it called to me like nothing ever had.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Now, I find myself here, in these pits, honing my skills and seeking to uncover every secret they hold.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~So, my friend, that's a piece of Lyria Winterheart's tale. Care to share one of yours?~
       ++ ~Any tips for a newcomer trying to make a mark in the pits?~ GOTO 8
       ++ ~Have you faced any memorable opponents in the arena?~ GOTO 12
       ++ ~I'll be going now.~ GOTO 19
END

IF ~~ THEN BEGIN 8
   SAY ~First and foremost, agility and quick thinking are your greatest allies. Don't rely solely on brute strength. A well-timed dodge or a swift strike can turn the tide in your favor.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9          
   SAY ~Next, observe your opponents closely. Everyone's got a tell, a moment of vulnerability. It's your job to find it and exploit it.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~And of course, never underestimate the power of surprise. Keep a trick or two up your sleeve. It's not about fighting fair, it's about surviving and thriving in the chaos of the arena.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~Remember, every fighter has their own style. Adapt, learn, and never stop striving for improvement. That's the key to making a mark in these pits.~
       ++ ~Lyria, what's your story? I'd like to learn more about you.~ GOTO 1
       ++ ~Have you faced any memorable opponents in the arena?~ GOTO 12
       ++ ~I'll be going now.~ GOTO 19
END

IF ~~ THEN BEGIN 12
   SAY ~Aye, I've faced a few that left their mark. But the one I'll never forget was the previous reigning champion.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~They called her 'Ironclad' Isla, and let me tell you, she was a force of nature, a living legend in these pits.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~She fought with a strength and skill that was unmatched. It was a dance of death, watching her move. You could see the years of experience in every strike, every parry.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~It was an honor crossing blades with her. She anticipated every move, every feint. It was like trying to catch smoke in your hands.~ IF ~~ THEN GOTO 15.5
END

IF ~~ THEN BEGIN 15.5
   SAY ~I'd learn more in one fight than I would have in a year of training.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~When Isla retired, the pits lost a true icon. But she didn't fade into obscurity. Instead, she became one of the most sought-after mercenaries in the Sword Coast.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~You'd be hard-pressed to find a noble who hasn't had dealings with her, whether they admit it or not.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~If you ever cross paths with 'Ironclad' Isla, consider yourself warned. She's a force to be reckoned with, and there's no shame in walking away if you value your life.~
       ++ ~Lyria, what's your story? I'd like to learn more about you.~ GOTO 1
       ++ ~Any tips for a newcomer trying to make a mark in the pits?~ GOTO 8
       ++ ~I'll be going now.~ GOTO 19
END

IF ~~ THEN BEGIN 19     
   SAY ~Until next time, young shadow.~ IF ~~ THEN EXIT
END

IF ~Global("h_BeatKhalid","GLOBAL",2)~ THEN BEGIN 20
   SAY ~Sharp moves, and you kept your cool. Not bad at all. But remember, every victory comes with a lesson.~
       ++ ~Lyria, what's your story? I'd like to learn more about you.~ GOTO 1
       ++ ~Any tips for a newcomer trying to make a mark in the pits?~ GOTO 8
       ++ ~Have you faced any memorable opponents in the arena?~ GOTO 12
       ++ ~I'll be going now.~ GOTO 19
END

IF ~Global("h_BeatGrom","GLOBAL",2)~ THEN BEGIN 21
   SAY ~Quick on your feet, aren't you? Grom doesn't go down easily. Keep that agility up, and you might just go far in these pits.~
       ++ ~Lyria, what's your story? I'd like to learn more about you.~ GOTO 1
       ++ ~Any tips for a newcomer trying to make a mark in the pits?~ GOTO 8
       ++ ~Have you faced any memorable opponents in the arena?~ GOTO 12
       ++ ~I'll be going now.~ GOTO 19
END

IF ~Global("h_BeatLyria","GLOBAL",2)~ THEN BEGIN 22
   SAY ~That was a good fight, wasn't it? You've got potential. I could see you thinking on your feet. Keep learning, keep improving, and maybe one day you can become champion.~
       ++ ~Your agility and speed definitely kept me on my toes. We'll fought, Lyria~ GOTO 23
       ++ ~Lyria, what's your story? I'd like to learn more about you.~ GOTO 1
       ++ ~Any tips for a newcomer trying to make a mark in the pits?~ GOTO 8
       ++ ~Have you faced any memorable opponents in the arena?~ GOTO 12
       ++ ~I'll be going now.~ GOTO 19
END

IF ~~ THEN BEGIN 23
   SAY ~I look forward to facing you again in the arena.~ IF ~~ THEN EXIT
END

IF ~Global("h_BeatSerra","GLOBAL",2)~ THEN BEGIN 24
   SAY ~Well done! Serra is a tough nut to crack. You've proven yourself more than capable.~
       ++ ~Lyria, what's your story? I'd like to learn more about you.~ GOTO 1
       ++ ~Any tips for a newcomer trying to make a mark in the pits?~ GOTO 8
       ++ ~Have you faced any memorable opponents in the arena?~ GOTO 12
       ++ ~I'll be going now.~ GOTO 19
END

IF ~Global("h_BeatRoran","GLOBAL",2)~ THEN BEGIN 25
   SAY ~You did it! You took down Roran! That's no small feat, let me tell you. You're amazing! Keep honing those skills, and who knows what you might achieve.~ IF ~~ THEN EXIT
END

IF ~Global("h_FightingPits","GLOBAL",4)~ THEN BEGIN 26
   SAY ~I can't believe Isla's back in the pits, and for a deathmatch no less. She's a legend, you know? I've looked up to her for as long as I can remember. It's an honor to even share the arena with her.~ IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY ~As for you, well, you've certainly proven yourself, but facing Isla... That's a whole different league. Just be cautious and fight smart. She's got tricks up her sleeve that you've never seen before.~ IF ~~ THEN EXIT
END

IF ~Global("h_FightingPits","GLOBAL",5)~ THEN BEGIN 28
   SAY ~Death in the pits is a harsh reality, and you faced it head-on. Isla chose this path, as do we all when we step into this arena.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~It's a testament to your strength, whether it sits heavy on your conscience or not.~ IF ~~ THEN EXIT
END