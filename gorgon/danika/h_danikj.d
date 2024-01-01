BEGIN h_danikj
/*
IF ~Global("h_DanikaTalk","GLOBAL",2)~ THEN BEGIN 0
   SAY ~Excuse me, <CHARNAME>. Might I steal a moment of your time?~ IF ~~ THEN GOTO 0.1
END

IF ~~ THEN BEGIN 0.1
   SAY ~I'm seeking to align my abilities more effectively within our group, and I believe a deeper understanding between us could be beneficial to our continued success.~ IF ~~ THEN GOTO 0.2
END

IF ~~ THEN BEGIN 0.2
   SAY ~I wish to know you better - your motivations, your past, what drives you. Your goals and skills, and how they shape and strengthen our collective operations.~ IF ~~ THEN GOTO 0.3
END

IF ~~ THEN BEGIN 0.3
   SAY ~This isn't mere curiosity; it's about ensuring I can serve the group's needs as efficiently as possible. Knowing who stands beside you is as crucial as knowing your enemy.~
       ++ ~Of course, Danika. I'm open to discussing whatever you feel is necessary. What would you like to know?~ GOTO 0.6
       ++ ~Sounds fair. I can share some details if it's going to help our cause.~ GOTO 0.6
       ++ ~Alright, I'll talk. But let's keep it to what's relevant for our journey together.~ GOTO 0.7
       ++ ~It sounds like a conversation worth having, but right now's not really a good time. Could we talk about this later?~ GOTO 0.4
       ++ ~To be honest, I prefer to keep to myself. Let's just stick to our roles and not complicate things with personal matters.~ GOTO 0.5
END

IF ~~ THEN BEGIN 0.4
   SAY ~I understand the demands of our current situation, <CHARNAME>. I will continue to navigate within the shadows as best as I can, awaiting a more suitable moment to address these inquiries.~
IF ~~ THEN DO ~
   RealSetGlobalTimer("h_DanikaTalkTimer","GLOBAL",3600)~ EXIT
END

IF ~~ THEN BEGIN 0.5
   SAY ~Then my focus will remain on fulfilling the mission at hand, guided by the principles of my faith and training. In the shadows, we learn to value the silence as much as the spoken word.~
IF ~~ THEN DO ~
   SetGlobal("h_DanikaFriendshipActive","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 0.6
   SAY ~Thank you. A clear understanding between us will serve to our advantage. It's a practical step, knowing the leader's mind will aid in better coordination and foresight.~ IF ~~ THEN GOTO 0.8
END

IF ~~ THEN BEGIN 0.7
   SAY ~Very well. Understanding each other will be vital for our strategy. So, let us cast aside the veil of superficialities and not dance around with words.~ IF ~~ THEN GOTO 0.8
END

IF ~~ THEN BEGIN 0.8
   SAY ~Tell me then, <CHARNAME>, who are you? I know your shadows were cast in Candlekeep, a fortress steeped in lore and secrets, but what realities lie beneath that scholarly facade?~ IF ~~ THEN GOTO 0.9
END

IF ~~ THEN BEGIN 0.9
   SAY ~How deeply has that life influenced your current path, and what threads have linked your earliest experiences to the choices you make now?~
       ++ ~Life in Candlekeep was enlightening. Surrounded by knowledge, every day was a lesson in understanding the deeper truths of the world.~ GOTO 0.10
       ++ ~Despite its stillness, it was adventurous in its own way. Each book was a new journey, sparking curiosity and the desire to explore.~ GOTO 0.10
       ++ ~Honestly, it was boring. Endless books and quiet halls. I yearned for something beyond those walls, something more than just words.~ GOTO 0.11
       ++ ~It felt restricted. I was cocooned in a realm of books, sheltered from the outside world and always aware of the limitations set upon me.~ GOTO 0.11
END

IF ~~ THEN BEGIN 0.10
   SAY ~So, Candlekeep was a crucible of sorts for your intellect, a forge for your mind. It's interesting how such a place of knowledge and learning could shape one's perspective and abilities.~ IF ~~ THEN GOTO 0.12
END

IF ~~ THEN BEGIN 0.11
   SAY ~It sounds as though Candlekeep, despite its grandeur, was a cage of sorts for you. A place of knowledge, yet lacking in certain freedoms. But even in confinement, one can find ways to grow.~ IF ~~ THEN GOTO 0.12
END

IF ~~ THEN BEGIN 0.12
   SAY ~What types of training guided you among those endless tomes? What skills and secrets did they offer that are carried with you now?~
       +~Class(Player1,MAGE_ALL)~+ ~My training focused on the arcane arts. I delved into ancient tomes of magic, learning spells and unraveling the mysteries of the weave.~ GOTO 0.13
       +~Class(Player1,FIGHTER_ALL)~+ ~I trained in the art of combat. While books were the heart of Candlekeep, I sought out every opportunity to hone my physical prowess and tactical skills.~ GOTO 0.14
       +~Class(Player1,CLERIC_ALL)~+ ~My guidance was in the divine teachings. I studied sacred texts, learning how to channel the power of the gods through prayer and devotion.~ GOTO 0.15
       +~Class(Player1,THIEF_ALL)~+ ~I learned the subtler skills - stealth, lockpicking, even a bit of deception. Candlekeep had its secrets, and I found ways to uncover them.~ GOTO 0.16
       +~Class(Player1,BARD_ALL)~+ ~I was drawn to the art of storytelling and music. My training was a blend of history, lore, and the performing arts, crafting tales and songs from the knowledge around me.~ GOTO 0.17
       +~Class(Player1,PALADIN_ALL)~+ ~In Candlekeep, my martial training led to a dark tome that offered me power. My skills are now a mix of combat and forbidden knowledge.~ GOTO 0.18
       +~Class(Player1,DRUID_ALL)~+ ~My training focused on the harmony of nature, guided by forgotten journals and exotic flora. It nurtured my druidic connection.~ GOTO 0.19
       +~Class(Player1,RANGER_ALL)~+ ~I trained in both combat and survival skills. The knowledge in the books was complemented by practical lessons in tracking, hunting, and understanding the wild.~ GOTO 0.20
       +~Class(Player1,SORCERER)~+ ~My power came naturally, but I honed it by studying the theories of magic. Candlekeep's resources helped me understand and control my innate abilities.~ GOTO 0.21
       +~Class(Player1,MONK)~+ ~My training was a discipline of body and mind. I studied philosophical texts while rigorously training my body to be a weapon.~ GOTO 0.22
       +~Class(Player1,SHAMAN)~+ ~I was drawn to the spiritual and elemental forces. My studies were unconventional, focusing on the ancient spirits and the primal energies of the world.~ GOTO 0.23
       +~Class(Player1,FIGHTER_MAGE)~+ ~I trained in both swordplay and spellcraft. Candlekeep offered a rare environment where one could pursue physical combat skills alongside arcane studies.~ GOTO 0.24
       +~Class(Player1,FIGHTER_CLERIC)~+ ~My training was a mix of martial prowess and divine study. I learned how to blend the art of war with the power of the gods.~ GOTO 0.25
       +~Class(Player1,FIGHTER_THIEF)~+ ~I combined the arts of combat with the skills of stealth and subterfuge. Candlekeep's secrets were as intriguing as its training grounds.~ GOTO 0.26
       +~Class(Player1,FIGHTER_DRUID)~+ ~My focus was on mastering both the sword and the secrets of nature. Candlekeep's vast resources allowed me to explore the harmony between martial strength and natural magic.~ GOTO 0.27
       +~Class(Player1,FIGHTER_MAGE_THIEF)~+ ~I was a jack of all trades, training in combat, magic, and stealth. Candlekeep provided the perfect ground to develop such a diverse skill set.~ GOTO 0.28
       +~Class(Player1,FIGHTER_MAGE_CLERIC)~+ ~I studied the arts of war, magic, and the divine. It was a rigorous path, blending physical training with arcane and religious studies.~ GOTO 0.29
       +~Class(Player1,MAGE_THIEF)~+ ~My studies were a blend of arcane magic and the art of thievery. The vast knowledge of Candlekeep was a treasure trove for both disciplines.~ GOTO 0.30
       +~Class(Player1,CLERIC_MAGE)~+ ~I pursued the paths of the divine and the arcane simultaneously. My training was unique, merging the sacred teachings with the mysteries of magic.~ GOTO 0.31
       +~Class(Player1,CLERIC_THIEF)~+ ~My training was an unusual mix – the holy teachings combined with the skills of a rogue. It gave me a unique perspective on both faith and cunning.~ GOTO 0.32
       +~Class(Player1,CLERIC_RANGER)~+ ~I studied both the ways of the divine and the skills of a woodsman. My training allowed me to understand the balance between nature and the teachings of the gods.~ GOTO 0.33
END

IF ~~ THEN BEGIN 0.13
   SAY ~A mage, then. Your life must be a tapestry woven with arcane secrets and mysteries. The depth of knowledge you possess is a power in its own right, rivaling the mightiest of spells.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.14
   SAY ~A fighter stands before me. Each scar and muscle speaks of battles fought and won. Your journey is one of steel and resolve, a testament to the strength and skill honed in countless confrontations.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.15
   SAY ~You walk the path of a cleric, wielding the divine's power. Your faith and prayers are your bastions, shielding you and guiding your hand in both healing and smiting foes.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.16
   SAY ~A practitioner of the shadows, a thief. Your expertise lies in the art of stealth, the subtlety of a whisper, the silence of a shadow. A world of secrets and locks has been your proving ground.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.17
   SAY ~As a bard, your journey weaves through tales and songs, history and lore. The magic of your words and music is a unique strength, bridging gaps and revealing truths hidden in plain sight.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.18
   SAY ~As a Blackguard, your path has been one of dark ambition and power, a journey marked by a relentless pursuit of might and dominion over others.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.19
   SAY ~A druid stands connected to the ancient rhythms of the earth. Your bond with nature is deep, an intertwining of spirit with the wild, a harmony with the primal forces of life.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.20
   SAY ~As a ranger, your skills are honed not just in battle but in the heart of the wilderness. The forests and mountains have been your tutors, teaching you the language of the wild.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.21
   SAY ~Sorcery runs through your veins, a wellspring of innate magic. Your journey has been one of self-discovery, learning to harness and shape the raw energy that is your birthright.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.22
   SAY ~Your discipline as a monk speaks of a journey of inner strength and physical mastery. The balance you maintain is a dance of serene mind and lethal body.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.23
   SAY ~As a shaman, your path is intertwined with the spiritual, a deep connection with the elements and ancient spirits. Your powers are as enigmatic as they are potent.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.24
   SAY ~Balancing the ways of the mage and the fighter, your path is one of versatility. Mastering both spell and sword, you've woven a unique tapestry of skills.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.25
   SAY ~Blending martial might with divine power, your journey has been a challenging balance of physical prowess and spiritual guidance.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.26
   SAY ~I see in you a blend of brawn and cunning. Your talents lie in combining strength with stealth, a rare and formidable combination.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.27
   SAY ~You've merged the warrior's path with nature's mystic ways. Your journey honors both the blade's edge and the ancient rhythms of the wild.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.28
   SAY ~A triad of skills. Your journey has been one of boundless learning, mastering the arts of combat, magic, and subtlety.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.29
   SAY ~Wielding these combined powers, your path is a rare convergence of diverse strengths. A blend of physical, mystical, and divine.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.30
   SAY ~The arcane meets the covert. Your journey has been one of blending magical prowess with the art of stealth, a path of intrigue and mystery.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.31
   SAY ~You've woven together the divine and the arcane. Your path reflects a deep understanding of both worlds, a harmonious blend of faith and knowledge.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.32
   SAY ~We walk a fine line between shadow and light. Your journey has been one of duality, similar to my own, merging the sacred with the secretive.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.33
   SAY ~In you, the wilderness meets the divine. Your path is a testament to the balance between nature's untamed beauty and the guiding light of your faith.~ IF ~~ THEN GOTO 0.34
END

IF ~~ THEN BEGIN 0.34
   SAY ~Your training speaks of diverse influences and experiences, forging a part of who you are today. But such paths are seldom walked alone.~ IF ~~ THEN GOTO 0.35
END

IF ~~ THEN BEGIN 0.35
   SAY ~There must have been mentors, guides who shaped your journey. Who were they, and how did their teachings influence you?~
       ++ ~I learned discipline from the Watchers and the Avowed, but it was my foster father Gorion who shaped my understanding, giving purpose to the skills I learned.~ GOTO 0.36
       ++ ~Most of my days were immersed in tomes and the teachings of monks. Gorion, my foster father, would occasionally guide me in applying those lessons practically when he had time.~ GOTO 0.38
       ++ ~My time was mostly spent with Imoen, learning and training together. We frequently faced reprimands from the monks. Gorion, my foster father, always had his hands full with us.~ GOTO 0.40
       ++ ~I often found myself alone, absorbed in self-study and training. While the Watchers, the Avowed, and my foster father Gorion were present, the essence of my learning was through my own endeavors.~ GPTP 0.43
END

IF ~~ THEN BEGIN 0.36
   SAY ~Their approach to teaching is renowned for its rigor and precision, cultivating not just skill but a mindset of dedication and strength.~ IF ~~ THEN GOTO 0.37
END

IF ~~ THEN BEGIN 0.37
   SAY ~The balance between their structured teachings and your personal journey must have provided a unique and multifaceted foundation for your abilities.~ IF ~~ THEN GOTO 0.45
END

IF ~~ THEN BEGIN 0.38
   SAY ~The tomes of Candlekeep are gateways to worlds of knowledge, rich with ancient wisdom and forgotten lore. Coupled with the insights of the monks, your education was one that few could dream of.~ IF ~~ THEN GOTO 0.39
END

IF ~~ THEN BEGIN 0.39 
   SAY ~It's a journey that not only builds knowledge but shapes one's understanding of the complexities of the world and the intricacies of history and magic.~ IF ~~ THEN GOTO 0.45
END

IF ~~ THEN BEGIN 0.40
   SAY ~There's a particular kind of growth that comes from learning in tandem with another, especially in a place as steeped in knowledge as Candlekeep.~ IF ~~ THEN GOTO 0.41
END

IF ~~ THEN BEGIN 0.41
   SAY ~Your experiences with Imoen, training and discovering together, likely provided a rich tapestry of shared learning and mutual development.~ IF ~~ THEN GOTO 0.42
END

IF ~~ THEN BEGIN 0.42
   SAY ~Such partnerships often lead to profound bonds and a unique synergy in skills, offering perspectives and experiences that solitary learning cannot match.~ IF ~~ THEN GOTO 0.45
END

IF ~~ THEN BEGIN 0.43
   SAY ~Navigating one's own path through the sea of knowledge available at Candlekeep is a testament to your motivation and resilience.~ IF ~~ THEN GOTO 0.44
END

IF ~~ THEN BEGIN 0.44
   SAY ~I understand the value of self-driven growth, having had to find my own way in many aspects of my training.~ IF ~~ THEN GOTO 0.45
END

IF ~~ THEN BEGIN 0.45
   SAY ~Your journey from those hallowed halls is a tale rich with intrigue and transformation. But tell me, what role did your foster father play in all this?~ IF ~~ THEN GOTO 0.46
END

IF ~~ THEN BEGIN 0.46
   SAY ~His influence seems to weave through your words like a subtle but strong thread. I'm intrigued to know more about him. How did he guide you amidst the shadows and secrets of your youth?~
       ++ ~Gorion was a source of inspiration. His stories, his knowledge... they sparked a fire in me. They were the catalyst for the journey I'm on now.~ GOTO 0.47
       ++ ~He was always there when I needed guidance or support. Gorion had a way of offering insight that illuminated my path, helping me to see possibilities I hadn't considered.~ GOTO 0.47
       ++ ~He was distant, more a figurehead than a father. Gorion did his duty, and provided the basics, but I often felt like I was navigating Candlekeep's mysteries alone.~ GOTO 0.49
       ++ ~Gorion was protective, sometimes too much so. His caution could be suffocating, and I often felt he underestimated my ability to handle the challenges of the world.~ GOTO 0.49
       ++ ~My relationship with Gorion was complex. He was a mentor and a guardian, but our perspectives often clashed. I learned a lot, but sometimes in spite of him, not because of him.~ GOTO 0.49
END

IF ~~ THEN BEGIN 0.47
   SAY ~It sounds like Gorion's presence was a guiding star in your life's sky. Such mentorship is rare, especially in our line of work.~ IF ~~ THEN GOTO 0.48
END

IF ~~ THEN BEGIN 0.48
   SAY ~His teachings, his wisdom, they've clearly left an indelible mark on you, shaping you into the figure before me. It's a blessing, to have had such a guiding hand.~ IF ~~ THEN GOTO 0.51
END

IF ~~ THEN BEGIN 0.49
   SAY ~From your words, it seems Gorion's influence was more a shackle than a support. Sometimes, the absence of guidance can be a greater teacher, forcing us to rely on our own cunning and strength.~ IF ~~ THEN GOTO 0.50
END

IF ~~ THEN BEGIN 0.50
   SAY ~Perhaps you would have flourished even more without his overbearing shadow looming over you. Independence breeds resilience, after all.~ IF ~~ THEN GOTO 0.51
END

IF ~~ THEN BEGIN 0.51
   SAY ~Your words have shed light on the path you've walked, <CHARNAME>, and understanding your background and experiences is crucial to our success as a group.~ IF ~~ THEN GOTO 0.52
END

IF ~~ THEN BEGIN 0.52
   SAY ~Let us remember that, in the realm of shadows, hierarchy and leadership are essential, and I'm committed to serving our collective goals, whether by following orders or using... subtler methods.~ IF ~~ THEN GOTO 0.53
END

IF ~~ THEN BEGIN 0.53
   SAY ~Thank you, <CHARNAME>, for sharing your insights. Now, with this newfound knowledge, let us forge ahead on this intricate path together.~
       ++ ~No problem, Danika. Your curiosity only shows your commitment. Now, let's press on with our journey.~ GOTO 0.54
       ++ ~You've certainly conducted a thorough interrogation of my past. Now, how about we balance the scales by sharing a bit about your own history?~ GOTO 0.55
END

IF ~~ THEN BEGIN 0.54
   SAY ~ Our commitment to the mission ahead is indeed our utmost priority. With each step, we'll uncover more, including the secrets of our own paths. Only time will reveal what the shadows hide.~
IF ~~ THEN DO ~
   SetGlobal("h_DanikaTalk","GLOBAL",3)
   RealSetGlobalTimer("h_DanikaTalkTimer","GLOBAL",3600)~ EXIT
END

IF ~~ THEN BEGIN 0.55
   SAY ~Well, it's only fair, but you see, <CHARNAME>, some secrets are like well-guarded treasures. I hail from Thay and spent much of my youth in the church of Mask.~ IF ~~ THEN GOTO 0.56
END

IF ~~ THEN BEGIN 0.56
   SAY ~However, let's not dwell on my past for now. We have more immediate matters at hand, don't we? But perhaps, when the time is right, we can revisit this conversation.~
IF ~~ THEN DO ~
   SetGlobal("h_DanikaTalk","GLOBAL",3)
   RealSetGlobalTimer("h_DanikaTalkTimer","GLOBAL",3600)~ EXIT
END




















IF ~Global("h_DanikaTalk","GLOBAL",4)~ THEN BEGIN 1.00
   SAY ~Excuse me, <CHARNAME>, there's something I need to discuss with you. It's about my role in this group and how I might best fit into the way you lead.~ IF ~~ THEN GOTO 1.01
END

IF ~~ THEN BEGIN 1.01
   SAY ~I believe it would be beneficial for us to align our objectives and expectations. This issue is pressing, for in the cloak of shadows, clarity is often our most valuable ally.~ IF ~~ THEN GOTO 1.02
END

IF ~~ THEN BEGIN 1.02
   SAY ~May we speak?~
       ++ ~Of course, Danika. It's important that we're on the same page. Tell me what you're thinking.~ GOTO 1.07
       ++ ~Go ahead, but let's get straight to the point. What's your issue with the current setup?~ GOTO 1.08
       ++ ~This isn't exactly a good time, Danika. Let's talk about this later.~ GOTO 1.03
       ++ ~Discussions like these aren't a priority. We need to stay focused on the tasks at hand.~ GOTO 1.06
END

IF ~~ THEN BEGIN 1.03
   SAY ~I hoped to discuss aligning my duties under Mask with your leadership, but it seems now is not the time.~ IF ~~ THEN GOTO 1.04
END

IF ~~ THEN BEGIN 1.04
   SAY ~The shadows hold many moments for us to explore these matters further when the circumstances are more favorable.~ IF ~~ THEN GOTO 1.05
END

IF ~~ THEN BEGIN 1.05
   SAY ~Until then, let us focus on the task at hand, for the night is long, and the journey is far from over.~
IF ~~ THEN DO ~
   RealSetGlobalTimer("h_DanikaTalkTimer","GLOBAL",3600)~ EXIT
END

IF ~~ THEN BEGIN 1.06
   SAY ~Our shared goals must remain at the forefront of our efforts. When the time is right, we can delve deeper into these matters. For now, let's stay resolute and focus on the tasks before us.~
IF ~~ THEN DO ~
   SetGlobal("h_DanikaFriendshipActive","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1.07
   SAY ~Thank you, <CHARNAME>. Engaging in this dialogue will be enlightening for us both, fostering a deeper understanding and synergy within our group.~ IF ~~ THEN GOTO 1.08
END

IF ~~ THEN BEGIN 1.08
   SAY ~In the time since I've joined your ranks, I've observed a style of leadership that differs greatly from what I'm accustomed to.~ IF ~~ THEN GOTO 1.09
END

IF ~~ THEN BEGIN 1.09
   SAY ~In the Church of Mask, every action is dictated by strict orders, each step a dance of precision and purpose. Yet here, in your company, such structure seems... absent.~ IF ~~ THEN GOTO 1.10
END

IF ~~ THEN BEGIN 1.10
   SAY ~In my world, ambiguity is a shadow we never stepped into. Every decision, every movement is clear, orchestrated by the will of those above.~ IF ~~ THEN GOTO 1.11
END

IF ~~ THEN BEGIN 1.11
   SAY ~This lack of directive leaves me unsettled. I often find myself adrift, unsure of my place or purpose. I need to understand your expectations, your commands.~ IF ~~ THEN GOTO 1.12
END

IF ~~ THEN BEGIN 1.12
   SAY ~What role do you intend for me? I am ready to follow, to adapt, but I need a path to tread, something to anchor my actions. Without a clear order, I feel like a blade sheathed in darkness.~
       ++ ~I believe in giving my companions the freedom to choose their actions. You're skilled and capable, so I trust you to find your own role in our group.~ GOTO 1.15
       ++ ~You'll find I'm not one for rigid commands. Use your skills as you see fit and feel free to voice your ideas.~ GOTO 1.15
       ++ ~I'll provide clear orders when they're required, but I also value your input. Your role is to complement our efforts with your unique skills.~ GOTO 1.15
       ++ ~Your orders are to follow my commands without question. Focus on reconnaissance and use your stealth to our advantage. I will provide specific tasks as needed.~ GOTO 1.13
END

IF ~~ THEN BEGIN 1.13
   SAY ~Your words offer the clarity I sought. To follow explicit commands and utilize my skills in reconnaissance and subterfuge aligns perfectly with my training and devotion to Mask.~ IF ~~ THEN GOTO 1.14
END

IF ~~ THEN BEGIN 1.14
   SAY ~This is the structure I am accustomed to, and it reassures me that our endeavors will be rooted in precision and purpose.~ IF ~~ THEN GOTO 1.15
END

IF ~~ THEN BEGIN 1.15
   SAY ~I will await your directives and execute them with the precision of a shadow in the night.~
IF ~~ THEN DO ~
   SetGlobal("h_DanikaFriendshipActive","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1.16
   SAY ~This level of freedom... it's a stark departure from the world I know. Under the teachings of Mask, every whisper and shadow is a directive to be followed, not a choice to be pondered.~ IF ~~ THEN GOTO 1.17
END

IF ~~ THEN BEGIN 1.17
   SAY ~To suddenly stand without these familiar boundaries... it's like walking without shadows in broad daylight. My life, my identity as a Demarchess, is rooted in obedience and order.~ IF ~~ THEN GOTO 1.19
END

IF ~~ THEN BEGIN 1.18
   SAY ~Facing this unfamiliar expanse of discretion leaves me at a loss. It's not just a matter of preference; it's an entirely different existence.~
       ++ ~You might need to take a deep breath and relax a bit, Danika. Has your life always been this regimented?~ GOTO 1.19
       ++ ~Life isn't always about following orders. The world is full of gray areas, and it's time you got used to it.~ GOTO 1.21
END

IF ~~ THEN BEGIN 1.19
   SAY ~In truth, the clarity and certainty of orders bring me a sense of calm. It is in the precision of a well-defined goal and the pursuit of a clear purpose where I find my solace.~ IF ~~ THEN GOTO 1.20
END

IF ~~ THEN BEGIN 1.20
   SAY ~The regimented life I've led has always been a source of comfort, a guiding beacon amidst the chaos of existence.~ IF ~~ THEN GOTO 1.23
END

IF ~~ THEN BEGIN 1.21
   SAY ~While I understand the need for adaptability, I firmly believe in the foundation provided by a rigid structure. It is where success is built, especially in a world as uncertain as ours.~ IF ~~ THEN GOTO 1.22
END

IF ~~ THEN BEGIN 1.22
   SAY ~My past has taught me that even when adapting, a clear framework is essential. It's about bending when necessary, but not breaking the underlying principles that guide us.~ IF ~~ THEN GOTO 1.23
END

IF ~~ THEN BEGIN 1.23
   SAY ~The earliest memories I have in Thay were steeped in unwavering structure and order, a discipline that not only forged my path but also shaped those around me.~ IF ~~ THEN GOTO 1.24
END

IF ~~ THEN BEGIN 1.24
   SAY ~My perception of the world has always been framed by the need for clear direction, and the effectiveness of a well-defined hierarchy.~ IF ~~ THEN GOTO 1.25
END

IF ~~ THEN BEGIN 1.25
   SAY ~These principles are not mere preferences in my life, they are the very foundation of my core beliefs. They transform chaos into order, and bring purpose where there is none.~ IF ~~ THEN GOTO 1.26
END

IF ~~ THEN BEGIN 1.26
   SAY ~I regard these concepts as fundamental, serving not only as vital compasses for my own guidance, but also as indispensable pillars to uphold stability and success in the world.~
       ++ ~There's benefits to having order, but there's also a need for personal freedom and judgment. The key is finding a balance between the two.~ GOTO 1.27
       ++ ~Sometimes, stepping into the unknown can lead to growth. While your past has shaped you, there's always room to evolve and adapt.~ GOTO 1.29
       ++ ~I can't say I agree with you there. Freedom and autonomy often lead to better results than rigid adherence to a set system.~ GOTO 1.31
END

IF ~~ THEN BEGIN 1.27
   SAY ~While you speak of balancing order with freedom, I must assert the superiority of a structured approach.~ IF ~~ THEN GOTO 1.28
END

IF ~~ THEN BEGIN 1.28
   SAY ~In my experience, order is not just a preference but a necessity for survival and success. The clarity it provides supersedes the uncertainties of individual judgment.~ IF ~~ THEN GOTO 1.32
END

IF ~~ THEN BEGIN 1.29
   SAY ~Your notion of growth through the unknown is an idealistic one. My experiences, however, have taught me the value of unwavering paths.~ IF ~~ THEN GOTO 1.30
END

IF ~~ THEN BEGIN 1.30
   SAY ~The world, as I've known it, rewards those who adhere to structure and discipline, not those who seek constant change.~ IF ~~ THEN GOTO 1.32
END

IF ~~ THEN BEGIN 1.31
   SAY ~Prioritizing autonomy over structure, as you suggest, overlooks the fundamental benefits of a well-ordered system.~ IF ~~ THEN GOTO 1.32
END

IF ~~ THEN BEGIN 1.32
   SAY ~My life, my dedication to Mask has shown me that the strength and efficiency of any operation lie in its hierarchy and clear directives, not in unchecked freedom.~
       ++ ~There's more to this world than strict order. What about the joy of making your own choices, and the surprises that come from unexpected decisions?~ GOTO 1.33
       ++ ~Alright, Danika, it seems you're set in your ways. Your methods have served you well, so let's stick with what you know best.~ GOTO 1.35
END

IF ~~ THEN BEGIN 1.33
   SAY ~What would you know of the real world, <CHARNAME>, growing up behind Candlekeep's sheltered walls?~ IF ~~ THEN GOTO 1.34
END

IF ~~ THEN BEGIN 1.34
   SAY ~You speak of freedom and autonomy as if they're the answers to everything, but your words carry the naivete of one who has never faced true horrors as I have.~ IF ~~ THEN GOTO 1.35
END

IF ~~ THEN BEGIN 1.35
   SAY ~You think rules and hierarchy are oppressive, but they are the very things that kept me alive amidst the chaos and cruelty of Thay.~ IF ~~ THEN GOTO 1.36
END

IF ~~ THEN BEGIN 1.36
   SAY ~Every moment of my life was a battle to survive, to prove my worth, and to navigate a world where treachery lurked in every shadow.~ IF ~~ THEN GOTO 1.37
END

IF ~~ THEN BEGIN 1.37
   SAY ~Freedom is a luxury, <CHARNAME>, one that you take for granted. You've never had to make the choices I've had to make, to sacrifice, to obey without question, to endure unspeakable torment in the service of others.~ IF ~~ THEN GOTO 1.38
END

IF ~~ THEN BEGIN 1.38
   SAY ~My loyalty is a result of the scars etched into my soul by the horrors of my past. So, do not lecture me on ideals you can never truly comprehend, for the trials I've faced have made me who I am.~ IF ~~ THEN GOTO 1.39
END

IF ~~ THEN BEGIN



So, before you preach about the virtues of your way, remember that your sheltered existence has left you blind to the true shadows that lurk in the hearts of men.
Perhaps you should stick to what you know best within the walls of your precious library.




IF ~~ THEN BEGIN 1.33
   SAY ~The concepts of making one's own choices and embracing surprises from unexpected decisions, while they might hold appeal to some, seem unnecessary to me.~ IF ~~ THEN GOTO 1.34
END

IF ~~ THEN BEGIN 1.34
   SAY ~My life has been built on predictability and the assurance that comes from following a set path. The joy I find is in knowing each step is part of a greater, well-ordered plan.~ IF ~~ THEN GOTO 1.37
END

IF ~~ THEN BEGIN 1.35
   SAY ~I appreciate your understanding, <CHARNAME>. Sticking to what has proven effective is, in my view, for the best. Your recognition of the value in my methods is reassuring.~ IF ~~ THEN GOTO 1.36
END

IF ~~ THEN BEGIN 1.36
   SAY ~It brings a sense of certainty and effectiveness that I've come to rely on.~ IF ~~ THEN GOTO 1.37
END

IF ~~ THEN BEGIN 1.37
   SAY ~I stand by the lessons ingrained in me since my earliest days in Thay. They are not mere philosophical stances but proven strategies for maintaining control and ensuring success.~
       ++ ~Thay seems to be a recurring theme in your life's story. What was it about growing up there lead you to these conclusions?~ GOTO 1.33
       ++ ~It sounds like Thay was a challenging place to grow up. It clearly had a profound impact on your outlook and beliefs.~ GOTO 1.34
       ++ ~I'm curious to know more about Thay itself. Why did it shape your views so rigidly?~ GOTO 1.35
END

IF ~~ THEN BEGIN 1.33
   SAY ~From a young age, I saw how certainty and hierarchy provided a semblance of safety in an otherwise unpredictable world. It's not just about what Thay is, but what it demands of you to endure.~ IF ~~ THEN GOTO 1.36
END

IF ~~ THEN BEGIN 1.34
   SAY ~Yes, life in Thay was a relentless trial. Every day required a strict adherence to the roles we were given. In such an environment, you don't just adopt beliefs; they're forged upon you.~ IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 35
   SAY ~Imagine a land where power is the only language and order is the law. In Thay, the line between order and chaos is a fine one, and straying too far means peril.~ IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
   SAY ~Growing up a slave, my mother and I endured a world where stepping out of line could mean the difference between life and death. Order wasn't a concept, it was our reality.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
   SAY ~We lived not by choice, but by necessity, adhering to the unyielding structures imposed upon us. Every whisper of disobedience was met with swift and often brutal correction.~ IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY ~Amidst the rigors of such a life, I found comfort in the predictability of our routines, the clear hierarchies that dictated our every move.~ IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
   SAY ~This upbringing, though harsh, was the foundation upon which my beliefs were built. They are not just principles, they are the tenets that saved my life, time and again.
       ++ ~I had no idea you were a slave, Danika. To endure such hardship... I can't even begin to imagine what you must have went through.~ GOTO 40
       ++ ~I see now. Your past as a slave has shaped your current worldview. It's a logical progression, from such rigid control to seeking structure.~
       ++ ~The harshness of Thay has honed you into a fine tool. I'll make sure to utilize your rigid adherence to order to further our cause.~
END

IF ~~ THEN BEGIN 40
   SAY ~I learned lessons there that many never face, and the memories... they're like shadows, always lingering. Speaking of it... isn't always easy, but it's part of who I am now.~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 41
   SAY ~Precisely. Those years were a brutal education, but one that carved out my strength. It can be... challenging to revisit at times, but it's a truth that I cannot deny.~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 42
   SAY ~That would be the wisest choice. I was forged in the red fires of Thay. But remember, <CHARNAME>, tools retain the marks of their forging. Discussing such times... it's not without its trials.~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
   SAY ~
IF ~~ THEN BEGIN 37
   SAY ~Despite our differing views, I appreciate your willingness to explore these matters with me. Know that I will ponder your ideas in the quiet of the night, where thoughts often find clarity.~ IF ~~ THEN GOTO GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY ~Balancing my convictions with the nuances of this group might prove beneficial in ways I have yet to fully understand. For now, let's refocus on the immediate tasks that await our efforts.~
       ++ ~ask about thay
       ++ ~I respect your willingness to consider different viewpoints. It's not easy to question what you've always known.~
       ++ ~I understand your perspective, but in the future, perhaps we should concentrate more on our actions than on sharing every thought.~
END


IF ~~ THEN DO ~
   SetGlobal("h_DanikaTalk","GLOBAL",3)
   RealSetGlobalTimer("h_DanikaTalkTimer","GLOBAL",3600)~ EXIT
END
*/




/*
Im making an NPC mod for Baldur's Gate Enhanced Edition and need help coming up with a friendship/possibly romance track of dialog. im thinking it should have 20 conversations. here is some info on the character:

Name: Danika
Gender: Female
Class: Demarchess of Mask (Cleric/Thief)
Alignment: Lawful Evil

Background Summary:
Danika's life is a tapestry of shadows and secrets. Born a slave in the dark land of Thay, she was raised in the estate of a Red Wizard, who was secretly her father. Her early years were marked by the duality of her existence - a slave in her own father's home, treated with indifferent equality among other slaves. Her mother was also a slave there and was the only person of comfort and love in her life. Her life took a dramatic turn at the age of eight when assassins hired by a political rival of her father attacked the estate. In a miraculous eruption out of nowhere of latent magical abilities, she survived the attack and killed the assassins, becoming the sole survivor. Everyone else died including her mother. Her father was on the brink of death and called her over, revealing the secret that he is her father. then he died.

Taken in by the Temple of Mask, the very organization responsible for the massacre, Danika was trained as a Demarchess of Mask. The church was the one hired by the political rivals to kill everyone in the estate, danika included. the church has no interest in those politics it was just a job to them. Once they realized danika, a child, somehow managed to kill their highly trained assassins, they took her in after she fled and was on the streets, raising her as one of their own, but never revealing their role in the attack. Unaware of the Temple's role in her past, she honed her skills in thievery and subterfuge, guided by the tenets of Mask. Her life in the temple was a blend of rigorous training and indoctrination, shaping her into a skilled and shadowy figure.

Flaws:
Because of her upbringing as a slave and a member of the evil church of mask, danika believes in order and structure over everything, thus her lawful evil alignment.
Impulsiveness: Danika's youth and lack of a stable upbringing can sometimes lead to impulsive decisions without fully considering the consequences.
Trust Issues: Her complex past makes it difficult for her to trust others, which can lead to misunderstandings and conflicts.

Personality Traits:

Cautious and Curious: Danika approaches new situations and people with a blend of caution and curiosity. Her upbringing in a world of deceit and betrayal has made her wary of others' intentions, but her innate curiosity often leads her to explore the unknown.
Shadowy Demeanor: Reflecting her training and allegiance to Mask, Danika often presents a mysterious and shadowy demeanor. She is skilled at keeping her true thoughts and emotions hidden, revealing them only when she deems it necessary.
Youthful Energy: Despite her dark past, Danika possesses a youthful energy and zest for life. She is passionate about her pursuits and often displays a certain playfulness in her interactions.
Strategic and Intelligent: Danika is highly intelligent and strategic in her thinking. She excels at planning and executing complex schemes, a skill honed through her training as a Demarchess of Mask.

Title and Role: Danika is a "Demarchess" in the Church of Mask. This title signifies a high-ranking position, and she often references her duties and training in this role. Her dialogue suggests she's adept in the subtleties of her faith and the practicalities of clandestine work.

Beliefs and Values: She holds the qualities of subtlety, cunning, and divine purpose in high regard, aligning with the teachings of the Lord of Shadows, Mask. Danika views deception, stealth, and the ability to manipulate as virtues, reflecting the core beliefs of her church.

The Church of Mask: Her dialogues provide insights into the Church of Mask, portraying it as a congregation valuing stealth, secrecy, and subtlety. The church seems to believe in the fluidity of ownership, defined more by possession than law or tradition.

Divine Guidance and Shadow: Danika sees herself as an ally and guide, infusing operations with divine purpose. She often talks about the guidance of shadows and the importance of being vigilant in a world of shifting alliances.

Secrecy and Espionage: Her training in espionage and interpreting secrets is a recurring theme. She emphasizes the importance of not sharing secrets with those uninitiated in their ways.

Alliances and Relations: There are references to her views on alliances within the pantheon, particularly regarding the relationship between Mask and Shar, another deity in the Forgotten Realms.

Guidance and Wisdom: She offers guidance and wisdom, promising to be ready to impart the wisdom of Mask. Her role as a guide is not just strategic but also spiritual, providing intuitive and subtle assistance.

Overall, Danika is portrayed as a complex character deeply rooted in her faith, valuing subtlety, cunning, and the teachings of her deity. She is cautious, secretive, and dedicated to her role within the Church of Mask, embodying the qualities revered by her faith.

Role and Alignment: Danika identifies herself as a "Demarchess of our Lord of Shadows." This title suggests she holds a significant position within the Church of Mask, a deity in the Forgotten Realms. The Lord of Shadows refers to Mask, a god known for themes of stealth, thievery, and intrigue.

Speech Style: Her dialogues are formal and somewhat cryptic, reflecting a sense of mystery and discretion typical of a follower of Mask. Phrases like "those who serve the Lord of Shadows do not share secrets with those uninitiated in our ways" and "tread carefully, for these shadows watch and remember" emphasize her secretive and cautious nature.

Personality Traits: Danika appears to value subtlety, discretion, and divine purpose. She mentions her role in infusing operations with "divine purpose," indicating a blend of practicality and religious devotion. She also expresses appreciation for qualities like subtlety and cunning, which are in line with the teachings of Mask.

Interactions: Her interactions suggest she is cautious about whom she speaks to and shares information with, prioritizing those who are part of her religious circle or have proven themselves worthy of trust.

*/