BEGIN h_lieded

IF ~Global("h_LiedelQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Well, look at you, a fresh face in our little den of shadows. Quite the promising sight, if I do say so.~  IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",1) Global("h_DeclineBounty","GLOBAL",0)~ THEN BEGIN 1
   SAY ~Riggy's been singing your praises, says you've shown some real promise in the field. High commendation, coming from a man with his stature.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~I believe it's high time we became better acquainted. I'm Liedel. I deal in private contracts and bounties you won't find posted in the light of town.~
       ++ ~Pleasure, Liedel. I'm <CHARNAME>, and speaking of names, who is this Riggy you mentioned?~ GOTO 5
       ++ ~By 'private contracts', do you really mean, 'assassin-for-hire?'~ GOTO 6
       ++ ~What current bounties do you have available.~ GOTO 7
       ++ ~I'm not interested right now.~ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Such a shame, love. Perhaps the shadows will call to you another time.~
IF ~~ THEN DO ~
   SetGlobal("h_DeclineBounty","GLOBAL",1)~ EXIT
END

IF ~Global("h_DeclineBounty","GLOBAL",1)~ THEN BEGIN 4
   SAY ~Back for more, I see. Have you come seeking more than just conversation, or is it the thrill of our banter that brings you before me?~
       ++ ~What current bounties do you have available.~ GOTO 7
       ++ ~I'm not interested right now.~ EXIT
END

IF ~~ THEN BEGIN 5
   SAY ~Oh, it's just my little pet name for our dear Rigaldo. How he fumes at it, which only makes it more delightful.~
       ++ ~By "private contracts", do you really mean, assassin-for-hire?~ GOTO 6
       ++ ~What current bounties do you have available.~ GOTO 7
       ++ ~I'm not interested right now.~ GOTO 3
END

IF ~~ THEN BEGIN 6
   SAY ~Does it unsettle you, darling? Don't look so pathetic, most feel some hesitation at first, until seeing how alluring the trade can be.~
       ++ ~Pleasure, Liedel. My name is <CHARNAME>. And speaking of names, who is this Riggy you mentioned?~ GOTO 5
       ++ ~What current bounties do you have available.~ GOTO 7
       ++ ~I'm not interested right now.~ GOTO 3
END

IF ~~ THEN BEGIN 7
   SAY ~Right down to business, eh? Now, that's a trait I admire.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Currently, I have three bounties waiting in the shadows, unclaimed.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~The first concerns a man named Carth. He dared to cross the Zhentarim, borrowing coin and failing to repay his debts in time. They've called for recompense, be it in gold or blood.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Carth was last seen heading north, up the Coast Way. He's a hulking figure, ill-suited for the wilderness. Seek him in the surrounding inns or taverns, where he might seek refuge.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~The second contract is for a rogue by the name of Vapula Simberg. He was once a member of the Baldur's Gate thieves guild, but grew weary of the darkness.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~Vapula turned witness, betraying his former comrades and leading them to prisons and in the grip of hefty fines.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~Latest whispers suggest he's found sanctuary in piety, cloaked in newfound devotion. I recommend you scour the temples, for that's where his penance may unfold.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~Last up, a courtesan by the name, Aisha. The details are scant, but it seems a lovers' dispute stirs the cauldron.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~Aisha bears no family name, nor the means to vanish in the dead of night. She is concealing herself somewhere within the city's limits, you can count on that.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~That is all I have for the present. Return to me once you've made your mark on the shadows, my dear. I eagerly await your return.~
IF ~~ THEN DO ~
   SetGlobal("h_DeclineBounty","GLOBAL",2)
   SetGlobal("h_LiedelQuest","GLOBAL",2)
   AddJournalEntry(@410,QUEST)
   AddJournalEntry(@415,QUEST)
   AddJournalEntry(@419,QUEST)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",2) GlobalLT("h_BountyNumber","GLOBAL",3)~ THEN BEGIN 17
   SAY ~You have my attention, love. I'm ready to savor the secrets that dance upon your lips.~
       +~Global("h_CarthBounty","GLOBAL",1)~+ ~I am here regarding the bounty on Carth.~ GOTO 18
       +~Global("h_CarthBounty","GLOBAL",3)~+ ~I am here regarding the bounty on Carth.~ GOTO 20
       +~PartyHasItem("h_misc09")~+ ~I am here regarding the bounty on Vapula.~ GOTO 21
       +~Global("h_AishaBounty","GLOBAL",4)~+ ~I am here regarding the bounty on Aisha.~ GOTO 26
       +~Global("h_AishaBounty","GLOBAL",5)~+ ~I am here regarding the bounty on Aisha.~ GOTO 24
       ++ ~Nothing to report yet.~ EXIT
END

IF ~~ THEN BEGIN 18
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I found him stuffing his face at the Friendly Arm Inn. Tell the Zhents his debt was paid in blood.~ GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~That I will, my capable companion. Here is the reward for the bounty, 500 gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@413,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN 20
   SAY ~Well, it seems the Incredible Carth was able to settle his debt after all. It's not often our bounties find a way out.~
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@414,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 21
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I tracked him down to the Temple of Lathander and dealt him a swift blow. Here's his pendant as confirmation.~ GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~The burning sun of the morning lord, how grotesque. The pendant bears the weight of authenticity, however. Excellent work, darling.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~Another chapter closed in our shadowed tale. Here is the standard fee, 500 gold coins.~
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@418,QUEST_DONE)
   TakePartyItem("h_misc09")
   DestroyItem("h_misc09")
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN 24
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I found her holed up at the Red Sheaf. She's no longer anyones concern.~ GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~I see you've a knack for tying up loose ends. Here's the prize, 500 gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@425,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN 26
   SAY ~A change of heart from poor Amrius. He has decided to rescind the bounty, and as such, is no longer available.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@424,QUEST_DONE)~ EXIT
END

IF ~OR(2) !Class(Player1,THIEF_ALL) Global("h_LiedelRomanceEnd","GLOBAL",1) Global("h_LiedelQuest","GLOBAL",2) Global("h_BountyNumber","GLOBAL",3)~ THEN BEGIN 27
   SAY ~Well, it seems the shadows have taken a brief respite from our dance. How utterly boring. Perhaps you could find a way to entertain me, dear companion?~ IF ~~ THEN EXIT
END

IF ~Class(Player1,THIEF_ALL) Global("h_LiedelQuest","GLOBAL",2) Global("h_BountyNumber","GLOBAL",3) Global("h_LiedelRomanceEnd","GLOBAL",0) Global("h_LiedelRomance","GLOBAL",0)~ THEN BEGIN 28
   SAY ~Well, it seems the shadows have taken a brief respite from our dance. How utterly boring. Perhaps you could find a way to entertain me, dear companion?~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~I desperately desire more... exciting activities.~
       ++ ~Exciting activites? Well, I do have a few tricks up my sleeve. Care to see them in action?~ GOTO 32
       ++ ~Now, that's a challenge I'm more than willing to accept. What did you have in mind?~ GOTO 33
       ++ ~Boredom doesn't stand a chance with me around. How about we make our own kind of excitement?~ GOTO 31
       ++ ~I'm not interested.~ GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY ~Well, aren't you just a bundle of excitement. I suppose I'll have to find some other way to amuse myself then. Such a tragedy.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceEnd","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 31
   SAY ~Bravado doesn't suit you, love. Let's try to keep things a bit more tasteful, shall we? There are standards, even in our line of work.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceEnd","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 32
   SAY ~Oh, my dear, you certainly have a way with words, don't you? I must admit, 'excitement' is a rather broad term. Care to narrow it down a bit, or shall I leave it to my imagination?~
       ++ ~I'm curious about your background, Liedel. Where did you grow up before finding your way here?~ DO ~SetGlobal("h_LiedelBackground","GLOBAL",1)~ GOTO 34
       ++ ~I have to admit, you're not exactly the type one would expect to be in charge of anything. What's your secret? And don't tell me it's just good looks.~ GOTO 75
       ++ ~I should get going, Liedel. Maybe we can talk more another time.~ GOTO 30
END

IF ~~ THEN BEGIN 33
   SAY ~Ah, a <MANWOMAN> of action, I see. I do appreciate someone who's not afraid to dive headfirst into the thrill of it all. You're beginning to pique my interest, <CHARNAME>.~
       ++ ~I'm curious about your background, Liedel. Where did you grow up before finding your way here?~ DO ~SetGlobal("h_LiedelBackground","GLOBAL",1)~ GOTO 34
       ++ ~I have to admit, you're not exactly the type I would expect to be in charge of anything. What's your secret? And don't tell me it's just good looks.~ GOTO 75
       ++ ~I should get going, Liedel. Maybe we can talk more another time.~ GOTO 30
END

IF ~~ THEN BEGIN 34
   SAY ~Well, aren't you the inquisitive one. What is it you hope to gain from prying into my past, I wonder?~ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 
   SAY ~A way to hold something over me, perhaps? Or maybe you're just hoping to find a chink in this formidable armor of mine?~
       ++ ~No ulterior motives, just trying to get to know you better.~ GOTO 36
       ++ ~Well, you've cracked the code, Liedel. I'm plotting to use your past against you in a devious scheme of mine.~ GOTO 37
       ++ ~Relax, it's all in good fun. You seem quite the puzzle, and I can't help but feel intrigued.~ GOTO 38
       ++ ~I get it, Liedel. Your past is your own, and you're under no obligation to reveal it.~ GOTO 39
       ++ ~Wow, Liedel, are you always this suspicious? I was just making conversation.~ GOTO 40
END

IF ~~ THEN BEGIN 36
   SAY ~Well, aren't you the gallant charmer? Very well, let's dance in the realm of conversation, shall we?~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 37
   SAY ~Oh, I see I'm in the company of a mastermind. I'll have to be on my guard, won't I?~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 38
   SAY ~A puzzle, am I? Perhaps you'll be the one to unravel my mysteries.~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 39
   SAY ~How generous of you to grant me permission to keep my own secrets. I assure you, it was never in question.~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 40
   SAY ~Suspicion has served me well in my line of work. It's not a matter of choice, but one of survival.~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
   SAY ~I'm afraid I've grown weary of this discussion, darling. Perhaps we can continue our conversation another time, but for now, I have other matters to attend to.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceEnd","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 42
   SAY ~I hail from the heart of Selgaunt, a city of silk and coin, where shadows dance on streets paved with ambition. I was but a nameless waif, born of the alleys and left to the whims of fate.~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
   SAY ~It was a merchant family, the Javaliens, who took me in. They saw potential in my street-smarts and taught me the delicate dance of business.~ IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
   SAY ~Under their guidance, I navigated the treacherous waters of Selgaunt's commerce, learning the value of information, the power of negotiation, and the sting of betrayal.~ IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
   SAY ~Life wasn't easy, but it was a far cry from the gutters I'd known. I was given a chance, and I took it.~ IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
   SAY ~Eventually, I found myself in the service of the esteemed Scepters, the city watch of Selgaunt.~ IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
   SAY ~My role was to track down criminals, bring them to justice, and gather intelligence on the various gangs that plagued the city.~ IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
   SAY ~However, as the years went by, I found myself drawn to darker alleys, to the thrill of the hunt, the precision of a well-placed blade.~ IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
   SAY ~Life in the light had its merits, but it wasn't long before the shadows whispered to me. The allure of the underworld had proved too tempting to resist.~ IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
   SAY ~The thrill of clandestine operations, the rush of pursuing those who operated in the shadows. It was a siren's call I could no longer ignore.~ IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
   SAY ~That's when I crossed paths with the Night Knives, a small but cunning thieves guild in the city.~ IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
   SAY ~However, my love, that's where my story ends for today. Perhaps in the future, we can explore these shadows together in more detail.~
       +~Global("h_LiedelTalk11","GLOBAL",0)~+ ~What kind of place is Selgaunt? What was it like growing up on the streets?~ DO ~SetGlobal("h_LiedelTalk11","GLOBAL",1)~ GOTO 53
       +~Global("h_LiedelTalk12","GLOBAL",0)~+ ~Tell me about the Javaliens, the merchant family who took you in. What did you learn from them?~ DO ~SetGlobal("h_LiedelTalk12","GLOBAL",1)~ GOTO 58
       +~Global("h_LiedelTalk13","GLOBAL",0)~+ ~What was it like working alongside the Scepters? Who exactly are they?~ DO ~SetGlobal("h_LiedelTalk13","GLOBAL",1)~ GOTO 65
       ++ ~I'd like to ask you about something else.~ GOTO 74
END

IF ~~ THEN BEGIN 53
   SAY ~Selgaunt... It's a city of contrasts. A place where opulence and squalor live side by side.~ IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
   SAY ~The grandeur of noble estates stand against the grimy alleyways where the forgotten eke out their existence.~ IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
   SAY ~As for growing up on the streets, it was a harsh teacher, to say the least. Survival was a daily challenge, and trust was a luxury I couldn't afford.~ IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
   SAY ~But there's a certain kind of freedom in the streets, a raw honesty that's absent from the gilded halls of the privileged.~ IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
   SAY ~Selgaunt is a city of opportunities and dangers, where one must learn to adapt or be left behind.~
       ++ ~It must have been incredibly tough for you, growing up on the streets without any support or protection. I'm sorry you had to experience that.~ GOTO 87
       ++ ~It's clear that experience served you well, and forged you into the formidable individual you are today.~ GOTO 88
END

IF ~~ THEN BEGIN 58
   SAY ~They were a family of shrewd merchants, with a keen eye for opportunity and a taste for the finer things in life.~ IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
   SAY ~They took me in when I was just a street urchin, offering me a chance at a life I could have never imagined.~ IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
   SAY ~They taught me the art of negotiation, the delicate dance of trade, and the invaluable skill of reading people's intentions.~ IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61
   SAY ~From them, I learned the importance of patience, the power of information, and the significance of a well-placed coin.~ IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 
   SAY ~It was through their guidance that I discovered the world beyond the cobbled streets and shadowed alleyways.~ IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
   SAY ~Under their roof, I grew from a scrappy urchin into a young woman with aspirations and ambition. They instilled in me a sense of resourcefulness and a drive to carve my own path in the world.~ IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64
   SAY ~The lessons I learned from the Javaliens have been invaluable, and they continue to shape the way I navigate the intricate web of business and intrigue.~
       +~Global("h_LiedelTalk11","GLOBAL",0)~+ ~What kind of place is Selgaunt? What was it like growing up on the streets?~ DO ~SetGlobal("h_LiedelTalk11","GLOBAL",1)~ GOTO 53
       +~Global("h_LiedelTalk12","GLOBAL",0)~+ ~Tell me about the Javaliens, the merchant family who took you in. What did you learn from them?~ DO ~SetGlobal("h_LiedelTalk12","GLOBAL",1)~ GOTO 58
       +~Global("h_LiedelTalk13","GLOBAL",0)~+ ~What was it like working alongside the Scepters? Who exactly are they?~ DO ~SetGlobal("h_LiedelTalk13","GLOBAL",1)~ GOTO 65
       ++ ~I'd like to ask you about something else.~ GOTO 74
END

IF ~~ THEN BEGIN 65
   SAY ~Working with the Scepters, was a dance on the edge of the law. They're the city watch in Selgaunt, known for their strict adherence to order.~ IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
   SAY ~Of course, my allegiance was always to the excitement of the chase rather than any ridiculous sense of ethics.~ IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
   SAY ~The law meant nothing to me, but the thrill and intrigue that came with the job bestowed upon me a feeling like none other.~ IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
   SAY ~I honed my skills in tracking and apprehending criminals. I learned the value of strategy and the importance of discerning truth from deception.~ IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69
   SAY ~It was a time of growth and challenge, and it laid the foundation for the path I would later choose.~
       ++ ~Well, it sounds like you were quite the obedient little law-abider back then. Must have been a real bore, huh?~ GOTO 70
       ++ ~The thought of you diligently upholding the law is... quite the image, Liedel.~ GOTO 72
       ++ ~So, you used to be a goody-two-shoes, huh? I have to say, it's hard to believe that the elegant assassin before me was once a law-abiding officer of the city watch.~ GOTO 72

END

IF ~~ THEN BEGIN 70
   SAY ~Though I may not have aligned with their ideals, my time with the Scepters was far from boring.~ IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71
   SAY ~I learned valuable lessons and skills that have served me well in my chosen path. Don't mistake my past for mere drudgery.~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 72
   SAY ~Ah, yes, the juxtaposition is rather amusing, isn't it? Life has a way of leading us down unexpected paths, darling.~ IF ~~ THEN DO ~SetGlobal("h_LiedelRomanceOne","GLOBAL",1)~ GOTO 73
END

IF ~~ THEN BEGIN 73
   SAY ~But rest assured, every step of that journey contributed to the person you see before you today.~
       +~Global("h_LiedelTalk11","GLOBAL",0)~+ ~What kind of place is Selgaunt? What was it like growing up on the streets?~ DO ~SetGlobal("h_LiedelTalk11","GLOBAL",1)~ GOTO 53
       +~Global("h_LiedelTalk12","GLOBAL",0)~+ ~Tell me about the Javaliens, the merchant family who took you in. What did you learn from them?~ DO ~SetGlobal("h_LiedelTalk12","GLOBAL",1)~ GOTO 58
       +~Global("h_LiedelTalk13","GLOBAL",0)~+ ~What was it like working alongside the Scepters? Who exactly are they?~ DO ~SetGlobal("h_LiedelTalk13","GLOBAL",1)~ GOTO 65
       ++ ~I'd like to ask you about something else.~ GOTO 74
END

IF ~~ THEN BEGIN 74
   SAY ~What's on your mind, love?~
       +~Global("h_LiedelRomanceTwo","GLOBAL",0)~+ ~I have to admit, you're not exactly the type I would expect to be in charge of anything. What's your secret? And don't tell me it's just good looks.~ GOTO 75
       +~OR(2) Global("h_LiedelRomanceOne","GLOBAL",0) Global("h_LiedelRomanceTwo","GLOBAL",0)~+ ~I should get going, Liedel. Maybe we can talk more another time.~ GOTO 82
       +~Global("h_LiedelRomanceOne","GLOBAL",1) Global("h_LiedelRomanceTwo","GLOBAL",1)~+ ~I should get going, Liedel. Maybe we can talk more another time.~ GOTO 84
END

IF ~~ THEN BEGIN 75
   SAY ~My dear, you certainly have a silver tongue on you. Just be cautious it doesn't slip too far, or I might be tempted to relieve you of it. Now, wouldn't that be a shame?~ IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76
   SAY ~To answer your question, one must know how to play the game, how to sway the currents of power in their favor. It's a delicate dance of influence and strategy, an art form I've come to appreciate.~ IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77
   SAY ~And, if I may be so bold, you strike me as someone who's no stranger to the subtle intricacies of power dynamics.~
       ++ ~Sometimes, being in charge can feel like a heavy burden. It's a constant balancing act.~ GOTO 79
       ++ ~Being in charge means having a vision, a clear path to dominance. It means not hesitating to use power, and to seize opportunities that further their goals.~ DO ~SetGlobal("h_LiedelRomanceTwo","GLOBAL",1)~ GOTO 80
       ++ ~I've always believed that a leader should serve the needs of their people. It's about guiding others towards a greater good.~ GOTO 78
       ++ ~A good leader understands the ruthless nature of power. They are decisive, adaptable, and able to navigate the complexities of any situation.~ DO ~SetGlobal("h_LiedelRomanceTwo","GLOBAL",1)~ GOTO 80
END

IF ~~ THEN BEGIN 78
   SAY ~I find such notions of selfless leadership rather... quaint, if not entirely naive. In the real world, power is taken, not given freely in service.~ IF ~~ THEN GOTO 41
END 

IF ~~ THEN BEGIN 79
   SAY ~Leadership is about taking command, about shouldering the weight of responsibility without faltering. It's not a burden to be complained about, but a mantle to be worn with purpose.~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 80   
   SAY ~Ah, my dear, you have a keen understanding of the true nature of leadership. Power is a tool, a means to mold the world to your desires. It's a sentiment I find rather... intoxicating.~ IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81
   SAY ~To be able to seize control, to command fate itself, it's a quality I find undeniably alluring. You and I, we share a certain... hunger for what lies beyond the ordinary, don't we?~
       +~Global("h_LiedelRomanceOne","GLOBAL",0) Global("h_LiedelBackground","GLOBAL",0)~+ ~I'm curious about your background, Liedel. Where did you grow up before finding your way here?~ DO ~SetGlobal("h_LiedelBackground","GLOBAL",1)~ GOTO 34
       +~OR(2) Global("h_LiedelRomanceOne","GLOBAL",0) Global("h_LiedelRomanceTwo","GLOBAL",0)~+ ~I should get going, Liedel. Maybe we can talk more another time.~ GOTO 82
       +~Global("h_LiedelRomanceOne","GLOBAL",1) Global("h_LiedelRomanceTwo","GLOBAL",1)~+ ~I should get going, Liedel. Maybe we can talk more another time.~ GOTO 84
END

IF ~~ THEN BEGIN 82
   SAY ~It's been a rather stimulating conversation, to say the least. Until next time, love. I'll eagerly be awaiting our next encounter.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomance","GLOBAL",1)~ EXIT
END

IF ~OR(2) Global("h_LiedelRomanceOne","GLOBAL",0) Global("h_LiedelRomanceTwo","GLOBAL",0) Class(Player1,THIEF_ALL) Global("h_LiedelQuest","GLOBAL",2) Global("h_BountyNumber","GLOBAL",3) Global("h_LiedelRomanceEnd","GLOBAL",0) Global("h_LiedelRomance","GLOBAL",1)~ THEN BEGIN 83
   SAY ~Returning to grace me with your presence once more, darling? Tell me, have you come seeking more... stimulating conversation, or perhaps something else has piqued your interest?~
       +~Global("h_LiedelRomanceOne","GLOBAL",0) Global("h_LiedelBackground","GLOBAL",0)~+ ~I'm curious about your background, Liedel. Where did you grow up before finding your way here?~ DO ~SetGlobal("h_LiedelBackground","GLOBAL",1)~ GOTO 34
       +~Global("h_LiedelRomanceTwo","GLOBAL",0)~+ ~I have to admit, you're not exactly the type one would expect to be in charge of anything. What's your secret? And don't tell me it's just good looks.~ GOTO 75
       +~OR(2) Global("h_LiedelRomanceOne","GLOBAL",0) Global("h_LiedelRomanceTwo","GLOBAL",0)~+ ~I should get going, Liedel. Maybe we can talk more another time.~ EXIT
       +~Global("h_LiedelRomanceOne","GLOBAL",1) Global("h_LiedelRomanceTwo","GLOBAL",1)~+ ~I should get going, Liedel. Maybe we can talk more another time.~ GOTO 84
END

IF ~~ THEN BEGIN 84
   SAY ~You know, I've actually found our conversation to be rather... enchanting. It's not often someone manages to captivate my interest so thoroughly.~ IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85
   SAY ~ I can't help but wonder what lies beyond these exchanges, what secrets and desires may be waiting to be uncovered.~ IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86
   SAY ~But of course, we have all the time in the world to find out, don't we? I'll be eagerly awaiting our next exchange. Until then, <CHARNAME>.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomance","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 87
   SAY ~Don't get all soft on me, love. Those experiences shaped me into the person I am today, and I wouldn't trade them for anything.~
       +~Global("h_LiedelTalk11","GLOBAL",0)~+ ~What kind of place is Selgaunt? What was it like growing up on the streets?~ DO ~SetGlobal("h_LiedelTalk11","GLOBAL",1)~ GOTO 53
       +~Global("h_LiedelTalk12","GLOBAL",0)~+ ~Tell me about the Javaliens, the merchant family who took you in. What did you learn from them?~ DO ~SetGlobal("h_LiedelTalk12","GLOBAL",1)~ GOTO 58
       +~Global("h_LiedelTalk13","GLOBAL",0)~+ ~What was it like working alongside the Scepters? Who exactly are they?~ DO ~SetGlobal("h_LiedelTalk13","GLOBAL",1)~ GOTO 65
       ++ ~I'd like to ask you about something else.~ GOTO 74
END

IF ~~ THEN BEGIN 88
   SAY ~My, my, how perceptive. Indeed, they made me resilient, resourceful, and unyielding in the face of adversity. I've come to value those lessons dearly.~
       +~Global("h_LiedelTalk11","GLOBAL",0)~+ ~What kind of place is Selgaunt? What was it like growing up on the streets?~ DO ~SetGlobal("h_LiedelTalk11","GLOBAL",1)~ GOTO 53
       +~Global("h_LiedelTalk12","GLOBAL",0)~+ ~Tell me about the Javaliens, the merchant family who took you in. What did you learn from them?~ DO ~SetGlobal("h_LiedelTalk13","GLOBAL",1)~ GOTO 58
       +~Global("h_LiedelTalk13","GLOBAL",0)~+ ~What was it like working alongside the Scepters? Who exactly are they?~ DO ~SetGlobal("h_LiedelTalk13","GLOBAL",1)~ GOTO 65
       ++ ~I'd like to ask you about something else.~ GOTO 74
END

IF ~Class(Player1,THIEF_ALL) Global("h_LiedelQuest","GLOBAL",2) Global("h_BountyNumber","GLOBAL",3) Global("h_LiedelRomanceEnd","GLOBAL",0) Global("h_LiedelRomance","GLOBAL",2)~ THEN BEGIN 89
   SAY ~Back for more, <CHARNAME>? I must admit, our conversations have become a highlight of my day. Let's see what intrigues await us, shall we?~ IF ~~ THEN EXIT
END

          ///////////////////////////////////
          //////// Second Bounty List ///////
          ///////////////////////////////////

//29
IF ~Global("h_LiedelQuest","GLOBAL",3)~ THEN BEGIN 90
   SAY ~Finally, a spark in the darkness. I was beginning to grow restless. I have a fresh list of bounties for you, if you're up for the task.~
       ++ ~Let's hear what you've got for me.~ GOTO 91
       ++ ~I'm not interested right now.~ EXIT
END

IF ~~ THEN BEGIN 91
   SAY ~First on the list is runaway slave from Beregost, Europea. She managed to put the slip on her owner and fled off into the western woods.~ IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92
   SAY ~If you're skillful enough to bring her back breathing, the reward is quite the handsome sum. But if not, her owner would settle for her slave-collar as a morbid keepsake.~ IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93
   SAY ~Next, we have a peculiar case involving a dryad named Katreda. A pair of hunters are eager to carve a section out of Larswood for their hunting compound.~ IF ~~ THEN GOTO 94
END

IF ~~ THEN BEGIN 94
   SAY ~Katreda, however, is proving to be quite the thorn in their side. They'd appreciate it if you could convince her to cease, one way or another.~ IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95
   SAY ~Now, for the peculiar request that's come our way, courtesy of a charming necromancer, Zhontac.~ IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96
   SAY ~He has his eye on a fresh human specimen required to practice his enigmatic experiments on.~ IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97
   SAY ~Coincidentally, one of his previous, 'volunteers', managed to escape, and now there's a bounty on Zhontac's head himself.~ IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98
   SAY ~You have a choice. You can either help Zhontac with his quest, or eliminate him for his bounty.~ IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99
   SAY ~For the most lucrative outcome, I'd suggest aiding Zhontac first, then ensuring he meets his demise after securing your reward.~ IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100
   SAY ~In either case, he can be found in his backyard on the eastern side of town, practicing his dark arts after nightfall.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelQuest","GLOBAL",4)
   SetGlobal("h_SpawnEuropea","GLOBAL",1)
   SetGlobal("h_KatredaBounty","GLOBAL",1)
   SetGlobal("h_ZhontacBounty","GLOBAL",1)
   AddJournalEntry(@426,QUEST)
   AddJournalEntry(@431,QUEST)
   AddJournalEntry(@438,QUEST)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",4) GlobalLT("h_BountyNumber","GLOBAL",6)~ THEN BEGIN 101
   SAY ~You have my attention, love. I'm ready to savor the secrets that dance upon your lips.~
       +~Global("h_CarthBounty","GLOBAL",1)~+ ~I am here regarding the bounty on Carth.~ GOTO 18
       +~Global("h_CarthBounty","GLOBAL",3)~+ ~I am here regarding the bounty on Carth.~ GOTO 20
       +~PartyHasItem("h_misc09")~+ ~I am here regarding the bounty on Vapula.~ GOTO 21
       +~Global("h_AishaBounty","GLOBAL",4)~+ ~I am here regarding the bounty on Aisha.~ GOTO 26
       +~Global("h_AishaBounty","GLOBAL",5)~+ ~I am here regarding the bounty on Aisha.~ GOTO 24
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
       +~PartyHasItem("h_misc11")~+ ~I am here regarding the bounty on Europea.~ GOTO 102
       +~PartyHasItem("h_misc10")~+ ~I am here regarding the bounty on Europea.~ GOTO 104
       +~Global("h_KatredaBounty","GLOBAL",2)~+ ~I am here regarding the bounty on Katreda.~ GOTO 106
       +~Global("h_KatredaBounty","GLOBAL",5)~+ ~I am here regarding the bounty on Katreda.~ GOTO 108
       +~Global("h_MagnusBounty","GLOBAL",3)~+ ~I am here regarding the bounty on Zhontac.~ GOTO 109
       +~Global("h_KilledMagnus","GLOBAL",2)~+ ~I am here regarding the bounty on Zhontac.~ GOTO 111
       +~Global("h_ZhontacBounty","GLOBAL",4)~+ ~I am here regarding the bounty on Zhontac.~ GOTO 113
       ++ ~Nothing to report as of yet.~ EXIT
END

IF ~~ THEN BEGIN 102
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I have her here with me. A little worse for the wear, but alive nonetheless.~ GOTO 103
END

IF ~~ THEN BEGIN 103
   SAY ~Ah, the poor thing. I'll inform the client. As for you, enjoy your payday, 1000 gold coins for this one.~
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc11")
   DestroyItem("h_misc11")
   AddJournalEntry(@429,QUEST_DONE)
   GiveGoldForce(1000)
   AddExperienceParty(600)
   ReputationInc(-2)~ EXIT
END

IF ~~ THEN BEGIN 104
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I found her lifeless form deep in the woods. Here is her slave collar for proof.~ GOTO 105
END

IF ~~ THEN BEGIN 105
   SAY ~Ah, the poor thing. I'll inform the client. Here, take it, 500 gold coins for the collar.~
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc10")
   DestroyItem("h_misc10")
   AddJournalEntry(@430,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN 106
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~She would not back down, forcing my hand to bring about her permanent end.~ GOTO 107
END

IF ~~ THEN BEGIN 107
   SAY ~It seems Katreda's determination got the best of her. Another payout then, 500 gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@433,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN 108
   SAY ~No prizemoney for this job, love. Communcation with Asnabel went silent. The dryad must have made her move. Were you involved in this somehow?~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@437,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 109
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I fulfilled his request and opted to spare him so he can see his research through.~ GOTO 110
END

IF ~~ THEN BEGIN 110
   SAY ~Leaving money on the table doesn't suit you, love. Here's the usual rate then, 500 gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_MagnusBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@444,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN 111
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I worked his request, then disposed of him shortly after.~ GOTO 112
END

IF ~~ THEN BEGIN 112
   SAY ~Impressive work, darling. I'm thrilled for you. Here's the payout, 1000 gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_KilledMagnus","GLOBAL",3)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@445,QUEST_DONE)
   GiveGoldForce(1000)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN 113
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I chose to claim his bounty outright, sparing myself from entertaining his peculiar request.~ GOTO 114
END

IF ~~ THEN BEGIN 114
   SAY ~Can't say I blame you on that one, love. Claim your prize, 500 gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_ZhontacBounty","GLOBAL",5)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@446,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END







IF ~OR(2) !Class(Player1,THIEF_ALL) Global("h_LiedelRomanceEnd","GLOBAL",1) Global("h_LiedelQuest","GLOBAL",4) Global("h_BountyNumber","GLOBAL",6)~ THEN BEGIN 115
   SAY ~Gods, this place can be dreadfully dull at times. I'm not sure how much more of it I can take, honestly. Won't you have any fun with me, darling?~  IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",4) Global("h_BountyNumber","GLOBAL",6) Global("h_LiedelRomance","GLOBAL",2) Global("h_LiedelRomanceEnd","GLOBAL",0)~ THEN BEGIN 116
   SAY ~Gods, this place can be dreadfully dull at times. I'm not sure how much more of it I can take, honestly. Won't you have any fun with me, darling?~
       ++ ~Don't worry, I won't let you suffer through the boredom alone.~ GOTO 117
       ++ ~I've missed our little chats, Liedel. I'm ready to pick up where we left off, if you are.~ GOTO 117
       ++ ~Sorry, but I'm a little busy right now.~ GOTO 159
END

IF ~~ THEN BEGIN 117
   SAY ~Oh, thanks the gods for that. I have a feeling we'll find plenty of ways to keep things interesting.~ IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118
   SAY ~I must admit, <CHARNAME>, the days have felt rather dull without our exchanges, and I've found myself looking forward to this moment.~
       +~Global("h_LiedelTalk21","GLOBAL",0)~+ ~You mentioned the Night Knives earlier. Interested in sharing the rest of that story?~ DO ~SetGlobal("h_LiedelTalk21","GLOBAL",1)~ GOTO 119
       +~Global("h_LiedelTalk22","GLOBAL",0)~+ ~Do you have any hobbies or interests outside of the world of thieving and assassinations?~ DO ~SetGlobal("h_LiedelTalk22","GLOBAL",1)~ GOTO 141
       +~Global("h_LiedelTalk23","GLOBAL",0)~+ ~Are there any secret corners in Beregost that you're particularly fond of?~ DO ~SetGlobal("h_LiedelTalk23","GLOBAL",1)~ GOTO 153
       +~GlobalLT("h_LiedelPass","GLOBAL",3)~+ ~I hate to cut this short, Liedel, but I should be going.~ GOTO 159
       +~Global("h_LiedelPass","GLOBAL",3)~+ ~I hate to cut this short, Liedel, but I should be going.~ GOTO 160
END

IF ~~ THEN BEGIN 119
   SAY ~I'll admit, I'm impressed you remember. I was doing bounty work for the Scepters, the army of Selgaunt. But the allure of the underworld was too tempting to resist.~ IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 120
   SAY ~One fateful night, it was raining, the streets were slick with mud, and I was hot on the trail of a notorious thief who had been giving the Scepters a run for their money.~ IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121
   SAY ~Cornered in a dimly lit alley, I found myself face to face with the thief. The tension was palpable as we assessed each other.~ IF ~~ THEN GOTO 122
END

IF ~~ THEN BEGIN 122
   SAY ~In that moment, I recognized a fellow shadow-dancer, someone who moved effortlessly through the dark. We had a silent understanding, the life we were leading was far more exciting than any other.~ IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 123
   SAY ~She ended up introducing me to the Night Knives, and the decision to join their ranks felt like destiny.~ IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 124
   SAY ~Among them, I learned the art of misdirection, the craft of silent movements, and the thrill of outsmarting our targets.~ IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 125 
   SAY ~It was a world where secrets were currency, and loyalty was our most treasured possession.~ IF ~~ THEN GOTO 126
END

IF ~~ THEN BEGIN 126
   SAY ~I discovered that the Night Knives were much more than just thieves. We were orchestrators of chaos and puppeteers of deception.~ IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 127
   SAY ~At the time, it was exhilarating, and I wouldn't trade those experiences for anything. It was where I truly found my place among the shadows.~
       ++ ~The Night Knives sound like quite the crew. But obviously you didn't stick around forever. What happened next?~ GOTO 136
       ++ ~Leaving the Night Knives must have been a significant step for you. What was the turning point?~ GOTO 136
       ++ ~I can imagine the Night Knives had their fair share of excitement. What made you seek something else?~ GOTO 136
END 

IF ~~ THEN BEGIN 128
   SAY ~Well, our guild size is relatively the same, but Selgaunt was a beast of a city, far grander than Beregost, with security that could make even the most audacious thief pause.~ IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129
   SAY ~Here, in Beregost, it's smaller, true. But it has its own charm, its own whispered secrets. We may not be in the belly of a bustling metropolis, but the thrill of the chase still quickens the blood.~ IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 130
   SAY ~And besides, the smaller pond allows for a different kind of mastery, a more intimate understanding of our domain.~ IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 131
   SAY ~So, <CHARNAME>, which do you find more intriguing, I wonder? The grandeur of a big city like Selgaunt or the close-knit dance of Beregost?~
       ++ ~There's something about the chaos of a big city that gets the blood pumping. The constant challenge, the endless opportunities. Selgaunt must have been a true playground for a master thief like you.~ DO ~IncrementGlobal("h_LiedelPass","GLOBAL",1)~ GOTO 132
       ++ ~I prefer the intimacy of a smaller town. You get to know the ins and outs, the hidden corners and quiet backstreets. It's a canvas that can be just as thrilling to paint on.~ DO ~IncrementGlobal("h_LiedelPass","GLOBAL",1)~ GOTO 133
       ++ ~Cities are cities, towns are towns. What matters most is the challenge they present. The size is just a detail, really.~ GOTO 134
END

IF ~~ THEN BEGIN 132
   SAY ~Ah, the siren call of the grand city. Selgaunt certainly had its allure. The rush of navigating through the bustling streets, outsmarting the city's finest, it's an art in itself.~ IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 133
   SAY ~There's a certain charm to a smaller town, isn't there? The secrets are more tightly guarded, the connections more personal. Beregost may be diminutive, but it holds its own in the dance of shadows.~ IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 134
   SAY ~You're a rare breed, love. Indifferent to the canvas upon which we weave our stories? I can't say I share your sentiment. The environment shapes the game, after all.~ IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 135
   SAY ~You know, <CHARNAME>, hearing your preferences gives me a bit more insight into the kind of thief you are. It's always fascinating to see what makes a fellow rogue tick.~ IF ~~ THEN GOTO 140
END

IF ~~ THEN BEGIN 136
   SAY ~Things... ended up taking a different turn. We had a falling out, you could say. A difference of opinions on how certain things should be handled.~ IF ~~ THEN GOTO 137
END

IF ~~ THEN BEGIN 137
   SAY ~But, that's as far as the story goes for today, <CHARNAME>.~
       ++ ~How do things in the Gorgon's Eye stack up against the Night Knives?~ GOTO 128
       ++ ~Secrets, shadows, and cunning. It's like something out of a dime store novel. Did you wear a dramatic cape too?~ GOTO 138
       ++ ~Transitioning from the Night Knives to the Gorgon's Eye must have been interesting. What are your thoughts on the switch?~ GOTO 128
END

IF ~~ THEN BEGIN 138
   SAY ~Oh, how very droll, love. But I assure you, it was far from a work of fiction. The Night Knives operated with a precision that was anything but theatrical.~ IF ~~ THEN GOTO 139
END

IF ~~ THEN BEGIN 139
   SAY ~Our success relied on skill, not mere dramatics. But I suppose every tale has its embellishments, doesn't it?~ IF ~~ THEN GOTO 140
END

IF ~~ THEN BEGIN 140
   SAY ~Now, is there something else you're curious about? Another chapter in our little exchange, perhaps?~
       +~Global("h_LiedelTalk21","GLOBAL",0)~+ ~You mentioned the Night Knives earlier. Interested in sharing the rest of that story?~ DO ~SetGlobal("h_LiedelTalk21","GLOBAL",1)~ GOTO 119
       +~Global("h_LiedelTalk22","GLOBAL",0)~+ ~Do you have any hobbies or interests outside of the world of thieving and assassinations?~ DO ~SetGlobal("h_LiedelTalk22","GLOBAL",1)~ GOTO 141
       +~Global("h_LiedelTalk23","GLOBAL",0)~+ ~Are there any secret corners in Beregost that you're particularly fond of?~ DO ~SetGlobal("h_LiedelTalk23","GLOBAL",1)~ GOTO 153
       +~GlobalLT("h_LiedelPass","GLOBAL",3)~+ ~I hate to cut this short, Liedel, but I should be going.~ GOTO 159
       +~Global("h_LiedelPass","GLOBAL",3)~+ ~I hate to cut this short, Liedel, but I should be going.~ GOTO 160
END

IF ~~ THEN BEGIN 141
   SAY ~Well, if you must know... there is something, I suppose. It's a rather... personal indulgence of mine. Before I tell you though, I need you to promise me that you won't laugh.~
       ++ ~Your secret's safe with me. Unless, of course, it involves talking to woodland creatures at midnight.~ GOTO 143
       ++ ~You have my word, I won't even crack a smile. Now, the suspense is killing me. What's this little quirk of yours?~ GOTO 142
       ++ ~Well, I can't promise not to laugh if I don't even know what it is, can I?~ GOTO 143
       ++ ~I can't make any guarantees, but I'll do my best. Now, you've got me intrigued. What is it?~ GOTO 142
END

IF ~~ THEN BEGIN 142
   SAY ~Actually, you know what, let's keep it a mystery for now. There are other things we could discuss, after all. What else is on your mind, love?~
       +~Global("h_LiedelTalk21","GLOBAL",0)~+ ~You mentioned the Night Knives earlier. Interested in sharing the rest of that story?~ DO ~SetGlobal("h_LiedelTalk21","GLOBAL",1)~ GOTO 119
       +~Global("h_LiedelTalk22","GLOBAL",0)~+ ~Do you have any hobbies or interests outside of the world of thieving and assassinations?~ DO ~SetGlobal("h_LiedelTalk22","GLOBAL",1)~ GOTO 141
       +~Global("h_LiedelTalk23","GLOBAL",0)~+ ~Are there any secret corners in Beregost that you're particularly fond of?~ DO ~SetGlobal("h_LiedelTalk23","GLOBAL",1)~ GOTO 153
       +~GlobalLT("h_LiedelPass","GLOBAL",3)~+ ~I hate to cut this short, Liedel, but I should be going.~ GOTO 159
       +~Global("h_LiedelPass","GLOBAL",3)~+ ~I hate to cut this short, Liedel, but I should be going.~ GOTO 160
END

IF ~~ THEN BEGIN 143
   SAY ~I mean it, <CHARNAME>. You'd better not laugh, or you might just find a dagger at your throat.~ IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144
   SAY ~There is... one particular pastime that holds a special place in my heart. A pursuit that draws me away from the chaotic intrigues of our trade.~ IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145
   SAY ~I find solace in simply lying beneath the stars, under the nights embrace. It's... peaceful. The world takes on a different quality, and for a moment, it's like everything else fades away.~ IF ~~ THEN GOTO 146
END

IF ~~ THEN BEGIN 146
   SAY ~I suppose it's a bit silly, but there's a certain magic to it that I've always cherished. It reminds me of a time when life was simpler, filled with wonder and possibility.~
       ++ ~Stars, huh? I prefer to keep my eyes on more... tangible treasures, if you catch my drift.~ GOTO 147
       ++ ~So, you're a stargazer, Liedel? Who would've thought? I suppose even assassins need a little romance in their lives.~ DO ~IncrementGlobal("h_LiedelPass","GLOBAL",1)~ GOTO 148
       ++ ~Stars, solitude, and a killer's heart. Quite the combination, Liedel.~ DO ~IncrementGlobal("h_LiedelPass","GLOBAL",1)~ GOTO 150
       ++ ~I'll make sure to take you stargazing sometime. Who knows, we might uncover a few constellations of our own.~ DO ~IncrementGlobal("h_LiedelPass","GLOBAL",1)~ GOTO 151
END

IF ~~ THEN BEGIN 147
   SAY ~Well, it seems eloquence isn't your strong suit. Perhaps next time, I'll keep my musings to myself. Let's move on, shall we?~
       +~Global("h_LiedelTalk21","GLOBAL",0)~+ ~You mentioned the Night Knives earlier. Interested in sharing the rest of that story?~ DO ~SetGlobal("h_LiedelTalk21","GLOBAL",1)~ GOTO 119
       +~Global("h_LiedelTalk22","GLOBAL",0)~+ ~Do you have any hobbies or interests outside of the world of thieving and assassinations?~ DO ~SetGlobal("h_LiedelTalk22","GLOBAL",1)~ GOTO 141
       +~Global("h_LiedelTalk23","GLOBAL",0)~+ ~Are there any secret corners in Beregost that you're particularly fond of?~ DO ~SetGlobal("h_LiedelTalk23","GLOBAL",1)~ GOTO 153
       +~GlobalLT("h_LiedelPass","GLOBAL",3)~+ ~I hate to cut this short, Liedel, but I should be going.~ GOTO 159
       +~Global("h_LiedelPass","GLOBAL",3)~+ ~I hate to cut this short, Liedel, but I should be going.~ GOTO 160
END

IF ~~ THEN BEGIN 148
   SAY ~Oh, darling, you misunderstand, romance is everywhere, if you know where to look. It's in the dance of shadows, the thrill of the chase, the pulse of anticipation before a strike.~ IF ~~ THEN GOTO 149
END

IF ~~ THEN BEGIN 149
   SAY ~Life is a tapestry of desires and intrigues, and I intend to revel in every thread of it.~ IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 150
   SAY ~Indeed, It's a combination that defines who I am. I hope you remember it well, my love.~ IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 151
   SAY ~Oh, shut up, <CHARNAME>. Though I must admit... the notion does hold a certain appeal. I suppose I wouldn't mind seeing the night sky through your eyes.~ IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 152
   SAY ~But enough about that, my dear companion. What other enticing thoughts are occupying your mind, I wonder?~
       +~Global("h_LiedelTalk21","GLOBAL",0)~+ ~You mentioned the Night Knives earlier. Interested in sharing the rest of that story?~ DO ~SetGlobal("h_LiedelTalk21","GLOBAL",1)~ GOTO 119
       +~Global("h_LiedelTalk22","GLOBAL",0)~+ ~Do you have any hobbies or interests outside of the world of thieving and assassinations?~ DO ~SetGlobal("h_LiedelTalk22","GLOBAL",1)~ GOTO 141
       +~Global("h_LiedelTalk23","GLOBAL",0)~+ ~Are there any secret corners in Beregost that you're particularly fond of?~ DO ~SetGlobal("h_LiedelTalk23","GLOBAL",1)~ GOTO 153
       +~GlobalLT("h_LiedelPass","GLOBAL",3)~+ ~I hate to cut this short, Liedel, but I should be going.~ GOTO 159
       +~Global("h_LiedelPass","GLOBAL",3)~+ ~I hate to cut this short, Liedel, but I should be going.~ GOTO 160
END

IF ~~ THEN BEGIN 153
   SAY ~You know, Beregost may not be the grandest city, but it has its charms. Hmm... I guess there is one spot, in the south part of town, near the fountains.~ IF ~~ THEN GOTO 154
END

IF ~~ THEN BEGIN 154
   SAY ~It's a hidden gem, really. The perfect place to steal a moment of quiet reflection, to escape the world's demands, even if just for a short while.~
       ++ ~Ah, the elusive sanctuary of water fountains! Truly, Liedel, you have a knack for finding the hidden treasures in life.~ DO ~IncrementGlobal("h_LiedelPass","GLOBAL",1)~ GOTO 155
       ++ ~I'll have to visit this secret oasis someday. Maybe you'll show me around?~ DO ~IncrementGlobal("h_LiedelPass","GLOBAL",1)~ GOTO 156
       ++ ~Water fountains, really? I expected something a bit more... thrilling from someone who's always seeking excitement.~ GOTO 157
END

IF ~~ THEN BEGIN 155
   SAY ~Ah, you see, darling, sometimes it's the most unexpected places that offer the sweetest surprises. Just like the delightful company I find here with you.~ IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 156
   SAY ~Well, my love, you'll have to prove yourself worthy of such an exclusive tour, won't you?~ IF ~~ THEN  GOTO 158
END

IF ~~ THEN BEGIN 157
   SAY ~I'm not as one-dimensional as you think, darling. After all, even an assassin needs moments of tranquility amidst the chaos.~ IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 158
   SAY ~But enough about my secret hideaways in Beregost. The hour grows late, dear companion. Is there anything else you'd like to discuss?~
       +~Global("h_LiedelTalk21","GLOBAL",0)~+ ~You mentioned the Night Knives earlier. Interested in sharing the rest of that story?~ DO ~SetGlobal("h_LiedelTalk21","GLOBAL",1)~ GOTO 119
       +~Global("h_LiedelTalk22","GLOBAL",0)~+ ~Do you have any hobbies or interests outside of the world of thieving and assassinations?~ DO ~SetGlobal("h_LiedelTalk22","GLOBAL",1)~ GOTO 141
       +~Global("h_LiedelTalk23","GLOBAL",0)~+ ~Are there any secret corners in Beregost that you're particularly fond of?~ DO ~SetGlobal("h_LiedelTalk23","GLOBAL",1)~ GOTO 153
       +~GlobalLT("h_LiedelPass","GLOBAL",3)~+ ~I hate to cut this short, Liedel, but I should be going.~ GOTO 159
       +~Global("h_LiedelPass","GLOBAL",3)~+ ~I hate to cut this short, Liedel, but I should be going.~ GOTO 160
END

IF ~~ THEN BEGIN 159
   SAY ~Ah, responsibilities await, as they always do. Until next time, dear companion. I look forward to our next exchange.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceEnd","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 160
   SAY ~You know, <CHARNAME>, our conversations have been... different, in a most intriguing way.~ IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 161
   SAY ~There's something about the way you carry yourself, the way you challenge me. It's... refreshing.~ IF ~~ THEN GOTO 162
END

IF ~~ THEN BEGIN 162
   SAY ~I must say, I find myself looking forward to our encounters more than I care to admit.~ IF ~~ THEN GOTO 163
END

IF ~~ THEN BEGIN 163
   SAY ~Tell me, <CHARNAME>, do you ever wonder if there might be something more between us, beneath the surface?~
       ++ ~I've been thinking about that too, Liedel. There's a connection here, no denying it, and I want to see where it leads us.~ GOTO 167
       ++ ~Liedel, our conversations have been... interesting, to say the least. I'm not one to rush into things. Let's take our time and see where this leads.~ GOTO 165
       ++ ~Let's not complicate things. I don't see a romantic connection here. Why don't we continue our interactions the way they are.~ GOTO 164
END

IF ~~ THEN BEGIN 164
   SAY ~Well, that's no fun now is it? Back to business as usual, I suppose. But mark my words, I'll still find a way to inject a bit of... excitement into our interactions.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceEnd","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 165
   SAY ~Take things slow? Oh, how dreadfully dull. Patience may be a virtue, but it's not exactly my forte, love.~ IF ~~ THEN GOTO 166
END

IF ~~ THEN BEGIN 166
   SAY ~If you ever find yourself in need of some excitement, you know where to find me. Until next time, dear companion.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceEnd","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 167
   SAY ~I'm pleased to hear you say that, <CHARNAME>. Perhaps we can explore this connection further, in the days to come. Until then, my dear companion.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomance","GLOBAL",3)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",4) Global("h_BountyNumber","GLOBAL",6) Global("h_LiedelRomance","GLOBAL",3) Global("h_LiedelRomanceEnd","GLOBAL",0)~ THEN BEGIN 168
   SAY ~Ah, there you are, my delightful distraction. You always know how to sweep me off my feet. I'll be looking forward to our next exchange.~ IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",5) Global("h_BountyNumber","GLOBAL",6) Global("h_LiedelRomance","GLOBAL",4) Global("h_LiedelRomanceEnd","GLOBAL",0)~ THEN BEGIN 169
   SAY ~There you are, my love. You know, I can't seem to get you out of my mind. It's as if you've woven a spell around me, making it impossible to resist your allure.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",13)~ THEN BEGIN 170
   SAY ~Oh, this is quite exhilarating, isn't it? It's sending shivers down my spine, stirring up a certain... appetite for more.~ IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",5)~ THEN BEGIN 171
   SAY ~Finally, something to stir the pot and break this tiresome routine. There's a fresh batch of bounties ripe for the picking. Are you up for a little excitement, love?~
       ++ ~What targets do you have for me?~ GOTO 172
       ++ ~I'll have to pass for now.~ EXIT
END

IF ~~ THEN BEGIN 172
   SAY ~First up, an alchemist, Alaric, who claims to have developed a cure for featherlung, a fast spreading disease that recently devastated the city of Procampur.~ IF ~~ THEN GOTO 173
END

IF ~~ THEN BEGIN 173
   SAY ~This cure is drawing attention from all corners of the realms. Most wanting the serum in their own hands with the alchemist silenced forever.~ IF ~~ THEN GOTO 174
END

IF ~~ THEN BEGIN 174
   SAY ~There are priests from the temples who want it for the good of the people, and there are merchants who forsee a fortune to be made.~ IF ~~ THEN GOTO 175
END

IF ~~ THEN BEGIN 175
   SAY ~My suggestion? We sell it to the merchants. They'll pay top coin, and we could use a windfall like that, don't you think?~ IF ~~ THEN GOTO 176
END

IF ~~ THEN BEGIN 176
   SAY ~They say Alaric's got a hidden workshop somewhere in Baldur's Gate. A place packed full of his lab 'rats' or whatever creatures he's been using for his experiments.~ IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 177
   SAY ~Now, onto our next mark, Lord Varlind, one of Grand Duke Belt's closest advisors.~ IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178
   SAY ~There's more to this story than meets the eye. Varlind has been a shadow behind the throne for years, keeping Belt wrapped around his finger, but now, his politcal peers want him out of the way.~ IF ~~ THEN GOTO 179
END

IF ~~ THEN BEGIN 179
   SAY ~This toff's got a penchant for posh inns, spends half his life bathed in velvet and sippin' the finest. If you're looking to find him, I'd start there.~ IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 180
   SAY ~This one's got layers, love, and I'm sure you'll find the challenge quite... intriguing.~ IF ~~ THEN GOTO 181
END

IF ~~ THEN BEGIN 181
   SAY ~And lastly, there's Isla Darkcloak, the former champion of the Fighting Pits.~ IF ~~ THEN GOTO 182
END

IF ~~ THEN BEGIN 182
   SAY ~She's quite the legend in her own right. Yet, they say she grew bored of the arena, where victory was almost guaranteed for her. A sentiment I can understand too well.~ IF ~~ THEN GOTO 183
END

IF ~~ THEN BEGIN 183
   SAY ~Now, she's turned her talents to a different kind of fight, as a ruthless assassin and mercenary.~ IF ~~ THEN GOTO 184
END

IF ~~ THEN BEGIN 184
   SAY ~Trouble is, her efficiency has earned her some powerful enemies who've decided it's time to put an end to her reign.~ IF ~~ THEN GOTO 185
END

IF ~~ THEN BEGIN 185
   SAY ~Tracking her down won't be a walk in the park. Isla's become quite elusive.~ IF ~~ THEN GOTO 186
END

IF ~~ THEN BEGIN 186
   SAY ~I'd suggest you start by talking to some professionals like us, love. People who reside in the shadows, and know the underbelly well.~ IF ~~ THEN GOTO 187
END

IF ~~ THEN BEGIN 187
   SAY ~Well, my love, it seems the stage is set for quite the performance. Three intriguing pieces on this wicked chessboard.~ IF ~~ THEN GOTO 188
END

IF ~~ THEN BEGIN 188
   SAY ~You've got choices to make, and each one is bound to leave its mark. Play your cards right, and you'll walk away from this with pockets full and a reputation that'll set hearts aflutter.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelQuest","GLOBAL",6)
   SetGlobal("h_SpawnAlaric","GLOBAL",1)
   SetGlobal("h_SpawnVarlind","GLOBAL",1)
   SetGlobal("h_IslaBounty","GLOBAL",1)
   AddJournalEntry(@447,QUEST)
   AddJournalEntry(@452,QUEST)
   AddJournalEntry(@457,QUEST)~ EXIT
END


IF ~Global("h_LiedelQuest","GLOBAL",6) GlobalLT("h_BountyNumber","GLOBAL",9)~ THEN BEGIN 189
   SAY ~You have my attention, love. I'm ready to savor the secrets that dance upon your lips.~
       +~PartyHasItem("h_misc30")~+ ~I am here regarding the bounty on Alaric.~ GOTO 190
       +~Dead("h_varlic")~+ ~I am here regarding the bounty on Lord Varlind.~ GOTO 199
       +~Global("h_VarlindBounty","GLOBAL",1)~+ ~I am here regarding the bounty on Lord Varlind.~ GOTO 201
       +~Global("h_IslaBounty","GLOBAL",2) GlobalLT("h_LiedelRomance","GLOBAL",4)~+ ~I am here regarding the bounty on Isla Darkcloak.~ GOTO 203
       +~Global("h_IslaBounty","GLOBAL",2) Global("h_LiedelRomance","GLOBAL",4)~+ ~I am here regarding the bounty on Isla Darkcloak.~ GOTO 207
       ++ ~Nothing to report as of yet.~ EXIT
END

IF ~~ THEN BEGIN 190
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~He's been... taken care of, and the serum is now in my hands.~ GOTO 191
END

IF ~~ THEN BEGIN 191
   SAY ~Impressive work, love. You've proven yourself once again.~ IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 192
   SAY ~The featherlung serum is now yours to command, you've earned the right to decide its fate.~ IF ~~ THEN GOTO 193
END

IF ~~ THEN BEGIN 193
   SAY ~Shall we take it to the healers, potentially saving countless lives? Or will we sell it to the merchants, securing a handsome reward for yourself and the guild?~ IF ~~ THEN GOTO 194
END

IF ~~ THEN BEGIN 194
   SAY ~The choice, my dear, is entirely yours.~
       ++ ~The healers should have the serum. It's the right thing to do.~ GOTO 195
       ++ ~The merchants will pay handsomely for this serum. It's a business decision, and I choose them.~ GOTO 197
END

IF ~~ THEN BEGIN 195
   SAY ~Well, if that's your... sentiment. I suppose it's your call. The healers will have their precious serum. It's not the route I'd choose, mind you, but I can respect your decision.~ IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196
   SAY ~The coin they offer won't be near what the merchants would have paid. Altruism, while commendable in its own way, rarely lines one's pockets as generously.~
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc30")
   DestroyItem("h_misc30")
   GiveGoldForce(500)
   AddExperienceParty(900)
   ReputationInc(1)
   AddJournalEntry(@450,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 197
   SAY ~Ah, the merchants, my love... Now that's a choice I can truly appreciate. Practical, strategic, and lucrative. You've certainly piqued my interest.~ IF ~~ THEN GOTO 198
END

IF ~~ THEN BEGIN 198
   SAY ~The coin they offer will be substantial, I assure you. You've got a keen eye for profit, and I must say, it's rather... enticing.~
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc30")
   DestroyItem("h_misc30")
   GiveGoldForce(1000)
   AddExperienceParty(900)
   ReputationInc(-1)
   AddJournalEntry(@451,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 199
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~Consider his chapter closed. The city's landscape may shift, but my coin purse will grow heavier.~ GOTO 200
END

IF ~~ THEN BEGIN 200
   SAY ~Impressive work, love. Varlind's absence won't go unnoticed, that's for sure. Here's your well-deserved reward, 500 gold coins, as per our usual arrangement.~
IF ~~ THEN DO ~
   SetGlobal("h_VarlindBounty","GLOBAL",2)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   GiveGoldForce(500)
   AddExperienceParty(900)
   AddJournalEntry(@455,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 201
   SAY ~Well, you're a tad late, I'm afraid. His fate has been sealed by another hand.~ IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 202
   SAY ~His body was found, lifeless, and washed up at the city's docks. Sorry love, seems someone else was faster on the draw.~
IF ~~ THEN DO ~
   SetGlobal("h_VarlindBounty","GLOBAL",2)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddExperienceParty(900)
   AddJournalEntry(@456,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 203
   SAY ~My, my... I must admit, seeing you in action... it stirs something within me.~ IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 204
   SAY ~You've proven to be quite the captivating champion, and I seem to find myself even more drawn to your strength and prowess.~ IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 205
   SAY ~There's a certain... allure to a warrior like yourself. Perhaps we could find other ways to satisfy our mutual appetites for excitement and danger. What do you say, my champion?~ IF ~~ THEN GOTO 206
END

IF ~~ THEN BEGIN 206
   SAY ~Here is your reward, 500 gold coins, you've certainly earned it. But I must say, I believe you deserve something a bit more... special.~
IF ~~ THEN DO ~
   SetGlobal("h_IslaBounty","GLOBAL",3)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddExperienceParty(900)
   AddJournalEntry(@461,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 207
   SAY ~My, my... I must admit, seeing you in action... it stirs something within me, a fire, that demands to be quenched.~ IF ~~ THEN GOTO 208
END

IF ~~ THEN BEGIN 208
   SAY ~There's no denying it. I want you, <CHARNAME>, now. I want to feel you inside me, your strength, your warmth.~ IF ~~ THEN GOTO 209
END

IF ~~ THEN BEGIN 209
   SAY ~I want to lose myself in the heat of passion, to forget everything but the sensation of being close to you.~ IF ~~ THEN GOTO 210
END

IF ~~ THEN BEGIN 210
   SAY ~What do you say, my champion? Are you ready to embrace these desires with me, and let the flames of our passion consume us both?~
       ++ ~I thought you'd never ask. Lead the way, Liedel, and let's explore this fiery passion together.~ GOTO 211
       ++ ~Our desires have danced around each other for far too long. Let us finally give in to this irresistible pull.~ GOTO 211
       ++ ~Desires like ours are not easily ignored. I'm ready to succumb to the flames that burn between us.~ GOTO 211
       ++ ~I've been hoping you'd suggest it, Liedel. Lead the way, and let's lose ourselves in this moment.~ GOTO 211
       ++ ~As tempting as that sounds, I think we should take things slow.~ GOTO 165
END

IF ~~ THEN BEGIN 211
   SAY ~Then let's not waste any more time, my love. Give in to the desires that have been burning between us, and let us become one.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelCS","GLOBAL",1)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_li2cut")~ EXIT
END

IF WEIGHT #-1 ~Global("h_LiedelCS","GLOBAL",1)~ THEN BEGIN 212
   SAY ~Oh, <CHARNAME>... That was... exquisite, an expierence beyond words. You are a fire that consumes, a storm that rages.~ IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 213
   SAY ~Every touch, every breath, sent waves of pleasure coursing through my body. I ache for more, to lose myself in this euphoria once again.~ IF ~~ THEN GOTO 214
END

IF ~~ THEN BEGIN 214
   SAY ~There's a magnetic pull between us, a force that draws me to you, body and soul. Tell me, my love, do you feel it too?~
       ++ ~Liedel, that was unlike anything I've ever experienced. It was mind-blowing, and I'm craving more of you.~ GOTO 215
       ++ ~That was beyond words, Liedel. You're a tempest of passion, a wildfire, consuming everything in your path.~ GOTO 215
       ++ ~Liedel, it was... alright. You certainly have your way with words.~ GOTO 216
       ++ ~I have to admit, it wasn't what I expected. It was nice, but I'm not sure about this 'intensity' you're talking about.~ GOTO 217
END

IF ~~ THEN BEGIN 215
   SAY ~I'm pleased to hear you say that, <CHARNAME>. There's a fire between us, a connection that's impossible to deny. Let's explore it further, shall we? And together, we'll set the world ablaze.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelCS","GLOBAL",2)
   SetGlobal("h_LiedelRomance","GLOBAL",5)
   SetGlobal("h_IslaBounty","GLOBAL",3)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddExperienceParty(900)
   AddJournalEntry(@461,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 216
   SAY ~Alright? Is that all you have to say, <CHARNAME>? I'll have you know, I've left countless breathless and begging for more. Perhaps you're just not as skilled in matters of passion as you think.~ IF ~~ THEN GOTO 218
END

IF ~~ THEN BEGIN 217
   SAY ~Well, <CHARNAME>, it seems I got precisely what I wanted from you, regardless of your opinion on the matter. You were a means to an end, and nothing more. Don't take it too personally.~ IF ~~ THEN GOTO 218
END

IF ~~ THEN BEGIN 218
   SAY ~Now, if you'll excuse me, I have more important matters to attend to.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelCS","GLOBAL",2)
   SetGlobal("h_LiedelRomanceEnd","GLOBAL",1)
   SetGlobal("h_IslaBounty","GLOBAL",3)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddExperienceParty(900)
   AddJournalEntry(@461,QUEST_DONE)~ EXIT
END

IF ~OR(2) GlobalLT("h_LiedelRomance","GLOBAL",5) Global("h_LiedelRomanceEnd","GLOBAL",1) Global("h_LiedelQuest","GLOBAL",6) Global("h_BountyNumber","GLOBAL",9)~ THEN BEGIN 219
   SAY ~This lull in excitement leaves me yearning for more... stimulating activities. Perhaps you could find a way to inject a bit of excitement back into my day, my love?~ IF ~~ THEN EXIT
END

IF ~Global("h_LiedelRomance","GLOBAL",5) Global("h_LiedelRomanceEnd","GLOBAL",0) Global("h_LiedelQuest","GLOBAL",6) Global("h_BountyNumber","GLOBAL",9)~ THEN BEGIN 220
   SAY ~This lull in excitement leaves me yearning for more... stimulating activities. Perhaps you could find a way to inject a bit of excitement back into my day, my love?~
       ++ ~Liedel, you're a magnet for trouble, and I can't resist your pull. What kind of thrilling trouble shall we get into today?~ GOTO 270
       ++ ~Stimulating activities, you say? You've got my attention, Liedel.~ GOTO 270
       ++ ~I can think of a few ways to inject some excitement, but they might require your full cooperation.~ GOTO 270
END

IF ~~ THEN BEGIN 221
   SAY ~You're still curious about my past, <CHARNAME>? It's not often someone takes such an interest in the shadows that shaped me. I have to admit, I find it rather... endearing.~ IF ~~ THEN GOTO 222
END

IF ~~ THEN BEGIN 222
   SAY ~You remember my days with the Scepters, don't you? Those days of false righteousness and the thrill of the hunt.~ IF ~~ THEN GOTO 223
END

IF ~~ THEN BEGIN 223
   SAY ~Well, it wasn't long before the allure of the underworld called my name.~ IF ~~ THEN GOTO 224
END

IF ~~ THEN BEGIN 224
   SAY ~The Night Knives, a guild draped in shadows and secrets, they promised power, and power, my love, is an intoxicating elixir.~ IF ~~ THEN GOTO 225
END

IF ~~ THEN BEGIN 225
   SAY ~One fateful night, they set their sights on a woman from my past. A former comrade from the Scepters, a confidante, a soul I dared to call a friend.~ IF ~~ THEN GOTO 226
END

IF ~~ THEN BEGIN 226
   SAY ~The Night Knives demanded her life, and in a cruel twist of fate, it fell to me to be the instrument of her demise.~ IF ~~ THEN GOTO 227
END

IF ~~ THEN BEGIN 227
   SAY ~I watched the life drain from her eyes, my heart heavy with the weight of treachery. In that moment, a storm of resentment and fury consumed me.~ IF ~~ THEN GOTO 228
END

IF ~~ THEN BEGIN 228
   SAY ~I returned to the guild, a tempest in human form, and took vengeance on the one who dared to issue such a vile command.~ IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 229
   SAY ~It was a necessary act, a path I had to walk to reclaim a piece of my soul. But, as the veil of darkness lifted, I felt the gravity of my choices.~ IF ~~ THEN GOTO 230
END

IF ~~ THEN BEGIN 230
   SAY ~And so, I fled, leaving behind a trail of shadows and blood. The winds of fate carried me to Beregost, where the past fades, and the future awaits, uncertain, but filled with possibility.~
       ++ ~You're not defined by your past, Liedel. You're here now, with me, and that's what matters.~ GOTO 231
       ++ ~You joined the Night Knives for the thrill, but it seems there was still a code of honor you held onto. I find that admirable, Liedel.~ GOTO 232
       ++ ~You've been through so much, Liedel, and yet you stand tall. You're a survivor, and I'm proud to be by your side.~ GOTO 233
       ++ ~She chose her side, just as you chose yours. It was only a matter of time before you did what needed to be done.~ GOTO 234
END

IF ~~ THEN BEGIN 231
   SAY ~You have a gift for seeing beyond the shadows, my dear. It's with you that I discover the grace to embrace the future, leaving the past behind.~ IF ~~ THEN GOTO 235
END

IF ~~ THEN BEGIN 232
   SAY ~You have a way of seeing the nuances, my observant companion. Even amidst the chaos, a code can guide one's steps. It's a trait I've held close, even in the darkest of times.~ IF ~~ THEN GOTO 235
END

IF ~~ THEN BEGIN 233
   SAY ~Survival is an art, my dear, and I've painted my masterpiece with every twist of fate. Together, we stand strong.~ IF ~~ THEN GOTO 235
END

IF ~~ THEN BEGIN 234
   SAY ~The world seldom deals in absolutes, my dear. It's a canvas painted in shades of gray, where choices are sometimes the only constants.~ IF ~~ THEN GOTO 235
END

IF ~~ THEN BEGIN 235
   SAY ~These reflections, my love, they cast light upon the labyrinth of my past. The choices, the shadows, they all led me to this moment, here with you.~ IF ~~ THEN GOTO 236
END

IF ~~ THEN BEGIN 236
   SAY ~In your arms, I find a sanctuary from the storm of my own making. You see me, not just the assassin, but the woman beneath the cloak and dagger.~ IF ~~ THEN GOTO 237
END

IF ~~ THEN BEGIN 237
   SAY ~So, <CHARNAME>, let us pen our own story, weaving a tale of passion, of darkness and light, where every choice leads us further along the path we forge together.~ IF ~~ THEN GOTO 238
END

IF ~~ THEN BEGIN 238
   SAY ~The past may shape us, but it is not our final chapter.~
       ++ ~I'm glad to be part of your story. You've faced darkness head-on, and emerged stronger for it. But what became of the Night Knives after you left?~ GOTO 239
       ++ ~You're a force to be reckoned with, a survivor through and through. But what about the Night Knives? Did they continue to hunt you after you fled?~ GOTO 239
END
   
IF ~~ THEN BEGIN 239
   SAY ~They didn't take kindly to my abrupt departure, I assure you. Their best trackers were hot on my trail, relentless shadows in pursuit of their wayward comrade.~ IF ~~ THEN GOTO 240
END

IF ~~ THEN BEGIN 240
   SAY ~I ran like a hunted animal, desperate for any sanctuary the shadows might offer. Beregost was nothing but a nameless blur on the horizon, a desperate gamble for freedom.~ IF ~~ THEN GOTO 241
END

IF ~~ THEN BEGIN 241
   SAY ~By the time I stumbled into this town, I was on the verge of collapse, my strength drained, my breath ragged. I thought I'd finally lost them, that perhaps the shadows had embraced me for good.~ IF ~~ THEN GOTO 242
END

IF ~~ THEN BEGIN 242
   SAY ~But the night was cruel, and fate had its own plans. The trackers found me, cornered and defenseless. I knew I was staring death in the face, yet even then, I refused to go quietly into the night.~ IF ~~ THEN GOTO 243
END

IF ~~ THEN BEGIN 243
   SAY ~It was in that final, desperate moment that my savior emerged from the shadows. He wove a tapestry of blades and shadows, a dance of steel and silence that saved me from the abyss.~ IF ~~ THEN GOTO 244
END

IF ~~ THEN BEGIN 244
   SAY ~Rigaldo, of the Gorgon's Eye, a man of quicksilver grace and blades like death's own embrace.~ IF ~~ THEN GOTO 245
END

IF ~~ THEN BEGIN 245
   SAY ~From that moment on, I was bound to him, and to the Gorgon's Eye, a guild that offered me a new purpose, a new life in the shelter of shadows.~ IF ~~ THEN GOTO 246
END

IF ~~ THEN BEGIN 246
   SAY ~The Night Knives may still seek me, but they underestimate the strength forged in the crucible of their own treachery. The hunted became the hunter, and I, my dear, refuse to be prey again.~
       ++ ~Rigaldo, huh? The man of the hour, it seems. I wasn't aware you two had such a... tethered history.~ GOTO 247
       ++ ~You two obviously share a history. I'm here for you, Liedel, no matter what came before.~ GOTO 248
       ++ ~You've overcome so much, Liedel. You're not alone anymore. We'll face whatever challenges come our way, together.~ GOTO 249
       ++ ~It's funny how life can lead us to unexpected places. Beregost wasn't in your plans then, was it? What do you make of this new chapter?~ GOTO 250
END

IF ~~ THEN BEGIN 247
   SAY ~Oh, dear <CHARNAME>, it seems jealousy has a voice. I daresay, it actually suits you well. Rigaldo was a chapter in the past, my love, and you, are the story I'm writing now.~ IF ~~ THEN GOTO 251
END

IF ~~ THEN BEGIN 248
   SAY ~Is that a hint of jealousy, I hear? Don't worry, love, Rigaldo was a chapter in the past. What matters now is the present, and the present looking rather enticing at the moment, wouldn't you agree?~ IF ~~ THEN GOTO 251
END

IF ~~ THEN BEGIN 249
   SAY ~Together, indeed. The road ahead may be treacherous, but with you by my side, I fear no darkness. Our story, <CHARNAME>, is only just beginning.~ IF ~~ THEN GOTO 251
END

IF ~~ THEN BEGIN 250
   SAY ~Ah, Beregost, a twist of fate I hadn't foreseen. But isn't that the thrill of it all? Embracing the unknown, weaving our own tale amidst the unexpected. It's a chapter ripe with promise.~ IF ~~ THEN GOTO 251
END

IF ~~ THEN BEGIN 251
   SAY ~The shadows here welcomed me, and in their embrace I've been given another chance, another purpose to continue on.~
       +~Global("h_LiedelTalk32","GLOBAL",0)~+ ~I wanted to talk to you about what happened between us after my fight with Isla.~ DO ~SetGlobal("h_LiedelTalk32","GLOBAL",1)~ GOTO 252
END

IF ~~ THEN BEGIN 252
   SAY ~That night, <CHARNAME>... it was more than just a victory in the arena. It was a display of your strength, your courage, and the fire that burns within you.~ IF ~~ THEN GOTO 253
END

IF ~~ THEN BEGIN 253
   SAY ~Watching you fight, seeing you conquer, it stirred something within me, something primal and undeniable. When you came to me afterwards, I couldn't contain the passion that surged through me.~ IF ~~ THEN GOTO 254
END

IF ~~ THEN BEGIN 254
   SAY ~While we laid together, your touch ignited a fire within me, every caress, every thrust, a testament to the intensity of our desire.~ IF ~~ THEN GOTO 255
END

IF ~~ THEN BEGIN 255
   SAY ~Our bodies moved in sync, a dance of longing and need. The taste of your skin, the rhythm of our breath, it was like a symphony of sensation, a crescendo building towards an inevitable release.~ IF ~~ THEN GOTO 256
END

IF ~~ THEN BEGIN 256
   SAY ~I felt your passion, <CHARNAME>, coursing through me, setting my very soul ablaze. It was a night of pure surrender, a revelation of our most intimate desires, and it left me breathless, craving more.~
       ++ ~You truly have a gift for expressing passion in the most intense way, Liedel. I felt it too, every word.~ GOTO 260
       ++ ~Liedel, you have a way of making every word feel like a caress, every sentence a whisper against my skin.~ GOTO 260
       ++ ~Your words, Liedel, they're like a torrent of passion. It's like you're summoning the very essence of desire.~ GOTO 260
       ++ ~While I appreciate your words and the intensity of our connection, I... I don't feel the same way. I'm truly sorry if this hurts you.~ GOTO 257
END

IF ~~ THEN BEGIN 257
   SAY ~You know, <CHARNAME>, I thought there was something special between us. Clearly, I was mistaken. I allowed myself to get caught up in the moment, but it's obvious now that it meant nothing to you.~ IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 258
   SAY ~No matter, I have other matters to attend to, more important pursuits. Consider this the end of our little dalliance.~ IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 259
   SAY ~I won't waste any more of my time on someone who can't appreciate what I have to offer. We move on, don't we? No need to make a fuss.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceEnd","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 260
   SAY ~The memory of that night still lingers on my skin, <CHARNAME>. The taste of desire, the heat of our passion... it's something I can't easily forget.~
       ++ ~The way you talk about it, Liedel, it's almost impossible to resist. I think it's time we explore our desires once more.~ GOTO 261
       ++ ~I feel it too, Liedel, a lingering memory, a craving for more. The temptation is too strong to ignore, and I'm ready to give in.~ GOTO 261
       ++ ~Our shared experiences are unforgettable, Liedel, but I actually have to get going now.~ GOTO 267
END

IF ~~ THEN BEGIN 261
   SAY ~Then let us not deny the pleasure any longer. Our passions deserve to be indulged. Come, my darling, let us lose ourselves in the heat of our desires.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelCS","GLOBAL",3)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_li2cut")~ EXIT
END

IF WEIGHT #-1 ~Global("h_LiedelCS","GLOBAL",3)~ THEN BEGIN 262
   SAY ~Oh, gods, <CHARNAME>... I can still feel it, still sense it... the weight of your body pressed against mine, your hungry lips, feasting on the pleasures of my delicate skin.~ IF ~~ THEN GOTO 263
END

IF ~~ THEN BEGIN 263
   SAY ~I can feel your coarse hands, skillfully caressing the curvature of my figure, exploring every region of my exposed flesh.~ IF ~~ THEN GOTO 264
END

IF ~~ THEN BEGIN 264
   SAY ~<CHARNAME>... I can still feel the moment you entered me... the moment I fully opened myself to you, our bodies intertwining as one, dancing to the same rhythm.~ IF ~~ THEN GOTO 265
END

IF ~~ THEN BEGIN 265
   SAY ~Mmm... <CHARNAME>. The way you touch me, make love to me... it's beyond words, and I never want this feeling to end.~ IF ~~ THEN GOTO 266
END

IF ~~ THEN BEGIN 266
   SAY ~These lingering echoes of our passion... they leave me aching, and desperate for more. I crave the next time our desires collide, to forge a path of ecstasy that only we can tread.~
       ++ ~Liedel, that was absolutely incredible. I don't even have words for it. You are truly something special.~ GOTO 267
       ++ ~The way you make me feel, it's like a tidal wave of sensation. I'm still trying to catch my breath.~ GOTO 267
       ++ ~Liedel, that... was something else. I can't believe how amazing it was.~ GOTO 267
END

IF ~~ THEN BEGIN 267
   SAY ~I can't wait for our next rendezvous, when we can set the world ablaze once more. Until then, my dear, let us savor this memory.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelCS","GLOBAL",4)
   SetGlobal("h_LiedelRomance","GLOBAL",6)
   SetGlobal("h_LiedelWillJoin","GLOBAL",1)~ EXIT
END

IF ~Global("h_LiedelRomance","GLOBAL",6)~ THEN BEGIN 268
   SAY ~There's a certain... allure in the way you seek me out, an undeniable sensuality that dances in the air when you're near.~ IF ~~ THEN GOTO 269
END

IF ~~ THEN BEGIN 269
   SAY ~What do you say, my daring <CHARNAME>, shall we explore our desires further, in a more... private embrace?~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 270
   SAY ~Mmm, you always keep me guessing, my dearest. What thoughts wander through your mind today? You know I'm all ears, waiting for your every word.~
       +~Global("h_LiedelTalk31","GLOBAL",0)~+ ~You mentioned a falling out with the Night Knives earlier. Would you like to share the rest of the story?~ DO ~SetGlobal("h_LiedelTalk31","GLOBAL",1)~ GOTO 221
       ++ ~Actually, Liedel, I was just checking in. I've got a some other things I need to do right now.~ GOTO 271
END

IF ~~ THEN BEGIN 271
   SAY ~Oh, leaving me already, are you? Well, I suppose I'll just have to find my own way to stave off the boredom, won't I? Don't keep me waiting too long, my love. I'll be here, counting the moments until your return.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomance","GLOBAL",6)~ EXIT
END




IF ~Global("h_LiedelQuest","GLOBAL",7)~ THEN BEGIN 272
   SAY ~Well, well, look at you, <CHARNAME>. The new guildmaster, no less. I must admit, power does have its allure. Impressive work, my love.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_BetrayBaldwin","GLOBAL",5) GlobalLT("h_LiedelRomance","GLOBAL",6)~ THEN BEGIN 273
   SAY ~Oh, my, that was quite the rush! It certainly ignites a certain... passion, doesn't it? Poor Riggy, though, and that stubborn pride of his.~ IF ~~ THEN GOTO 274
END

IF ~~ THEN BEGIN 274
   SAY ~At any rate, I've decided to enlist in the Shadow Thieves. These small-time guilds just don't do it for me anymore. Maybe I'll see you around one day, my love.~
IF ~~ THEN DO ~
   EscapeArea()~ EXIT
END






IF WEIGHT #-1 ~Global("h_BetrayBaldwin","GLOBAL",5) Global("h_LiedelRomance","GLOBAL",6)~ THEN BEGIN 275
   SAY ~Oh, my, that was quite the rush! It certainly ignites a certain... passion, doesn't it? We've danced through danger, flirted with fate, and reveled in the rush that only those who dare the darkness can know.~ IF ~~ THEN GOTO 276
END

IF ~~ THEN BEGIN 276
   SAY ~<CHARNAME>, my love, our journey together has been nothing short of thrilling. From our first meeting to every daring escapade we've shared, you've brought a fire into my life that I can't ignore.~ IF ~~ THEN GOTO 277
END

IF ~~ THEN BEGIN 277
   SAY ~But as much as it pains me to say it... the time has come for me to move on. You see... during that intense battle, amidst the clash of steel and the thrill of victory, I had a revelation.~ IF ~~ THEN GOTO 278
END

IF ~~ THEN BEGIN 278
   SAY ~When I watch you, it's like witnessing a grand heist unfold, perfect in execution, and I... I'm split between wanting you and wanting to be you. There's a hunger in me, a craving for thrills that are my own.~ IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 279
   SAY ~The Shadow Thieves... the allure of their power, has been tugging at my soul like a siren's call. I crave the grandeur of their schemes, the vastness of their network, and the thrill of new horizons.~ IF ~~ THEN GOTO 280
END

IF ~~ THEN BEGIN 280
   SAY ~I've always sought out excitement, my love, and I've cherished every moment we've shared. But now, I yearn for a change, a new challenge, and the Shadow Thieves offer that in spades.~ IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281
   SAY ~I understand if this decision stings. You've been my partner in crime, my confidant, and so much more. But please know, this isn't a betrayal, it's an exploration of my desires and aspirations.~ IF ~~ THEN GOTO 282
END

IF ~~ THEN BEGIN 282
   SAY ~You will always hold a special place in my heart, <CHARNAME>. I'll carry our memories with me, and when the stars align, our paths may cross again, igniting a fire of passion that burns brighter than ever before.~ IF ~~ THEN GOTO 283
END

IF ~~ THEN BEGIN 283
   SAY ~Until then, my love, may your adventures be filled with excitement, and may you always find the thrill you seek.~
       ++ ~I can see the longing in your eyes, Liedel. Sometimes, we have to follow our hearts, even if it leads us on a different path. I'll miss you, but I hope you find the excitement and purpose you're seeking.~ GOTO 284
       ++ ~I guess I can't change your mind, can I? If the Shadow Thieves are your calling, then so be it. Take care of yourself, Liedel.~ GOTO 285
       ++ ~Typical, Liedel. You always put your own desires first, no matter who gets hurt in the process. You're just a thrill-seeker with no loyalty. I hope the Shadow Thieves enjoy dealing with someone as selfish as you.~ GOTO 287
       ++ ~Honestly, Liedel, I couldn't care less about your choices. You're just a passing companion, and I won't lose any sleep over your departure. Do what you want.~ GOTO 288
       +~Global("h_LiedelWillJoin","GLOBAL",1)~+ ~Liedel, instead of joining the Shadow Thieves, why don't you stay with me? We've faced danger together, and the thrill of our partnership is unmatched. Join me, and together we'll write a story that no guild can contain.~ GOTO 289
END

IF ~~ THEN BEGIN 284
   SAY ~Thank you, my love. Your understanding means more to me than you know. I'll treasure the memories we've created together, and who knows, maybe our paths will cross once more.~ IF ~~ THEN GOTO 286
END

IF ~~ THEN BEGIN 285
   SAY ~I appreciate your acceptance, even if it's tinged with resignation. You take care as well, <CHARNAME>. Remember, the thrill of life awaits, whether in shadows or daylight.~ IF ~~ THEN GOTO 286
END

IF ~~ THEN BEGIN 286
   SAY ~May your adventures be filled with exhilaration. Goodbye, my dear companion.~
IF ~~ THEN DO ~
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 287
   SAY ~Oh, the judgment in your words, <CHARNAME>. But that's the way of the world, isn't it? I'll take my chances with the Shadow Thieves. They'll understand ambition better than anyone. Goodbye, <CHARNAME>.~
IF ~~ THEN DO ~
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 288
   SAY ~Well, aren't you refreshingly honest? I've never been one to expect loyalty from anyone, and I won't start now. Goodbye, <CHARNAME>. You'll forget about me soon enough.~
IF ~~ THEN DO ~
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 289
   SAY ~What are you saying, <CHARNAME>... You can't really mean that, can you? Do you truly see potential in what we could achieve together?~ IF ~~ THEN GOTO 290
END

IF ~~ THEN BEGIN 290
   SAY ~To hear you say you want me by your side, it's like the sweetest loot I could ever lay my hands on, more intoxicating than any victory we've ever snatched from the jaws of danger.~ IF ~~ THEN GOTO 291
END

IF ~~ THEN BEGIN 291
   SAY ~When I spoke of leaving, and joining the Shadow Thieves, it wasn't because I had lost interest in our partnership. Far from it.~ IF ~~ THEN GOTO 292
END

IF ~~ THEN BEGIN 292
   SAY ~My thought to step away, to vanish into the shadows... it was to spare you the burden of my presence. I feared I would be nothing more than a distraction, a hindrance to the grand destiny you're bound for.~ IF ~~ THEN GOTO 293
END

IF ~~ THEN BEGIN 293
   SAY ~Your desire to have me with you, it overwhelms me, ignites a passion and a purpose that I can't deny. You make me feel wanted... needed, in a way that no one else has ever done.~ IF ~~ THEN GOTO 294
END

IF ~~ THEN BEGIN 294
   SAY ~So yes, my love, I will join you. Let the world tremble at the thought of our union. Together, we are unstoppable, and I promise you, the thrills we will chase, the stories we will write, they will be legendary.~ IF ~~ THEN GOTO 295
END

IF ~~ THEN BEGIN 295
   SAY ~Let the fate of these guilds fade into the background, for my place is here, with you, in the adventure of a lifetime.~
IF ~~ THEN DO ~
   JoinParty()
   SetGlobal("h_LiedelParty","GLOBAL",1)~ EXIT
END

//

BEGIN h_liedep

IF ~Global("KickedOut", "LOCALS", 0)~ THEN BEGIN 296
    SAY ~Oh, love, are you certain this is what you want? To send me away, back into the shadows alone?~ IF ~~ THEN GOTO 297
END

IF ~~ THEN BEGIN 297
   SAY ~A lone wolf I may be once more, but never will I forget the fire we've ignited in each other's hearts.~ IF ~~ THEN GOTO 298
END

IF ~~ THEN BEGIN 298
   SAY ~I'll seek my destiny with the Shadow Thieves, delve into the depths of intrigue and danger once more. Perhaps it's there I'll find what I'm looking for, or perhaps... it's just another twist in the road.~ IF ~~ THEN GOTO 299
END

IF ~~ THEN BEGIN 299
   SAY ~Goodbye, my dear companion.~
IF ~~ THEN DO ~
   SetGlobal("KickedOut", "LOCALS", 1)
   EscapeArea()~ EXIT
END




CHAIN
     IF WEIGHT #-1 ~Global("h_WatchCutscene","GLOBAL",1)~ THEN h_lieded CS0
~Silent shadows and eyes sharp, comrades! We've got some unwanted company in our midst!~
   == h_ariosd
~You've got some nerve, I'll give you that. How'd you find us, and what's your play? Best choose your next words careful-like, or you'll be regrettin' ever settin' foot in here.~
   == h_baldwd
~Hold, Ariosh. These are but City Watch pups. Let us entertain their whimpers.~
   == h_city5d
~The... the Inspector! H-he uncovered the location of your hideout. He was planning an assault, t-t-to catch you off guard. And the Commander, she... she stil wants to see it through!~
   =
~But, we... we've seen the writing on the wall. We've had enough. We're tired of the constant fear, the bloodshed. We'll bend the knee, and submit to the will of the Gorgon's Eye.~
   =
~The division among the Watch, it's... it's reached a breaking point. After the Inspector, and the Valkyries, our unity has crumbled.~
   =
~Dissension has ripened into a full-blown mutiny. Most of our ranks have turned against Whitewood, and they're calling for blood.~
   =
~She's fled the city, and is seeking refuge at the Temple. We lack the numbers to storm the gates, but with your aid, we might be able to end this madness.~
   == h_ariosd
~How can we be sure you ain't just stringin' us along, eh? No tricks or traps, yeah?~
   == h_city5d
~Go, and see for yourselves! The streets are in chaos, painted in turmoil, order and law thrown to the wind.~
   =
~Skirmishes from here to the temple gates. That's where Whitewood's holed up, kept shielded by the Templar Knights.~
   == h_ariosd
~It seems the winds have shifted, <CHARNAME>. The city's gone mad, and Whitewood's caged herself up. I had a plan to deal with her, and now it's ripe for the taking.~
   =
~Head to the Temple. End this. The Gorgon's Eye will see its rightful dominance, and Beregost will know where true power lies.~ DO ~SetGlobal("h_WatchCutscene","GLOBAL",2)~
   == h_baldwd
~Swift and ruthless, <CHARNAME>. Seize this opportunity, and give the city a taste of the Gorgon's Eye's might.~
   DO ~
      //SetGlobal("h_WatchCutscene","GLOBAL",2)
      SetGlobal("h_SpawnTemplar","GLOBAL",1)
      SetGlobal("h_CityWatchBattle","GLOBAL",1)
      AddJournalEntry(@556,QUEST)~
EXIT
