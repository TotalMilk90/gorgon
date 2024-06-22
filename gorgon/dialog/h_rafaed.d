BEGIN h_rafaed

IF ~Global("h_RafaelaTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY @55000 /* Oh my, a new face! Welcome, welcome! I'm Rafaela, your guide to the sweetest pleasures in the Gorgon's Den. It's ever so delightful to meet someone new. */ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @55001 /* You see, I just adore making new friends and finding out what makes them smile. There's something so special about getting to know someone, don't you think? */ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @55002 /* Learning what brings them joy, what thrills them... it's like unwrapping a beautiful gift. And here in the Den, we have so many delightful ways to spend our time. */ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @55003 /* Whether it's a gentle conversation under the soft glow of candlelight, or perhaps something a bit more... adventurous? There's a world of experiences just waiting for us. */ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @55004 /* I can see in your eyes that you're someone with deep, intriguing desires. Maybe you're a bit shy about them? That's perfectly okay. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @55005 /* I'm here to help you explore those hidden dreams in the safest, sweetest way possible. So, what do you say? Shall we chat a little more? */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @55006 /* I'm ever so eager to learn about what excites you, what brings that sparkle to your eye. Let's talk about the possibilities, and maybe, just maybe, we can make some magic happen together. */
       ++ @55007 /* Could you elaborate further on exactly what types of services you provide? */ DO ~SetGlobal("h_RafaelaTalk","GLOBAL",1)~ GOTO 8
       ++ @55008 /* I'm interested in learning a little bit more about you, Rafaela. */ DO ~SetGlobal("h_RafaelaTalk","GLOBAL",1)~ GOTO 15
       ++ @55009 /* Your sweetness is captivating, but I'm afraid I have to be going now. */ DO ~SetGlobal("h_RafaelaTalk","GLOBAL",1)~ GOTO 23
END

IF ~Global("h_RafaelaTalk","GLOBAL",1)~ THEN BEGIN 7
   SAY @55010 /* Hey, you're back! I was hoping to see you again... I've really missed you and our little conversations. Shall we make up for lost time and dive back into our world of hidden delights? */
       ++ @55007 /* Could you elaborate further on exactly what types of services you provide? */ GOTO 8
       ++ @55008 /* I'm interested in learning a little bit more about you, Rafaela. */ GOTO 15
       ++ @55009 /* Your sweetness is captivating, but I'm afraid I have to be going now. */ GOTO 25
END

IF ~~ THEN BEGIN 8
   SAY @55011 /* In my little world within the Gorgon's Den, I offer joys as sweet and varied as the colors of a sunset. Each encounter will be like exploring a secret garden, every turn revealing a new delight. */ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @55012 /* We can share stories, dance together, and perhaps find little joys in the simple act of being close. It's about connection, understanding, a heart-to-heart that makes the soul lighter. */ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY @55013 /* Or perhaps you're yearning for something a bit more... stimulating? I'm well-versed in the art of pleasure, crafting experiences that tantalize the senses. */ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY @55014 /* Imagine a playful journey where each moment is a delicate tease, a whisper of the hidden passions that simmer just beneath my innocent appearance. */ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY @55015 /* And for those who dare to peek behind the curtain, I can lead you into a realm of wild fantasies. In this secret garden, we can explore the untamed desires that lie dormant within us all. */ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY @55016 /* But, oh dear, I do get swept away in these thoughts! If you wish to know more, or if you're ready to choose an experience, Madam Meredia is the one to arrange it. */ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY @55017 /* She'll ensure our time together is crafted just as you desire, making our moments together truly unforgettable. Whatever you choose, I'll be here with a smile and an open heart. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
   SAY @55018 /* Oh, how sweet of you to take an interest in little ol' me! Well, where do I begin? I'm just a girl who finds joy in the art of connection, in the thrill of uncovering hidden desires. */ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY @55019 /* I've always had a knack for finding the beauty in every soul I meet, for drawing out the deepest yearnings that lie dormant beneath a shy glance or a hesitant smile. */ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY @55020 /* In my company, you'll find a world where laughter blends seamlessly with longing, where every conversation can turn into a playful flirtation. */ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY @55021 /* It's a dance of discovery, and I adore every step, every turn. It's a place where your deepest fantasies can come to life, where we can explore the boundaries of pleasure and intimacy. */ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY @55022 /* But, of course, my story is more than just sweet whispers and gentle caresses. I'm a mistress of seduction, skilled in the art of fulfilling those secret desires that you've only dared to dream of. */ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY @55023 /* Beneath this innocent exterior lies a world of exquisite indulgences, of experiences so intense they'll leave you breathless. */ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY @55024 /* And if you wish to delve deeper into this world with me, to explore the heights of ecstasy and the warmth of companionship, I invite you to speak with Madam Meredia. */ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY @55025 /* She can arrange for us to spend an unforgettable evening together, where I can show you just how exhilarating my company can be. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23
   SAY @55026 /* Oh, I understand. Sometimes, the call of adventure and duty can't be ignored, can it? But remember, I will always be here, waiting to welcome you back with open arms and a warm smile. */ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY @55027 /* Be safe on your journeys, and when the winds guide you back to me, know that a little corner of sweetness awaits you here in the Gorgon's Den. Farewell for now, but not forever! */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
   SAY @55028 /* It's always a little sad to see you go, but I understand. The pull of the world outside calls to you. */ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY @55029 /* Do remember, a sweet farewell now only adds to the joy of our next meeting. Whenever you return, I'll be here, waiting to pick up right where we left off. */
IF ~~ THEN EXIT
END
