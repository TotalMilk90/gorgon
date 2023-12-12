BEGIN h_rafa2d

IF ~Global("h_TravelToDen","GLOBAL",1)~ THEN BEGIN 0
   SAY ~Ah, here we are, just the two of us. Welcome to my private sanctuary, a place where we can leave the world behind and focus solely on each other.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~It's not often I find someone who truly captures my interest, but with you, it feels like we're about to embark on a journey of exquisite discovery.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~In here, time stands still, and all that matters is the connection we're about to share. I want you to feel free, to express yourself in ways you've only imagined.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~With me, you can explore the depths of your desires, the hidden facets of your passion. As we talk, feel free to tell me about your deepest yearnings, your most secret wishes.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~I'm here to listen, to understand, and to bring those silent dreams to life. In my embrace, you'll find warmth, excitement, and a sense of adventure that will take us both to new heights of pleasure.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~And as we slowly peel away the layers of our diffidence, we'll find ourselves in a realm of intimacy where every touch is a language of its own.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Let's lose ourselves in this experience, where every glance, every caress, and every whisper brings us closer to a world of shared ecstasy.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~Now, come closer, let go of your inhibitions, and let me guide you through an encounter that will leave you breathless and longing for more.~
       ++ ~I'm ready to explore this journey with you. Lead the way, and let's discover where this path takes us.~ GOTO 14
       ++ ~I appreciate the invitation, Rafaela, but upon reflection, I think I'll pass. This isn't quite what I'm looking for right now.~ GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Oh, you're leaving so soon? My heart's a little heavy with disappointment. I was so looking forward to exploring our desires together.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~But I understand, sometimes the heart wants what it wants, or in your case, doesn't want.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Let's wander back to the Gorgon's Den then, shall we? The night is still filled with endless possibilities, and who knows? Your heart might just find what it's looking for.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~And remember, if you ever find yourself curious or longing for a taste of the sweet yet thrilling experiences I offer, my door is always open.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~I'll be here, waiting with a smile and maybe a few surprises up my sleeve.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~Come along, sweet adventurer. There's much more to see, and who knows, I might just linger in your thoughts, tempting you to return.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",4)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_de2cut")~ EXIT
END

IF ~~ THEN BEGIN 14
   SAY ~Oh, your eagerness is like a melody to my ears! There are so many ways we can embark on this delightful journey together.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~First, we could sit and talk, unraveling the threads of our thoughts and dreams. A deep, engaging conversation can be the most intimate dance of all, don't you think?~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~We can share stories, laugh, and connect in a way that lights up the soul. Or perhaps you'd prefer something a little more... physical? We could move over to the couch, where I can offer you an intimate dance.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~Imagine the rhythm of the music, my movements in harmony with the melody, an enchanting experience just for you. It's a dance of seduction and excitement, a playful tease that promises more.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~And then, there's the bed, our canvas for a deeper connection. Here, we can explore the full extent of our desires, a stimulating and intimate encounter where we both give and receive pleasure.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~So, what will it be? A conversation that stirs the heart, a dance that ignites the flames, or a private rendezvous that explores the depths of passion?~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20  
   SAY ~The choice is yours, and I'm here to make it a reality. But before we decide, there's something you should know.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~Once we embark on this path, my passion tends to take over, it's a force as wild as the winds, and sometimes, I almost lose control of it.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~As we dive deeper, I become very expressive, my language turning raw with the intensity of my desire. I want you to be fully comfortable and aware of what this journey entails.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~If you feel this might be too intense, it's perfectly alright to step back now. Your comfort is as important to me as our shared pleasure.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~So, tell me, are you ready to embrace the full extent of this passionate adventure?~
       ++ ~Let's move to the bed for a more intimate encounter. I'm eager to explore and experience the depths of your passion.~ GOTO 151
       ++ ~The idea of a private dance sounds like a captivating way to start our evening.~ GOTO 26
       ++ ~It's clear you offer an intense experience, and I think it might be a bit too much for me.~ GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~Oh, I see that twinkle of hesitation in your eyes, and it's perfectly alright. The intensity of passion isn't for everyone, and I admire your thoughtfulness in knowing what feels right for you.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 26
   SAY ~Oh, your choice sends a surge of arousal right through me. The thought of a private dance to start our evening is just... so invigorating.~ IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY ~Come, follow me. Let's allow the music to envelop us, to set the stage for an evening of intimate exploration.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY ~With each step I take, each sway of my hips, I want you to feel the promise of what's to come, the unspoken words of desire that dance in the air between us.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~It's the beginning of a journey into the depths of passion and pleasure. And I'm so eager to take that first step with you. Now, let's find our rhythm together, shall we?~ IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY ~This way to the couch, where our dance of desire begins.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",2)
   SetGlobal("h_RafaelaDance","GLOBAL",1)
   MoveToPoint([548.469])~ EXIT
END

IF ~Global("h_RafaelaDance","GLOBAL",1)~ THEN BEGIN 31
   SAY ~Here we are, in my little haven of delight. You just sit and relax, and let me take care of everything.~ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~This is a place where worries melt away, and the only thing that matters is the here and now, with me.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY ~Please, sit down and relax, I want you to feel completely at ease. Let me enchant your senses, starting with a dance that's sure to awaken every fiber of your being.~ IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
   SAY ~(As you settle into the couch, Rafaela steps back gracefully, a twinkle of excitement in her eyes. She begins to move her body, her hips swaying as if she's dancing to a silent song.)~ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
   SAY ~(She slips off her dress and slides it down her body, revealing her panties and a lacy brassiere. She moves her hands up and down her body, her touch teasing and inviting.)~ IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
   SAY ~(She turns her attention back to you, her lips curling into a mischievous smile.)~ IF ~~ THEN GOTO 36.5
END

IF ~~ THEN BEGIN 36.5
   SAY ~Do you like what you see, <CHARNAME>? I chose this just for you, hoping it would catch your eye.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
   SAY ~The way the fabric hugs my curves, the delicate lace... I wanted to create a vision that would captivate you. Tell me, does it please you? Am I the desire you imagined?~
       ++ ~Rafaela, you're stunning. The way you move, the way the light catches on the lace... it's mesmerizing.~ GOTO 37.5
       ++ ~Absolutely breathtaking, Rafaela. This is better than I could have imagined.~ GOTO 37.5
END

IF ~~ THEN BEGIN 37.5
   SAY ~I'm so glad to hear that, <CHARNAME>. It's a joy to be your vision of desire. Now, let's continue, shall we? I have so much more to show you...~ IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY ~(Rafaela begins to move again, her body swaying as she takes a step closer. Slowly, her hands glide up her body, reaching the delicate laces of her brassiere.)~ IF ~~ THEN GOTO 38.5
END

IF ~~ THEN BEGIN 38.5
   SAY ~(With deliberate and teasing movements, she begins to unlace it, her eyes locked with yours, inviting you into the moment.)~ IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
   SAY ~(The laces finally unravel, and she lets the corset fall to the ground. Her breasts, freed from the confines of her lingerie, are alluring and inviting.)~ IF ~~ THEN GOTO 39.5
END

IF ~~ THEN BEGIN 39.5
   SAY ~(Her nipples, hard and pink, seemed to beg for your touch. You feel a warmth building in your core, and your breathing begins to deepen.)~ IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
   SAY ~(After a brief pause, her hands continue their journey downward, tracing the outline of her hips before reaching the edge of her panties.)~ IF ~~ THEN GOTO 40.5
END

IF ~~ THEN BEGIN 40.5
   SAY ~(With a seductive ease, she slides them down, stepping out of them gracefully and leaving them as a forgotten detail on the floor.)~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
   SAY ~(She closes the distance between you, her movements smooth and tantalizing. Her hands glide up your body, each touch a whisper against your skin, awakening every sense.)~ IF ~~ THEN GOTO 41.5
END

IF ~~ THEN BEGIN 41.5
   SAY ~(Her fingertips dance lightly, tracing your contours with a delicate yet intentional touch, sending shivers of desire coursing through you.)~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
   SAY ~(Her body moves in a slow, hypnotic rhythm, a sensual dance that is both an invitation and a promise. With each sway, she draws nearer, the air charged with electric tension.)~ IF ~~ THEN GOTO 42.5
END

IF ~~ THEN BEGIN 42.5
   SAY ~(Gracefully, she wraps her arms around your neck, pulling herself into your lap. Her closeness is intoxicating, her warmth radiating against you.)~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
   SAY ~(Her lips hover tantalizingly close to yours, her breath a warm caress on your skin. She leans in, her voice a sultry whisper in your ear.)~ IF ~~ THEN GOTO 43.5
END

IF ~~ THEN BEGIN 43.5
   SAY ~Mmm, <CHARNAME>. I want you to take me. I want to feel every inch of your body pressed against mine.~
       ++ ~(Place Rafaela's face in your hands, pressing your lips against hers, initiating a deep, passionate kiss.)~ GOTO 44
       ++ ~(Let your hands explore Rafaela's form, tracing the contours of her body and feeling the warmth of her skin as you slowly caress her.)~ GOTO 47
END

IF ~~ THEN BEGIN 44
   SAY ~(She leans into the kiss, her lips parting eagerly. Her arms pull you closer, the warmth of her body radiating against yours.)~ IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
   SAY ~Mmm... (She moans into the kiss, deepening it, her hands gently sliding up into your hair, fingers entwining.)~ IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
   SAY ~(Her lips begin to press more hungrily against yours, her tongue eagerly exploring your mouth.)~ IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 47
   SAY ~Ohh... (She moans in pleasure as your hands wander across her body, exploring her figure and caressing her thighs.)~ IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
   SAY ~You know exactly where to touch me, don't you? Your hands are like magic.~ IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
   SAY ~(She closes her eyes, tilting her head back, allowing herself to get lost in the sensation. A soft moan escapes her lips as you continue to explore.)~ IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
   SAY ~(You slide your hands up Rafaela's body, feeling her curves and contours with your fingertips.)~ IF ~~ THEN GOTO 50.5
END

IF ~~ THEN BEGIN 50.5
   SAY ~(Each touch is a discovery, tracing the delicate lines of her figure, reveling in the smoothness of her skin under your caress.)~ IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
   SAY ~(Your fingers trace circles around her nipples, before you take them and squeeze gently. Her skin is soft and warm to the touch, and you can feel her heart beating faster and faster.~ IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
   SAY ~(Rafaela lets out a long moan of pleasure, her head thrown back in ecstasy. You continue teasing and pinching her nipples, sending shivers through her body.)~ IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
   SAY ~Oh, <CHARNAME>... let your kisses wander... Your mouth, your tongue... they could bring such delight, if you're willing to explore.~ IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
   SAY ~(You inch closer to Rafaela, your eyes locked on her exposed breasts. She looks up at you with anticipation, her lips curling into a satisfied smirk.)~ IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
   SAY ~(You take them in you hands, tracing your fingertips around the sensitive peaks before bringing your mouth to her skin.)~ IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
   SAY ~(Your lips brush against her, sending a wave of pleasure through her body. You press lightly, letting your tongue swirl as you gently begin to suck and nibble.)~ IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
   SAY ~(Rafaela moans in response to this sensation. You increase the intensity, flicking your tongue across each one, feeling Rafaela's body quiver with pleasure.)~ IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
   SAY ~(You can feel her desire for you, her wetness against your thigh as her hips press harder against yours.)~ IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
   SAY ~This feels so good, <CHARNAME>... Don't stop here. I need more... please give me more.~
       ++ ~(Slowly begin to unfasten your belt, inviting her to take the lead.)~ GOTO 60
       ++ ~Let me explore you further. (Place your hands on Rafaela's hips, indicating your wish for her to turn around.)~ GOTO 69
END

IF ~~ THEN BEGIN 60
   SAY ~<CHARNAME>... I'm eager to wrap my lips around you and show you just how skilled I am at giving pleasure.~ IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61
   SAY ~I can already imagine the taste of you on my tongue. The thought of pleasing you this way has me brimming with anticipation.~ IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
   SAY ~(With a slight grin, she sinks to her knees in front of you and takes you in her mouth. Her tongue swirls around your head, teasing and exploring every inch, until her lips finally envelop you.)~ IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
   SAY ~(She takes you deep, her wet, hot mouth running up and down your length. The sound of your moans only spurs her on further, driving her need to give you a more intense experience.)~ IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64
   SAY ~Mmm... you taste so good in my mouth. I can feel it growing harder with every stroke of my tongue. I want to make you feel amazing, to give you the pleasure that you deserve.~ IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
   SAY ~(You run your fingers through her hair, feeling her grip tighten around you as she sucks and licks. The sensations are incredible, and you can feel yourself getting closer and closer to the edge.)~ IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
   SAY ~(You start to tense up, her experienced lips and skilled tongue working around you in perfect harmony. She takes you deeper and deeper, her mouth working its sensuous magic.)~ IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
   SAY ~Do you like that, <CHARNAME>? Do you want me to keep going... or is it time for me to take you inside me?~
       ++ ~Rafaela, your mouth is incredible... I want to finish like this.~ GOTO 68
       ++ ~Yes, it's time. I'm ready to experience you fully now.~ GOTO 105
END

IF ~~ THEN BEGIN 68
   SAY ~Oh, <CHARNAME>, hearing that makes me feel even more eager to please you. I'll make sure this experience is unforgettable for you. Just lay back and enjoy.~ IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 69
   SAY ~As you wish, <CHARNAME>. I love your desire to explore every part of me.~ IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
   SAY ~(Rafaela gracefully rises from your lap, a playful yet inviting look in her eyes. She turns around slowly, giving you a teasing glance over her shoulder.)~ IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71
   SAY ~(With a seductive ease, she then bends forward, positioning herself invitingly in front of you, her anticipation for your next move evident in her posture.)~
       ++ ~(Move with a clear intention towards the very core of Rafaela's femininity.)~ GOTO 72
       ++ ~(Place your mouth on Rafaela's more hidden and unexplored area.)~ GOTO 77
END

IF ~~ THEN BEGIN 72
   SAY ~Mmm... Oh, <CHARNAME>, your desire to taste my deepest secrets is so intoxicating. I'm yearning to feel the warmth of your mouth, to experience the depth of your devotion at the very core of my being.~ IF ~~ THEN GOTO 72.5
END

IF ~~ THEN BEGIN 72.5
   SAY ~(Rafaela's breathing becomes heavy with anticipation, a mixture of desire and longing filling the air as you navigate the path to her most intimate area.)~ IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73
   SAY ~(Each of your movements is deliberate, echoing the promise of pleasure, as she surrenders to the sensations about to unfold.)~ IF ~~ THEN GOTO 73.5
END

IF ~~ THEN BEGIN 73.5
   SAY ~(You place your hands on Rafaela's hips, pulling her in close, as you lick her passionately from behind. She moans with pleasure, pushing back against you, urging you deeper inside.)~ IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74
   SAY ~Ohh... Ohh... Yes, just like that! Every motion of your mouth is sending shivers down my spine... It's making me ache with such intense desire.~ IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75
   SAY ~(Her body moves rhythmically with yours, each movement in perfect harmony with your tongue. As you continue, Rafaela's moans grow louder, a testament to the depth of her pleasure.)~ IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76
   SAY ~(With your hands still firm on Rafaela's hips, you gently spread them open, opening her lips more fully, and allowing access to the furthest depths of her pleasure.)~ IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 77
   SAY ~(Rafaela catches her breath, sensing the direction of your exploration.)~ IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78
   SAY ~Your mouth in my untouched depths... it's a thrilling thought. I'm yours to explore, <CHARNAME>, every hidden inch. Please, lead us into this new realm of passion.~ IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79
   SAY ~(With your hands still firm on Rafaela's hips, you begin placing soft kisses along her back, slowly trailing lower and lower.)~ IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80
   SAY ~(Rafaela moans as you explore her body, and when you place your mouth on her, she feels an immediate rush of pleasure and excitement.)~ IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81
   SAY ~Ohh... my god! That feels so good, so dirty and taboo, but unbelievably pleasurable at the same time. Please don't stop, I want to experience every sensation that you have to offer.~ IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82
   SAY ~(She pushes back against your face as you explore deeper and deeper inside her. She moans in pleasure as you lick and tease her inner walls.)~ IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83
   SAY ~Oh, <CHARNAME>, don't stop... Your tongue feels so good as it explores my depths. The sensation is unlike anything I've ever felt before.~ IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84
   SAY ~I can feel myself getting so wet and desirous with every movement, craving more of your touch and pleasure. It's like you know exactly what to do to make me moan with ecstasy and passion.~ IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85
   SAY ~Keep going, <CHARNAME>, please... I feel so close to something incredible!~ IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86
   SAY ~(Your tongue darts deeper inside as Rafaela gasps in delight, instinctively pushing even harder against you, burying your face in her wetness.)~ IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87
   SAY ~(As your mouth continues to caress her, you begin to slide your hands skillfully up her body, cupping her breasts and teasing her nipples.)~ IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88
   SAY ~Your touch feels so good. I love the way you tease and tantalize me, making me feel alive with desire and passion.~ IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89
   SAY ~(Your tongue moves to begins tracing circles around Rafaela's femininity as your hands continue to caress her form. You slowly reach down and begin to explore her more intimately with your fingers.)~ IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90
   SAY ~(Rafaela's breathing quickens and her hips move of their own accord, her body desperate for the pleasure that is building inside her.)~ IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91
   SAY ~Oh! <CHARNAME>... I'm so close, so incredibly close! Yes, right there! Ohh... it's overwhelming!~ IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92
   SAY ~Keep going... please, don't stop! I'm almost there...  Everything you're doing... it's perfect! I'm... I'm about to... Ohh!~ IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93
   SAY ~(Suddenly, you sense a wave of pleasure coursing through Rafaela, her body shaking as she feels the orgasm beginning to take hold. She pushes deeper into your face, her hips thrusting aggressively.)~ IF ~~ THEN GOTO 94
END

IF ~~ THEN BEGIN 94
   SAY ~Ohh... <CHARNAME>. Please... please fuck me. I need to feel you inside of me. need it so badly, and I can't resist your touch any longer.~ IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 95
   SAY ~(Rafaela takes your length in her hands and starts to stroke you with a newfound purpose, the sensations almost too intense to bear.)~ IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96
   SAY ~(She sucks and licks, her lips and tongue working together to bring you to the brink of pleasure, her mouth feeling like a warm furnace against your skin.)~ IF ~~ THEN GOTO 96.5
END

IF ~~ THEN BEGIN 96.5
   SAY ~I want to feel you explode inside of me, filling me up with your hot release. Show me how much you need this, how much you crave this pleasure.~ IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97
   SAY ~I love exploring every inch of you, feeling you grow harder and bigger as I suck and massage you.~ IF ~~ THEN GOTO 97.5
END

IF ~~ THEN BEGIN 97.5
   SAY ~(Rafaela expertly combines the use of her hands and mouth, creating layers of intense sensations.)~ IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98
   SAY ~(Her hands are gentle yet firm, creating waves of pleasure as they move in harmony with the rhythm she sets.)~ IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98.5
   SAY ~(The warmth, the subtle pressure, and the varying tempo all blend into a symphony of overwhelming pleasure.)~ IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99
   SAY ~(Every touch, every motion is attuned to the your reactions, ensuring an experience that is both deeply satisfying and exquisitely intense.)~ IF ~~ THEN GOTO 99.5
END

IF ~~ THEN BEGIN 99.5
   SAY ~This feels so good, <CHARNAME>. I love the way you taste, so sweet and delicious. I just can't get enough, and I want to make you feel even better.~ IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 101
   SAY ~That's it, that's it... I can feel you twitch in my mouth and I just know you're getting closer. Come for me, <CHARNAME>, let me feel your release in my mouth.~ IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102
   SAY ~Ohh... Ohh! Here it comes... Yes, yes! That's it! I love it, so hot and intense. I can feel your pleasure, your passion.~ IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103
   SAY ~(As you reach your climax, Rafaela continues to suck and lick until every last drop is out, savoring the taste and feeling of your orgasm as it washes over you.)~ IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104
   SAY ~(The sensations of pleasure and bliss continue coursing through your body, as you collapse against her. She looks up at you and smiles, her lips still wet with your pleasure.)~ IF ~~ THEN GOTO 140
END

IF ~~ THEN BEGIN 105
   SAY ~(Rafaela, with a glance full of anticipation and invitation, slowly stands up. She turns to face you, her eyes locking with yours in a silent question.)~ IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 106
   SAY ~(With a playful yet suggestive movement, she turns halfway, offering a view from both the front and the back. This gesture is both an invitation and a choice, leaving the decision to your preference.)~
       ++ ~(Gently grab Rafaela's hands, guiding her to face you.)~ GOTO 107
       ++ ~(Place your hands of Rafaela's hips, encouraging her to turn around.)~ GOTO 113
END

IF ~~ THEN BEGIN 107
   SAY ~(With a look of deep affection and desire, she gracefully moves towards you, gently positioning herself onto your lap.)~ IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 108
   SAY ~(Your eyes lock, conveying a silent understanding of shared anticipation. Rafaela places her hands on your shoulders, and leans in for a passionate kiss pushing her tongue deep into your mouth.)~ IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109
   SAY ~Mmm... <CHARNAME>... I can feel your hardness pressing up against me, and I can't wait any longer. I'm going to slide down and let you inside of me.~ IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 110
   SAY ~(Rafaela looks up at you with a devilish grin as she begins to grind her hips against you. She moves back and forth, each movement creating new waves of pleasure that course through your body.)~ IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111
   SAY ~(She moans in your ear as she eases you inside, gripping you with her tightness as she begins to move. You can feel her wetness on your skin, the heat radiating off her thighs.)~ IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112
   SAY ~(She arches her back, pushing her nipples into your mouth, feeling you lick and nibble on them with intense pleasure.)~ IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 113
   SAY ~(Feeling the gentle guidance of your hands on her waist, Rafaela fully turns around with a knowing smile. She slowly positions herself on top of you, her movements graceful and deliberate.)~ IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114
   SAY ~(She takes you in her hands, swirling you around her wetness before gently sliding you in.)~ IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 115
   SAY ~Oh... yes, just like that. <CHARNAME>, you feel so amazing. This is just what I needed.~ IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116
   SAY ~(She gasps as she grinds her hips faster and harder, taking you deeper and deeper inside. Her breath catches in short gasps, her body trembling with pleasure.)~ IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117
   SAY ~Mmm... This feels so good. It's... It's unbelievable. The way you're moving with me, guiding me... it's perfect.~ IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118
   SAY ~(You begin to move your hands up and down Rafaela's back, your touch exploratory yet gentle.)~ IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119
   SAY ~(As your hands glide over her skin, your movements become more assertive, every thrust, stronger and more passionate.)~ IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 120
   SAY ~Ohhh... fuck, <CHARNAME>. I love the sensation of you inside me. Don't stop, don't stop!~ IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121
   SAY ~(Her hips continue grinding against you as she sinks down further and further, taking all of you inside her.)~ IF ~~ THEN GOTO 122
END

IF ~~ THEN BEGIN 122
   SAY ~You feel so good, <CHARNAME>, so big and hard... I'm so wet, and eager to feel every inch of you.~ IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 123
   SAY ~(She begins to move her hips in circles, her moans filling the room as she approaches her climax. She's panting and moaning, her body trembling with pleasure as she grinds faster and faster.)~ IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 124
   SAY ~Ohh... I'm going to come soon, <CHARNAME>. I can feel it building up inside. It's so intense.~ IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 125
   SAY ~Don't stop, don't stop! Ohh... Yes... Yes! I'm so close. I can't hold back any longer!~ IF ~~ THEN GOTO 126
END

IF ~~ THEN BEGIN 126
   SAY ~(Rafaela cries out as she reaches the peak of pleasure, her entire body shaking with the intensity of her orgasm.)~ IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 127
   SAY ~(She moves her hips faster and faster, her tightness increasing as she grinds against you. She gasps and moans as she reaches her climax, squeezing you as she comes.)~ IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 128
   SAY ~Ohh... yes! I'm... I'm there! <CHARNAME>, you're... you're incredible!~ IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 130
   SAY ~Mmm... It's your turn now. I want to make you feel just as good, to bring you to your peak.~ IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 131
   SAY ~(She slowly start to move my hips again, letting out a moan as she feels you pushing back into her. She moves her hips faster and faster, her breathing becoming more labored.)~ IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132
   SAY ~I want you to come for me. Don't hold back... Please... let yourself go and give in to the pleasure. Keep going.. Oh fuck... <CHARNAME>, you can do it. Give me everything you've got.~ IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 133
   SAY ~Yes... Yes! I want you to come for me so badly. You'll feel amazing. Just let it all out for me. I'm right here with you.~ IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134
   SAY ~(As she senses your approaching climax, her motions become even more deliberate, her hands gripping you tighter, her movements urging you closer to the edge.)~ IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 135
   SAY ~That's it... Oh, here it comes! It feels so good. Don't hold back! Yes, yes!~ IF ~~ THEN GOTO 137
END

IF ~~ THEN BEGIN 137
   SAY ~(She collapses against you, her breathing heavy and her body still trembling from the intensity of your shared orgasm.)~ IF ~~ THEN GOTO 138
END

IF ~~ THEN BEGIN 138
   SAY ~You're incredible, <CHARNAME>. I love seeing you like this, so free, so filled with joy. Embrace every second of this feeling.~ IF ~~ THEN GOTO 139
END

IF ~~ THEN BEGIN 139
   SAY ~(Rafaela gently lifts herself off of you, her movements slow and careful. As she rises, you can feel the wetness dripping from her thighs, a silent testament to the intensity of your passion.)~ IF ~~ THEN GOTO 140
END

IF ~~ THEN BEGIN 140
   SAY ~Oh, <CHARNAME>, that was just... so amazing! I didn't know we could connect like that... it was like a dream!~ IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141
   SAY ~I hope you felt all the butterflies I did. It was like a fairytale, you and me, sharing such a beautiful moment.~
       ++ ~You're incredible, Rafaela. I felt it all.~ GOTO 142
       ++ ~Every second with you was a dream, and I can't wait to experience that again.~ GOTO 143
       ++ ~Rafaela, that was intense, more than I ever imagined.~ GOTO 144
END

IF ~~ THEN BEGIN 142
   SAY ~Oh, <CHARNAME>, hearing you say that means so much to me. I'm glad I could share this moment with you.~ IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 143
   SAY ~<CHARNAME>, you're making me blush! I'm thrilled you want to do this again. But for now, take a moment for yourself.~ IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 144
   SAY ~I understand, <CHARNAME>, and I appreciate your honesty. It's important to take a moment to reflect on intense experiences like this.~ IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145
   SAY ~I'm going to step aside for a little bit, okay? You should have some time to just enjoy this lovely feeling, and when you're ready, just call for me. I'll be right here waiting to walk you back.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",3)
   SetGlobal("h_RafaelaDance","GLOBAL",0)
   AddExperienceParty(50)
   MoveToPoint([209.338])~ EXIT
END

IF ~Global("h_TravelToDen","GLOBAL",3)~ THEN BEGIN 146
   SAY ~Are you feeling a bit more settled now? I hope this time was as special for you as it was for me. Moments like these are rare and beautiful. They stay with us, don't they?~ IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 147
   SAY ~Remember, what we shared today is a treasure, something just for us. I'm glad I could be a part of your journey, even if it was just for a little while.~ IF ~~ THEN GOTO 148
END

IF ~~ THEN BEGIN 148
   SAY ~Always know that here, you'll find a safe place, a moment of escape, and a heart that understands. You're always welcome back, <CHARNAME>, whenever you need to feel this connection again.~ IF ~~ THEN GOTO 149
END

IF ~~ THEN BEGIN 149
   SAY ~Now, let me walk you back out. The world awaits you, but remember, the memories we made today are yours to keep, forever etched in time.~ IF ~~ THEN GOTO 150
END

IF ~~ THEN BEGIN 150
   SAY ~Take care, <CHARNAME>, and until we meet again, carry this experience with you as a token of joy.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",0)
   SetGlobal("h_SpawnRafaelaDen","GLOBAL",0)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_de2cut")~ EXIT
END

IF ~~ THEN BEGIN 151
   SAY ~Ah, <CHARNAME>, your words kindle a fire within me. The thought of moving to the bed, where we can truly lose ourselves in each other... it's exhilarating.~ IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 152
   SAY ~I'm aflame with the desire to reveal to you the full extent of my passion, to let you experience the depths of my longing and pleasure.~ IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 153
   SAY ~With me, you'll discover pleasures untold, sensations that will leave you breathless. I want to feel every inch of you, to connect with you on a level that defies words.~ IF ~~ THEN GOTO 154
END

IF ~~ THEN BEGIN 154
   SAY ~Our time on the bed will be a tapestry of desire, woven from the threads of our deepest cravings.~ IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155
   SAY ~Now, come with me, <CHARNAME>. Let's not wait any longer to indulge in our shared hunger for intimacy. Follow me to the bed, and let's surrender to the allure of unbridled passion.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",2)
   SetGlobal("h_RafaelaBed","GLOBAL",1)
   MoveToPoint([347.163])~ EXIT
END

IF ~Global("h_RafaelaBed","GLOBAL",1)~ THEN BEGIN 156
   SAY ~Just imagine, every fantasy you've harbored, every longing you've felt, can be realized right here with me.~ IF ~~ THEN GOTO 157
END

IF ~~ THEN BEGIN 157
   SAY ~Expect a journey of the senses, an exploration of pleasure unlike anything you've experienced before.~ IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 158
   SAY ~Now, let me take you on an adventure of intimacy and delight. Watch closely, for every moment from here on is a treasure, a memory we'll create together in this haven of passion.~ IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 159
   SAY ~(Rafaela approaches you with a look of deep desire. She reaches out, her touch light, yet charged with passion. Her fingers trace your features, a whisper of a touch that promises more.)~ IF ~~ THEN GOTO 160
END

IF ~~ THEN BEGIN 160
   SAY ~(She leans in for a brief, tantalizing kiss, her lips brushing against yours in a fleeting but intense connection.)~ IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 161
   SAY ~Feel my touch, <CHARNAME>, savor this moment. It's just the beginning of what I want to give you.~ IF ~~ THEN GOTO 162
END

IF ~~ THEN BEGIN 162
   SAY ~(She steps back slightly, her eyes locked with yours, a playful yet seductive smile playing on her lips.)~ IF ~~ THEN GOTO 163
END

IF ~~ THEN BEGIN 163
   SAY ~But first, let me show you everything... Let me reveal myself to you, slowly, so you can take in every detail.~ IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 164
   SAY ~(Rafaela stands at the edge of the bed, her eyes shimmering with a blend of mischief and desire.)~ IF ~~ THEN GOTO 165
END

IF ~~ THEN BEGIN 165
   SAY ~(With a slow, deliberate motion, she lifts her shift over her head, allowing it to cascade gracefully to the floor.)~ IF ~~ THEN GOTO 166
END

IF ~~ THEN BEGIN 166
   SAY ~(Beneath the fallen dress, Rafaela reveals her bewitching attire. Her bodice, a delicate weave of moonthread, embraces her contours like a lover's caress, highlighting the graceful curves of her body.)~ IF ~~ THEN GOTO 167
END

IF ~~ THEN BEGIN 167
   SAY ~(The garment encasing her lower half, fashioned from the same ethereal thread, teases the imagination, hinting at the sensual mysteries underneath.)~ IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168
   SAY ~(Rafaela's fingers dance to the laces of her top, teasing them loose with a seductive slowness.)~ IF ~~ THEN GOTO 169
END

IF ~~ THEN BEGIN 169
   SAY ~(Each pull of the string unravels more of her hidden secrets, the fabric parting to reveal the softness of her skin.)~ IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 170
   SAY ~(Once undone, the bodice slips from her shoulders revealing the fullness of her breasts. She can see the hunger your eyes and she smiles, her nipples hardening in anticipation.)~ IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 171
   SAY ~(She turns her attention to her lower half, her hands sliding over the contours of her hips as she eases the delicate fabric down.)~ IF ~~ THEN GOTO 172
END

IF ~~ THEN BEGIN 172
   SAY ~(It glides over her legs, a slow descent of moonthread leaving a trail of desire in its wake, pooling silently at her feet.)~ IF ~~ THEN GOTO 173
END

IF ~~ THEN BEGIN 173
   SAY ~(Finally, Rafaela steps out of the fallen garments, unadorned and unabashed, her beauty a thing of mesmerizing seduction.)~ IF ~~ THEN GOTO 174
END

IF ~~ THEN BEGIN 174
   SAY ~(She moves towards you, each step a dance of allure and promise, until she is mere inches away, her breath a warm caress against your skin.)~ IF ~~ THEN GOTO 175
END

IF ~~ THEN BEGIN 175
   SAY ~As I bare myself to you, <CHARNAME>, think of the pleasures that await us. Imagine the ecstasy we'll share.~ IF ~~ THEN GOTO 176
END

IF ~~ THEN BEGIN 176
   SAY ~(Rafaela's tone is both inviting and filled with arousal, her body language echoing the intimacy and excitement of the moment.)~ IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 177
   SAY ~Every curve, every part of me is yours to explore, to adore. I want you to see me, truly see me, before we lose ourselves in each other.~
       ++ ~Rafaela, your beauty is captivating. Every curve of your body is a masterpiece that I'm eager to explore.~ GOTO 178
       ++ ~The sight of you is breathtaking. I can hardly wait to discover all the pleasures you promise.~ GOTO 178
END

IF ~~ THEN BEGIN 178
   SAY ~Come to me, <CHARNAME>. Don't hold back any longer. Take me in your arms, embrace all that I am.~ IF ~~ THEN GOTO 179
END

IF ~~ THEN BEGIN 179
   SAY ~I'm here, waiting for you to claim the passion that burns between us. Let's lose ourselves in this moment, together.~ IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 180
   SAY ~(Drawing you close, Rafaela initiates a deep, passionate kiss. Your tongues meet, exploring each other with a hunger that speaks volumes of the desire building between you.)~ IF ~~ THEN GOTO 181
END

IF ~~ THEN BEGIN 181
   SAY ~Mmm... Can you feel how much I want you?~ IF ~~ THEN GOTO 182
END

IF ~~ THEN BEGIN 182
   SAY ~(Gradually, her hands descend down your chest, her fingers teasing beneath your shirt.)~ IF ~~ THEN GOTO 183
END

IF ~~ THEN BEGIN 183
   SAY ~Your heart... it races just for me.~ IF ~~ THEN GOTO 184
END

IF ~~ THEN BEGIN 184
   SAY ~(Skillfully, she begins to unbutton your top, maintaining eye contact, an unspoken promise lingering in her gaze.)~ IF ~~ THEN GOTO 185
END

IF ~~ THEN BEGIN 185
   SAY ~(The distance closes as she presses her body against yours, the heat from her skin igniting a fire within. She kisses you again, deeper this time, savoring the sensuous taste of your lips.)~ IF ~~ THEN GOTO 186
END

IF ~~ THEN BEGIN 186
   SAY ~(Her hands continue their journey downward, as the sound of your belt unlacing blends with a soft whimper as she feels your growing arousal.)~ IF ~~ THEN GOTO 187
END

IF ~~ THEN BEGIN 187
   SAY ~(With the last piece of your clothing falling away, her smile widens. Her eyes are laced with desire, as the last barrier between you disappears.)~ IF ~~ THEN GOTO 188
END

IF ~~ THEN BEGIN 188
   SAY ~I can't get enough of you... and now, you're all mine.~
       ++ ~(Begin to explore Rafaela, your hands expressing a deep desire through every touch.)~ GOTO 189
       ++ ~(Allow Rafaela to lead, becoming a canvas for her sensual exploration.)~ GOTO 209
END

IF ~~ THEN BEGIN 189
   SAY ~(You place your hands on Rafaela's hips, a firm yet gentle touch that promises more to come. Slowly, you begin to glide upwards, tracing the contours of her body with a deliberate and exploring touch.)~ IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 190
   SAY ~(Rafaela's skin tingles under your caress, each movement igniting a trail of desire.)~ IF ~~ THEN GOTO 191
END

IF ~~ THEN BEGIN 191
   SAY ~Ohh, <CHARNAME>. Your hands... they speak a language all their own. The way you touch me, it's like you're reading every inch of my skin.~ IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 192
   SAY ~(As your hands reach her breasts, they linger there, exploring and feeling as her nipples harden under your touch. Rafaela arches slightly into your grasp, a soft moan escaping her lips.)~ IF ~~ THEN GOTO 193
END

IF ~~ THEN BEGIN 193
   SAY ~Mmm... right there. You know exactly where to touch, how to make me quiver with pleasure. Your hands are like magic.~ IF ~~ THEN GOTO 194
END

IF ~~ THEN BEGIN 194
   SAY ~(Your fingers work with a mix of gentleness and intention, bringing an intense pleasure to Rafaela. She responds with increasing ardor, her body moving subtly in rhythm with your touch.)~ IF ~~ THEN GOTO 195
END

IF ~~ THEN BEGIN 195
   SAY ~Yes, just like that, <CHARNAME>. The way you caress me, it's so... intense. I can feel every sensation, every touch sending waves of pleasure through me.~ IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196
   SAY ~(Rafaela's reactions are a blend of verbal expressions and physical responses, her whimpers and moans punctuating the air. She leans into each movement, craving the depth of sensation your hands evoke.)~ IF ~~ THEN GOTO 197
END

IF ~~ THEN BEGIN 197
   SAY ~Every second under your touch is ecstasy. I'm so sensitive to your every move... it's overwhelming in the most exquisite way.~ IF ~~ THEN GOTO 198
END

IF ~~ THEN BEGIN 198
   SAY ~(Rafaela, her eyes alight with desire, gently takes your hand in hers. With a tender urgency, she guides it down between her legs.)~ IF ~~ THEN GOTO 199
END

IF ~~ THEN BEGIN 199
   SAY ~(The heat from her core is palpable, a silent invitation to the depths of her passion. She slowly breathes out, her voice quivering with excitement.)~ IF ~~ THEN GOTO 200
END

IF ~~ THEN BEGIN 200
   SAY ~Feel my warmth, <CHARNAME>, I'm burning with desire for you... Every part of me is longing for your touch.~ IF ~~ THEN GOTO 201
END

IF ~~ THEN BEGIN 201
   SAY ~(As your fingers make contact, Rafaela's body responds instinctively, her hips moving gently against your hand. The sensation of her wetness is both an alluring promise and a testament to her arousal.)~ IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 202
   SAY ~Ohh... right there. Your touch sets me on fire. Every move, every caress, it's like a spark igniting me from within.~ IF ~~ THEN GOTO 203
END

IF ~~ THEN BEGIN 203
   SAY ~(Rafaela guides your rhythm, showing you the path to her pleasure. She moves her hips against your fingers, intensify her reactions, forcing her moans to grow louder.)~ IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 204
   SAY ~Keep going, <CHARNAME>. I can feel every sensation so deeply. Your fingers are exploring me in ways I've only dreamed of. It feels incredible.~ IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 205
   SAY ~(You gently begin to massage her upper femininity, making circles with your thumb as you press your fingers deeper inside. She closes her eyes and moans, her hips still rocking against your touch.)~ IF ~~ THEN GOTO 206
END

IF ~~ THEN BEGIN 206
   SAY ~(Rafaela's body moves in sync with yours, her breaths now a chorus of whimpers and gasps. She is completely immersed in the sensation, surrendering to the waves of pleasure you evoke.)~ IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 207
   SAY ~Ohh, yes, just like that! You're discovering all of me... every hidden part. I'm so close, <CHARNAME>. Your touch, it's taking me there.~ IF ~~ THEN GOTO 208
END

IF ~~ THEN BEGIN 208
   SAY ~Mmm... <CHARNAME>, I can't hold back any longer. The way you touch me, the way you make me feel... it's too much, and yet, not enough.~ IF ~~ THEN GOTO 235.5
END

IF ~~ THEN BEGIN 209
   SAY ~(Rafaela perceives your silent invitation to take control, a glint of delight sparking in her eyes. She understands the trust and desire this gesture conveys, the freedom to explore you as she pleases.)~ IF ~~ THEN GOTO 210
END

IF ~~ THEN BEGIN 210
   SAY ~Oh, <CHARNAME>, I love that you're letting me lead. The power to explore you, to discover what brings you the most pleasure... it's intoxicating.~ IF ~~ THEN GOTO 211
END

IF ~~ THEN BEGIN 211
   SAY ~(Her fingers begin their journey, tracing a path from your chest down to your manhood. Each touch is intentional, a dance of her fingertips over your skin, kindling the flames of your arousal.)~ IF ~~ THEN GOTO 212
END

IF ~~ THEN BEGIN 212
   SAY ~As I touch you here... I can feel your desire growing. It's such a pleasing feeling to know I can do this to you.~ IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 213
   SAY ~(Her hands reach their destination, her fingers wrapping around you with a confident yet tender grip. She starts to massage you, her movements a blend of skill and instinct.)~ IF ~~ THEN GOTO 214
END

IF ~~ THEN BEGIN 214
   SAY ~(She whispers into your ear, her breath hot against your skin.)~ IF ~~ THEN GOTO 214.5
END

IF ~~ THEN BEGIN 214.5
   SAY ~Mmm... Do you feel that, <CHARNAME>? Every stroke, every caress, it's all for you. I want to make you feel incredible.~ IF ~~ THEN GOTO 215
END

IF ~~ THEN BEGIN 215
   SAY ~(As she continues, her kisses trail up to your ear, her mouth alternating between soft pecks and intense kisses. Her hand movements are rhythmic, each motion designed to heighten your pleasure.)~ IF ~~ THEN GOTO 216
END

IF ~~ THEN BEGIN 216
   SAY ~Let yourself go, <CHARNAME>. Surrender to the sensations. I want to take you to the edge and beyond. Just relax and enjoy.~ IF ~~ THEN GOTO 217
END

IF ~~ THEN BEGIN 217
   SAY ~(She beings to increase the speed and pressure of her strokes.)~ IF ~~ THEN GOTO 217.5
END

IF ~~ THEN BEGIN 217.5
   SAY ~I can sense your pleasure building, and it's driving me to give you even more.~ IF ~~ THEN GOTO 218
END

IF ~~ THEN BEGIN 218
   SAY ~Ohh, just like that... You're so responsive, <CHARNAME>. Every time I touch you, I feel your body react, quivering under my fingers.~ IF ~~ THEN GOTO 219
END

IF ~~ THEN BEGIN 219
   SAY ~(As her hands work up and down your length with renewed purpose, she can feel you growing more aroused. She begins trailing kisses down your chest, creating a path of heated desire leading her lower.)~ IF ~~ THEN GOTO 220
END

IF ~~ THEN BEGIN 220
   SAY ~I want to explore every inch of you, to learn what makes you tremble, what takes you to the brink of ecstasy.~ IF ~~ THEN GOTO 221
END

IF ~~ THEN BEGIN 221
   SAY ~Your body calls to me, inviting me to discover the secrets of your pleasure. Let me journey across the landscape of your desire, savoring each moment as I uncover the depths of your passion.~ IF ~~ THEN GOTO 222
END

IF ~~ THEN BEGIN 222
   SAY ~(Rafaela slowly begins to shift her position, her lips journeying closer down. The anticipation in her breaths, the soft hums of her pleasure, they all build a crescendo of expectation.)~ IF ~~ THEN GOTO 223
END

IF ~~ THEN BEGIN 223
   SAY ~(Rafaela looks up at you, her eyes shimmering with a blend of desire and anticipation. Her voice is laced with longing, each word dripping with sensuality.)~ IF ~~ THEN GOTO 224
END 

IF ~~ THEN BEGIN 224
   SAY ~I want to feel you, <CHARNAME>, in a way that words just can't describe. I've been fantasizing about it for a while, and I'm ready to make it a reality.~ IF ~~ THEN GOTO 225
END

IF ~~ THEN BEGIN 225
   SAY ~(She moves closer, her breath warm against your skin. Her lips just inches away from you.)~ IF ~~ THEN GOTO 226
END

IF ~~ THEN BEGIN 226
   SAY ~I want to take you in, to give you a pleasure that's as deep as it is intense. I can't wait to taste, feel, and explore every inch of you.~ IF ~~ THEN GOTO 227
END

IF ~~ THEN BEGIN 227
   SAY ~(Slowly and deliberately, Rafaela takes you into her mouth. The sensation is immediate and overwhelming, a warm, enveloping pressure that sends waves of pleasure coursing through you.)~ IF ~~ THEN GOTO 228
END

IF ~~ THEN BEGIN 228
   SAY ~(You can feel the wetness on her lips and she takes you in hungrily, her tongue swirling around. Her movements are gentle yet purposeful, each motion carefully calculated to heighten your arousal.)~ IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 229
   SAY ~(As Rafaela continues to lick and suck on you, she looks up, maintaining a deep, intimate eye contact that only adds to the intensity of the moment.)~ IF ~~ THEN GOTO 230
END

IF ~~ THEN BEGIN 230
   SAY ~Feel every sensation. Let me take you on a journey of pure ecstasy, to heights of pleasure you've never known. Surrender to this moment, to the warmth and depth of my desire for you.~ IF ~~ THEN GOTO 231
END

IF ~~ THEN BEGIN 231
   SAY ~(Rafaela's movements become more fervent, her mouth working with increased purpose. She alternates the pressure, her tongue skillfully playing along, adding layers of sensation.)~ IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 232
   SAY ~(Her eyes remain locked with yours, a silent communication of her intent to bring you to the peak of pleasure.)~ IF ~~ THEN GOTO 233
END

IF ~~ THEN BEGIN 233
   SAY ~(As she quickens her pace, Rafaela places her hands back on you, joining her mouth in its rhythmic motion, heightening your stimulation.)~ IF ~~ THEN GOTO 233.5
END

IF ~~ THEN BEGIN 233.5
   SAY ~Mmm... You taste you good in my mouth. I want to feel you lose control, <CHARNAME>, to bring you to your peak.~ IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 234
   SAY ~(Her technique is a blend of passion and expertise, each movement of her mouth and hands orchestrated to intensify your arousal.)~ IF ~~ THEN GOTO 234.5
END

IF ~~ THEN BEGIN 234.5
   SAY ~(The combination of her eager sucking, the teasing flicks of her tongue, and the caressing motions of her hands drive you closer to climax.)~ IF ~~ THEN GOTO 235.5
END

IF ~~ THEN BEGIN 235.5
   SAY ~I'm ready for you, more ready than I've ever been. I want you to fuck me now, to lose ourselves in each other completely.~ IF ~~ THEN GOTO 236
END

IF ~~ THEN BEGIN 236
   SAY ~Let's give in to this passion, to this overwhelming need. I want to feel you inside me, <CHARNAME>, to connect with you on every level.~ IF ~~ THEN GOTO 236.5
END

IF ~~ THEN BEGIN 236.5
   SAY ~(Rafaela's eyes are ablaze with longing, her body language echoing her urgent desire. Each word she speaks is an open invitation, a call to the culmination of your shared passion.)~ IF ~~ THEN GOTO 237
END

IF ~~ THEN BEGIN 237
   SAY ~Please, don't make me wait any longer. I need you now, <CHARNAME>. Let's unite, body and soul, in the most intimate dance of all.~ IF ~~ THEN GOTO 238
END

IF ~~ THEN BEGIN 238
   SAY ~Unless, <CHARNAME>... do you desire to release all your passion here, in my mouth? Or shall we take this to the bed, where I can give myself to you completely?~ IF ~~ THEN GOTO 239
END

IF ~~ THEN BEGIN 239
   SAY ~Tell me, where do you long to feel the climax of our love?~
       ++ ~I want to finish right here, with you, Rafaela. Feeling the warmth of your mouth is all I need.~ GOTO 240
       ++ ~Let's move to the bed. I want to be with you fully, and feel our passion unite.~ GOTO 264
END

IF ~~ THEN BEGIN 240
   SAY ~(Rafaela nods understandingly, a sultry glint in her eyes. She refocuses her efforts, her mouth enveloping you with a fervor that speaks volumes of her dedication to your pleasure.)~ IF ~~ THEN GOTO 241
END

IF ~~ THEN BEGIN 241
   SAY ~You've made a thrilling choice, <CHARNAME>. I'm going to use every skill I possess to bring you to the heights of ecstasy.~ IF ~~ THEN GOTO 242
END

IF ~~ THEN BEGIN 242
   SAY ~(With expert precision, she varies her technique. Her tongue swirls and teases, exploring every sensitive spot with a deliberate intent to elicit maximum pleasure.)~ IF ~~ THEN GOTO 243
END

IF ~~ THEN BEGIN 243
   SAY ~(The warmth and wetness of her mouth, combined with the rhythmic motion of her hands, create a symphony of sensations.)~ IF ~~ THEN GOTO 244
END

IF ~~ THEN BEGIN 244
   SAY ~<CHARNAME>, you're so hard... I can feel how much you're enjoying this. Let me take you further. Surrender to the pleasure, to the intensity of my mouth and hands.~ IF ~~ THEN GOTO 245
END

IF ~~ THEN BEGIN 245
   SAY ~(She continues her endeavor, this time incorporating more of her mouth, her lips pressing and moving in a dance of passion.)~ IF ~~ THEN GOTO 246
END

IF ~~ THEN BEGIN 246
   SAY ~(Her hands complement her oral efforts, one hand fervently working in unison with her mouth, while the other explores and teases elsewhere, heightening the overall sensation.)~ IF ~~ THEN GOTO 247
END

IF ~~ THEN BEGIN 247
   SAY ~Do you feel that, <CHARNAME>? The way I take you in, the way my tongue dances around your cock... Mmm... It's all for you.~ IF ~~ THEN GOTO 248
END

IF ~~ THEN BEGIN 248
   SAY ~(Her breath hot against your skin, as her moans vibrate through you, adding another layer of stimulation.)~ IF ~~ THEN GOTO 249
END

IF ~~ THEN BEGIN 249
   SAY ~(Rafaela's movements become more urgent, her pace quickening as she senses your approaching climax. Her eyes lock with yours, a silent encouragement to let go.)~ IF ~~ THEN GOTO 250
END

IF ~~ THEN BEGIN 250
   SAY ~I want you to release everything with me, <CHARNAME>. Let me feel your climax, your hot release filling my mouth. Let me be the one to take you there.~ IF ~~ THEN GOTO 251
END

IF ~~ THEN BEGIN 251
   SAY ~Come for me, <CHARNAME>, let me taste the depth of your desire.~ IF ~~ THEN GOTO 252
END

IF ~~ THEN BEGIN 252
   SAY ~(Feeling the imminent surge of your climax, she intensifiess her efforts, fully committed to your ultimate pleasure.)~ IF ~~ THEN GOTO 253
END

IF ~~ THEN BEGIN 253
   SAY ~(Her mouth works in perfect harmony with her hands, a seamless dance of passion and skill. She looks up at you, her eyes full of desire, urging you to let go.)~ IF ~~ THEN GOTO 254
END

IF ~~ THEN BEGIN 254
   SAY ~Now, <CHARNAME>, let it all go. I want to feel your release, to taste the intensity of your passion.~ IF ~~ THEN GOTO 255
END

IF ~~ THEN BEGIN 255
   SAY ~(As you reach your peak, and surrender to the overwhelming pleasure, Rafaela welcomes your climax.)~ IF ~~ THEN GOTO 256
END

IF ~~ THEN BEGIN 256
   SAY ~(She continues her movements, her mouth and tongue working tirelessly, ensuring every moment is prolonged and savored.)~ IF ~~ THEN GOTO 257
END

IF ~~ THEN BEGIN 257
   SAY ~Yes, that's it. Give me everything, let me cherish this moment.~ IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 258
   SAY ~(Rafaela moans, her voice vibrating against you as she continues to draw out every last drop.)~ IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 259
   SAY ~(As you shudder through your climax, she maintains her rhythm, her lips and tongue skillfully sucking and caressing, drawing out the intensity of your experience.)~ IF ~~ THEN GOTO 261
END

IF ~~ THEN BEGIN 261
   SAY ~I can feel you, <CHARNAME>, every pulse, every tremor. There's so much, and it tastes so, so good.~ IF ~~ THEN GOTO 262
END

IF ~~ THEN BEGIN 262
   SAY ~(Even as the intensity of the moment begins to fade, Rafaela's actions are tender and caring.)~ IF ~~ THEN GOTO 263
END

IF ~~ THEN BEGIN 263
   SAY ~(She softly continues, her licks and caresses gentle and soothing, ensuring your experience is complete and fulfilling.)~ IF ~~ THEN GOTO 418
END

IF ~~ THEN BEGIN 264
   SAY ~(Rafaela smiles seductively, her eyes sparkling with anticipation.)~ IF ~~ THEN GOTO 265
END

IF ~~ THEN BEGIN 265
   SAY ~(She gracefully moves to the bed, each step a part of her enthralling performance. Reaching the edge, she turns and gives you a teasing glance over her shoulder.)~ IF ~~ THEN GOTO 266
END

IF ~~ THEN BEGIN 266
   SAY ~Watch me, <CHARNAME>. I want to show you just how much I desire you.~ IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267
   SAY ~(Slowly, Rafaela climbs onto the bed, her movements deliberate and sensuous. She lies back against the pillows, her gaze fixed on you with burning intensity.)~ IF ~~ THEN GOTO 268
END

IF ~~ THEN BEGIN 268
   SAY ~(With a flirtatious and deliberate motion, she spreads her legs open, an unmistakable invitation to the pleasures that await.)~ IF ~~ THEN GOTO 269
END

IF ~~ THEN BEGIN 269        
   SAY ~Do you see how wet I am for you? Every part of me is aching for your touch, longing to be united with you.~ IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270
   SAY ~(She runs her hands over her body, from her breasts down to her thighs, a visual display of her own arousal.)~ IF ~~ THEN GOTO 271
END

IF ~~ THEN BEGIN 271
   SAY ~(Her fingers linger on her lower lips, teasing and exploring, as if to demonstrate what awaits you.)~ IF ~~ THEN GOTO 272
END

IF ~~ THEN BEGIN 272
   SAY ~I want you to take me, <CHARNAME>, but I also want to know how you desire me.~ IF ~~ THEN GOTO 273
END

IF ~~ THEN BEGIN 273
   SAY ~Do you want me beneath you, surrendering to your lead? Or should I be on top, guiding us through the waves of our passion?~
       ++ ~I want you beneath me, Rafaela. I want to feel your entire body responding to mine as I lead.~ GOTO 274
       ++ ~Be on top, Rafaela. I want to see you in control, to experience the passion you can bring.~ GOTO 322
END

IF ~~ THEN BEGIN 274
   SAY ~I love how you take charge, <CHARNAME>. I want to feel you above me, leading our dance of passion... it's what I've been craving.~ IF ~~ THEN GOTO 275
END

IF ~~ THEN BEGIN 275
   SAY ~She positions herself on the bed, her gaze inviting and intense, as she awaits your next move.)~ IF ~~ THEN GOTO 276
END

IF ~~ THEN BEGIN 276
   SAY ~(As you climb onto the bed and position yourself above her, Rafaela's eyes lock onto yours. She reaches up to caress your face, pulling you down for a deep, longing kiss.)~ IF ~~ THEN GOTO 277
END

IF ~~ THEN BEGIN 277
   SAY ~(Her lips move against yours with a fervent desire, conveying her eagerness and surrender.)~ IF ~~ THEN GOTO 278
END

IF ~~ THEN BEGIN 278
   SAY ~Show me how much you want me, I want to feel every part of you in me, to be completely yours in this moment.~ IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 279
   SAY ~(You can feel her body responding to your presence, her skin warm and inviting under your touch.)~ IF ~~ THEN GOTO 280
END

IF ~~ THEN BEGIN 280
   SAY ~(Her hands roam across your back, encouraging and guiding your movements, a silent plea for you to explore her.)~ IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281
   SAY ~Fuck me, <CHARNAME>, fuck me in the way only you can. I want to lose myself in you, to feel our passion unite and explode in an ecstasy of love.~ IF ~~ THEN GOTO 282
END

IF ~~ THEN BEGIN 282
   SAY ~(As you align yourself with Rafaela, there's a moment of intense anticipation. The air around you seems to pulse with desire, laden with the promise of the unspoken pleasures yet to come.)~ IF ~~ THEN GOTO 283
END

IF ~~ THEN BEGIN 283
   SAY ~(You take your time, teasingly rubbing your tip up and down Rafaela's wetness, coating yourself with her slickness. Each movement is deliberate, heightening the tension and passion.)~ IF ~~ THEN GOTO 284
END

IF ~~ THEN BEGIN 284
   SAY ~The way you're teasing me... it's maddening. I can feel you, so close, yet not quite there.~ IF ~~ THEN GOTO 285
END

IF ~~ THEN BEGIN 285
   SAY ~(With every glide along her, Rafaela squirms, each contact sending sparks of pleasure through her. She bites her lip, a whimper escaping as she feels the teasing pressure.)~ IF ~~ THEN GOTO 286
END

IF ~~ THEN BEGIN 286
   SAY ~Please... Don't make me wait any longer. I need you inside me.~ IF ~~ THEN GOTO 287
END

IF ~~ THEN BEGIN 287
   SAY ~(You respond to her plea, slowly beginning to ease into her. Rafaela's response is immediate and intense, a sharp gasp fills the air as she feels the gradual penetration.)~ IF ~~ THEN GOTO 287
END

IF ~~ THEN BEGIN 288
   SAY ~(Her hands clutch at the sheets, her nails digging in as she tries to anchor herself in the overwhelming wave of sensations.)~ IF ~~ THEN GOTO 289
END

IF ~~ THEN BEGIN 289
   SAY ~Ohh, <CHARNAME>! The feeling of you, slowly filling me... it's incredible. I can feel every pulse, every inch of you joining with me.~ IF ~~ THEN GOTO 290
END

IF ~~ THEN BEGIN 290
   SAY ~(The sensation is exquisite, a perfect blend of shock and pleasure. With each inch, Rafaela's moans grow louder, more fervent.)~ IF ~~ THEN GOTO 291
END

IF ~~ THEN BEGIN 291
   SAY ~(Her body arches instinctively, welcoming you completely. The shock of that initial connection sends ripples of pleasure through both of you, a tangible electricity that ignites every nerve ending.)~ IF ~~ THEN GOTO 291.5
END

IF ~~ THEN BEGIN 291.5
   SAY ~You're so deep... but so gentle. It feels like you're reaching into the farthest parts of me. Every movement is a wave of ecstasy.~ IF ~~ THEN GOTO 292
END

IF ~~ THEN BEGIN 292
   SAY ~(You can feel her inner warmth enveloping you, a velvet embrace that tightens and releases with every movement.)~ IF ~~ THEN GOTO 293
END

IF ~~ THEN BEGIN 293
   SAY ~(The sensation is intense, almost too much to bear, as if every fantasy you've ever had is coming to life in this single moment.)~ IF ~~ THEN GOTO 294
END

IF ~~ THEN BEGIN 294
   SAY ~You're so deep, <CHARNAME>, so deep inside me. Every thrust, every move... it's like you're reaching into my very soul.~ IF ~~ THEN GOTO 295
END

IF ~~ THEN BEGIN 295
   SAY ~(The room is filled with the sounds of your union, the rhythmic melody of flesh meeting flesh, the symphony of your shared ecstasy.)~ IF ~~ THEN GOTO 296
END

IF ~~ THEN BEGIN 296
   SAY ~(Rafaela's vocal expressions are uninhibited, a raw testament to the depth of her enjoyment.)~ IF ~~ THEN GOTO 297
END

IF ~~ THEN BEGIN 297
   SAY ~(As the intensity between you escalates, your thrusts grow harder and faster, each one a surge of shared passion.)~ IF ~~ THEN GOTO 297.5
END

IF ~~ THEN BEGIN 297.5
   SAY ~(Rafaela's body responds with rising fervor, her every movement a testament to the mounting pleasure building within her.)~ IF ~~ THEN GOTO 298
END

IF ~~ THEN BEGIN 298
   SAY ~Oh... <CHARNAME>, yes, just like that! Your thrusts... they're perfect. So deep, so intense.~ IF ~~ THEN GOTO 298.5
END

IF ~~ THEN BEGIN 298.5
   SAY ~(She moans deeply as your hands find their way to her breasts, caressing and feeling them, the sensation amplifying the pleasure that's coursing through her.)~ IF ~~ THEN GOTO 299
END

IF ~~ THEN BEGIN 299
   SAY ~Mmm... your hands on me, it's driving me wild. Every touch sends waves of ecstasy through my body.~ IF ~~ THEN GOTO 300
END

IF ~~ THEN BEGIN 300
   SAY ~The way you're moving... it's taking me to places I've never been. I can feel every inch of you, filling me, stretching my tight pussy to its limits.~ IF ~~ THEN GOTO 301
END

IF ~~ THEN BEGIN 301
   SAY ~(Rafaela's voice escalates in pitch and frequency, a clear sign of her building climax.)~ IF ~~ THEN GOTO 302
END

IF ~~ THEN BEGIN 302
   SAY ~Ohh, <CHARNAME>, I'm almost there! Don't stop, please, don't stop. I'm so close... Keep going, harder, faster! I'm about to... Ohh! Yes! Right there! That's it!~ IF ~~ THEN GOTO 304
END

IF ~~ THEN BEGIN 304
   SAY ~(With every thrust, Rafaela's responses become more unrestrained. Her body moves in harmony with yours, meeting each of your movements with equal fervor.)~ IF ~~ THEN GOTO 305
END

IF ~~ THEN BEGIN 305
   SAY ~(Suddenly, she reaches her climax, an explosion of pleasure that ripples through her entire body.)~ IF ~~ THEN GOTO 306
END

IF ~~ THEN BEGIN 306
   SAY ~Ohh, fuck... <CHARNAME>! I'm... I'm coming!~ IF ~~ THEN GOTO 307
END

IF ~~ THEN BEGIN 307
   SAY ~(Rafaela cries out, her voice cracking with the intensity of her orgasm. It's a raw, powerful release, her body shuddering and convulsing beneath you.)~ IF ~~ THEN GOTO 309
END

IF ~~ THEN BEGIN 309
   SAY ~(As she recovers from her intense orgasm, Rafaela, continues to match your pace. Her movements are a mix of post-climax sensitivity and a desire to bring you to your own peak.)~ IF ~~ THEN GOTO 310
END

IF ~~ THEN BEGIN 310
   SAY ~(Just as you are on the brink, and sensing your imminent release, she looks into your eyes and whispers breathlessly.)~ IF ~~ THEN GOTO 311
END

IF ~~ THEN BEGIN 311
   SAY ~<CHARNAME>... Do you want to finish inside me, feeling our connection to the very last moment?~ IF ~~ THEN GOTO 312
END

IF ~~ THEN BEGIN 312
   SAY ~Or would you prefer to release in my mouth, feeling the warmth and intensity of my desire as I bring you to the peak of your ecstasy?~ IF ~~ THEN GOTO 313
END

IF ~~ THEN BEGIN 313
   SAY ~The choice is yours, and I'll cherish every moment, wherever you decide to surrender your pleasure.~
       ++ ~I want to finish inside you, Rafaela. I want to feel our connection as I reach my climax.~ GOTO 314
       ++ ~I want you to take me in your mouth, Rafaela, to feel the warmth and intensity.~ GOTO 400
END

IF ~~ THEN BEGIN 314
   SAY ~Inside me... Yes, <CHARNAME>, a perfect choice. Let's delve into the depth of our desire, and feel every sensation at its deepest.~ IF ~~ THEN GOTO 315
END

IF ~~ THEN BEGIN 315
   SAY ~(She pulls you closer, wrapping her arms around you in a tight embrace. The renewed rhythm of your movements together is a perfect harmony of desire and intimacy.)~ IF ~~ THEN GOTO 316
END

IF ~~ THEN BEGIN 316
   SAY ~(Her body responds to each of your thrusts with a fervent eagerness. As the pace quickens, Rafaela's hands travel along your back, finding their way down.)~ IF ~~ THEN GOTO 317
END

IF ~~ THEN BEGIN 317
   SAY ~(She grips you firmly, each squeeze a silent encouragement to drive deeper into her. Her actions are perfectly synchronized with your thrusts, intensifying the depth and pleasure of each movement.)~ IF ~~ THEN GOTO 318
END

IF ~~ THEN BEGIN 318
   SAY ~Deeper, <CHARNAME>, let's reach the climax together. I want to feel all of you, to be filled with your hot release.~ IF ~~ THEN GOTO 319
END

IF ~~ THEN BEGIN 319
   SAY ~(As you both move in unison, the tension builds to an almost unbearable level. Rafaela's encouragement and the tightness of her embrace push you closer to the brink.)~ IF ~~ THEN GOTO 320
END

IF ~~ THEN BEGIN 320
   SAY ~(The sensation of being so intimately connected, coupled with her fervent squeezes, propels you towards an explosive climax.)~ IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 321
   SAY ~(With a final, deep thrust, you reach your peak, releasing inside her in a powerful, all-consuming moment. Rafaela holds you tightly, her own body trembling with the intensity of the shared experience.)~ IF ~~ THEN GOTO 391
END

IF ~~ THEN BEGIN 322
   SAY ~(She rises gracefully, a confident and seductive smile playing on her lips. She understands the power of this role reversal and relishes the opportunity to guide the experience.)~ IF ~~ THEN GOTO 323
END

IF ~~ THEN BEGIN 323
   SAY ~Seeing me in control, <CHARNAME>? I promise, you won't be disappointed.~ IF ~~ THEN GOTO 324
END

IF ~~ THEN BEGIN 324
   SAY ~(She moves towards you, her steps slow and deliberate, each movement a display of her confidence and sensuality.)~ IF ~~ THEN GOTO 325
END

IF ~~ THEN BEGIN 325
   SAY ~(With a seductive ease, she guides you to lie down on the bed, her hands gently pressing against your chest.)~ IF ~~ THEN GOTO 326
END

IF ~~ THEN BEGIN 326
   SAY ~Let me show you the depths of my passion.~ IF ~~ THEN GOTO 326.5
END

IF ~~ THEN BEGIN 326.5
   SAY ~(She begins straddling her legs around you, her movements fluid, a dance of intimacy as she positions herself above you.)~ IF ~~ THEN GOTO 327
END

IF ~~ THEN BEGIN 327
   SAY ~I want you to feel every part of me, to experience the intensity I can bring.~ IF ~~ THEN GOTO 328
END

IF ~~ THEN BEGIN 328
   SAY ~(Rafaela begins to move, setting a rhythm that is both tantalizing and deliberate. Her eyes remain locked with yours, a silent communication filled with desire and control.)~ IF ~~ THEN GOTO 329
END

IF ~~ THEN BEGIN 329
   SAY ~(She leans forward, her hands exploring your chest, her hips undulating in a sensual dance that heightens the pleasure for both of you.)~ IF ~~ THEN GOTO 330
END

IF ~~ THEN BEGIN 330
   SAY ~Feel how I move, <CHARNAME>, how I take you in. Every motion, every touch, it's all for you... to bring you to the heights of ecstasy.~ IF ~~ THEN GOTO 331
END

IF ~~ THEN BEGIN 331
   SAY ~(While straddling you, Rafaela pauses her movements, a mischievous and sensual look in her eyes.)~ IF ~~ THEN GOTO 332
END

IF ~~ THEN BEGIN 332
   SAY ~Are you ready to feel what true pleasure is, <CHARNAME>?~ IF ~~ THEN GOTO 333
END

IF ~~ THEN BEGIN 333
   SAY ~(She reaches down, her fingers wrapping around your length. With deliberate slowness, she begins to rub it up and down against her wetness, coating you with her slickness.)~ IF ~~ THEN GOTO 334
END

IF ~~ THEN BEGIN 334
   SAY ~(Each movement is a tease, a promise of the deeper pleasure to come. She slowly increases the pressure of her movements, heightening your arousal.)~ IF ~~ THEN GOTO 335
END

IF ~~ THEN BEGIN 335
   SAY ~Mmm... <CHARNAME>. Can you feel how ready I am for you? Every glide, every touch, it's leading us to that perfect moment.~ IF ~~ THEN GOTO 336
END

IF ~~ THEN BEGIN 336
   SAY ~(Then, with a look of intense desire in her eyes, she aligns herself and begins to lower down onto you.)~ IF ~~ THEN GOTO 337
END

IF ~~ THEN BEGIN 337
   SAY ~(The sensation is gradual but intense, as she takes you inside her, inch by inch, until you're fully enveloped in her warmth.)~ IF ~~ THEN GOTO 338
END

IF ~~ THEN BEGIN 338
   SAY ~(Rafaela cries out as she fully engulfs you, her voice ringing out with a mixture of pleasure and ecstasy.)~ IF ~~ THEN GOTO 339
END

IF ~~ THEN BEGIN 339
   SAY ~Ohh, <CHARNAME>! The feeling of you, so deep inside me... it's so incredible!~ IF ~~ THEN GOTO 340
END

IF ~~ THEN BEGIN 340
   SAY ~(She pauses for a moment, savoring the sensation of being completely filled, her body trembling with the intensity of the initial connection.)~ IF ~~ THEN GOTO 341
END

IF ~~ THEN BEGIN 341
   SAY ~(Her breaths are heavy, a mix of gasps and moans, as she begins to move again, setting a rhythm that is both exhilarating and deeply intimate.)~ IF ~~ THEN GOTO 342
END

IF ~~ THEN BEGIN 342
   SAY ~(With a deep, passionate rhythm, Rafaela grinds against you, each motion more purposeful than the last. She leans forward slightly, her hips rolling in a way that maximizes the sensation for you both of you.)~ IF ~~ THEN GOTO 342.5
END

IF ~~ THEN BEGIN 342.5
   SAY ~Ohh, <CHARNAME>! Can you feel it? The way I move against you... every part of me is alive with pleasure.~ IF ~~ THEN GOTO 343
END

IF ~~ THEN BEGIN 343
   SAY ~(Her movements are a dance of desire, each rise and fall sending waves of ecstasy through her.)~ IF ~~ THEN GOTO 344
END

IF ~~ THEN BEGIN 344
   SAY ~The sensation... it's so intense. Every time I take you in, I can feel you against my tightness, touching me so deeply. It's like a fire burning inside me.~ IF ~~ THEN GOTO 345
END

IF ~~ THEN BEGIN 345
   SAY ~(She reaches down, taking your hands and guiding them up her body, a trail of heat following her touch. Placing your hands on her breast, she encourages you to squeeze and play with her nipples.)~ IF ~~ THEN GOTO 346
END

IF ~~ THEN BEGIN 346
   SAY ~Yes, touch me there, <CHARNAME>. Feel my body respond to your grasp. Mmm... your hands on my breasts, it adds to the pleasure, making everything so much more intense.~ IF ~~ THEN GOTO 347
END

IF ~~ THEN BEGIN 347
   SAY ~(As you caress and tease her nipples, Rafaela's movements become even more fervent. She throws her head back, a picture of pure ecstasy, as she rides you with abandon.)~ IF ~~ THEN GOTO 348
END

IF ~~ THEN BEGIN 348
   SAY ~Ohh! Yes, just like that! Fuck me, <CHARNAME>! Fuck me harder! Ohh... Don't stop. I'm so close to the edge!~ IF ~~ THEN GOTO 349
END

IF ~~ THEN BEGIN 349
   SAY ~Every part of me is focused on this moment, on the pleasure you're giving me. <CHARNAME>, you're making me feel so, so good!~ IF ~~ THEN GOTO 350
END

IF ~~ THEN BEGIN 350
   SAY ~(Rafaela, driven by a surge of arousal, leans even closer, pressing her breasts towards your mouth. The invitation is clear, and you respond eagerly, exploring her with your mouth and tongue.)~ IF ~~ THEN GOTO 351
END

IF ~~ THEN BEGIN 351
   SAY ~(As you engage with Rafaela's breasts, each action is deliberate and filled with passion.)~ IF ~~ THEN GOTO 352
END

IF ~~ THEN BEGIN 352
   SAY ~(You begin by softly sucking, drawing her sensitive skin into your mouth, applying just enough pressure to send waves of pleasure through her.)~ IF ~~ THEN GOTO 353
END

IF ~~ THEN BEGIN 353
   SAY ~Oh, <CHARNAME>! The way you pleasure me... it's so intense. It feels like you're drawing the arousal right out.~ IF ~~ THEN GOTO 354
END

IF ~~ THEN BEGIN 354
   SAY ~(You then transition to nibbling, each gentle bite of her soft nipples sending shocks of pleasure through her body.)~ IF ~~ THEN GOTO 355
END

IF ~~ THEN BEGIN 355
   SAY ~Mmm... don't stop! It's like little sparks of ecstasy shooting right through me.~ IF ~~ THEN GOTO 356
END

IF ~~ THEN BEGIN 356
   SAY ~(You swirl your tongue around her, exploring every curve and peak. Your licking is thorough, a dance of your tongue over her sensitive skin that has her gasping and moaning in pleasure.)~ IF ~~ THEN GOTO 357
END

IF ~~ THEN BEGIN 357
   SAY ~Your tongue, <CHARNAME>, it's magical. Every motion sends me spiraling higher. Oh! Yes, just like that.~ IF ~~ THEN GOTO 358
END

IF ~~ THEN BEGIN 358
   SAY ~(As you continue to lavish attention on her breasts, Rafaela writhes above you, each of your actions amplifying the pleasure coursing through her.)~ IF ~~ THEN GOTO 359
END

IF ~~ THEN BEGIN 359
   SAY ~(Rafaela's screams of pleasure fill the room, her body squirming under the dual assault of your mouth and your continued thrusts.)~ IF ~~ THEN GOTO 360
END

IF ~~ THEN BEGIN 360
   SAY ~Every lick, every nibble, it's pushing me closer to the edge. I'm so horny, <CHARNAME>, so incredibly aroused. This... this is ecstasy!~ IF ~~ THEN GOTO 362
END

IF ~~ THEN BEGIN 362
   SAY ~(Rafaela, spurred on by the overwhelming sensations, begins to grind her hips with renewed vigor. Her movements atop you become faster and harder, a frenetic rhythm driven by pure passion and ecstasy.)~ IF ~~ THEN GOTO 363
END

IF ~~ THEN BEGIN 363
   SAY ~Oh, <CHARNAME>! I can't... I can't hold back! You're making me feel so good, so incredibly good!~ IF ~~ THEN GOTO 364
END

IF ~~ THEN BEGIN 364
   SAY ~(Her moans and screams become more frequent, each one a vocal embodiment of the ecstasy she's experiencing. The room echoes with the sound of her delight, as she continues to ride you.)~ IF ~~ THEN GOTO 365
END

IF ~~ THEN BEGIN 365
   SAY ~(As her climax builds, her body begins to shudder in waves of intense pleasure. Rafaela reaches her peak, her orgasm washing over her in a powerful surge.)~ IF ~~ THEN GOTO 366
END

IF ~~ THEN BEGIN 366
   SAY ~(The sensation of her wetness, now dripping down your thighs, adds another layer of stimulation to the already intense experience. Rafaela cries out, her body convulsing in the throes of her climax.)~ IF ~~ THEN GOTO 367
END

IF ~~ THEN BEGIN 367
   SAY ~Ohh, <CHARNAME>! I'm coming! It's so strong... I can feel it everywhere!~ IF ~~ THEN GOTO 368
END

IF ~~ THEN BEGIN 368
   SAY ~(Collapsing onto your chest, she continues to kiss your neck, her movements now softer but still rhythmic, riding the waves of her orgasm.)~ IF ~~ THEN GOTO 369
END

IF ~~ THEN BEGIN 369
   SAY ~(Her breaths are heavy against your skin, each kiss a lingering note of her ongoing climax.)~ IF ~~ THEN GOTO 370
END

IF ~~ THEN BEGIN 370
   SAY ~(Feeling her continue to move atop you, even in the midst of her own pleasure, stirs your arousal to its peak. Rafaela senses your impending climax and whispers hoarsely.)~ IF ~~ THEN GOTO 371
END

IF ~~ THEN BEGIN 371
   SAY ~Do you want to keep fucking me until you come? Or would you like me to take you in my mouth, and fill it with your hot release?~
       ++ ~Keep riding me, Rafaela. I want to feel connected to you as I reach my climax.~ GOTO 372
       ++ ~I want you to take me in your mouth. Finish me there, Rafaela, I want to feel its warmth.~ GOTO 400
END

IF ~~ THEN BEGIN 372
   SAY ~Mmm... Let's try this way... so I can feel you even deeper.~ IF ~~ THEN GOTO 373
END

IF ~~ THEN BEGIN 373
   SAY ~(Rafaela, responding eagerly, shifts her position, turning her back to you, while gently easing herself back onto your length.)~ IF ~~ THEN GOTO 374
END

IF ~~ THEN BEGIN 374
   SAY ~(The change allowing a new depth to your connection, her hips grinding against your lap, each movement driving you deeper inside.)~ IF ~~ THEN GOTO 375
END

IF ~~ THEN BEGIN 375
   SAY ~Ohh! <CHARNAME>, you're stretching me... it feels amazing! Every thrust takes me higher, filling me more! Yes, just like that!~ IF ~~ THEN GOTO 376
END

IF ~~ THEN BEGIN 376
   SAY ~(The rhythm between you accelerates, her movements becoming faster and more urgent. Rafaela tilts her hips back, enhancing the sensation for both.)~ IF ~~ THEN GOTO 377
END

IF ~~ THEN BEGIN 377
   SAY ~(With a fluid and sensual motion, she begins to circle and swirl her hips around your length. She grips you with her tightness, her inner muscles moving in a way that skillfully manipulates and caresses.)~ IF ~~ THEN GOTO 378
END

IF ~~ THEN BEGIN 378
   SAY ~(The sensation is exquisite, as if she's drawing you in deeper with every swirl and circle, creating waves of pleasure that resonates through your entire body.)~ IF ~~ THEN GOTO 379
END

IF ~~ THEN BEGIN 379
   SAY ~Oh, <CHARNAME>, I'm going to come again! Don't stop, please don't stop! Ohh... Keep going, just like that, keeping fucking me, you're taking me there!~ IF ~~ THEN GOTO 380
END

IF ~~ THEN BEGIN 380
   SAY ~(Driven by the building tension, you place your hands on Rafaela's hips, spreading them apart and pressing her down in perfect sync with your thrusts.)~ IF ~~ THEN GOTO 381
END

IF ~~ THEN BEGIN 381
   SAY ~(The intensified depth elicits a scream of ecstasy from Rafaela.)~ IF ~~ THEN GOTO 382
END

IF ~~ THEN BEGIN 382
   SAY ~Ohhh! Ohh, yes! <CHARNAME>! Deeper! Ohh, it's so... Ohh!~ IF ~~ THEN GOTO 383
END

IF ~~ THEN BEGIN 383
   SAY ~(With a final, deep thrust, you reach your climax, an explosive release that fills Rafaela completely.)~ IF ~~ THEN GOTO 384
END

IF ~~ THEN BEGIN 384
   SAY ~(Her body shudders in response to the intensity of the sensation, her inner walls gripping you tightly, milking every last drop of your release.)~ IF ~~ THEN GOTO 385
END

IF ~~ THEN BEGIN 385
   SAY ~(Each contraction seems to draw you in deeper, ensuring that every pulse of your climax is shared fully with her.)~ IF ~~ THEN GOTO 386
END

IF ~~ THEN BEGIN 386
   SAY ~Mmm... I can feel you, every pulse of you. This... this connection, it's more than I ever imagined.~ IF ~~ THEN GOTO 387
END

IF ~~ THEN BEGIN 387
   SAY ~(As the waves of your release ebb, Rafaela's movements slow, her breaths coming in deep, satisfied sighs. She gently collapses onto you, her body conforming perfectly to yours.)~ IF ~~ THEN GOTO 388
END

IF ~~ THEN BEGIN 388
   SAY ~(In this moment, your embrace is complete, a physical manifestation of your mutual fulfillment and intimacy.)~ IF ~~ THEN GOTO 389
END

IF ~~ THEN BEGIN 389
   SAY ~(You both lie there, entwined, the warmth of your bodies and the steady rhythm of your breathing creating a cocoon of contentment.)~ IF ~~ THEN GOTO 390
END

IF ~~ THEN BEGIN 390
   SAY ~(Rafaela's head rests against your chest, her breaths syncing with yours, as you both bask in the afterglow of your passionate encounter.)~  IF ~~ THEN GOTO 416
END

IF ~~ THEN BEGIN 391
   SAY ~(Rafaela gently begins to swirl her hips in a slow, rhythmic motion. She tightens her inner walls around you, her body instinctively responding to your climax.)~ IF ~~ THEN GOTO 392
END

IF ~~ THEN BEGIN 392
   SAY ~<CHARNAME>, I can feel every part of you. Your release... it's filling me completely.~ IF ~~ THEN GOTO 393
END

IF ~~ THEN BEGIN 393
   SAY ~(She continues to move, her hips gently rotating, and squeezing you rhythmically. This action seems to draw out every last drop of your climax, prolonging the intensity of the experience.)~ IF ~~ THEN GOTO 394
END

IF ~~ THEN BEGIN 394
   SAY ~Ohh, yes! Just like that. I'm feeling it too, <CHARNAME>, I'm coming with you.~ IF ~~ THEN GOTO 395
END

IF ~~ THEN BEGIN 395
   SAY ~(Her moans become more fervent, a mix of delight and overwhelming ecstasy. Rafaela's body shudders beneath you, reaching another climax, fueled by the sensation of you pulsing inside her.)~ IF ~~ THEN GOTO 396
END

IF ~~ THEN BEGIN 396
   SAY ~The way you're stuffing my pussy, the way you're filling me up... it's incredible. I can feel everything, every wave of your release!~ IF ~~ THEN GOTO 397
END

IF ~~ THEN BEGIN 397
   SAY ~(As Rafaela's movements continue, her hips swirling and squeezing, her lower lips embraces you tightly, her body convulsing with pleasure.)~ IF ~~ THEN GOTO 398
END

IF ~~ THEN BEGIN 398
   SAY ~(Exhausted and fulfilled, you collapses into Rafaela, your bodies melding into a perfect embrace.)~ IF ~~ THEN GOTO 399
END

IF ~~ THEN BEGIN 399
   SAY ~(The heat of your skin, the rapid pace of your breaths, and the lingering tremors of pleasure create a cocoon of intimacy around you.)~  IF ~~ THEN GOTO 416
END

IF ~~ THEN BEGIN 400
   SAY ~Mmm... <CHARNAME>, that's exactly what I want. To take you in my mouth, to feel your climax... it thrills me beyond words. I can't wait to taste the warmth of your release.~ IF ~~ THEN GOTO 401
END

IF ~~ THEN BEGIN 401
   SAY ~(Rafaela slowly lifts herself off you, a look of anticipation on her face. She carefully positions herself down, her movements deliberate and sensual.)~ IF ~~ THEN GOTO 402
END

IF ~~ THEN BEGIN 402
   SAY ~(As she takes your member into her mouth, the initial sensation is one of intense warmth and wetness.)~ IF ~~ THEN GOTO 403
END

IF ~~ THEN BEGIN 403
   SAY ~(The feeling is exquisite. Her lips envelop you softly yet firmly, and her tongue welcomes you with a gentle caress.)~ IF ~~ THEN GOTO 404
END

IF ~~ THEN BEGIN 404
   SAY ~(The contrast between the heat of her mouth and the cool air heightens the sensation, sending waves of pleasure through your body.)~ IF ~~ THEN GOTO 405
END

IF ~~ THEN BEGIN 405
   SAY ~You feel so good. I want you to let go, to give me everything. Let me take you there.~ IF ~~ THEN GOTO 406
END

IF ~~ THEN BEGIN 406
   SAY ~(Her moans become more frequent, each one infused with her desire to please you. Rafaela's mouth works in harmony with her hands, creating a whirlwind of sensations designed to overwhelm your senses.)~ IF ~~ THEN GOTO 407
END

IF ~~ THEN BEGIN 407
   SAY ~Yes, just like that. I can feel you pulsing and growing. I know you're getting closer. I want to feel your climax, to taste the intensity of your pleasure.~ IF ~~ THEN GOTO 408
END

IF ~~ THEN BEGIN 408
   SAY ~(She hastens her movements, her tongue and lips working tirelessly. Rafaela's hands moving up and down, one at the base, the other gently massaging, all to bring you to the brink of ecstasy.)~ IF ~~ THEN GOTO 409
END

IF ~~ THEN BEGIN 409
   SAY ~Ohh, <CHARNAME>. Come for me, please... I need it. Let me feel you explode, let me swallow every drop.~ IF ~~ THEN GOTO 410
END

IF ~~ THEN BEGIN 410
   SAY ~(At the moment you are about to climax, Rafaela grabs your hips and pulls you deeper into her mouth, taking you as far as she can into her throat.)~ IF ~~ THEN GOTO 411
END

IF ~~ THEN BEGIN 411
   SAY ~(The sensation is overwhelming, a mixture of depth, warmth, and pressure that pushes you over the edge.)~ IF ~~ THEN GOTO 412
END

IF ~~ THEN BEGIN 412
   SAY ~(As you release everything into her, Rafaela holds you there, her throat contracting around you, drawing out every last moment of your climax.)~ IF ~~ THEN GOTO 413
END

IF ~~ THEN BEGIN 413
   SAY ~You taste so incredibly good. Feeling you like this, so intense and passionate... it's amazing.~ IF ~~ THEN GOTO 414
END

IF ~~ THEN BEGIN 414
   SAY ~(She moves up to lie beside you, her body still tingling with the remnants of the shared intensity.)~ IF ~~ THEN GOTO 415
END

IF ~~ THEN BEGIN 415
   SAY ~(You both collapse into each other's arms, embracing in a way that melds comfort with the lingering heat of your encounter.)~ IF ~~ THEN GOTO 416
END

IF ~~ THEN BEGIN 416
   SAY ~We just created something beautiful together. Laying here with you, feeling the warmth of your body, it's like a dream, and I don't want this moment to end.~ IF ~~ THEN GOTO 417
END

IF ~~ THEN BEGIN 417
   SAY ~(She gently runs her fingers over your skin, a tender caress that speaks volumes of her affection and care. Her eyes meet yours, searching, longing for your response to this shared experience.)~ IF ~~ THEN GOTO 418
END

IF ~~ THEN BEGIN 418
   SAY ~How was it for you, <CHARNAME>? I want to know every sensation, every emotion you felt. Share with me, let me bask in the memory of our passion through your eyes.~
       ++ ~It was incredible, Rafaela. I've never felt anything like it.~ GOTO 419
       ++ ~I'm still trying to find the words. The intensity, the depth of what we shared... it's overwhelming.~ GOTO 420
       ++ ~Honestly, Rafaela, it was more than just pleasure. It felt meaningful, profound.~ GOTO 421
END

IF ~~ THEN BEGIN 419
   SAY ~Your words, <CHARNAME>, they fill me with such joy. To have created such a symphony together is something I'll always cherish.~ IF ~~ THEN GOTO 422
END

IF ~~ THEN BEGIN 420
   SAY ~I'm glad our time together was so moving for you. It's powerful, isn't it, how deeply we can touch each other?~ IF ~~ THEN GOTO 422
END

IF ~~ THEN BEGIN 421
   SAY ~It means the world to hear that, <CHARNAME>. Knowing we shared something beyond the physical, it's truly special.~ IF ~~ THEN GOTO 422
END

IF ~~ THEN BEGIN 422
   SAY ~I'll step aside and let you savor these moments a bit longer. Whenever you're ready, I'll be here, waiting to guide you back.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",3)
   SetGlobal("h_RafaelaBed","GLOBAL",0)
   AddExperienceParty(50)
   MoveToPoint([209.338])~ EXIT
END





















/*

++ ~How did someone as seemingly innocent as you find their way here? I'm curious about your story.~ DO ~SetGlobal("h_RafaelaTalk","GLOBAL",1)~ GOTO 16

IF ~~ THEN BEGIN 16
   SAY ~Oh, my story? It's a bittersweet symphony, really. You see, I was just a little waif here in Beregost, where life was never easy.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~My days were filled with scavenging for food and finding shelter, always on the lookout, always alone. The streets were my unpredictable home, a maze of challenges and fleeting joys.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~But then, like a beacon in the night, Madam Meredia found me. She took me in, cared for me, and allowed me to grow up right here in the Gorgon's Den.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~It might sound odd, but this place... it's been my home, my school. I learned so much about the world right here, among these velvet curtains and whispered secrets.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~I started with small chores, you know, helping in the kitchen, tidying up the rooms, learning the art of being unseen yet ever-present.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~Over time, I became a jack-of-all-trades around the Den. I'd listen, learn, absorbing the ebb and flow of this hidden realm.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~I saw how joy could be crafted, how comfort was given, how every soul that passed through our doors sought something more than just pleasure, they sought understanding, a connection.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~When I came of age, it just felt natural to use all that I'd learned, and I couldn't resist to put my skills to use in a place that gave me so much.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~It was as if all the threads of my life wove together to create this tapestry of experiences I now offer.~ IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~From the little waif of the streets to the keeper of whispered dreams, my journey has been one of transformation, all within these walls.~ IF ~~ THEN GOTO 26
END

*/
