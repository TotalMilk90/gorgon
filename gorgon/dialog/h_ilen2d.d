BEGIN h_ilen2d

IF ~Global("h_TravelToDen","GLOBAL",1)~ THEN BEGIN 0
   SAY ~So, we're finally alone. I've been looking forward to this. My chambers are a place where we can forget the world outside and focus on what makes us feel good.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~I'm here to ensure that our time together is both pleasant and unforgettable. Please, feel free to relax and be at ease.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Tell me, what's on your mind? We could get lost in conversation, unraveling each other's thoughts and stories.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Or, if you're feeling tense, you could allow my hands to work their magic with a relaxing massage.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~There's also the option of a tranquil and soothing bath. Maybe that is more your style?~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~And, of course, if you desire a more intimate connection, we can explore the option to get a little... closer to eachother.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~So, my darling, what's calling out to you right now?~
       // ++ ~Conversation sounds great. I'm curious to hear more about you, and I've got a few stories of my own to share.~
       ++ ~A massage sounds perfect. It would be great to unwind and relax under your skilled hands.~ GOTO 7
       ++ ~I could use a warm soak. Let's enjoy a tranquil and soothing bath together.~ GOTO 110
       // ++ ~I was hoping to spend our time on a more... physically intimate level.~
       ++ ~You know, Ilena, on second thought, I think this might not be for me right now. I'd like to head back out.~ GOTO 321
END

IF ~~ THEN BEGIN 7
   SAY ~A massage, an excellent choice. There's something deeply sensual about a touch that eases the mind and body.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Come with me, I know just the perfect spot where relaxation takes on a new meaning. It's a cozy, intimate corner designed for comfort and pleasure.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",2)
   SetGlobal("h_IlenaMassage","GLOBAL",1)
   MoveToPoint([548.469])~ EXIT
END

IF ~Global("h_IlenaMassage","GLOBAL",1)~ THEN BEGIN 9
   SAY ~Here is our little oasis. I promise, you're in good hands with me. Let me take care of everything.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Now, before you lie down, would you like me to help you out of your clothes? It will make the massage much more effective and comfortable.~
       ++ ~How could I refuse such an enticing offer. Please, go ahead.~ GOTO 11
       ++ ~This is new to me, but I'm comfortable if you are.~ GOTO 12
       ++ ~I would prefer to do it myself, but thank you for asking.~ GOTO 13
END

IF ~~ THEN BEGIN 11
   SAY ~Flattery will get you everywhere, my love. Let's get you a little more comfortable, shall we?~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12
   SAY ~Don't worry, sweetie. I'll make sure you feel at ease every step of the way.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13
   SAY ~Of course, darling. Take all the time you need. Your comfort is important to me.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 14
   SAY ~(Ilena steps closer, pressing her body against yours, a soft and tantalizing touch that promises relaxation.)~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~Mmm, <CHARNAME>. I can feel the tension in you just waiting to be released. Here, let's see if we can ease some of that right out.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~(Ilena's fingers skillfully work their way across your armor, deftly unfastening each strap with a careful yet intimate touch.)~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~(As each piece is loosened, it slips away, gently clattering to the floor. Then, with equal finesse, she begins to unbutton and untie your clothes.)~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~(Each undoing is accompanied by a soft, inviting smile, building a sense of intimacy. Slowly, your clothing follows the path of the armor, cascading softly to the floor around you.)~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 19
   SAY ~(Ilena steps back, giving you space and privacy to disrobe.)~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~Now that you're free from these confines, you can truly relax. Why don't you lie down on the couch, and we'll delve deep into a world of pure sensation and pleasure.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~Just surrender to the experience, and I'll take care of the rest.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~(As you lie face down on the couch, Ilena delicately drapes a fine silk sheet over you, covering and settling over you like a soft caress.)~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~Now, let's melt away all of that stress. Is there any specific area you'd like me to focus on, or a particular sensation you enjoy? This time is all about your pleasure and comfort.~
       ++ ~Surprise me. I'm curious to see where you think I need the most attention.~ GOTO 24
       ++ ~I carry a lot of stress in my shoulders. It would be great if you could work on loosening them up.~ GOTO 25
       ++ ~My back is really where I need the most attention. Could you concentrate on that area?~ GOTO 26
       ++ ~My legs are feeling pretty tight, can you start there?~ GOTO 27
END

IF ~~ THEN BEGIN 24
   SAY ~Oh, darling, I love a bit of mystery. Let me explore and find those hidden tensions. You might be surprised at the spots that crave attention.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 25
   SAY ~Of course, let's focus on your shoulders.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 26
   SAY ~Certainly, your back is the canvas, and my hands will paint away all the tension.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 27
   SAY ~Absolutely, let's give your legs the attention they deserve.~ IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 28 
   SAY ~First, let's focus on your shoulders.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~They often bear so much without us realizing. I'll use my fingers to gently knead away that stress, leaving you feeling lighter and soothed.~ IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY ~Every touch will ease all those burdens you've been carrying.~ IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY ~(Her hands gently press into your shoulders, her fingers expertly finding every knot and tight spot.)~ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~(She applies a mixture of firm and soft pressure, her touch both soothing and stirring.)~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY ~Your shoulders reveal so much... a blend of strength and hidden depths. As I touch them, I feel the power beneath your skin, the quiet intensity of untold stories.~ IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
   SAY ~Every tension I ease away brings us closer to unveiling those secrets, each stroke an intimate conversation between my hands and your muscles.~ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
   SAY ~(As she works her way across your shoulders, her movements become more fluid and sensuous, occasionally allowing her fingers to graze the base of your neck in a feather-light touch.)~ IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
   SAY ~Now, let's move down to your back. It's where tension likes to hide.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
   SAY ~I'll work my way down each vertebra, easing the tightness, smoothing out the stress. You'll feel a wave of relief cascading down your spine.~ IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY ~(Her hands glide down the length of your back, the motions becoming deeper and more rhythmic.)~ IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
   SAY ~(She applies pressure along your spine, slowly working outwards, her touch both relaxing and provocative.)~ IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
   SAY ~Every muscle, every contour of your back... it responds so well to my touch.~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
   SAY ~(She leans in closer, her body lightly pressing against you as she reaches your lower back.)~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
   SAY ~(Her hands skillfully massage the area, occasionally venturing over the sides in a gentle, teasing manner.)~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
   SAY ~Your legs, let's not forget them. They carry you through your adventures.~ IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
   SAY ~From your thighs down to your calves, I'll employ a variety of strokes designed to deeply relax and refresh each area.~ IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
   SAY ~Every muscle will be tenderly cared for, releasing the tightness and awakening a sense of profound relaxation.~ IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
   SAY ~(Ilena's hands move to your thighs, massaging with a firm, yet gentle touch. She slowly moves lower, working her way towards the inside of your legs.)~ IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
   SAY ~(Each stroke is a mix of therapeutic technique and sensual caress, her touch lingering on areas that seem to elicit the most response.)~ IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
   SAY ~You're responding so beautifully. Now, let's deepen our journey. Turn over onto your back, and let's explore further, where every touch becomes more intimate, more revealing.~ IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
   SAY ~I'll ensure you're draped in a way that feels both comfortable and tantalizing. Trust in my hands to guide you to a place of profound pleasure.~ IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
   SAY ~Together, we'll build towards a crescendo of sensations, each one more exquisite than the last.~
       ++ ~That sounds perfect, Ilena. I can't wait to experience the rest.~ GOTO 51
       ++ ~I think I'm ready to end the session now. You've done an amazing job.~ GOTO 105
END

IF ~~ THEN BEGIN 51
   SAY ~I'm so glad to hear that, <CHARNAME>. The best is yet to come. Just relax and let yourself be carried away by your desires.~ IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
   SAY ~(Ilena gently begins guiding you towards the next phase of the massage. As you turn over, she adjusts the sheet, noticing your body's reaction to her touch.)~ IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
   SAY ~There we are. Now, as you lie back, feel the weight of the world lifting off your shoulders. Let every part of you surrender to the pleasure of this moment.~ IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
   SAY ~(Ilena begins her massage on the front of your shoulders, her fingers gently working their way across your collarbones.)~ IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
   SAY ~(Her hands glide down, massaging along your chest with a rhythm that is both soothing and sensuous.)~ IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
   SAY ~(The movements are slow and careful, each stroke bringing a sense of deep relaxation mixed with a subtle undercurrent of excitement.)~ IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
   SAY ~Just relax, and let my deft hands ease your stress away.~ IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
   SAY ~(As her hands inch lower, nearing your lower abdomen, Ilena's movements become more deliberate, each touch lingering just a moment longer.)~ IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
   SAY ~Shall I explore further down? Each movement can be a new wave of pleasure, guiding us to uncharted depths of sensation. ~
       ++ ~Yes, please continue. I'm enjoying every moment of this.~ GOTO 60
       ++ ~Thank you, but I'm content with stopping here. This has been great.~ GOTO 105
END

IF ~~ THEN BEGIN 60
   SAY ~I'm thrilled to hear you're enjoying this. Let's venture a bit deeper into this desire. I'll be attentive to your every response, letting your body's language guide my touch.~ IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61
   SAY ~(Gently sliding the silk sheet down to reveal your lower half, Ilena's hands begin to slowly move down with a careful, sensuous intent.)~ IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
   SAY ~(Her grasp is both gentle and firm, a dance of fingers that brings relaxation and arousal in equal measure.)~ IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
   SAY ~Feel every touch, every stroke as I ease the tension from your body. Let go and enjoy the sensations.~ IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64
   SAY ~(She expertly massages you, her movements suggestive yet professional, building a sense of pleasure and stimulation. Every motion is deliberate, designed to heighten your senses.)~ IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
   SAY ~Mmm, yes, <CHARNAME>. Your body has its own language, and I'm listening to every word it says. Just breathe and let yourself feel.~ IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
   SAY ~(Her pace begins to quicken, her breath more rapid. The massage becomes more intimate and the pressure is both invigorating and deeply sensuous.)~ IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
   SAY ~Every part of you is deserving of attention, my love. Feel the warmth of my hands as they explore and discover.~ IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
   SAY ~(The massage becomes more intense, her touch both tantalizing and soothing, focusing on areas that elicit the strongest response.)~ IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69
   SAY ~Let yourself be carried away by this wave of sensation, <CHARNAME>, I want this to feel incredible for you.~ IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
   SAY ~Now, I'd like to take this experience to a new level of pleasure, to explore using more than just my hands.~ IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71
   SAY ~Imagine the softest, most intimate touch, a kiss that speaks more than words ever could.~
       ++ ~That sounds incredible, Ilena. Please, go ahead.~ GOTO 73
       ++ ~Your hands are incredibly soothing, and I'd prefer to continue feeling them.~ GOTO 72
       ++ ~I think I've reached the perfect state of relaxation, and I'd like to end the massage here, thank you.~ GOTO 105
END

IF ~~ THEN BEGIN 72
   SAY ~Of course. Let's stick with what makes you feel best. Relax and enjoy the touch of my hands.~ IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 73
   SAY ~It's going to make this even more stimulating, I promise. Now, let's see how unforgettable we can make this experience.~ IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74
   SAY ~(Ilena begins by placing gentle kisses along your abdomen, each one deliberate and filled with intention. This sensation is different, more intimate than her previous touches.)~ IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75
   SAY ~Feel the warmth of my breath, the softness of my lips. Each kiss is a promise of a deeper stimulation, a journey into a realm of intimate discovery.~ IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76
   SAY ~(Her kisses slowly trail lower, each one sending a wave of arousal through your body. The atmosphere is charged with a mix of tension and pleasure.)~ IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77
   SAY ~Let yourself feel every moment, the rise of each sensation. Just let go, <CHARNAME>. Embrace this new exploration.~ IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78
   SAY ~(With a slow, intentional movement, she shifts, her lips parting slightly. Your body tenses as she delicately places you within the warmth and soft embrace of her mouth.)~ IF ~~ THEN GOTO 78.5
END

IF ~~ THEN BEGIN 78.5
   SAY ~(Her actions transition smoothly, introducing a gentle gliding motion that adds an intense layer to the experience.)~ IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79
   SAY ~(This subtle yet profound technique, a perfect blend of softness and tantalizing pulls, creates a deeply stimulating effect, both soothing and invigorating in its execution.)~ IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80
   SAY ~Mmm, <CHARNAME>. You taste so incredibly amazing, a flavor that's entirely you. It's intimate and real, something that speaks of connection and desire.~ IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81
   SAY ~Now, feel both my warmth and wetness, a contrast that heightens every sensation. Each kiss, each gentle touch of my mouth brings a different feeling, a new layer of depth to your experience.~ IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82
   SAY ~(As Ilena's tongue gently explores, you begin to experience a wave of new sensations.)~ IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83
   SAY ~(Her soft, agile movements bring a mix of surprise and deep pleasure, each subtle motion eliciting a response that is both intense and gratifying.)~ IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84
   SAY ~Let yourself sink into these feelings, the mix of softness and moisture. It's a dance of sensations, each one unique and memorable.~ IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85
   SAY ~(As she continues, you become acutely aware of every contact, the wetness from her mouth leaving a trail of tingling sensations in its wake.)~ IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86
   SAY ~(Each movement of her lips and tongue seems to resonate deeper, amplifying your body's response.)~ IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87
   SAY ~Mmm. Every part of you tells a story, and I'm exploring it with all my senses. Feel the gentle pressure of my lips, the subtle exploration.~ IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88
   SAY ~(Her mouth moves with a deliberate, sensuous intent, tasting and exploring.)~ IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89
   SAY ~(The sensation is intimate and profound, each movement of her lips and flicker of her tongue conveying a depth of stimulation.)~ IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90
   SAY ~Let the sensations wash over you, like waves on a shore. With each taste, each gentle exploration, we're delving deeper into a world of pure ecstasy.~ IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91
   SAY ~Feel my hands on you now, every movement tuned to your response. I want to feel every pulse, every wave of your climax through my touch.~ IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92
   SAY ~(With deliberate care, Ilena shifts her position. She places her hands back on you, her fingers poised to continue the massage.)~ IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93
   SAY ~Let's reach that peak together, with each stroke leading us closer to an exquisite release.~ IF ~~ THEN GOTO 94
END

IF ~~ THEN BEGIN 94
   SAY ~(Her hands move skillfully, each touch a blend of expertise and passion.)~ IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95
   SAY ~(The massage becomes more focused, each movement designed to amplify the sensation and guide you towards a fulfilling and memorable climax.)~ IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96
   SAY ~Yes, that's it, <CHARNAME>. Feel each wave, each pulse of pleasure. I'm ready for you.~ IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97
   SAY ~(Ilena's hands move with a skilled rhythm, each stroke and press expertly tailored to heighten the sense of relaxation and pleasure.)~ IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98
   SAY ~Oh, <CHARNAME>, just surrender to the moment. Yes, just like that. Let the warmth build, let it envelop you completely.~ IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99
   SAY ~(The rhythm of the massage intensifies subtly, Ilena's hands expertly coaxing your senses. She adjusts her pressure and technique, aligning perfectly with your body's responses.)~ IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100
   SAY ~Now, <CHARNAME>, let it happen. Yes, that's it. Ohh... Here it comes! Surrender to the sensation, let it wash over you. Embrace the ecstasy, let it flood through you!~ IF ~~ THEN GOTO 100.5
END

IF ~~ THEN BEGIN 100.5
   SAY ~(With a final, masterful movement, Ilena guides the massage to its zenith, allowing the built-up tension to dissolve in a wave of euphoric release.)~ IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 101
   SAY ~Mmm... love, you did it... You embraced the full depth of this moment with such a beautiful release. That was truly exquisite.~ IF ~~ THEN GOTO 101.5
END

IF ~~ THEN BEGIN 101.5
   SAY ~(Ilena gradually slows her movements, bringing the massage to a gentle and comforting end.)~ IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102
   SAY ~There... just relax and feel the gentle ebb of sensations. You've reached such a beautiful peak, and now it's time to just let yourself float back down.~ IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103
   SAY ~Feel the calm after the intensity, the sweet stillness that follows. Every touch now is a soft whisper, a caress to soothe and settle your senses.~ IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104
   SAY ~Breathe deeply, <CHARNAME>, and let the tranquility envelop you. You did wonderfully. Just lie here and bask in this serene moment for as long as you need.~
       ++ ~That was an amazing experience, Ilena. You really know what you're doing.~ GOTO 106
       ++ ~Wow, I feel so good right now. That was perfect, Ilena, thank you.~ GOTO 106
       ++ ~Thank you, Ilena. I appreciate the massage. I think I'm ready to get going now.~ GOTO 105
END

IF ~~ THEN BEGIN 105
   SAY ~It's been a true pleasure to share this time with you, even for a while. Every moment we spend together adds a special touch to my day.~ IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 106
   SAY ~This experience with you has been more than just a pleasure, it's been an exhilarating journey. Feeling your response to my touch, the way we connected, it was deeply satisfying for me too.~ IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107
   SAY ~There's a unique joy in not just giving pleasure, but also sharing in it. Our time together has left me in a state of delightful arousal and satisfaction.~ IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 108
   SAY ~I'm thrilled I could bring you such pleasure, and I hope the memory of this lingers with you as it will with me.~ IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109
   SAY ~I'll leave you now to gather yourself at your own pace. Take all the time you need here, and when you're ready, the world outside awaits you.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",3)
   SetGlobal("h_IlenaMassage","GLOBAL",0)
   AddExperienceParty(50)
   MoveToPoint([209.338])~ EXIT
END

IF ~~ THEN BEGIN 110
   SAY ~A bath it is then. There's something truly magical about warm water embracing us, melting away the cares of the day.~ IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111
   SAY ~It will be a pleasure to share this serene experience with you. Follow me, our bathing sanctuary awaits.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",2)
   SetGlobal("h_IlenaBath","GLOBAL",1)
   MoveToPoint([636.268])~ EXIT
END

IF ~Global("h_IlenaBath","GLOBAL",1)~ THEN BEGIN 112
   SAY ~(Ilena begins drawing the bath, adjusting the temperature to ensure it's perfectly warm and inviting. The sound of water filling the tub adding to the calming atmosphere.)~ IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113
   SAY ~While the bath is getting ready, would you like any assistance with your clothing? I can help you ease into this experience, making every step as smooth and enjoyable as the soak itself.~
       ++ ~Yes, I'd appreciate your help. It would make things more relaxing.~ GOTO 114
       ++ ~I'm not sure... I guess a little help wouldn't hurt.~ GOTO 115
       ++ ~I think I'll manage on my own this time, but thank you.~ GOTO 116
END

IF ~~ THEN BEGIN 114
   SAY ~With pleasure. Let's make this as relaxing as possible for you.~ IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 115
   SAY ~I understand. Let's take it one step at a time, and I'll be here to assist as much or as little as you like.~ IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 116
   SAY ~Absolutely, take your time. I'll make sure everything is ready for your bath.~ IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 117
   SAY ~(Ilena's fingers dance lightly over your attire, gracefully unfastening each piece with an intimate touch.)~ IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118
   SAY ~(Her movements are slow, almost teasing, as she peels away layers, revealing skin with each subtle motion.)~ IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119
   SAY ~(The air is thick with anticipation, her eyes sparkling with an unspoken promise of the relaxation to come.)~ IF ~~ THEN GOTO 122
END

IF ~~ THEN BEGIN 120
   SAY ~(Turning back to the bath, Ilena's hands work meticulously, swirling the water to mix in fragrant oils, creating an inviting aroma.)~ IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121
   SAY ~(Her back to you, she allows for complete privacy, yet the occasional glance over her shoulder carries a hint of sensual promise, heightening the sense of what's to come.)~ IF ~~ THEN GOTO 122
END

IF ~~ THEN BEGIN 122
   SAY ~Now, it's time for me to shed my own layers and embrace the warmth of the bath. Would you indulge me by helping with my... disrobing?~ IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 123
   SAY ~The ties and clasps at the back can be quite the puzzle, and your hands might just have the perfect touch.~ IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 124
   SAY ~(Ilena turns slightly, allowing a glimpse of the intricate fastenings that adorn the back of her garment.)~ IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 125
   SAY ~(The subtle invitation in her eyes suggests more than just practical assistance, it's a dance of allure and trust.)~ IF ~~ THEN GOTO 126
END

IF ~~ THEN BEGIN 126
   SAY ~(She waits, a playful yet expectant look on her face, as the air fills with a charged sense of desire.)~
       ++ ~I'd be more than happy to help. Allow me to lend my hands for this task.~ GOTO 127
       ++ ~I'd prefer to watch, and admire the art of your form.~ GOTO 131
       ++ ~I'm not sure I'm skilled with such delicate fastenings. I wouldn't want to ruin your attire.~ GOTO 131
END

IF ~~ THEN BEGIN 127
   SAY ~Thank you, <CHARNAME>. Your hands are just what I need.~ IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 128
   SAY ~(She turns her back to you, allowing you to see the intricate fastenings. As your fingers touch her back, there's a moment of electric connection.)~ IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129
   SAY ~(The task is delicate, each clasp and tie requiring attention and care. As you work, Ilena's breath hitches slightly with each brush of your hands, a sensory dance of touch and desire.)~ IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 130
   SAY ~(Finally, as the last tie is undone, the garment gracefully falls away, and Ilena turns to face you, her expression one of intimate gratitude.)~ IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 131
   SAY ~I understand, darling. Allow me the pleasure of giving you a little show then. Sit back and enjoy the view.~ IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132
   SAY ~(Ilena gives you a playful wink and begins to slowly and deliberately disrobe. Each piece of clothing she removes reveals more of her, turning the act of undressing into an art form of allure.)~ IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 133
   SAY ~(Her movements are graceful and fluid, like a dance meant just for your eyes. As the last fastening comes undone, the fabric slips away like water, leaving Ilena in her natural, radiant form.)~ IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134
   SAY ~(She turns back to face you, a soft smile playing on her lips, her eyes reflecting both vulnerability and confidence.)~ IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 135
   SAY ~I can see that my little performance has stirred something within you. It's always rewarding to know I can evoke such a response.~ IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136
   SAY ~Tell me, <CHARNAME>, what goes through your mind as you see me like this?~ IF ~~ THEN GOTO 137
END

IF ~~ THEN BEGIN 137
   SAY ~(Ilena stands gracefully, the soft lighting accentuating the contours of her figure. She maintains eye contact, her expression a mix of curiosity and subtle invitation.)~
       ++ ~You look absolutely stunning, Ilena. It's like looking at a work of art come to life.~ GOTO 138
       ++ ~I'm genuinely speechless. Your beauty is captivating, and this almost feels like a dream.~ GOTO 138
END

IF ~~ THEN BEGIN 138
   SAY ~Thank you, <CHARNAME>. Your words are as warming as this bath promises to be. It's not often I'm left feeling so... admired.~ IF ~~ THEN GOTO 139
END

IF ~~ THEN BEGIN 139
   SAY ~Now, it's time for us to immerse ourselves in the warmth of the bath. Inside, we'll find a world where the water's embrace enhances every touch, every whisper.~ IF ~~ THEN GOTO 140
END

IF ~~ THEN BEGIN 140
   SAY ~Imagine the sensations awaiting us, the tranquility mixed with the subtle thrill of our closeness. Come, let us surrender to this experience together.~ IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141
   SAY ~(With these words hanging in the air, Ilena turns to the bath. She leans over slowly, a deliberate and tantalizing movement.)~ IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 142
   SAY ~(As she dips her fingers into the water, testing its temperature, she offers you a captivating view.)~ IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143
   SAY ~(Her posture is both inviting and playful, a subtle tease that heightens the anticipation of the shared bath. She looks back over her shoulder, her eyes meeting yours with a knowing smile.)~ IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144
   SAY ~Why don't you go ahead and get in first? Feel the embrace of the warm water. I'll join you right after, and together we can soak in this delightful experience.~
       ++ ~Sure, that sounds perfect. I'll get in and wait for you. The warm water sounds like just what I need right now.~ GOTO 145
       ++ ~Honestly, Ilena, after seeing you like this, I find myself wanting something more than just a bath.~ GOTO 216
END

IF ~~ THEN BEGIN 145
   SAY ~(After you settle into the bath, Ilena gracefully steps in. She slides into the water with an elegant ease, each movement a fluid dance.)~ IF ~~ THEN GOTO 146
END

IF ~~ THEN BEGIN 146
   SAY ~(The water ripples around her as she finds her place next to you, your bodies just inches apart.)~ IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 147
   SAY ~Mmm, this feels heavenly. The warmth enveloping us, and being this close to you, it's like we're in our own little world.~ IF ~~ THEN GOTO 148
END

IF ~~ THEN BEGIN 148
   SAY ~Would you prefer to simply relax and soak in this bliss, or shall I help wash and cleanse you? Or perhaps, you'd like to take the lead and wash me?~
       ++ ~I'd love for you to wash me. It sounds like a soothing and intimate experience.~ GOTO 279
       ++ ~Let's just relax and enjoy the soak together. No need for anything else right now.~ GOTO 149
       ++ ~I think I would enjoy washing you, if you're comfortable with that.~ GOTO 156
END

IF ~~ THEN BEGIN 149
   SAY ~This is just perfect, isn't it? The warmth of the water, our bodies so close, it's like a gentle caress all on its own.~ IF ~~ THEN GOTO 150
END

IF ~~ THEN BEGIN 150
   SAY ~There's something deeply comforting about sharing this tranquil space with you.~ IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151
   SAY ~(As you soak together, Ilena shifts slightly, her leg brushing against you under the water. The contact is fleeting but electric, a subtle hint of intimacy.)~ IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 152
   SAY ~(She leans back, her arm grazing your shoulder, a soft, unintentional touch that adds to the sensuality of the moment.)~ IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 153
   SAY ~Feeling the water swirl around us with each little movement we make, it's like a dance of warmth and sensation. I could stay in this moment forever, just enjoying the peacefulness with you.~ IF ~~ THEN GOTO 154
END

IF ~~ THEN BEGIN 154
   SAY ~(Ilena turns slightly towards you, her eyes meeting yours. The proximity is close but not overwhelming, a delicate balance between companionship and the possibility of more.)~ IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155
   SAY ~How are you feeling? Is this exactly what you needed, or is there something else you have in mind? Remember, this time is all about your pleasure and comfort.~
       ++ ~Actually, I think I'd like you to wash me now. It sounds like a soothing extension of this experience.~ GOTO 279
       ++ ~I'd like to wash you, if that's okay. I want to return the care and attention you've shown me.~ GOTO 156
       ++ ~This has been incredibly refreshing, but I think I'm ready to get out now. Thank you for this serene experience.~ GOTO 207
END

IF ~~ THEN BEGIN 156
   SAY ~Oh, that's a delightful surprise. I'm excited to see your tender touch in action. Let me get the cloth and oils ready for you.~ IF ~~ THEN GOTO 157
END

IF ~~ THEN BEGIN 157
   SAY ~(Ilena reaches for a soft, plush towel and a bottle of fragrant oil, placing them within easy reach of your grasp.)~ IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 158
   SAY ~Feel free to start wherever you wish. I trust your instincts... and I'm looking forward to experiencing your care.~ IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 159
   SAY ~(You take the cloth, and gently begin soaking it in the warm, scented water. You start by tenderly washing Ilena's shoulders, the cloth gliding over her skin, tracing the contours gracefully.)~ IF ~~ THEN GOTO 160
END

IF ~~ THEN BEGIN 160
   SAY ~(Ilena closes her eyes, a contented smile playing on her lips as she feels the gentle pressure of the cloth, while letting out a soft, appreciative moan.)~ IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 161
   SAY ~Mmm, that's wonderful. Your hands are so gentle, yet so knowing. It feels incredible.~ IF ~~ THEN GOTO 162
END

IF ~~ THEN BEGIN 162
   SAY ~(Moving down her arms, your touch remains attentive. Ilena's breath quickens slightly in response to your careful strokes.)~ IF ~~ THEN GOTO 163
END

IF ~~ THEN BEGIN 163
   SAY ~Oh, right there... You've got a natural touch. It's so soothing, yet it sends tingles down my spine.~ IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 164
   SAY ~(As you transition the cloth onto her back, Ilena tilts her head back slightly, clearly relishing the sensation.)~ IF ~~ THEN GOTO 165
END

IF ~~ THEN BEGIN 165
   SAY ~That's just perfect... the way you move the cloth, it's so relaxing and yet so stimulating. You're making me feel exhilarated and... quite aroused.~ IF ~~ THEN GOTO 166
END

IF ~~ THEN BEGIN 166
   SAY ~Would you be comfortable if I lean back and sit on your lap? It would make it easier for you to wash my... sensitive areas.~
       ++ ~Yes, that's fine with me. Please, go ahead.~ GOTO 167
       ++ ~I think I've enjoyed as much of the bath as I can. I'm feeling refreshed and ready to get out now, thank you.~ GOTO 207
END

IF ~~ THEN BEGIN 167
   SAY ~(Ilena smiles softly and carefully leans back, gracefully positioning herself onto your lap. She is mindful of your comfort as she settles in, her back pressed against your chest.)~ IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168
   SAY ~Mmm, why don't you start here, with my breasts. Cup them in your hands and feel their weight and warmth. Mmm... They're like a landscape of their own, full of soft curves and delicate form.~ IF ~~ THEN GOTO 169
END

IF ~~ THEN BEGIN 169
   SAY ~Explore their shape, the way they fit perfectly in your palms. It's a tantalizing journey, each curve and contour offering a unique sensation.~ IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 170
   SAY ~Ohh... the way your fingers glide over my curves, it's both tender and exhilarating. Each area you explore is a new pleasure for me.~ IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 171
   SAY ~(Your hands, guided by her subtle cues, shift to the more sensitive areas of her breast. With gentle, exploratory motions, you begin to passionately stimulate these delicate spots.)~ IF ~~ THEN GOTO 172
END

IF ~~ THEN BEGIN 172
   SAY ~(Each gentle grasp and massage over them causes her to squirm slightly in your lap, a silent testament to the effect of your touch.)~ IF ~~ THEN GOTO 173
END

IF ~~ THEN BEGIN 173
   SAY ~Oh... right there. The way you're touching me, it's perfect. Your hands are so gentle yet so arousing, it's making it hard for me to stay still.~ IF ~~ THEN GOTO 174
END

IF ~~ THEN BEGIN 174
   SAY ~(Your hands move in harmony, the sensation heightened by the warm water and the intimate setting.)~ IF ~~ THEN GOTO 175
END

IF ~~ THEN BEGIN 175
   SAY ~(Ilena's reactions are a mix of soft sighs and contented murmurs, indicating her pleasure and appreciation of your touch.)~ IF ~~ THEN GOTO 176
END

IF ~~ THEN BEGIN 176
   SAY ~Mmm, that feels amazing. The warmth of your touch, our hands moving together, it's incredibly sensual.~ IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 177
   SAY ~(Your hands glide down to her stomach, the movements harmonious and fluid. Ilena leans back slightly, pressing closer into you, deepening the intimacy of your contact.)~ IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178
   SAY ~<CHARNAME>... You're making me feel so cherished, so alive. The way our hands sync, it's like a dance of touch and pleasure.~ IF ~~ THEN GOTO 179
END

IF ~~ THEN BEGIN 179
   SAY ~(As you lower your reach to the area between her thighs, Ilena's breath catches.)~ IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 180
   SAY ~(The combination of the warm water, the gentle movement of your hands, and the closeness of your bodies creates an intensely personal moment.)~ IF ~~ THEN GOTO 181
END

IF ~~ THEN BEGIN 181
   SAY ~Let's put the cloth aside and use just your hands. Feel the softness of my skin, the warmth of my body responding to your touch.~ IF ~~ THEN GOTO 182
END

IF ~~ THEN BEGIN 182
   SAY ~(You gently set the cloth aside, your bare hands now making contact with Ilena's thighs. The sensation of skin on skin is more intimate, more direct.)~ IF ~~ THEN GOTO 183
END

IF ~~ THEN BEGIN 183
   SAY ~(You start at the outer thighs, feeling the smoothness and warmth.)~ IF ~~ THEN GOTO 184
END

IF ~~ THEN BEGIN 184
   SAY ~Oh, that's... that's incredibly arousing. The way your hands explore me, it's both stimulating and deeply intimate.~ IF ~~ THEN GOTO 185
END

IF ~~ THEN BEGIN 185
   SAY ~(As your hands move closer to the inside of her thighs, Ilena's breath becomes more labored. Her body responds to every touch, every caress, heightening her sensations.)~ IF ~~ THEN GOTO 186
END

IF ~~ THEN BEGIN 186
   SAY ~Mmm... your touch is exquisite. It's like you're reaching parts of me that have been longing for this kind of attention.~
       ++ ~(Begin gliding your hands further in, opening her legs and reaching your fingers inside.)~ GOTO 187
       ++ ~This has been incredible, Ilena. How about we end this perfect moment by getting out and drying off?~ GOTO 207
END

IF ~~ THEN BEGIN 187
   SAY ~Yes... just like that. You're making me feel things I... Ohh, <CHARNAME>!~ IF ~~ THEN GOTO 188
END

IF ~~ THEN BEGIN 188
   SAY ~(Her responses become more vocal, a mixture of soft moans and sighs. Your movements are slow and deliberate, exploring this sensitive area with a gentle, yet confident touch.)~ IF ~~ THEN GOTO 189
END

IF ~~ THEN BEGIN 189
   SAY ~(Ilena's hips instinctively respond, moving subtly in rhythm with your hands.)~ IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 190
   SAY ~Mmm... just like that. Right there, don't stop... You understand exactly where to go.~ IF ~~ THEN GOTO 191
END

IF ~~ THEN BEGIN 191
   SAY ~(As your hands continue their careful journey inside of Ilena's thighs, the water's warmth melds with the softness of her skin.)~ IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 192
   SAY ~(Each gentle caress and motion with your hand resonates deeply with Ilena. Feeling her responsive movements, you gradually begin to increase your pace, your fingers moving faster and deeper.)~ IF ~~ THEN GOTO 193
END

IF ~~ THEN BEGIN 193
   SAY ~(Ilena's body begins to respond instinctively, her hips shifting more powerfully with each push. Her moans becoming more pronounced, a testament to the intensity of her arousal.)~ IF ~~ THEN GOTO 194
END

IF ~~ THEN BEGIN 194
   SAY ~Oh, <CHARNAME>... this is incredible. I don't want this to end. Please, keep going... I'm almost there.~ IF ~~ THEN GOTO 195
END

IF ~~ THEN BEGIN 195
   SAY ~(Ilena's body responds with an increasing fervor, her breaths becoming quicker and shallower. Her muscles tense rhythmically, a physical testament to the overwhelming pleasure she's feeling.)~ IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196
   SAY ~Every finger, every caress... it's taking me closer... closer to pure bliss. The sensations you're giving me... the pleasure... it's almost unbearable how good it feels.~ IF ~~ THEN GOTO 197
END

IF ~~ THEN BEGIN 197
   SAY ~(She hips begin shaking as a wave of intense pleasure visibly begins coursing through her. Her body trembles as the climax builds, a crescendo of sensations washing over her.)~ IF ~~ THEN GOTO 198
END

IF ~~ THEN BEGIN 198
   SAY ~Yes, right there, don't stop... I'm almost... Oh, <CHARNAME>! That's exactly the spot. I can't hold back any longer. It's washing over me! Ohh... Ohh...~ IF ~~ THEN GOTO 199
END

IF ~~ THEN BEGIN 199
   SAY ~(Ilena's voice trails off into a crescendo of deep, heartfelt moans. The sensations build, one upon another, leading her towards a peak of arousal.~ IF ~~ THEN GOTO 200
END

IF ~~ THEN BEGIN 200
   SAY ~(Her body arches gently, quivering in the lingering pleasure elicited by your hands. Her expressions and sounds a vivid testament to the instense pleasure she's feeling.)~ IF ~~ THEN GOTO 201
END

IF ~~ THEN BEGIN 201
   SAY ~(As the orgasm hits, Ilena lets out a sound of deep, fulfilling release, her entire body relaxing into the waves of ecstasy.)~ IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 202
   SAY ~Ohh, <CHARNAME>... That was... that was just... indescribable. Every inch of me is tingling with delight. Mmm... You've taken me to such heights of joy.~ IF ~~ THEN GOTO 203
END

IF ~~ THEN BEGIN 203
   SAY ~The way you touched me, the care in your hands... it was pure magic. I'm still riding the waves of that pleasure. It's like a warm, gentle current flowing through me.~ IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 204
   SAY ~I feel so deeply satisfied, so wonderfully serene. Mmm, <CHARNAME>, what you've given me... it's a gift of pure ecstasy.~ IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 205
   SAY ~You have such a remarkable touch... truly remarkable. Now, let me return the favor. Would you like me to wash you? It would be my pleasure to care for you as you did for me.~
       ++ ~Actually, I'm already feeling completely satisfied, and I'd like the save that experience for another time.~ GOTO 206
       ++ ~I would love that, Ilena. Your touch is soothing, and I would enjoy experiencing your hands in return.~ GOTO 279
END

IF ~~ THEN BEGIN 206
   SAY ~Of course, <CHARNAME>, I understand completely. It's important to savor each experience in its own time, and I'm glad to hear you're feeling so satisfied.~ IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 207
   SAY ~This moment with you has been an exquisite dance of emotions and sensations. But, as with all dances, it must eventually draw to a close.~ IF ~~ THEN GOTO 208
END

IF ~~ THEN BEGIN 208
   SAY ~Now, let's transition back from these warm waters. The memories we've created here, they'll stay with us, lingering like a sweet melody.~ IF ~~ THEN GOTO 209
END

IF ~~ THEN BEGIN 209
   SAY ~(Slowly, Ilena begins to rise from the bath. The water cascades down her body, glistening in the soft light. She steps out with a grace that lingers in the air, reaching for a plush towel.)~ IF ~~ THEN GOTO 210
END

IF ~~ THEN BEGIN 210
   SAY ~Here, let me help you out. We can wrap ourselves up and hold onto the warmth a bit longer.~ IF ~~ THEN GOTO 211
END

IF ~~ THEN BEGIN 211
   SAY ~(When you are both out of the bath, she wraps herself in a towel, the fabric hugging her form. She then offers a towel to you, with a soft, inviting smile.)~ IF ~~ THEN GOTO 212
END

IF ~~ THEN BEGIN 212
   SAY ~This has been a beautiful experience, <CHARNAME>. Thank you for sharing it with me. I hope we can create more memories like this.~ IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 213
   SAY ~(As you dry off, there's a comfortable silence filled with unspoken understanding and mutual satisfaction. Ilena's movements are slow and deliberate, savoring the final moments together.)~ IF ~~ THEN GOTO 214
END

IF ~~ THEN BEGIN 214
   SAY ~Well, I'll leave you to get dressed then. Take your time, and when you're ready, the world outside awaits.~ IF ~~ THEN GOTO 215
END

IF ~~ THEN BEGIN 215
   SAY ~Thank you for sharing such a beautiful moment with me, <CHARNAME>. It's been truly special. I hope to see you again soon, for more unforgettable experiences like this.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",3)
   SetGlobal("h_IlenaBath","GLOBAL",0)
   AddExperienceParty(50)
   MoveToPoint([209.338])~ EXIT
END

IF ~~ THEN BEGIN 216
   SAY ~Oh, <CHARNAME>... Your desire resonates deeply with me, and I find myself equally eager to explore this path of intimacy with you.~ IF ~~ THEN GOTO 217
END

IF ~~ THEN BEGIN 217
   SAY ~There's a fire in your eyes that matches my own. Come closer then, let's not wait any longer to explore this connection.~ IF ~~ THEN GOTO 218
END

IF ~~ THEN BEGIN 218
   SAY ~(Still leaning over the tub, Ilena maintains her mesmerizing pose, a fusion of elegance and invitation.)~ IF ~~ THEN GOTO 219
END

IF ~~ THEN BEGIN 219
   SAY ~(She glances over her shoulder, her eyes sparkling with anticipation and a shared understanding of the moment's intensity.)~ IF ~~ THEN GOTO 220
END

IF ~~ THEN BEGIN 220
   SAY ~(Her smile is both inviting and warm, beckoning you to join her in a more intimate embrace.)~ IF ~~ THEN GOTO 221
END

IF ~~ THEN BEGIN 221
   SAY ~Right now, in this moment, it's just you and me. So let's lose ourselves in the passion that's been building between us.~ IF ~~ THEN GOTO 222
END

IF ~~ THEN BEGIN 222
   SAY ~Come here, <CHARNAME>, don't keep me waiting. I'm ready for you, ready to feel the full extent of our connection. This desire, this fire we've kindled, it's time to let it consume us.~ IF ~~ THEN GOTO 223
END

IF ~~ THEN BEGIN 223
   SAY ~I want you to be a part of me, to join me in this dance of passion. So come closer, let's not waste another moment. Let me feel your presence inside me, and be enveloped by your warmth.~ IF ~~ THEN GOTO 224
END

IF ~~ THEN BEGIN 224
   SAY ~(You step closer to Ilena, pressing gently against her back. The warmth of her body connecting with yours sends a surge of electricity coursing through you.)~ IF ~~ THEN GOTO 225
END

IF ~~ THEN BEGIN 225
   SAY ~(Your hands find their way to Ilena's hips, slowly encircling around her waist. A soft whimper escapes her lips as you settle in behind her, her own body moving subtly in rhythm to your touch.)~ IF ~~ THEN GOTO 226
END

IF ~~ THEN BEGIN 226
   SAY ~Mmm... <CHARNAME>, when you press against me like that, it sends shivers through my entire body. The warmth of you right there at my back... it's so comforting, yet so stirring.~ IF ~~ THEN GOTO 227
END

IF ~~ THEN BEGIN 227
   SAY ~(The sensation of being so close, of being held and desired, elicits a gentle, rhythmic swaying of her hips, an unspoken invitation to explore further.)~ IF ~~ THEN GOTO 228
END

IF ~~ THEN BEGIN 228
   SAY ~I'm ready for you, <CHARNAME>. Let's move together, and let our desires lead the way.~ IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 229
   SAY ~(As you gently ease yourself into Ilena, she slowly presses her hips back into yours, her eyes closing briefly to savor the moment.)~ IF ~~ THEN GOTO 230
END

IF ~~ THEN BEGIN 230
   SAY ~Mmm... <CHARNAME>. Feel the rhythm of our movements, how they speak of more than just physical closeness.~ IF ~~ THEN GOTO 231
END

IF ~~ THEN BEGIN 231
   SAY ~(As Ilena begins to sway her hips more forcefully, the movement creates a stimulating rhythm. Your hands rest on her hips, following her motions in a delicate dance of synchronization.)~ IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 232
   SAY ~Ohh, <CHARNAME>, this feeling... it's indescribable. Your touch is exactly what I needed. Yes, just like that... don't stop. You're making me feel so good... so wanted.~ IF ~~ THEN GOTO 233
END

IF ~~ THEN BEGIN 233
   SAY ~Mmm, it's so incredibly pleasurable. Keep going... please, <CHARNAME>, please don't stop. There's something about the way you're moving in me... it's perfect.~ IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 234
   SAY ~Right there, you've found the perfect spot. Ohh, yes, focus right there... It's sending waves of pleasure through me. Your rhythm, your touch, it's in perfect harmony with my desires.~ IF ~~ THEN GOTO 235
END

IF ~~ THEN BEGIN 235
   SAY ~<CHARNAME>, the way you make me feel is beyond words. It's a deep, consuming desire. I don't want this to end. The heat of this passion... it's all so overwhelming in the best possible way.~
       ++ ~(Lean forward, gliding your hands along Ilena's sides as you press closer against her back.)~ GOTO 242
       ++ ~(Continue gripping Ilena's waist, keeping your pace steady and constant.)~ GOTO 236
END

IF ~~ THEN BEGIN 236
   SAY ~Yes, yes... Oh god, <CHARNAME>, the way you're inside me... how you're guiding the rhythm of our movements... It feels incredible!~ IF ~~ THEN GOTO 237
END

IF ~~ THEN BEGIN 237
   SAY ~(As you grip Ilena's waist with more pressure, she responds with a deep sense of pleasure. She allows herself to express freely, her words interspersed with moans and sighs of delight.)~ IF ~~ THEN GOTO 238
END

IF ~~ THEN BEGIN 238
   SAY ~Yes, just like that... Keep going. Oh, yes! Your form... it's perfect. I can feel every movement, every thrust... It's taking me to such heights of pleasure!~ IF ~~ THEN GOTO 239
END

IF ~~ THEN BEGIN 239
   SAY ~(Your hands begin to explore Ilena's thighs and back. Each touch, sending waves of sensation through her. She responds with increased fervor, her body aching from your explorative touch.)~ IF ~~ THEN GOTO 240
END

IF ~~ THEN BEGIN 240
   SAY ~Mmm... your hands, roaming over me, it's so stimulating... The way you're touching my body, my waist... it adds layers to my pleasure.~ IF ~~ THEN GOTO 241
END

IF ~~ THEN BEGIN 241
   SAY ~(The sensations from your exploring hands amplify Ilena's experience, her reactions becoming more vocal and intense, a mix of moans and gasps, signaling her increasing pleasure.)~ IF ~~ THEN GOTO 254
END

IF ~~ THEN BEGIN 242
   SAY ~Ohh, <CHARNAME>, your hands... they're exploring with such intention. The way you touch me, it's so gentle and arousing.~ IF ~~ THEN GOTO 243
END

IF ~~ THEN BEGIN 243
   SAY ~(As you so slowly find your way towards Ilena's breast, you gently squeeze, applying a firm pressure that is both tender and invigorating.)~ IF ~~ THEN GOTO 244
END

IF ~~ THEN BEGIN 244
   SAY ~(Each careful compression is met with a responsive movement from Ilena. Her body subtly stirs against you, reacting to the rhythm and intensity of the touch.)~ IF ~~ THEN GOTO 245
END

IF ~~ THEN BEGIN 245
   SAY ~Mmm... that pressure, it's awakening something within me. Each embrace sends a ripple of pleasure through my body.~ IF ~~ THEN GOTO 246
END

IF ~~ THEN BEGIN 246
   SAY ~Yes, just like that... Ohh, <CHARNAME>, you're making me feel so alive, so responsive to your every touch. It's like you're speaking directly to my senses.~ IF ~~ THEN GOTO 247
END

IF ~~ THEN BEGIN 247
   SAY ~(Ilena leans back further into your embrace, swaying against you in an ever deeper rhythmic motion. Her reactions grow more pronounced, a mixture of sighs, moans, and gentle movements.)~ IF ~~ THEN GOTO 248
END

IF ~~ THEN BEGIN 248
   SAY ~(Your hands move with a knowing touch, gently massaging the sensitive areas of her breast.)~ IF ~~ THEN GOTO 249
END

IF ~~ THEN BEGIN 249
   SAY ~(Each circular motion and gentle compression is deliberate, eliciting a stimulated response from Ilena.)~ IF ~~ THEN GOTO 250
END

IF ~~ THEN BEGIN 250
   SAY ~Mmm... each touch, each feeling on these delicate spots... it sends waves of pleasure through me. Ohh, yes... It's so intense.~ IF ~~ THEN GOTO 251
END

IF ~~ THEN BEGIN 251
   SAY ~Your hands... they're speaking directly to my body, unlocking feelings of pure ecstasy. Mmm, <CHARNAME>, this sensation... it's overwhelming in the most wonderful way.~ IF ~~ THEN GOTO 252
END

IF ~~ THEN BEGIN 252
   SAY ~(With every gentle massage, Ilena's body responds instinctively, her back arching slightly to meet your touch.)~ IF ~~ THEN GOTO 253
END

IF ~~ THEN BEGIN 253
   SAY ~(Her breath catches in her throat, releasing in a series of soft, rhythmic moans that match the cadence of your movements.)~ IF ~~ THEN GOTO 254
END

IF ~~ THEN BEGIN 254
   SAY ~The pressure you're applying... it's awakening sensations I've never felt before. Keep touching me like that... it feels incredible.~ IF ~~ THEN GOTO 255
END

IF ~~ THEN BEGIN 255
   SAY ~Yes, right there... Ohh, <CHARNAME>, your body is so attentive, so arousing. I'm getting closer... every second, every touch... it's pushing me further.~ IF ~~ THEN GOTO 256
END

IF ~~ THEN BEGIN 256
   SAY ~I need you... I need more. I'm so close, <CHARNAME>. Please... I'm ready to feel the ultimate release.~
       ++ ~(Tighten your grip on Ilena's hips, moving in a faster, more intense rhythm.)~ GOTO 257
       ++ ~(Slowly spread your hands outward, applying a gentle pressure that encourages her hips to open more fully.)~ GOTO 260
END

IF ~~ THEN BEGIN 257
   SAY ~Ohh, <CHARNAME>, this aggressiveness... it's exhilarating! Yes, yes, just like that... Ohh, my god!~ IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 258
   SAY ~(As your movements become faster and more forceful, Ilena responds with equal fervor. Her body moves in sync with your urgent rhythm.)~ IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 259
   SAY ~Mmm... I can barely keep up, but I can't slow down. This passion... it's consuming me!~ IF ~~ THEN GOTO 263
END

IF ~~ THEN BEGIN 260
   SAY ~Oh, <CHARNAME>... you're getting so deep, it's incredibly intense. Yes, right there... The way you touch me... you're discovering places inside me I never knew I had.~ IF ~~ THEN GOTO 261
END

IF ~~ THEN BEGIN 261
   SAY ~(Her responses to your deeper penetration are punctuated by deep, resonant moans and gasps, indicating the overwhelming nature of the pleasure she's experiencing.)~ IF ~~ THEN GOTO 262
END

IF ~~ THEN BEGIN 262
   SAY ~It feels so good... Oh, <CHARNAME>, please, keep going, don't stop... This pressure, this depth... it's building up something incredible inside me... Ohhh!~  IF ~~ THEN GOTO 263
END

IF ~~ THEN BEGIN 263
   SAY ~I'm getting closer... Every second, every touch... it's pushing me further... Ohh, I'm almost there!~ IF ~~ THEN GOTO 264
END

IF ~~ THEN BEGIN 264
   SAY ~(As the intensity continues to build, Ilena's expressions become a vivid portrayal of her pleasure. Her breaths are heavy and labored, filled with the exhilaration of the moment.)~ IF ~~ THEN GOTO 265
END

IF ~~ THEN BEGIN 265
   SAY ~(The continuous rhythm, combined with the exploratory touches, brings her to a state of ecstatic release. Her final words are a mix of moans and gasps, signaling the peak of her pleasure.)~ IF ~~ THEN GOTO 266
END

IF ~~ THEN BEGIN 266
   SAY ~Every inch of you, it adds to this incredible feeling... Ohhh, keep going, <CHARNAME>... I'm right on the brink... Yes! This sensation, this depth... it's perfect.~ IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267
   SAY ~Ohh, <CHARNAME>... It's happening... right now... Yes, yes! Right there, right there! It's so intense... so overwhelming in the best way.~ IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270
   SAY ~(As she approaches the peak of her ecstasy, her voice crescendos, signaling the intensity of her climax. Her words become more sporadic, replaced increasingly by expressive moans and gasps.)~ IF ~~ THEN GOTO 271
END

IF ~~ THEN BEGIN 271
   SAY ~Oh, <CHARNAME>... that was... that was extraordinary. I'm... I'm still feeling waves of it... still catching my breath. It was so intense, so fulfilling.~ IF ~~ THEN GOTO 272
END

IF ~~ THEN BEGIN 272
   SAY ~What we just shared... it was beyond words. The ecstasy, the passion, the way our bodies moved together in perfect harmony... I'm still reeling from the sensations.~ IF ~~ THEN GOTO 273
END

IF ~~ THEN BEGIN 273
   SAY ~Every touch was like a spark, igniting something deep within me. And the way you responded to me, it was as if you understood my body better than I do myself.~ IF ~~ THEN GOTO 274
END

IF ~~ THEN BEGIN 274
   SAY ~The rhythm we found together, the crescendos of pleasure, it felt like a dance... a dance of desire and fulfillment. I've never experienced anything so pleasurable, so exhilarating.~ IF ~~ THEN GOTO 275
END

IF ~~ THEN BEGIN 275
   SAY ~And now, I need to know... How was it for you, <CHARNAME>? Did you feel that incredible connection? Was this experience as unforgettable for you as it was for me?~
       ++ ~Ilena, it was incredible. I've never felt anything like it.~ GOTO 276
       ++ ~It was a pleasurable experience, Ilena. I felt a deeply physical bond with you.~ GOTO 276
       ++ ~That was amazing, Ilena, and it's only made me want to explore more with you.~ GOTO 276
END

IF ~~ THEN BEGIN 276
   SAY ~I can't wait to see you again, <CHARNAME>, to discover what other pleasures and depths we can explore together.~ IF ~~ THEN GOTO 277
END

IF ~~ THEN BEGIN 277
   SAY ~Now, I'll leave you to gather your thoughts and enjoy a few moments of solitude. Take all the time you need.~ IF ~~ THEN GOTO 278
END

IF ~~ THEN BEGIN 278
   SAY ~When you're ready, the world outside awaits, and so do more adventures and experiences. But remember, a part of me will always be waiting here, longing for our next encounter.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",3)
   SetGlobal("h_IlenaBath","GLOBAL",0)
   AddExperienceParty(50)
   MoveToPoint([209.338])~ EXIT
END

IF ~~ THEN BEGIN 279
   SAY ~I'm delighted to hear that, <CHARNAME>. Come, sit in front of me. Let me take care of you now. I'll wrap my legs gently around your sides, creating a cozy embrace.~ IF ~~ THEN GOTO 280
END

IF ~~ THEN BEGIN 280
   SAY ~(She reaches for a soft cloth, soaks it in the warm, fragrant water, and begins to tenderly wash your back.)~ IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281
   SAY ~Feel the warmth of this cloth as I move it gently across your back. The water is just the right temperature, soothing and comforting.~ IF ~~ THEN GOTO 282
END

IF ~~ THEN BEGIN 282
   SAY ~(Ilena's hands, guided by the cloth, move in smooth, caressing motions over your back. Each stroke is careful and deliberate, designed to relax and nurture.)~ IF ~~ THEN GOTO 283
END

IF ~~ THEN BEGIN 283
   SAY ~I'm washing away all the tension, every bit of stress. Let it all go as I care for you, as my hands glide across your skin.~ IF ~~ THEN GOTO 284
END

IF ~~ THEN BEGIN 284
   SAY ~(Her touch is both tender and thorough, ensuring that every inch of your back receives her attention. The movements are rhythmic, almost hypnotic, encouraging a deep sense of relaxation.)~ IF ~~ THEN GOTO 285
END

IF ~~ THEN BEGIN 285
   SAY ~Your skin, it's responding to every touch, every movement of my hands. It's a pleasure to feel you relaxing under my care.~ IF ~~ THEN GOTO 286
END

IF ~~ THEN BEGIN 286
   SAY ~(She gently moves the cloth over your shoulders, her touch is light but effective, easing any tightness.)~ IF ~~ THEN GOTO 287
END

IF ~~ THEN BEGIN 287
   SAY ~(Then, with a fluid motion, Ilena begins to wash down your arms, her fingers dancing along you skin.)~ IF ~~ THEN GOTO 288
END

IF ~~ THEN BEGIN 288
   SAY ~Mmm, let's not forget these arms, strong and deserving of attention too.~ IF ~~ THEN GOTO 289
END

IF ~~ THEN BEGIN 289
   SAY ~(As she reaches your hands, Ilena playfully intertwines her fingers with yours for a moment, giving a gentle squeeze.)~ IF ~~ THEN GOTO 290
END

IF ~~ THEN BEGIN 290
   SAY ~Even your hands need a moment of care. They do so much, after all.~ IF ~~ THEN GOTO 291
END

IF ~~ THEN BEGIN 291
   SAY ~Now, let me take care of you completely. I want to make sure every part of you is cleansed and attended to.~
       ++ ~I would like that, Ilena. Please, go ahead. I'm looking forward to feeling more of your touch.~ GOTO 292
       ++ ~Thank you, Ilena, but I'm actually feeling great now and ready to get out.~ GOTO 207
END

IF ~~ THEN BEGIN 292
   SAY ~(She gently guides you to adjust your position, allowing her better access to her intended target.)~ IF ~~ THEN GOTO 293
END

IF ~~ THEN BEGIN 293
   SAY ~(With the cloth now soaked in warm, fragrant water, Ilena begins the careful task of washing and stroking this sensitive area.)~ IF ~~ THEN GOTO 294
END

IF ~~ THEN BEGIN 294
   SAY ~Mmm, <CHARNAME>... This is amazing. I can feel the warmth of your skin... The hardness of your body.~ IF ~~ THEN GOTO 295
END

IF ~~ THEN BEGIN 295
   SAY ~(As she continues, her breathing becomes heavier. Her hands moves in a delicate, rhythmic pattern, caressing your skin with each motion.)~ IF ~~ THEN GOTO 296
END

IF ~~ THEN BEGIN 296
   SAY ~You're doing so well... Just let yourself feel the sensations. It's all part of taking care of you.~ IF ~~ THEN GOTO 297
END

IF ~~ THEN BEGIN 297
   SAY ~Mmm... It's essential to be thorough, especially here. Can you feel how dedicated I am to making sure every part of you is cared for?~ IF ~~ THEN GOTO 298
END

IF ~~ THEN BEGIN 298
   SAY ~(As her strokes quicken, the occasional soft moan escapes her lips, a sign of her growing exertion and the intimate nature of her task.)~ IF ~~ THEN GOTO 299
END

IF ~~ THEN BEGIN 299
   SAY ~Ohh, <CHARNAME>... Can you feel the warmth of the water mingling with my touch? Every move I make under these waters, it's like a gentle, warm caress, different from anything else.~ IF ~~ THEN GOTO 300
END

IF ~~ THEN BEGIN 300
   SAY ~The way it envelops us both, it amplifies every stroke, every glide of my hands. It's as if the warmth is heightening your senses, making you more aware of every touch.~ IF ~~ THEN GOTO 301
END

IF ~~ THEN BEGIN 301
   SAY ~Now, let's focus on bringing you to the peak of this bathing experience. Just relax and let me take care of everything.~ IF ~~ THEN GOTO 302
END

IF ~~ THEN BEGIN 302
   SAY ~(She renews her efforts, her hands moving with a more vigorous intent. The cloth in her hands becomes an extension of her touch, gliding over you with precise, rhythmic motions.)~ IF ~~ THEN GOTO 303
END

IF ~~ THEN BEGIN 303
   SAY ~Feel the cloth as it moves over your skin, each stroke is designed to bring you closer to complete satisfaction. The warmth of the water, the pressure of my hands, it's all for you.~ IF ~~ THEN GOTO 304
END

IF ~~ THEN BEGIN 304
   SAY ~(Her hands work tirelessly, pressing and moving in a pattern that's both deliberate and sensuous. The water around you responds to her movements, creating gentle waves of sensation.)~ IF ~~ THEN GOTO 305
END

IF ~~ THEN BEGIN 305
   SAY ~I think it's time for a more direct touch, <CHARNAME>. Let me set this cloth aside and use my hands to bring you to a more stimulating climax.~ IF ~~ THEN GOTO 306
END

IF ~~ THEN BEGIN 306
   SAY ~(Gently setting the cloth aside, Ilena begins to use her bare hands, grasping and sliding them over you. The absence of the cloth allows for a more intimate connection, her skin against yours.)~ IF ~~ THEN GOTO 307
END

IF ~~ THEN BEGIN 307
   SAY ~Can you feel the difference, the warmth of my hands directly on your skin? It's a more personal touch, more connected. Every stroke of my hands is meant to bring you deeper into this sensation.~ IF ~~ THEN GOTO 308
END

IF ~~ THEN BEGIN 308
   SAY ~(The smooth, deliberate motions of her hands are both stimulating and soothing. As she continues, her own breath becomes heavier, a sign of her growing arousal in this intimate act.)~ IF ~~ THEN GOTO 309
END

IF ~~ THEN BEGIN 309
   SAY ~Mmm... Every pull is more arousing, more intimate. I can feel your body responding to my touch, the tension building with each movement.~ IF ~~ THEN GOTO 310
END

IF ~~ THEN BEGIN 310
   SAY ~Just let yourself feel every motion, every moment. We're nearing something incredible, and I want to take you there, to that peak of pleasure.~ IF ~~ THEN GOTO 311
END

IF ~~ THEN BEGIN 311
   SAY ~(Her hands glide skillfully, each stroke deliberate and deeply sensual. She adjusts her grip, becoming even more attuned to your reactions, her movements synchronized with your rising intensity.)~ IF ~~ THEN GOTO 312
END

IF ~~ THEN BEGIN 312
   SAY ~That's it, <CHARNAME>, just let go... release everything. Please, I'm right here with you... Feel every sensation, every stroke.~ IF ~~ THEN GOTO 313
END

IF ~~ THEN BEGIN 313
   SAY ~Oh, god... you're so close... I can feel it. Let it all out, <CHARNAME>, surrender to this pleasure. Yes, yes, just like that!~ IF ~~ THEN GOTO 314
END

IF ~~ THEN BEGIN 314
   SAY ~(As she senses the impending climax, her motions become more focused, perfectly timed to bring you to a satisfying climax.) ~ IF ~~ THEN GOTO 315
END

IF ~~ THEN BEGIN 315
   SAY ~Yes, just release, let it all wash over you. You're almost there, <CHARNAME>, just let it happen. Feel the peak... embrace it with me.~ IF ~~ THEN GOTO 316
END

IF ~~ THEN BEGIN 316
   SAY ~(As the climax arrives, her touch becomes a gentle, guiding force, expertly bringing the experience to its apex.)~ IF ~~ THEN GOTO 316.5
END

IF ~~ THEN BEGIN 316.5
   SAY ~Yes, that's it! Embrace it, <CHARNAME>... feel every pulse, every wave of release. Oh, what an intense and beautiful moment... You're amazing.~ IF ~~ THEN GOTO 317
END

IF ~~ THEN BEGIN 317
   SAY ~<CHARNAME>, that was... that was absolutely amazing. The energy between us, the connection... I felt every moment with you.~ IF ~~ THEN GOTO 317.5
END

IF ~~ THEN BEGIN 317.5
   SAY ~It's experiences like these that truly show how extraordinary our connection is. I'm still catching my breath, still basking in the afterglow of what we just shared.~ IF ~~ THEN GOTO 318
END

IF ~~ THEN BEGIN 318
   SAY ~Tell me, <CHARNAME>, how was it for you? Did you feel the depth of our connection as deeply as I did?~
       ++ ~That was incredible, Ilena. I felt every moment, every touch, and I'm deeply satisfied.~ GOTO 207
       ++ ~It was amazing, and it's left me wanting more. I'm already looking forward to our next encounter.~ GOTO 207
END

IF ~Global("h_TravelToDen","GLOBAL",3)~ THEN BEGIN 319
   SAY ~Ah, <CHARNAME>, you look refreshed and rejuvenated. It's wonderful to see. Are you ready to return to the Gorgon's Eye? I'll escort you down.~ IF ~~ THEN GOTO 320
END

IF ~~ THEN BEGIN 320
   SAY ~Our time together has been truly special, and I hope it's left you feeling as fulfilled and content as it has me. Now, let's make our way back.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",0)
   SetGlobal("h_SpawnIlenaDen","GLOBAL",0)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_de2cut")~ EXIT
END

IF ~~ THEN BEGIN 321
   SAY ~Of course. It's important that you feel comfortable and true to yourself in these moments. There's absolutely no obligation to proceed if your heart isn't in it.~ IF ~~ THEN GOTO 322
END

IF ~~ THEN BEGIN 322
   SAY ~I'm here to provide a space of comfort and joy, and sometimes that means recognizing when it's not the right time. I respect your honesty and your decision.~ IF ~~ THEN GOTO 323
END

IF ~~ THEN BEGIN 323
   SAY ~Let me guide you back out. Remember, the doors of the Gorgon's Den are always open to you, whenever you feel the time is right.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",0)
   SetGlobal("h_SpawnIlenaDen","GLOBAL",0)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_de2cut")~ EXIT
END
