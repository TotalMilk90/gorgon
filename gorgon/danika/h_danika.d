BEGIN h_danika

IF ~Global("h_Danika","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Those who serve the Lord of Shadows do not share secrets with those uninitiated in our ways. So tread carefully, for these shadows watch and remember.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 
   SAY ~It is in the interest of discretion and duty that I must refrain from speaking further. Until you walk among us, our conversation ends here.~
IF ~~ THEN EXIT
END
   
IF ~Global("h_Danika","GLOBAL",1)~ THEN BEGIN 2
   SAY ~Brethren of the Gorgon's Eye, shadows grace your endeavors, and now, so does the Church of Mask. I am Danika, a newly ordained Demarchess of our Lord of Shadows.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~As your ally and guide, my role is to infuse our operations with divine purpose, ensuring they are not only successful but also a testament to our devotion.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Our Lord favors subtlety and cunning, qualities I too hold dear. I look forward to working closely with you, and imparting the wisdom of our faith.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~Together, under the watchful gaze of Mask, we shall redefine the art of thievery and make the Gorgon's Eye a name revered and respected in equal measure.~
       +~Global("h_DanikaWillJoin","GLOBAL",1)~+ ~Saradin mentioned a potential collaboration between us. What's your perspective on this?~ GOTO 71
       ++ ~I'm interested in learning more about the Church of Mask.~ DO ~SetGlobal("h_Danika","GLOBAL",2)~ GOTO 8
       ++ ~In practical terms, what can you offer, and how can I utilize your skills and services?~ DO ~SetGlobal("h_Danika","GLOBAL",2)~  GOTO 49
       ++ ~I'd like to know more about you, Danika. Anything you'd like to share?~ DO ~SetGlobal("h_Danika","GLOBAL",2)~ GOTO 63
       ++ ~I appreciate your time, but I need to take my leave. There are matters I need to attend to.~ GOTO 7
END

IF ~Global("h_Danika","GLOBAL",2) Global("h_BetrayBaldwin","GLOBAL",0)~ THEN BEGIN 6
   SAY ~What shadows weigh upon your thoughts, and how may the guidance of Mask's servant aid you on this intricate path?~
       +~Global("h_DanikaWillJoin","GLOBAL",1)~+ ~Saradin mentioned a potential collaboration between us. What's your perspective on this?~ GOTO 71
       +~Global("h_DanikaWillJoin","GLOBAL",2)~+ ~I would like you to join me, if you're still willing. Your expertise and training could greatly enhance our efforts.~ GOTO 84
       ++ ~I'm interested in learning more about the Church of Mask.~ GOTO 8
       ++ ~In practical terms, what can you offer, and how can I utilize your skills and services?~ GOTO 49
       ++ ~I'd like to know more about you, Danika. Anything you'd like to share?~ DO ~SetGlobal("h_Danika","GLOBAL",2)~ GOTO 63
       ++ ~I appreciate your time, but I need to take my leave. There are matters I need to attend to.~ GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~May the shadows guide your steps, faithful one. When you require guidance or seek the unseen, know that I shall be here, veiled by the night's embrace, ready to impart the wisdom of Mask upon you.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
   SAY ~Ah, a seeker of hidden truths in the world of shadows. It's a rare thing to encounter someone eager to peer behind the veiled curtain of the Church of Mask.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Tell me, what particular strand of this intricate web draws your curiosity? What knowledge is it you wish to unveil?~
       ++ ~Can you provide a brief history of the Church? How has it evolved over time?~ GOTO 10
       ++ ~What are the core beliefs and tenets of the Church of Mask?~ GOTO 14
       ++ ~How is the Church of Mask structured? What are the different roles and hierarchies within it?~ GOTO 19
       ++ ~What kind of activities does the Church engage in? How do they execute their plans and heists?~ GOTO 27
       ++ ~What are some of the rituals and ceremonies unique to the Church of Mask?~ GOTO 30
       ++ ~What kind of magic is associated with the Church? Are there any spells or abilities I could learn?~ GOTO 34
       ++ ~How does the Church of Mask interact with other deities and their followers?~ GOTO 37
       ++ ~I'd like to ask you about something else.~ GOTO 6
END

IF ~~ THEN BEGIN 10
   SAY ~The Church of Mask, veiled in secrecy, has a long and shadowy history, deeply entrenched in the fabric of Faerun. From the time of shadows, it has been a sanctuary for those who thrive in the dark.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~Initially, the Church was more openly involved in political schemes and grand-scale plots. However, after the Time of Troubles and the rise of Cyric, our focus shifted.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~We delved deeper into the shadows, refining our methods to be more personal, elusive, and centered on individual and small group activities.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~This evolution was necessary to survive the changing landscape of divine and political powers. Our history is a tale of adaptation and survival, a testament to the enduring nature of shadows.~
       ++ ~What are the core beliefs and tenets of the Church of Mask?~ GOTO 14
       ++ ~How is the Church of Mask structured? What are the different roles and hierarchies within it?~ GOTO 19
       ++ ~What kind of activities does the Church engage in? How do they execute their plans and heists?~ GOTO 27
       ++ ~What are some of the rituals and ceremonies unique to the Church of Mask?~ GOTO 30
       ++ ~What kind of magic is associated with the Church? Are there any spells or abilities I could learn?~ GOTO 34
       ++ ~How does the Church of Mask interact with other deities and their followers?~ GOTO 37
       ++ ~I'd like to ask you about something else.~ GOTO 6
END

IF ~~ THEN BEGIN 14
   SAY ~The Church of Mask is built on the belief that the world belongs to the cunning, the stealthy, and the resourceful.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~We hold that ownership is a fluid concept, defined by possession rather than law or tradition. The art of deception, the skill of subtlety, and the ability to manipulate are virtues we cherish.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~Wealth is seen as something that rightfully belongs to those who can acquire it skillfully.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~Our tenets encourage us to end each day wealthier than we started, not through brute force, but through cleverness and stealth.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~Honesty, to us, is less a virtue and more a tool for creating a facade, a mask, if you will, to achieve our ends.~
       ++ ~Can you provide a brief history of the Church? How has it evolved over time?~ GOTO 10
       ++ ~How is the Church of Mask structured? What are the different roles and hierarchies within it?~ GOTO 19
       ++ ~What kind of activities does the Church engage in? How do they execute their plans and heists?~ GOTO 27
       ++ ~What are some of the rituals and ceremonies unique to the Church of Mask?~ GOTO 30
       ++ ~What kind of magic is associated with the Church? Are there any spells or abilities I could learn?~ GOTO 34
       ++ ~How does the Church of Mask interact with other deities and their followers?~ GOTO 37
       ++ ~I'd like to ask you about something else.~ GOTO 6
END

IF ~~ THEN BEGIN 19
   SAY ~At its core, we are a congregation of individuals who embrace the art of stealth, secrecy, and subtlety.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~Our ranks are comprised primarily of thieves, clerics, and specialty priests, among whom I count myself.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~Within our walls, titles like 'Hidden Ones', are held by esteemed members like my master, Saradin, signifying the revered high priests of our order.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~They are the guiding shadows, the unseen hands that shape our path. But our structure is not just confined to temples and dark sanctuaries.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~In the bustling cities, you'll find Catfoots, clergy members who blend seamlessly with the urban shadows, gathering intelligence, offering counsel, and aiding fellow thieves.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~The Nightrunners follow a different path, roaming the wilderness and exploring dungeons. They're our eyes and ears in the wild, demonstrating that Mask's blessings extend far beyond the city walls.~ IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~Each of us, regardless of our title or role, is proficient in skills that honor Mask. Be it the arts of disguise, forgery, or even reading lips, we are trained to embody the essence of our deity.~ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY ~So, you see, whether it's the hidden corridors of a temple or the untamed wilderness, the Church of Mask thrives through adaptability, skill, and a deep understanding of the shadows that we call home.~
       ++ ~Can you provide a brief history of the Church? How has it evolved over time?~ GOTO 10
       ++ ~What are the core beliefs and tenets of the Church of Mask?~ GOTO 14
       ++ ~What kind of activities does the Church engage in? How do they execute their plans and heists?~ GOTO 27
       ++ ~What are some of the rituals and ceremonies unique to the Church of Mask?~ GOTO 30
       ++ ~What kind of magic is associated with the Church? Are there any spells or abilities I could learn?~ GOTO 34
       ++ ~How does the Church of Mask interact with other deities and their followers?~ GOTO 37
       ++ ~I'd like to ask you about something else.~ GOTO 6
END

IF ~~ THEN BEGIN 27
   SAY ~Our activities are as varied as the shadows we dwell in. Primarily, we engage in espionage, thievery, and subtle manipulations.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY ~We plan our operations meticulously, often involving elaborate heists, information gathering, and infiltration. Our methods are indirect, preferring to remain unseen and uncaught.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~The Church's operations are designed to be ghostly whispers in the dark, leaving no trace yet having profound effects. Every action, every theft, every secret gathered is a tribute to Mask.~
       ++ ~Can you provide a brief history of the Church? How has it evolved over time?~ GOTO 10
       ++ ~What are the core beliefs and tenets of the Church of Mask?~ GOTO 14
       ++ ~How is the Church of Mask structured? What are the different roles and hierarchies within it?~ GOTO 19
       ++ ~What are some of the rituals and ceremonies unique to the Church of Mask?~ GOTO 30
       ++ ~What kind of magic is associated with the Church? Are there any spells or abilities I could learn?~ GOTO 34
       ++ ~How does the Church of Mask interact with other deities and their followers?~ GOTO 37
       ++ ~I'd like to ask you about something else.~ GOTO 6
END

IF ~~ THEN BEGIN 30  
   SAY ~Our practices are as enigmatic as our deity. The Ritual of the Unseen Presence is a sacred observance where we acknowledge Mask’s omnipresence in darkness.~ IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY ~In this solemn ceremony, we offer stolen wealth to Mask, melting it down before our altars as a tribute.~ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~Another significant tradition is the Ritual of Shadow Walking, a sacred ceremony that allows a follower to attune themselves with the essence of shadow itself.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY ~These sacred ceremonies, like many of our practices, are shrouded in secrecy and performed under the guard of conjured shadows, ensuring their sanctity and confidentiality.~
       ++ ~Can you provide a brief history of the Church? How has it evolved over time?~ GOTO 10
       ++ ~What are the core beliefs and tenets of the Church of Mask?~ GOTO 14
       ++ ~How is the Church of Mask structured? What are the different roles and hierarchies within it?~ GOTO 19
       ++ ~What kind of activities does the Church engage in? How do they execute their plans and heists?~ GOTO 27
       ++ ~What kind of magic is associated with the Church? Are there any spells or abilities I could learn?~ GOTO 34
       ++ ~How does the Church of Mask interact with other deities and their followers?~ GOTO 37
       ++ ~I'd like to ask you about something else.~ GOTO 6
END

IF ~~ THEN BEGIN 34
   SAY ~We use spells that enhance our stealth, deceive others, and manipulate shadows. Spells like Dark Way, Listening Shadow, and Striking Shadows are part of our repertoire.~ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
   SAY ~These abilities allow us to meld into darkness, eavesdrop undetected, and strike from the shadows.~ IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
   SAY ~As for learning these spells, it requires dedication to Mask and an understanding of the subtlety of shadows.~
       ++ ~Can you provide a brief history of the Church? How has it evolved over time?~ GOTO 10
       ++ ~What are the core beliefs and tenets of the Church of Mask?~ GOTO 14
       ++ ~How is the Church of Mask structured? What are the different roles and hierarchies within it?~ GOTO 19
       ++ ~What kind of activities does the Church engage in? How do they execute their plans and heists?~ GOTO 27
       ++ ~What are some of the rituals and ceremonies unique to the Church of Mask?~ GOTO 30
       ++ ~How does the Church of Mask interact with other deities and their followers?~ GOTO 37
       ++ ~I'd like to ask you about something else.~ GOTO 6
END

IF ~~ THEN BEGIN 37
   SAY ~Our interactions with other deities and their followers are, like much of our work, complex and multifaceted.~ IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY ~Our interactions with other deities and their followers are a nuanced web of alliances and enmities. Perhaps the most notable is our profound animosity towards Cyric.~ IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
   SAY ~This deep-seated hatred stems from a dark chapter in our history. During the Time of Troubles, Mask, in the guise of Godsbane, was wielded by Cyric to slay Bhaal, the Lord of Murder.~ IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
   SAY ~However, Mask's intricate scheming led to a catastrophic error.~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
   SAY ~He inadvertently aided Cyric in seizing the portfolio of illusion and, worse, lost a significant part of his own power, including the portfolio of intrigue.~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
   SAY ~This blunder not only weakened Mask but also fueled a relentless vendetta against Cyric. Beyond this rivalry, our deity's penchant for intrigue has, at times, put us at odds with others.~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
   SAY ~Mask has sought alliances, notably with Bane, though such overtures are met with wariness due to our god's reputation.~ IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
   SAY ~We find opposition from deities like Waukeen and Helm, and others like Deneir, Oghma, Torm, Tyr, and Selune have worked to thwart Mask's plots.~ IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
   SAY ~Simultaneously, our relationship with Shar is complex, as our domains overlap in areas of darkness and secrecy.~ IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
   SAY ~Though Mask is typically a loner in the pantheon, the nuanced association with Shar is based more on mutual understanding of the shadows than outright alliance or enmity.~ IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
   SAY ~These dynamics illustrate the delicate balance of power and influence we navigate in our interactions with other divine entities and their followers.~ IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
   SAY ~Our church must be as cunning and adaptable as the shadows we revere, forever vigilant in a world where alliances shift as quickly as the darkness itself.~
       ++ ~Can you provide a brief history of the Church? How has it evolved over time?~ GOTO 10
       ++ ~What are the core beliefs and tenets of the Church of Mask?~ GOTO 14
       ++ ~How is the Church of Mask structured? What are the different roles and hierarchies within it?~ GOTO 19
       ++ ~What kind of activities does the Church engage in? How do they execute their plans and heists?~ GOTO 27
       ++ ~What are some of the rituals and ceremonies unique to the Church of Mask?~ GOTO 30
       ++ ~What kind of magic is associated with the Church? Are there any spells or abilities I could learn?~ GOTO 34
       ++ ~I'd like to ask you about something else.~ GOTO 6
END

IF ~~ THEN BEGIN 49
   SAY ~My offerings to the Gorgon's Eye are akin to a guiding shadow, providing strategic counsel and insights that can elevate our operations to new heights.~ IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
   SAY ~With my understanding of subterfuge and the teachings of Mask, I can offer unique perspectives that can turn the tide in complex situations.~ IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
   SAY ~Firstly, my training has honed my ability to analyze and interpret situations with a depth that few can match.~ IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
   SAY ~This means I can provide invaluable advice on the planning and execution of heists or missions, foreseeing potential pitfalls and opportunities that might otherwise be missed.~ IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
   SAY ~Secondly, my knowledge of the Church of Mask and its workings can be an asset in understanding the broader landscape of power and espionage in Faerun.~ IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
   SAY ~This information can be crucial in anticipating moves by our rivals or even by those who might wish to ally with us.~ IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
   SAY ~Knowledge, as they say, is power, and in our world, it can mean the difference between success and failure.~ IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
   SAY ~Moreover, I bring a spiritual element to our endeavors. My prayers and rituals, though they may seem abstract, are dedicated to earning the favor of Mask.~ IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
   SAY ~This could manifest in subtle ways, perhaps a fortuitous shadow to hide in, a distraction at the right moment, or even a feeling, an intuition that guides you when choices are hard to make.~ IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
   SAY ~In addition, I can offer training in the arts of stealth and subterfuge to our members.~ IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
   SAY ~The skills I possess in evasion, disguise, and quiet movement are invaluable for anyone wishing to excel in the art of thievery.~ IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
   SAY ~So, while it may seem that my role is intangible, the benefits I bring are woven intricately into the fabric of our operations.~ IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61
   SAY ~My presence here is to ensure that every action we take is not only physically executed with precision but is also strategically sound and blessed by the shadows.~ IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
   SAY ~Together, we can achieve greatness, with each theft and scheme not just an act of larceny, but a masterful dance in the dark, orchestrated with the wisdom and blessing of Mask.~
       ++ ~I'm interested in learning more about the Church of Mask.~ GOTO 8
       ++ ~I'd like to know more about you, Danika. What can you tell me about yourself?~ GOTO 63
       ++ ~I appreciate your time, but I need to take my leave. There are matters I need to attend to.~ GOTO 7
END

IF ~~ THEN BEGIN 63
   SAY ~Oh, you're curious about me? Well, it's not often someone inquires about my personal story, but I guess I can share what's relevant.~ IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64
   SAY ~I come from the land of Thay, where I was trained in the arts of stealth, strategy, and the sacred mysteries at one of our many temples.~ IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
   SAY ~There, I honed my skills in espionage, the interpretation of secrets, and the intricate rituals of Mask.~ IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
   SAY ~This rigorous training forged me into a Demarchess, adept in the subtleties of our faith and the practicalities of our clandestine work.~ IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
   SAY ~Upon my ascension to the higher ranks of our Church, they chose to send me here to the Gorgon's Eye.~ IF~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
   SAY ~Under the tutelage of my master, Saradin, my mission is to weave the will and wisdom of Mask into the guild's strategies, enhancing our operations with divine insight and shadowy cunning.~ IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69
   SAY ~I've only been here a short time, still adapting, and still observing, but every step I take, every decision I make, is a reflection of my training and my devotion to Mask.~ IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
   SAY ~I am here to serve, to teach, and to learn, always under the watchful gaze of my master and our enigmatic deity.~
       ++ ~I'm interested in learning more about the Church of Mask.~ GOTO 8
       ++ ~In practical terms, what can you offer, and how can I utilize your skills and services?~ GOTO 49
       ++ ~I appreciate your time, but I need to take my leave. There are matters I need to attend to.~ GOTO 7
END

IF ~~ THEN BEGIN 71
   SAY ~He has discussed this with me, and I find the prospect in line with my duties and training as a Demarchess of Mask.~ IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
   SAY ~As a representative of the Church, it is part of my mandate to not only spread the influence of our Lord of Shadows but also to apply the skills and teachings I have acquired in practical settings.~ IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73
   SAY ~Understand that my involvement is a reflection of my devotion to Mask and the path laid out for me as a Demarchess. Together, we can navigate the challenges ahead, guided by the tenets of my faith.~ IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74
   SAY ~So, while my joining you is born of duty, I will endeavor to ensure that our collaboration is effective and that our actions serve both our immediate goals and the greater purposes of the Church.~
       ++ ~Your skills and dedication to your faith are clear, Danika, and I'd like for you to join me.~ GOTO 84
       ++ ~I'm curious about your personal feelings on this. Are you comfortable with this arrangement, beyond just fulfilling your obligations?~ GOTO 75
       ++ ~I appreciate the offer, however, I think it's best if we continue as is for the time being.~ GOTO 81
END

IF ~~ THEN BEGIN 75
   SAY ~My personal feelings? That's... not something I'm often asked about. In truth, my life has always been guided by the will of others.~ IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 
   SAY ~I've learned to adapt and excel in the roles assigned to me, to find a sense of purpose within the directives I'm given.~ IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77
   SAY ~This new position, working alongside you, is another such directive. I am prepared to fulfill it to the best of my abilities, as I have always done.~ IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78
   SAY ~Your concern for my comfort is... unnecessary. I will carry out my duties with dedication and efficiency. The teachings and trainings of the Church have shaped me to be resilient and focused.~ IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79
   SAY ~However, I do appreciate your inquiry. It's... unexpected, but not unwelcome. It's just that in the life I've led, personal comfort has never been a priority.~ IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80
   SAY ~My attention has always been on serving the greater purpose, on fulfilling the needs of the Church, and now in this new capacity, supporting our joint endeavors in the Gorgon's Eye.~
       ++ ~Your skills and dedication to your faith are clear, Danika, and I'd like for you to join me.~ GOTO 84
       ++ ~I appreciate the offer, however, I think it's best if we continue as is for the time being.~ GOTO 81
END

IF ~~ THEN BEGIN 81
   SAY ~I understand your decision. My duty is to be an asset in whatever way is most beneficial, and I'm prepared to fulfill that role as needed.~ IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82
   SAY ~Should circumstances change or should you require my assistance in the future, do not hesitate to call upon me.~ IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83
   SAY ~For now, I will focus on my current responsibilities and ensure that my presence here continues to align with the goals of our Lord of Shadows and the Gorgon's Eye.~
IF ~~ THEN DO ~
   SetGlobal("h_DanikaWillJoin","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 84
   SAY ~Thank you, <CHARNAME>. I accept your invitation to join you. Together, I believe we can achieve much, blending the arts of stealth and strategy with your own talents.~ IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85
   SAY ~I am ready to embark on this journey and contribute to our shared goals under the guidance of Mask. Let us see where the shadows guide us in this new endeavor.~
IF ~~ THEN DO ~
   SetGlobal("h_DanikaKickedOut","GLOBAL",0)
   SetGlobal("h_Danika","GLOBAL",3)
   SetGlobal("h_DanikaWillJoin","GLOBAL",2)
   JoinParty()~ EXIT
END

IF ~Global("h_DanikaKickedOut","GLOBAL",2)~ THEN BEGIN 86
   SAY ~I wasn't certain if our paths would cross again so soon. If you're considering whether to have me rejoin your party, know that I remain ready to serve.~ IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87
   SAY ~My dedication to our shared goals has not wavered, and I can pick up where we left off without hesitation.~ IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88
   SAY ~However, the choice is yours. I am prepared to contribute as before, should you decide my skills are needed once more.~
       ++ ~I've given it some thought, and I realize your skills are vital to our success. I'd like you to rejoin the party, Danika.~ GOTO 91
       ++ ~I appreciate your willingness, Danika, but I think the current team setup is working well for us. It's best if things stay as they are for now.~ GOTO 89
END

IF ~~ THEN BEGIN 89
   SAY ~Understood. I will continue my duties independently then. The path of Mask often requires us to walk alone, and I am no stranger to that.~ IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90
   SAY ~Should you find the need for my skills in the future, do not hesitate to seek me out. I wish you success on your journey and will remain vigilant in my own pursuits.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 91
   SAY ~Your decision to have me return is acknowledged. I shall resume my role with the same dedication and efficiency as before.~ IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92
   SAY ~Our objectives remain clear, and I am prepared to utilize my skills in the service of our shared goals. Let us proceed with the tasks at hand, ensuring our success under the guidance of Mask.~
IF ~~ THEN DO ~
   SetGlobal("h_DanikaKickedOut","GLOBAL",0)
   JoinParty()~ EXIT
END
