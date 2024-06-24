BEGIN h_meredd

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
   SAY ~Ah, welcome to the Gorgon's Den, a haven of pleasure and discretion in the heart of Beregost. I am Madam Meredia, the custodian of this fine establishment.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Here, we offer an experience that caters to a variety of tastes and desires, all within a realm of respect and confidentiality.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Feel free to peruse at your leisure. If you are seeking to indulge in our offerings, or if you have any specific requests, I am here to assist.~
       +~Global("h_GilbaldQuest","GLOBAL",3)~+ ~I'm looking into a man named Xevec. Do you know anything about him?~ GOTO 66
       ++ ~Could you tell me more about the types of services offered here?~ GOTO 4
       ++ ~What are the fees for your services?~ GOTO 11
       ++ ~How does the process work for spending time with a courtesan?~ GOTO 14
       +~Exists("h_Ilena")~+ ~Who is available for companionship this evening?~ GOTO 23
       +~Global("h_TravelToDen","GLOBAL",0)~+ ~I'd like to spend some time with one of your courtesans.~ GOTO 30
       ++ ~I'm just looking around for now.~ GOTO 34
END

IF ~NumTimesTalkedToGT(0) Global("h_Meredia","GLOBAL",0)~ THEN BEGIN 3
   SAY ~Ah, welcome back to the Gorgon's Den. What pleasures and comforts can I assist you with today?~
       +~Global("h_GilbaldQuest","GLOBAL",3)~+ ~I'm looking into a man named Xevec. Do you know anything about him?~ GOTO 66
       ++ ~Could you tell me more about the types of services offered here?~ GOTO 4
       ++ ~What are the fees for your services?~ GOTO 11
       ++ ~How does the process work for spending time with a courtesan?~ GOTO 14
       +~Exists("h_Ilena")~+ ~Who is available for companionship this evening?~ GOTO 23
       +~Global("h_TravelToDen","GLOBAL",0)~+ ~I'd like to spend some time with one of your courtesans.~ GOTO 30
       ++ ~I'm just looking around for now.~ GOTO 34
END

IF ~~ THEN BEGIN 4
   SAY ~Of course, I'd be delighted to elaborate on our services. Here at the Gorgon's Den, we cater to a variety of preferences and desires, ensuring each encounter is as unique as our esteemed patrons.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~Firstly, our courtesans are adept in the art of conversation, offering engaging and stimulating discussions.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Whether you seek intellectual discourse, heartfelt conversation, or light-hearted banter, our courtesans are well-versed in numerous topics and are excellent listeners.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~For those seeking relaxation and rejuvenation, we offer massage services. Our courtesans are skilled in various techniques that can ease away your tensions and provide a deeply relaxing experience.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Another popular choice is the bathing service. It's an opportunity for a tranquil and soothing experience, where you can unwind in a luxurious bath, attended to with the utmost care and attention.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~And, of course, we provide opportunities for consensual intimate encounters. These are conducted with the highest regard for mutual respect, discretion, and safety.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Whether you seek a moment of quiet companionship, a listening ear, or a deeper connection, you will find solace and satisfaction within these walls.~
       ++ ~What are the fees for your services?~ GOTO 11
       ++ ~How does the process work for spending time with a courtesan?~ GOTO 14
       +~Exists("h_Ilena")~+ ~Who is available for companionship this evening?~ GOTO 23
       +~Global("h_TravelToDen","GLOBAL",0)~+ ~I'd like to spend some time with one of your courtesans.~ GOTO 30
       ++ ~I'm just looking around for now.~ GOTO 34
END

IF ~~ THEN BEGIN 11
   SAY ~For a fee of 200 gold, you may enjoy private time with one of our available courtesans.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~This cost ensures not only the highest quality of service but also the utmost respect for both you and our courtesans' discretion and well-being.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~We pride ourselves on creating an environment that is safe, consensual, and thoroughly enjoyable for all involved, ensuring that your experience here is both memorable and satisfying.~
       ++ ~Could you tell me more about the types of services offered here?~ GOTO 4
       ++ ~How does the process work for spending time with a courtesan?~ GOTO 14
       +~Exists("h_Ilena")~+ ~Who is available for companionship this evening?~ GOTO 23
       +~Global("h_TravelToDen","GLOBAL",0)~+ ~I'd like to spend some time with one of your courtesans.~ GOTO 30
       ++ ~I'm just looking around for now.~ GOTO 34
END

IF ~~ THEN BEGIN 14
   SAY ~Of course, let me explain how our arrangements work. Firstly, you'll have the opportunity to meet and converse with our available courtesans.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~This initial interaction allows you to gauge who you might feel most comfortable with and who aligns best with your interests.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~Once you've made your selection, you'll come to me to handle the transaction. The fee for private time is 200 gold, which ensures a high-quality, discreet, and respectful experience.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~After the payment, you will be escorted to one of our private chambers. Here you will have the chance to discuss your desires and preferences, tailoring the experience to your liking.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~These spaces are designed to provide an atmosphere of comfort and intimacy, allowing you and the courtesan to engage in your time together without any disturbances.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~The duration of your time with the courtesan is discreet and unhurried, allowing for a truly personal and satisfying experience.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~Afterward, you may leave the chamber at your leisure, with the assurance that your privacy and confidentiality are always maintained.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~This process is designed to cater to your comfort and satisfaction, making your experience here at the Gorgon's Den a memorable one.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~Please, feel free to ask if you have any more questions or if you're ready to meet our courtesans.~
       ++ ~Could you tell me more about the types of services offered here?~ GOTO 4
       ++ ~What are the fees for your services?~ GOTO 11
       +~Exists("h_Ilena")~+ ~Who is available for companionship this evening?~ GOTO 23
       +~Global("h_TravelToDen","GLOBAL",0)~+ ~I'd like to spend some time with one of your courtesans.~ GOTO 30
       ++ ~I'm just looking around for now.~ GOTO 34
END

IF ~~ THEN BEGIN 23
   SAY ~I'm delighted to hear of your interest. This evening, we have several exquisite courtesans available, each with their own unique charm and talents. Let me introduce them briefly.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~Ilena is the epitome of gentleness and sweetness, perfect for those who might be new to such experiences. She specializes in creating soft, romantic settings that ease you into comfort and intimacy.~ IF ~~ THEN GOTO 24.5
END

IF ~~ THEN BEGIN 24.5
   SAY ~Her approach is caring and patient, ensuring a sweet and tender encounter that caters to your personal desires and preferences, ideal for a memorable and gentle first experience.~ IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~On the other hand, Rafaela is known for her unabashedly intense and passionate nature, making her an exciting choice for those who crave a more explicit and adventurous encounter.~ IF ~~ THEN GOTO 25.5
END

IF ~~ THEN BEGIN 25.5
   SAY ~She's not one to hold back, often engaging in certain speech that adds an intense layer of thrill to the experience, making her perfect for those who seek a raw, uninhibited connection.~ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY ~With Rafaela, expect a vivid and unreserved experience that delves into the graphically passionate side of intimacy.~ IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY ~And lastly, there is Darius, a master of witty banter and intellectual discourse. If you're looking for stimulating conversation mixed with a dash of humor, he is an excellent choice.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY ~Please, take your time to consider who you'd like to spend time with. Each courtesan brings their own unique qualities to the experience, ensuring that your time at the Gorgon's Den is nothing short of extraordinary.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~Once you've made your choice, I'll assist with the arrangements.~
       ++ ~Could you tell me more about the types of services offered here?~ GOTO 4
       ++ ~What are the fees for your services?~ GOTO 11
       ++ ~How does the process work for spending time with a courtesan?~ GOTO 14
       +~Global("h_TravelToDen","GLOBAL",0) PartyGoldGT(199)~+ ~I'd like to spend some time with one of your courtesans.~ GOTO 30
       ++ ~I'm just looking around for now.~ GOTO 34
END

IF ~~ THEN BEGIN 30
   SAY ~Of course, it's our pleasure to accommodate your desires. However, before you make your selection, there are just a few things I'd like to ensure you're aware of.~ IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY ~First and foremost, we uphold the highest standards of respect and discretion here at the Gorgon's Den. The well-being and comfort of both our patrons and workers are paramount.~ IF ~~ THEN GOTO 31.5
END

IF ~~ THEN BEGIN 31.5
   SAY ~Once you've chosen a courtesan, remember that open communication is key. Feel free to express your preferences and desires, but also be attentive to their boundaries and comfort.~ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~We are here to provide a fulfilling experience, and mutual respect is the foundation of this.~ IF ~~ THEN GOTO 32.5
END

IF ~~ THEN BEGIN 32.5
   SAY ~Now, be advised, the encounters here are graphically vivid and explicitly detailed, far beyond mere implications or a simple closing of the eyes.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY ~They are raw, unfiltered expressions of sensuality and connection, designed for those seeking a profound and immersive experience. Therefore, I ask you to consider these aspects carefully. ~ IF ~~ THEN GOTO 33.5
END

IF ~~ THEN BEGIN 33.5
   SAY ~So, with these considerations in mind, who would you like to spend your time with this evening?~
       //+~Global("h_IlenaTalk","GLOBAL",1) Gender(Player1,MALE) Exists("h_ilenac") Global("h_Meredia","GLOBAL",0) PartyGoldGT(199)~+ ~I'm feeling drawn towards Ilena, and I'd like to explore what she has to offer.~ DO ~TakePartyGold(200)~ GOTO 36
       //+~Global("h_IlenaTalk","GLOBAL",1) Gender(Player1,MALE) Exists("h_ilenac") Global("h_Meredia","GLOBAL",1)~+ ~I'm feeling drawn towards Ilena, and I'd like to explore what she has to offer.~ GOTO 36
       //++ ~I'm intrigued by Darius. I think a session with him would be both stimulating and enjoyable.~ GOTO 39
       //+~Global("h_RafaelaTalk","GLOBAL",1) Gender(Player1,MALE) Global("h_Meredia","GLOBAL",0) PartyGoldGT(199)~+ ~Rafaela has caught my attention. I'd like to spend some time with her and experience her unique connection.~ DO ~TakePartyGold(200)~ GOTO 41
       //+~Global("h_RafaelaTalk","GLOBAL",1) Gender(Player1,MALE) Global("h_Meredia","GLOBAL",1)~+ ~Rafaela has caught my attention. I'd like to spend some time with her and experience her unique connection.~ GOTO 41
       ++ ~Actually, I think I'll come back another time when I'm more certain of what I'm looking for.~ GOTO 34
END

IF ~~ THEN BEGIN 34
   SAY ~Of course, we understand the importance of making the right choice. The Gorgon's Den will always be here to welcome you when you're ready. Your comfort and readiness are essential to us.~ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
   SAY ~Please feel free to return anytime you wish to explore our offerings. Have a pleasant day, and we look forward to your future visit.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36
   SAY ~An excellent choice. Ilena has a way of making every moment special with her empathy and engaging presence. I'm certain you will find your time with her both enriching and memorable.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
   SAY ~I'll inform her immediately. She will be ready to escort you to her private chambers shortly, where you can engage in your desired activities in a comfortable, private setting.~ IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY ~Enjoy your time with Ilena, and should you need anything else, I am always here to assist.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",1)
   SetGlobal("h_SpawnIlenaDen","GLOBAL",1)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_dencut")~ EXIT
END

IF ~~ THEN BEGIN 39
   SAY ~Darius is indeed a captivating choice. You'll find his company to be both intellectually engaging and delightfully entertaining. I'll let him know of your interest.~ IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
   SAY ~He will meet you shortly and guide you to a private chamber where you can enjoy each other's company. I'm sure you will have a memorable experience together.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",1)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_dencut")~ EXIT
END

IF ~~ THEN BEGIN 41
   SAY ~Rafaela is indeed a captivating choice. It shows you have a taste for the extraordinary, a desire to experience a connection that is both vivid and unreserved.~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
   SAY ~She is renowned for an intensity that can both exhilarate and overwhelm, perfect for those who seek to immerse themselves in the depths of raw, unbridled passion.~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
   SAY ~I'll let Rafaela know she has an admirer eager to explore her offerings. She will guide you to her private chambers, a realm where fantasies are fully realized in all their graphic intensity.~ IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
   SAY ~Prepare yourself for an encounter that is not just an indulgence of the senses but a celebration of desire in its most uninhibited form.~
IF ~~ THEN DO ~
   SetGlobal("h_TravelToDen","GLOBAL",1)
   SetGlobal("h_SpawnRafaelaDen","GLOBAL",1)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_dencut")~ EXIT
END

IF WEIGHT #-1 ~Global("h_MerediaQuest","GLOBAL",1)~ THEN BEGIN 45
   SAY ~Oh, <CHARNAME>, I'm so relieved to see you. Something troubling has occurred, a matter of great concern to me.~ IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
   SAY ~You see, last night, Ilena went to visit a client named Isley, and she hasn't yet returned. It's been almost a full day now, and not even a word from her.~ IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
   SAY ~This is highly unusual and, frankly, quite alarming. She's always been punctual and responsible. I fear something untoward may have happened.~ IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
   SAY ~I know it's a lot to ask, but could you possibly check on her? It's not far from here, just beside Taerom's place. Any news of her safety would ease this growing dread in my heart.~ IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
   SAY ~I'd be deeply grateful for your assistance in this matter.~
       ++ ~Absolutely, Meredia. I'll head there right away and see what's happened.~ GOTO 50
       ++ ~I can look into it, but I have a lot on my plate. I'll swing by if I find the time.~ GOTO 51
END

IF ~~ THEN BEGIN 50
   SAY ~Thank you so much. Your promptness in this matter is a great comfort to me. Please, find out what you can and return with any news of Ilena.~
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",2)
   SetGlobal("h_SpawnGalatea","GLOBAL",1)
   AddJournalEntry(@710,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 51
   SAY ~I understand you have other commitments, but I truly appreciate any effort you can make to check on her. Any information about Ilena's whereabouts or well-being would be a relief.~
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",2)
   SetGlobal("h_SpawnGalatea","GLOBAL",1)
   AddJournalEntry(@710,QUEST)~ EXIT
END

IF WEIGHT #-1 ~OR(2) Global("h_MerediaQuest","GLOBAL",2) Global("h_MerediaQuest","GLOBAL",3)~ THEN BEGIN 51.5
   SAY ~Please, tell me, have you found any news about Ilena? My heart has been heavy with worry since you left. Every moment without word feels like an eternity. Your return brings a glimmer of hope.~
       +~PartyHasItem("h_misc16")~+ ~Isley attacked his wife and left her gasping on the floor. I found this scrap of fabric and a helmet at the scene.~ DO ~TakePartyItem("h_misc16") DestroyItem("h_misc16")~ GOTO 53
       +~Global("h_IlenaDied","GLOBAL",1)~+ ~Meredia, I'm sorry. I was able to take out Isley, but not before he took Ilena's life.~ GOTO 57
       ++ ~Nothing fresh, I'm afraid.~ EXIT
END

IF ~~ THEN BEGIN 52
   SAY ~This color matches Ilena's dress!~ IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
   SAY ~Wait... no. The fabric isn't right. This type of stitching is more akin to military garb. The helmet you found would suggest the same.~ IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
   SAY ~This isn't good, <CHARNAME>. I can only hope Ilena's still breathing, even if held captive by that wretch, Isley!~ IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
   SAY ~It's imperative we act quickly and discreetly. Ilena's life, and perhaps more, could be in jeopardy. If we can figure out the style of uniform, it might just lead us to them!~ IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
   SAY ~Your skills in such matters could make all the difference. Please, find out what you can and bring any information back to me.~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnIsley","GLOBAL",1)
   AddJournalEntry(@712,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 57
   SAY ~Ilena... I'm sorry.~ IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
   SAY ~She was a rare gem in our world, a beacon of innocence and kindness that shone brighter than any star in the night sky.~ IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
   SAY ~Her laughter was a melody that echoed through these walls, bringing warmth to even the coldest of hearts.~ IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
   SAY ~The world feels a little dimmer this evening, for we have lost a light that illuminated even the darkest corners.~ IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61
   SAY ~Though the outcome is tragic, your efforts to bring justice will not be forgotten. Ilena's spirit, I believe, will find peace knowing that. Thank you, for doing all you could.~
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",5)
   AddJournalEntry(@716,QUEST_DONE)
   AddExperienceParty(800)~ EXIT
END

IF WEIGHT #-1 ~Global("h_MerediaQuest","GLOBAL",4)~ THEN BEGIN 62
   SAY ~Ilena has safely returned, thanks to your courageous efforts. You've shown yourself to be a person of great honor and bravery, <CHARNAME>.~ IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
   SAY ~Your actions have not only saved Ilena but have also restored a sense of peace and safety to our establishment.~ IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64
   SAY ~As a small token of our immense gratitude, we've gathered a modest sum of gold for you. It's a humble offering compared to the magnitude of your deed.~ IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
   SAY ~You've brought joy and relief to us all, and for that, you have my deepest, most heartfelt thanks. Your noble deed has truly made a difference in our little corner of the world.~
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",5)
   SetGlobal("h_IlenaLeaves","GLOBAL",0)
   AddJournalEntry(@715,QUEST_DONE)
   AddExperienceParty(1000)
   GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 66
   SAY ~Ah, Xevec, indeed a familiar name within these opulent walls. Just the other evening, he graced us with his presence, indulging in our services with rather uncharacteristic extravagance.~
       +~Global("h_MerediaNumber1","GLOBAL",1) Global("h_MerediaNumber2","GLOBAL",1) Global("h_MerediaNumber3","GLOBAL",1) Global("h_MerediaNumber4","GLOBAL",1)~+ ~Thanks, Meredia. You've been great.~ GOTO 77
       +~Global("h_MerediaNumber1","GLOBAL",0)~+ ~Did he say or do anything that was unusual last night?~ DO ~SetGlobal("h_MerediaNumber1","GLOBAL",1)~ GOTO 67
       +~Global("h_MerediaNumber2","GLOBAL",0)~+ ~Anything specific you can tell me about him?~ DO ~SetGlobal("h_MerediaNumber2","GLOBAL",1)~ GOTO 70
       +~Global("h_MerediaNumber3","GLOBAL",0)~+ ~Can you check to see if this coin matches any he spent here?~ DO ~SetGlobal("h_MerediaNumber3","GLOBAL",1)~ GOTO 72
       +~Global("h_MerediaNumber4","GLOBAL",0)~+ ~Any idea where I might find him?~ DO ~SetGlobal("h_MerediaNumber4","GLOBAL",1)~ GOTO 75
END

IF ~~ THEN BEGIN 67
   SAY ~Throughout the night, he incessantly boasted of a newfound opportunity, a venture he claimed would irrevocably alter the course of his mundane existence.~ IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
   SAY ~He exclaimed it with such bravado that it was almost pitiable. To me, it appeared nothing more than the usual fanciful drivel he's prone to, Xevec has always had a penchant for grandiose delusions.~ IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69
   SAY ~His announcement was accompanied by a rather lavish display of wealth. He mentioned receiving a substantial advance, leading him to seek celebration in our esteemed establishment.~
       +~Global("h_MerediaNumber1","GLOBAL",1) Global("h_MerediaNumber2","GLOBAL",1) Global("h_MerediaNumber3","GLOBAL",1) Global("h_MerediaNumber4","GLOBAL",1)~+ ~Thanks, Meredia. You've been great.~ GOTO 77
       +~Global("h_MerediaNumber2","GLOBAL",0)~+ ~Anything specific you can tell me about him?~ DO ~SetGlobal("h_MerediaNumber2","GLOBAL",1)~ GOTO 70
       +~Global("h_MerediaNumber3","GLOBAL",0)~+ ~Can you check to see if this coin matches any he spent here?~ DO ~SetGlobal("h_MerediaNumber3","GLOBAL",1)~ GOTO 72
       +~Global("h_MerediaNumber4","GLOBAL",0)~+ ~Any idea where I might find him?~ DO ~SetGlobal("h_MerediaNumber4","GLOBAL",1)~ GOTO 75
END

IF ~~ THEN BEGIN 70
   SAY ~Well, allow me to be candid. Xevec is hardly the paragon of virtue or intellect.~ IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71
   SAY ~His tendencies lean towards the brutish, his manners uncouth, forever chasing after the next ill-conceived fortune.~
       +~Global("h_MerediaNumber1","GLOBAL",1) Global("h_MerediaNumber2","GLOBAL",1) Global("h_MerediaNumber3","GLOBAL",1) Global("h_MerediaNumber4","GLOBAL",1)~+ ~Thanks, Meredia. You've been great.~ GOTO 77
       +~Global("h_MerediaNumber1","GLOBAL",0)~+ ~Did he say or do anything that was unusual last night?~ DO ~SetGlobal("h_MerediaNumber1","GLOBAL",1)~ GOTO 67
       +~Global("h_MerediaNumber3","GLOBAL",0)~+ ~Can you check to see if this coin matches any he spent here?~ DO ~SetGlobal("h_MerediaNumber3","GLOBAL",1)~ GOTO 72
       +~Global("h_MerediaNumber4","GLOBAL",0)~+ ~Any idea where I might find him?~ DO ~SetGlobal("h_MerediaNumber4","GLOBAL",1)~ GOTO 75
END

IF ~~ THEN BEGIN 72
   SAY ~It will be tedious, but I can sift through the financial accounts of last night for more clarity. Do grant me a moment...~ IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73
   SAY ~Goodness, by the grace of Sune! These are forgeries, every single one! How could such deceit have eluded my discerning eye?~ IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74
   SAY ~The culpability undoubtedly lies with Xevec; no other patron exhibited such reckless expenditure.~
       +~Global("h_MerediaNumber1","GLOBAL",1) Global("h_MerediaNumber2","GLOBAL",1) Global("h_MerediaNumber3","GLOBAL",1) Global("h_MerediaNumber4","GLOBAL",1)~+ ~Thanks, Meredia. You've been great.~ GOTO 77
       +~Global("h_MerediaNumber1","GLOBAL",0)~+ ~Did he say or do anything that was unusual last night?~ DO ~SetGlobal("h_MerediaNumber1","GLOBAL",1)~ GOTO 67
       +~Global("h_MerediaNumber2","GLOBAL",0)~+ ~Anything specific you can tell me about him?~ DO ~SetGlobal("h_MerediaNumber2","GLOBAL",1)~ GOTO 70
       +~Global("h_MerediaNumber4","GLOBAL",0)~+ ~Any idea where I might find him?~ DO ~SetGlobal("h_MerediaNumber4","GLOBAL",1)~ GOTO 75
END

IF ~~ THEN BEGIN 75
   SAY ~His dwelling, as far as my knowledge extends, is nestled somewhere amidst the labyrinthine streets of our fair town. His precise location, regrettably, remains a mystery to me.~ IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76
   SAY ~You might find it fruitful to begin your search in the northern reaches of Beregost. He seems to have a certain... affinity for that area, frequenting it more than others.~ IF ~~ THEN GOTO 76.5
END

IF ~~ THEN BEGIN 76.5
   SAY ~It's a starting point at least, one that might lead you closer to the man in question.~
       +~Global("h_MerediaNumber1","GLOBAL",1) Global("h_MerediaNumber2","GLOBAL",1) Global("h_MerediaNumber3","GLOBAL",1) Global("h_MerediaNumber4","GLOBAL",1)~+ ~Thanks, Meredia. You've been great.~ GOTO 77
       +~Global("h_MerediaNumber1","GLOBAL",0)~+ ~Did he say or do anything that was unusual last night?~ DO ~SetGlobal("h_MerediaNumber1","GLOBAL",1)~ GOTO 67
       +~Global("h_MerediaNumber2","GLOBAL",0)~+ ~Anything specific you can tell me about him?~ DO ~SetGlobal("h_MerediaNumber2","GLOBAL",1)~ GOTO 70
       +~Global("h_MerediaNumber3","GLOBAL",0)~+ ~Can you check to see if this coin matches any he spent here?~ DO ~SetGlobal("h_MerediaNumber3","GLOBAL",1)~ GOTO 72
END

IF ~~ THEN BEGIN 77
   SAY ~Don't be a stranger, <CHARNAME>. Your presence here is always a welcomed reprieve from the mundane. Do return soon.~
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",4)
   SetGlobal("h_SpawnXevec","GLOBAL",1)
   AddJournalEntry(@612,QUEST)~ EXIT
END

IF ~Global("h_Meredia","GLOBAL",1)~ THEN BEGIN 78
   SAY ~Welcome, <CHARNAME>. As the new guildmaster, you're entitled to our services, free of charge, naturally.~
       ++ ~Could you tell me more about the types of services offered here?~ GOTO 4
       +~Exists("h_Ilena")~+ ~Who is available for companionship this evening?~ GOTO 23
       +~Global("h_TravelToDen","GLOBAL",0)~+ ~I'd like to spend some time with one of your courtesans.~ GOTO 30
       ++ ~I'm just looking around for now.~ GOTO 34
END
