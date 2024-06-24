BEGIN h_saradd

IF ~Global("h_Saradin","GLOBAL",0)~ THEN BEGIN 0
   SAY ~I haven't the time nor desire to speak with you at present.~ IF ~~ THEN EXIT
END

IF ~Global("h_Saradin","GLOBAL",1)~ THEN BEGIN 1
   SAY ~<CHARNAME>, the newest shadow amidst our ranks. Your performance has been the subject of much discussion, and in your shadow, there lies potential.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~As a Hidden One within the Church of Mask, I observe and guide where darkness falls, and it seems you have garnered attention beyond the immediate confines of this guild.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Danika, a Demarchess under my tutelage, stands at a crucial juncture in her path of service to Mask.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Her training, rich in the lore and practice of our faith, must now be supplemented with practical experience.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~I have spoken with her about the prospect of joining you on your missions, to not only broaden her horizons but also to lend her unique skills and insights to your endeavors.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~This proposed alliance is more than a mere addition to your team; it represents a fusion of our sacred arts, enhancing your strategies with the subtlety and cunning our faith embodies.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~If you find value in this, I encourage you to discuss it further with her. She is well-prepared and awaits your decision.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Together, your combined strengths could greatly benefit the objectives at hand and further the agenda of our Lord of Shadows.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Now, what is it that you seek? How may I assist you in the paths you tread within our enigmatic fold?~
       ++ ~I'm interested in learning about the Kerykeion, can you tell me anything about it?~ DO ~SetGlobal("h_Saradin","GLOBAL",2) SetGlobal("h_DanikaWillJoin","GLOBAL",1)~ GOTO 11
       ++ ~How did Baldwin become known as "The Butcher"?~ DO ~SetGlobal("h_Saradin","GLOBAL",2) SetGlobal("h_DanikaWillJoin","GLOBAL",1)~ GOTO 71
       ++ ~What is your role here in the guild?~ DO ~SetGlobal("h_Saradin","GLOBAL",2) SetGlobal("h_DanikaWillJoin","GLOBAL",1)~ GOTO 76
       ++ ~Nothing at the moment.~ DO ~SetGlobal("h_Saradin","GLOBAL",2) SetGlobal("h_DanikaWillJoin","GLOBAL",1)~ EXIT
END

IF ~Global("h_Saradin","GLOBAL",2)~ THEN BEGIN 10
   SAY ~What do you seek on this path? How can I guide you further in our shared pursuit under the cloak of Mask?~
       +~Global("h_JoinMask","GLOBAL",1)~+ ~Master Saradin, I have studied the tenets of our faith diligently and am prepared to recite the sacred dogma of Mask.~ GOTO 133
       //+~Global("h_JoinMask","GLOBAL",2)~+ ~Master Saradin, the shadows have called, and I stand prepared to answer. Let us proceed with the next trial.~ GOTO 143
       ++ ~I'm interested in learning about the Kerykeion, can you tell me anything about it?~ GOTO 11
       ++ ~How did Baldwin become known as "The Butcher"?~ GOTO 71
       ++ ~What is your role here in the guild?~ GOTO 76
       ++ ~Nothing at the moment.~ EXIT
END

IF ~~ THEN BEGIN 11
   SAY ~I can tell you many things. What is it that you wish to know?~
       ++ ~Why is Baldwin so interested in the Kerykeion?~ GOTO 12
       ++ ~Can you tell me more about the Kerykeion's history?~ GOTO 48
       ++ ~What kind of power does the Kerykeion hold?~ GOTO 57
       ++ ~Who exactly were the Gorgon Sisters?~ GOTO 61
       ++ ~I'd like to ask you about something else.~ GOTO 10
END

IF ~~ THEN BEGIN 12
   SAY ~It goes back to Baldwin's youth, steeped in the dreams and aspirations exchanged with his elder brother, Richard.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~In the early days of their aspiring rogue-hood, Richard stumbled upon a mysterious manuscript in the depths of an ancient library.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~The tome bore cryptic symbols and a veiled reference to the legendary staff, known then as the Caduceus.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~With each passing day, Richard would regale Baldwin with tales of the staff's illustrious history, weaving a tapestry of ancient civilizations, forgotten realms, and the enigmatic figures who wielded its power.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~Baldwin, at a young and impressionable age, found himself ensnared in the allure of the Kerykeion.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~The staff's legend gripped his imagination, stoking the flames of his ambition. He yearned to wield its power and rewrite the course of history itself.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~With unrefined skills and scarce resources at their disposal, they opted to align themselves with the Shadow Thieves, envisioning a path that would steer them towards the coveted acquisition of the staff.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~As the years wore on, Baldwin's obsession with the staff deepened. His every waking moment was consumed by the singular purpose of attaining this artifact of unparalleled might.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~He poured over dusty tomes, sought out long-forgotten sages, and ventured into treacherous realms in pursuit of any scrap of knowledge related to the staff.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~It was this perilous imbalance that ultimately led to Baldwin's downfall within the ranks of the Shadow Thieves.~
       ++ ~How did Baldwin lose the trust of the Shadow Thieves?~ GOTO 22
       ++ ~I'd like to ask you about something else.~ GOTO 11
END

IF ~~ THEN BEGIN 22
   SAY ~Baldwin's growing detachment from the affairs of the Shadow Thieves did not go unnoticed. His duties to the guild became secondary, his allegiance wavering.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~The once loyal operative now walked a precarious line between the shadows and the seductive allure of the Kerykeion.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~His disregard for the guild's directives, his flagrant pursuit of the staff, and his willingness to trespass into forbidden territories strained the fragile bonds of trust that held the guild together.~ IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~The fateful day arrived when Baldwin's insubordination could no longer be ignored. His own brother, Richard, faced an agonizing decision.~ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY ~Fearing the catastrophic consequences of Baldwin's unchecked obsession, he made the painful choice to expose him to the Shadow Thieves' leadership.~ IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY ~The revelation of Baldwin's transgressions shattered the guild's confidence in him.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY ~The council, faced with no alternative, decreed his banishment, a sentence that cast him into the unforgiving realm beyond the guild's sanctuary.~
       ++ ~What happened after his banishment?~ GOTO 29
       ++ ~I'd like to ask you about something else.~ GOTO 11
END

IF ~~ THEN BEGIN 29
   SAY ~After the decree of banishment severed Baldwin's ties with the Shadow Thieves, a bitter fire smoldered within him. He sought revenge on the Shadow Thieves, his heart hardened by the sting of betrayal.~ IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY ~Fuelled by a vengeful resolve, he struck back, exacting retribution with calculated precision. In shadows deep, he silenced those who had betrayed him, sparing only his brother, Richard.~ IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY ~Baldwin, now a pariah, set forth on a solitary journey, fueled by a singular purpose, to seize the Kerykeion and claim the power that had consumed his every waking thought.~ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~With stolen documents clutched in his hand, Baldwin fled north to Beregost, a town cloaked in wilderness and intrigue.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY ~Here, he forged the Gorgon's Eye, a sanctuary for outcasts, a refuge for those drawn to the allure of forbidden power.~ IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
   SAY ~Its name echoes the ancient staff's legend, a constant reminder of his unyielding pursuit.~ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
   SAY ~Baldwin's purpose was clear. Relentlessly track the path to the Kerykeion, with the shadows of Beregost concealing his unwavering resolve.~
       ++ ~What can you tell me about Baldwin's time in the Shadow Thieves?~ GOTO 36
       ++ ~I'd like to ask you about something else.~ GOTO 11
END

IF ~~ THEN BEGIN 36
   SAY ~During the intervening years between Baldwin's induction into the Shadow Thieves and his eventual banishment, he ascended through the ranks with calculated finesse.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
   SAY ~His reputation as a skilled rogue with a penchant for command solidified, particularly within the Athkatla branch in Amn.~ IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY ~There, he operated directly under the formidable Renal Bloodscalp, a name synonymous with notoriety and power.~ IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
   SAY ~Baldwin's tenure was marked by a duality of loyalty to the guild and an insatiable hunger for arcane knowledge, both fueled by his ambitions.~ IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
   SAY ~He executed missions with surgical precision, earning respect and trust among his peers.~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
   SAY ~Yet, in the shadows, he was consumed by his relentless quest for the Kerykeion, his obsession a carefully guarded secret.~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
   SAY ~It was this very duality that would eventually fracture his allegiance, culminating in a fateful clash of loyalties that led to his expulsion from the guild he once called home.~
       ++ ~Can you tell me anything more about his brother, Richard?~ GOTO 43
       ++ ~I'd like to ask you about something else.~ GOTO 11
END

IF ~~ THEN BEGIN 43
   SAY ~Richard was a figure of exceptional acumen and finesse within the realm of rogues. His intellect was formidable, matched only by his precise execution of covert operations.~ IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
   SAY ~Richard's approach was marked by a directness that brooked no deviation, and an unyielding resolve that garnered him respect.~ IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
   SAY ~However, in the shadow of his younger sibling, Richard's aspirations paled in comparison.~ IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
   SAY ~While he excelled in the craft of thievery and subterfuge, he lacked the same fervent ambition and relentless drive that defined Baldwin's pursuit of power and knowledge.~ IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
   SAY ~This divergence in their pursuits, while it set them on separate paths, also served to underline the unique strengths and weaknesses that each brought to their chosen trades.~
       ++ ~I'd like to ask you about something else.~ GOTO 11
END

IF ~~ THEN BEGIN 48
   SAY ~The Kerykeion's history is a web of contradictions and shadowed truths, where certainty is elusive.~ IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
   SAY ~Once bearing the name Caduceus, it was wrought by a demon in the depths of the Underworld.~ IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
   SAY ~A being who would soon become ensnared by the voracious Gorgon sisters, their insatiable hunger for power sealing its fate.~ IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
   SAY ~Yet, the tale takes a darker turn with their mortal half-sister, Medusa, consumed by envy at their immortality and eternal prowess.~ IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
   SAY ~With a malevolent twist of fate, she wove the staff into her dark arts, imprisoning the essence of her immortal kin within, birthing the Kerykeion and forever cursing their existence.~  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
   SAY ~Their petrified forms coiled endlessly around its length, a grim testament to their eternal entrapment.~  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
   SAY ~Through epochs and realms, the Kerykeion passed hands, from god to god, demon to demon, until it eventually found its way to the realms of Faerun, emerging in the wake of the Time of Troubles.~ IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
   SAY ~Accounts diverge on its exploits and fate, but all culminate in the same somber conclusion.~ IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
   SAY ~The staff met its end, shattering into fragments that now lie strewn across the disparate reaches of the Sword Coast, awaiting a soul bold enough to seek its dark embrace.~
       ++ ~Why is Baldwin so interested in the Kerykeion?~ GOTO 12
       ++ ~What kind of power does the Kerykeoin hold?~ GOTO 57
       ++ ~Who exactly were the Gorgon Sisters?~ GOTO 61
       ++ ~I'd like to ask you about something else.~ GOTO 10
END

IF ~~ THEN BEGIN 57
   SAY ~In the annals of arcane artifacts, the Kerykeion stands as a testament to power, shrouded in a malevolence that chills the very soul.~ IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
   SAY ~Known foremost for its dread ability to petrify any who dare meet its gaze, this fell staff harbors an even darker secret.~ IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
   SAY ~It is said that with a whispered incantation, it can summon forth an unending swarm of serpents, a nightmarish tide that answers only to its master's call.~ IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
   SAY ~Yet, amidst these harrowing abilities, a scroll bears witness to an even more sinister power, the unlocking of a mage's constraints on spellcasting, rendering arcane incantations a seamless extension of one's aura.~
       ++ ~Why is Baldwin so interested in the Kerykeion?~ GOTO 12
       ++ ~Can you tell me more about the Kerykeion's history?~ GOTO 48
       ++ ~Who exactly were the Gorgon Sisters?~ GOTO 61
       ++ ~I'd like to ask you about something else.~ GOTO 10
END

IF ~~ THEN BEGIN 61
   SAY ~In the shadowed depths of the Underworld, the Gorgon Sisters, Stheno, Euryale, and Medusa, were serpent-like beings with an insatiable hunger.~ IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
   SAY ~Their sustenance extended beyond mortal prey, to a ravenous quest for power itself. Amidst the Underworld's labyrinthine expanse, they sought out dark creatures and formidable foes.~ IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
   SAY ~With serpentine precision, they would strike, their venomous fangs injecting a potent elixir that drained their victims of vitality.~ IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64
   SAY ~The sisters reveled in the rush of power that surged through their veins with each conquest, their voracity growing with every fallen adversary.~ IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
   SAY ~In the heart of the Underworld, they were both predators and rulers, their dominion unchallenged, their hunger never sated.~ IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
   SAY ~Medusa, the lone mortal among them, harbored a bitter jealousy born from her mortality. This resentment festered, intensifying her desire for power and propelling her down a treacherous path.~ IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
   SAY ~It was amidst this insatiable pursuit that the dark tale of the Kerykeion unfurled.~ IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
   SAY ~For the Gorgon Sisters' voracity played a pivotal role in the staff's creation and the subsequent entrapment of their essence.~ IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69
   SAY ~Forever bound to its malevolent influence, their tragic legacy became inseparable from the ominous aura of the Kerykeion. ~ IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
   SAY ~In the realms of the Underworld, their name would echo through the ages as a testament to the perilous hunger for both prey and power.~
       ++ ~Why is Baldwin so interested in the Kerykeion?~ GOTO 12
       ++ ~Can you tell me more about the Kerykeion's history?~ GOTO 48
       ++ ~What kind of power does the Kerykeoin hold?~ GOTO 57
       ++ ~I'd like to ask you about something else.~ GOTO 10
END

IF ~~ THEN BEGIN 71
   SAY ~"The Butcher" moniker bestowed upon Baldwin is a testament to the ruthless efficiency with which he operated within the infamous ranks of the Shadow Thieves.~ IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
   SAY ~Even beyond the guild's darkened halls, Baldwin's reputation echoed through the streets.~ IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73
   SAY ~It was a name whispered with a mix of awe and trepidation, for those outside the guild had borne witness to the aftermath of his operations.~ IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74
   SAY ~Baldwin's methods were uncompromising, leaving a trail of blood and calculated chaos in his wake.~  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75
   SAY ~To those who glimpsed the aftermath, he was, "The Butcher", a title born of equal parts respect for his formidable skill and a stark acknowledgment of the unforgiving nature of his work in the field.~
       ++ ~I'd like to ask you something else.~ GOTO 10
END

IF ~~ THEN BEGIN 76
   SAY ~Ah, I am but a humble follower of Mask, known as a Hidden One within the revered ranks of the church.~ IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77
   SAY ~My purpose lies in offering measured guidance and insights, ever mindful of the shadowed path we tread.~ IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78
   SAY ~As a high-ranking member, my duty is to serve the greater cause, to further Mask's enigmatic agenda, focused on the art of thievery and the elusive dance of shadows.~ IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79
   SAY ~It is in this capacity that I find myself aligned with the Gorgon's Eye and its astute leader, Baldwin.~ IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80
   SAY ~Together, we navigate the delicate tapestry of intrigue, ensuring that our pursuits align seamlessly with the clandestine designs of our patron deity.~
       ++ ~Your role and wisdom intrigue me. Could you share some of your history?~ GOTO 81
       +~!InParty("h_danika")~+ ~Can you tell me more about Danika? How does she fit into the workings of the guild and the church?~ GOTO 92
       ++ ~I'm curious about Mask. What can you tell me about this deity, and what does worshiping Mask entail for its followers?~ GOTO 104
       ++ ~I'm interested in the ways of Mask and your church. What steps must one take to become a member?~ GOTO 115
       ++ ~I'd like to ask you about something else.~ GOTO 10
END

IF ~~ THEN BEGIN 81
   SAY ~My past, much like the shadows we revere, is layered and complex. Hailing from the enigmatic land of Thay, my life has been a testament to the intricate teachings of Mask.~ IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82
   SAY ~I served at a grand temple in Bezantur, a city as steeped in secrecy as the deity we worship. It was there, amidst the veiled schemes and hidden knowledge, that I found my calling.~ IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83
   SAY ~During the tumultuous times of the Salamander War, my role transcended the confines of the temple. I found myself offering counsel to Aznar Thrul, an esteemed Red Wizard and one of the leaders of Thay.~ IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84
   SAY ~My insights, drawn from the depths of shadowy wisdom, proved invaluable in navigating the intricate web of politics and power that defined that era.~ IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85
   SAY ~My expertise, however, extends beyond mere counsel. As a master chronicler, my life has been dedicated to the pursuit and understanding of ancient artifacts and hidden powers.~ IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86
   SAY ~It is this very pursuit that brought me to the Gorgon's Eye and into an alliance with Baldwin and the Gorgon's Eye.~ IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87
   SAY ~Our goal is singular yet profound: to locate and restore the Kerykeion, a relic of immense power and mystery.~ IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88
   SAY ~Its fractured pieces, scattered across the Sword Coast, hold secrets that resonate deeply with the teachings of our Lord of Shadows.~ IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89
   SAY ~This quest is not merely an academic endeavor. It is a journey that aligns with the divine will of Mask, a pursuit that embodies the very essence of our faith.~ IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90
   SAY ~As we seek to piece together the Kerykeion, we tread a path laden with intrigue and hidden knowledge, a path that I have walked my entire life.~ IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91
   SAY ~In this, Baldwin and I are united, our goals intertwined with the shadowy tapestry of fate itself.~
       +~!InParty("h_danika")~+ ~Can you tell me more about Danika? How does she fit into the workings of the guild and the church?~ GOTO 92
       ++ ~I'm curious about Mask. What can you tell me about this deity, and what does worshiping Mask entail for its followers?~ GOTO 104
       ++ ~I'm interested in the ways of Mask and your church. What steps must one take to become a member?~ GOTO 115
       ++ ~I'd like to ask you about something else.~ GOTO 10
END

IF ~~ THEN BEGIN 92
   SAY ~Ah, Danika. She is indeed a remarkable soul, one whose life threads have been intricately woven by the very shadows we worship.~ IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93
   SAY ~I took her into the Church of Mask at a very tender age, a child found amidst turmoil and strife.~ IF ~~ THEN GOTO 94
END

IF ~~ THEN BEGIN 94
   SAY ~It was evident, even then, that she was touched by a rare and potent force, a latent power that resonated deeply with the enigmatic ethos of our Lord of Shadows.~ IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95
   SAY ~Her journey from those early days to her current standing as a Demarchess has been nothing short of extraordinary.~ IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96
   SAY ~Danika's unwavering devotion, her keen understanding of strategy and stealth, are a testament to the teachings of Mask.~ IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97
   SAY ~She embodies the very principles we uphold: subtlety, cunning, and the relentless pursuit of our hidden agendas.~ IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98
   SAY ~Within the Gorgon's Eye, Danika serves a pivotal role. She is not just a representative of our Church but a critical asset in aligning our covert operations with the divine will of Mask.~ IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99
   SAY ~Her insights and strategies have proven invaluable, seamlessly intertwining our sacred mission with the guild's endeavors.~ IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100
   SAY ~As her mentor and guide, I have watched her grow and hone her skills. She is my protege, and our journey from Thay to Beregost has been one of continuous learning and adaptation.~ IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 101
   SAY ~Together, we strive to further the enigmatic agenda of our deity, ensuring that every step we take is shrouded in the wisdom of shadows.~ IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102
   SAY ~Danika, with her unique talents and unwavering faith, is an integral part of our intricate dance within the world of shadows.~ IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103
   SAY ~Her path, like ours, is one that weaves through darkness and secrecy, always in service to the greater cause of the Church of Mask.~
       ++ ~Your role and wisdom intrigue me. Could you share some of your history?~ GOTO 81
       ++ ~I'm curious about Mask. What can you tell me about this deity, and what does worshiping Mask entail for its followers?~ GOTO 104
       ++ ~I'm interested in the ways of Mask and your church. What steps must one take to become a member?~ GOTO 115
       ++ ~I'd like to ask you about something else.~ GOTO 10
END

IF ~~ THEN BEGIN 104
   SAY ~Mask, the Lord of Shadows, is a deity shrouded in enigma, revered by those who cherish the arts of stealth and thievery.~ IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 105
   SAY ~Worshipping Mask involves embracing the shadows, mastering the art of subtlety, and understanding the deeper truths that lie beneath surface appearances.~ IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 106
   SAY ~Followers believe in the fluidity of ownership and see deception as a valuable tool.~ IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107
   SAY ~The church's teachings emphasize cunning and adaptability, encouraging the faithful to maneuver through life's complexities as adeptly as a shadow moves through light.~ IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 108
   SAY ~Our rituals and practices are often hidden, mirroring the elusive nature of our deity.~ IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109
   SAY ~As a devoted follower of Mask, one gains not just spiritual fulfillment but also tangible benefits that align with our deity's domain.~ IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 110
   SAY ~Devotees are often blessed with enhanced skills in stealth and deception, aiding them in both mundane and divine pursuits.~ IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111
   SAY ~The church provides a network of like-minded individuals, offering support and shared knowledge in our clandestine endeavors.~ IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112
   SAY ~Most importantly, true followers are sometimes granted divine insights and revelations, enabling them to perceive and manipulate the world in ways others cannot.~ IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113
   SAY ~The purpose of joining is to become part of a greater, shadowy whole, moving unseen and influencing events from the darkness.~ IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114
   SAY ~This path is not for the faint of heart, but for those who seek power and understanding beyond the ordinary, it offers rewards unparalleled.~
       ++ ~Your role and wisdom intrigue me. Could you share some of your history?~ GOTO 81
       +~!InParty("h_danika")~+ ~Can you tell me more about Danika? How does she fit into the workings of the guild and the church?~ GOTO 92
       ++ ~I'm interested in the ways of Mask and your church. What steps must one take to become a member?~ GOTO 115
       ++ ~I'd like to ask you about something else.~ GOTO 10
END

IF ~~ THEN BEGIN 115
   SAY ~To join the ranks of Mask's faithful, one must demonstrate a keen understanding of subtlety and secrecy.~ IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116
   SAY ~Prospective members undergo a rigorous process where their skills in stealth, manipulation, and discretion are tested. Loyalty to Mask's tenets is paramount.~ IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117
   SAY ~Aspirants are often required to complete tasks that reflect the deity's ethos, proving their worthiness to embrace the shadowed path.~ IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118
   SAY ~The journey to becoming a full-fledged member is as much about inner transformation as it is about external proficiency.~ IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119
   SAY ~One must embody the very essence of shadows, becoming an unseen force that influences the world from behind a veil of mystery.~
       +~!Class(Player1,THIEF_ALL) Global("h_JoinMask","GLOBAL",0)~+ ~I'm interested in joining the ranks of the Church and devoting myself to Mask.~ GOTO 120
       +~Class(Player1,THIEF_ALL)Global("h_JoinMask","GLOBAL",0)~+ ~I'm interested in joining the ranks of the Church and devoting myself to Mask.~ GOTO 125
       ++ ~Your role and wisdom intrigue me. Could you share some of your history?~ GOTO 81
       +~!InParty("h_danika")~+ ~Can you tell me more about Danika? How does she fit into the workings of the guild and the church?~ GOTO 92
       ++ ~I'm curious about Mask. What can you tell me about this deity, and what does worshiping Mask entail for its followers?~ GOTO 104
       ++ ~I'd like to ask you about something else.~ GOTO 10
END

IF ~~ THEN BEGIN 120
   SAY ~Your interest in the Church of Mask and in walking the path of shadows is commendable.~ IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121
   SAY ~However, the church is selective in its acceptance of devotees, particularly favoring those with an innate affinity for the thieving arts.~ IF ~~ THEN GOTO 122
END

IF ~~ THEN BEGIN 122
   SAY ~It is these skills that resonate most deeply with the teachings and essence of Mask.~ IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 123
   SAY ~While I note your eagerness, without this intrinsic connection to the arts of stealth and subterfuge, it is challenging to fully embrace the path we tread.~ IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 124
   SAY ~Continue to hone your skills and understanding of our ways. Perhaps in time, your path may align more closely with the shadowed journey of Mask.~
       ++ ~Your role and wisdom intrigue me. Could you share some of your history?~ GOTO 81
       +~!InParty("h_danika")~+ ~Can you tell me more about Danika? How does she fit into the workings of the guild and the church?~ GOTO 92
       ++ ~I'm curious about Mask. What can you tell me about this deity, and what does worshiping Mask entail for its followers?~ GOTO 104
       ++ ~I'd like to ask you about something else.~ GOTO 10
END

IF ~~ THEN BEGIN 125
   SAY ~Ah, a seeker of the shadows in our midst. Your path as a thief aligns well with the teachings of Mask.~ IF ~~ THEN GOTO 126
END

IF ~~ THEN BEGIN 126
   SAY ~To begin your journey into the Church of Mask, you must first embrace the role of the 'Unproved.'~ IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 127
   SAY ~This is a novice position, a starting point on your path to understanding the deeper truths of our Lord of Shadows.~ IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 128
   SAY ~Your first task is to internalize the core dogma of Mask: a creed that emphasizes subtlety, deception, and the acquisition of wealth through cunning means.~ IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129
   SAY ~Study these teachings, for they are the foundation upon which your journey will be built. When you have fully grasped the essence of this dogma, return to me and recite it in full.~ IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 130
   SAY ~Only then can you proceed to the next trial, proving your worthiness to walk further down this shadowed path.~ IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 131
   SAY ~Remember, the way of Mask is not merely about thievery, but the art of manipulation, the crafting of plausible untruths, and the mastery of subtlety.~ IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132
   SAY ~It is a path that requires finesse and a keen understanding of the nuances of deceit and shadow. Prove yourself adept in these arts, and you shall find your place within our ranks.~
IF ~~ THEN DO ~
   SetGlobal("h_JoinMask","GLOBAL",1)
   GiveItemCreate("h_misc33",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 133
   SAY ~Very well. Step forward into the shadow's embrace and recite the dogma. Let each word reflect your understanding and commitment to the path of Mask.~ IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134
   SAY ~This is more than mere memorization; it is a demonstration of your alignment with the principles that guide our order. Speak now, and let the shadows bear witness to your devotion.~
       ++ ~Foolish are those who value honesty, but a semblance of truth holds great worth.~ GOTO 135
       ++ ~Honesty is the refuge of the simple-minded, but the appearance of honesty is a valuable tool.~ GOTO 135
       ++ ~Only the naive prize honesty, while the illusion of truthfulness is precious.~ GOTO 135
       ++ ~True honesty is for the unwise, but the art of seeming honest is invaluable.~ GOTO 135
       ++ ~Honesty is for fools, but apparent honesty is a very valuable thing.~ GOTO 137
       ++ ~Honesty belongs to the foolish, yet the art of feigned honesty is priceless.~ GOTO 135
END

IF ~~ THEN BEGIN 135
   SAY ~That is incorrect. The path of Mask demands precision and an unerring grasp of its tenets. What you have recited deviates from the core teachings.~ IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136
   SAY ~Reflect upon our dogma once more, absorb its essence, and when you are ready, return to me.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 137
   SAY ~Make every untruth seem plausible, and never lie when you can cleave to the truth but leave a mistaken impression; a bridge burned means much rebuilding if you need to cross over there again.~
       ++ ~In all things, subtlety reigns supreme.~ GOTO 135
       ++ ~Subtlety is everything.~ GOTO 138
       ++ ~The essence of all is found in subtlety.~ GOTO 135
       ++ ~Above all, cherish the art of subtlety.~ GOTO 135
       ++ ~Subtlety holds the key to all endeavors.~ GOTO 135
       ++ ~At the heart of matters, subtlety prevails.~ GOTO 135
END

IF ~~ THEN BEGIN 138
   SAY ~A bribe is the least subtle of the tools Mask gives to us. Never force someone to do something when you can manipulate them into doing it and thinking the decision and the deed are entirely their own freewilled work.~
       ++ ~Avoid the expected, unless it masks another, more hidden act.~ GOTO 135
       ++ ~Eschew the apparent, only employing it to veil further schemes.~ GOTO 135
       ++ ~Shun the straightforward path, unless it serves to obscure deeper plans.~ GOTO 135
       ++ ~Refrain from the evident, unless it's a cover for other, covert operations.~ GOTO 135
       ++ ~Steer clear of the clear-cut, except when it shadows other, underlying intents.~ GOTO 135
       ++ ~Never do the obvious, except to conceal a secondary or tertiary deed or arrangement.~ GOTO 139
END

IF ~~ THEN BEGIN 139
   SAY ~Spin secrets atop secrets, but do so unconcernedly, not with the sly excitement of untutored youth.~
       ++ ~Place faith in the darkness, as light often leads to vulnerability.~ GOTO 135
       ++ ~Rely on the obscurity of shadows, for paths well-lit invite danger.~ GOTO 135
       ++ ~In shadows, trust; for in brightness, one becomes an effortless mark.~ GOTO 135
       ++ ~Trust in the shadows, for the bright way makes for easy targets.~ GOTO 140
       ++ ~Seek solace in the shadows, for the illuminated way is a path to peril.~ GOTO 135
       ++ ~Embrace the concealment of shadows, as clarity often renders one exposed.~ GOTO 135
END

IF ~~ THEN BEGIN 140
   SAY ~Well done. Your grasp of the Tenets of the Unseen shows promising depth. In the Church of Mask, such understanding is the first step to truly walk in the Lord of Shadows favor.~ IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141
   SAY ~Remember, these tenets are not just words but guiding principles for your actions and decisions. As you embody these teachings, you will find your place among us.~ IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 142
   SAY ~When you feel ready to delve deeper into the shadows and face the challenges that lie ahead, return here. Your next trial awaits, and with it, a further step into our fold.~
IF ~~ THEN DO ~
   SetGlobal("h_JoinMask","GLOBAL",2)
   AddExperienceParty(600)~ EXIT
END




IF ~Global("h_Saradin","GLOBAL",3)~ THEN BEGIN FINAL_1
   SAY ~It appears Baldwin was ill-equipped, both in mind and body, to wield the Kerykeion.~ IF ~~ THEN GOTO FINAL_2
END

IF ~~ THEN BEGIN FINAL_2
   SAY ~The essence of the Gorgon Sisters shattered through his faculties, twisting his form into that grotesque abomination. Unfortunate, but undeniably fascinating.~ IF ~~ THEN GOTO FINAL_3
END

IF ~~ THEN BEGIN FINAL_3
   SAY ~A pity about the staff, It saddens me to know that we will never witness its reunification. However, the piece you now possess does seem to bear the genuine mark.~ IF ~~ THEN GOTO FINAL_4
END

IF ~~ THEN BEGIN FINAL_4
   SAY ~Take it back to the guild, to Rhade. He possesses the acumen to harness its potential, perhaps in ways Baldwin could not.~ IF ~~ THEN GOTO FINAL_5
END

IF ~~ THEN BEGIN FINAL_5
   SAY ~With Baldwin's absence, the mantle of guildmaster lies vacant. He saw in you the potential for leadership, a sentiment I concur with.~ IF ~~ THEN GOTO FINAL_6
END

IF ~~ THEN BEGIN FINAL_6
   SAY ~There's an aura about you, a quality that sets you apart. I believe it's in the best interest of the guild to place you at its helm.~ IF ~~ THEN GOTO FINAL_7
END

IF ~~ THEN BEGIN FINAL_7
   SAY ~The position is yours, if you're willing. What say you?~
       ++ ~I accept your offer and shall assume control of the Gorgon's Eye as its guildmaster.~ GOTO FINAL_8
       ++ ~I accept your offer, but my path forward is uncertain, and I am unsure of how active a leader I can be.~ GOTO FINAL_9
       ++ ~I have no wish to lead the Gorgon's Eye at this time, so I must decline your offer.~ GOTO FINAL_10
END

IF ~~ THEN BEGIN FINAL_8
   SAY ~Speak with me upon your return and I will discuss our operations at length.~
IF ~~ THEN DO ~
   SetGlobal("h_Meredia","GLOBAL",1)
   SetGlobal("h_Saradin","GLOBAL",4)
   SetGlobal("h_RigaldoQuest","GLOBAL",18)
   SetGlobal("h_SpawnAriosh","GLOBAL",5)
   SetGlobal("h_LiedelQuest","GLOBAL",7)
   SetGlobal("h_BaldwinGuards","GLOBAL",3)
   SetGlobal("h_ArioshQuest","GLOBAL",23)
   AddJournalEntry(@220,QUEST_DONE)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN FINAL_9
   SAY ~Rest assured, the guild is adept at self-sustainability. When you return, we shall delve into our operations in detail.~
IF ~~ THEN DO ~
   SetGlobal("h_Meredia","GLOBAL",1)
   SetGlobal("h_Saradin","GLOBAL",4)
   SetGlobal("h_RigaldoQuest","GLOBAL",18)
   SetGlobal("h_SpawnAriosh","GLOBAL",5)
   SetGlobal("h_LiedelQuest","GLOBAL",7)
   SetGlobal("h_BaldwinGuards","GLOBAL",3)
   SetGlobal("h_ArioshQuest","GLOBAL",23)
   AddJournalEntry(@220,QUEST_DONE)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN FINAL_10
   SAY ~It is regrettable, yet I sense the pull of a potent destiny guiding you towards a significant journey. I bid you farewell, and remember that the guild's facilities shall remain at your disposal.~
IF ~~ THEN DO ~
   SetGlobal("h_RefuseGuildOffer","GLOBAL",1)
   AddJournalEntry(@221,QUEST_DONE)
   EscapeArea()~ EXIT
END

IF ~Global("h_Saradin","GLOBAL",4)~ THEN BEGIN GUILD_0
   SAY ~Welcome back, <CHARNAME>. If you have a moment, I'd like to discuss your new responsibilities as guildmaster.~
       ++ ~Yes, I am prepared to take charge of our guild's operations.~ GOTO GUILD_1
       ++ ~I have a few other matters to attend to first.~ EXIT
END

IF ~~ THEN BEGIN GUILD_1
   SAY ~I will review each of your officers individually, and you can inform me of any adjustments you wish to make regarding their activities.~ IF ~~ THEN GOTO GUILD_2
END

IF ~~ THEN BEGIN GUILD_2
   SAY ~Rigaldo oversees all our general thieving activities, including pickpocketing, mugging, extortion, blackmail, break-ins, and safe-cracking.~ IF ~~ THEN GOTO GUILD_3
END

IF ~~ THEN BEGIN GUILD_3
   SAY ~Would you prefer his thieves to target upper-class marks, where both the risk and reward are higher, or should they focus on the general public for safety?~
       ++ ~Go for the upper-class targets. Their possessions will outweigh the risk.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_4
       ++ ~Stick with the general public. More marks, less chance of getting caught.~ GOTO GUILD_4
END

IF ~~ THEN BEGIN GUILD_4
   SAY ~Should they aggressively mug as many targets as possible, or spend more time in stealth, waiting for the right moment to strike?~
       ++ ~Have them hit as many targets as possible, even if it means using force.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_5
       ++ ~Better to have them stick to the shadows, waiting for safer opportunities.~ GOTO GUILD_5
END

IF ~~ THEN BEGIN GUILD_5
   SAY ~Regarding our protection racket, should we stick to the usual threats and blackmail, or use more physical violence if they are unwilling to cooperate?~
       ++ ~Use violence if necessary. Fear will keep everyone in line.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_6
       ++ ~I don't want people getting seriously hurt. Stick to using blackmail.~ GOTO GUILD_6
END

IF ~~ THEN BEGIN GUILD_6
   SAY ~Very well, that covers Rigaldo. These instructions align with his thieves' abilities, and I foresee everything proceeding smoothly.~ IF ~~ THEN GOTO GUILD_7
END

IF ~~ THEN BEGIN GUILD_7
   SAY ~Next up is Zeda, our resident smuggler.~ IF ~~ THEN GOTO GUILD_8
END

IF ~~ THEN BEGIN GUILD_8
   SAY ~She primarily operates between Amn and Baldur's Gate to avoid conflict with other guilds. However, she could further expand her activities.~
       ++ ~Keep her operating where she is. We don't want to instigate further trouble with the other guilds~ GOTO GUILD_9
       ++ ~Have her expand her operations further out. The risk is worth the opportunity.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_9
END

IF ~~ THEN BEGIN GUILD_9
   SAY ~Black lotus has been her most profitable venture since obtaining our new supplier. However, it is much riskier to transport and carries higher penalties than her usual goods do.~ IF ~~ THEN GOTO GUILD_9.5
END

IF ~~ THEN BEGIN GUILD_9.5
   SAY ~Do you want her to continue increasing her stock in lotus, or begin to temper her dealings with safer, less valuable items?~
       ++ ~Have her continue focusing on the black lotus. Its higher profits should compensate for any bribes or bail we might have to pay.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_10
       ++ ~Have her shift back more to her usual goods. I don't want her taking any unnecessary risks.~ GOTO GUILD_10
END

IF ~~ THEN BEGIN GUILD_10
   SAY ~Alright, I believe she will be content with this set of instructions.~ IF ~~ THEN GOTO GUILD_11
END

IF ~~ THEN BEGIN GUILD_11
   SAY ~Your next officer is Liedel. She oversees all the bounty hunting and assassination contracts that we receive.~ IF ~~ THEN GOTO GUILD_12
END

IF ~~ THEN BEGIN GUILD_12
   SAY ~There isn't much to direct here, as she is fairly self-sufficient. You could have her cease assassination work altogether and focus only on live bounties, but doing so would create a noticeable decrease in our profits.~
       ++ ~Have her continue the way she is then. She seems to have things under control.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_13
       ++ ~I don't want innocent people being killed. Have her stick to the live bounties from now on.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",-2)~ GOTO GUILD_13
END

IF ~~ THEN BEGIN GUILD_13
   SAY ~I will inform her of your decision.~ IF ~~ THEN GOTO GUILD_14
END

IF ~~ THEN BEGIN GUILD_14
   SAY ~Next up is Gilbald and his gamesmen.~ IF ~~ THEN GOTO GUILD_15
END

IF ~~ THEN BEGIN GUILD_15
   SAY ~They currently have their games rigged to pay out 20% of their profits. If you increase the payout, more players will likely come to gamble, but less coin will be gained from each.~ IF ~~ THEN GOTO GUILD_16
END

IF ~~ THEN BEGIN GUILD_16
   SAY ~If you decrease the payout, fewer players will come to gamble, but the ones who do will end up losing more. The challenge lies in finding the right balance between the two.~
       ++ ~Keep the payout at 20%. It seems to be working fine as is.~ GOTO GUILD_17
       ++ ~Increase the payout to 30%. Having more players coming in should be more profitable in the long run.~ GOTO GUILD_17
       ++ ~Decrease the payout to 10%. I want to extract as much money from the players as I can.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_17
END

IF ~~ THEN BEGIN GUILD_17
   SAY ~Alright, I will relay your decision to Gilbald.~ IF ~~ THEN GOTO GUILD_18
END

IF ~~ THEN BEGIN GUILD_18
   SAY ~Your next officer that needs direction is Madam Meredia, who is in charge of our courtesan wing.~ IF ~~ THEN GOTO GUILD_19
END

IF ~~ THEN BEGIN GUILD_19
   SAY ~If we increase her rates, it will attract fewer patrons overall, but the ones that do come would be wealthier and cleaner.~ IF ~~ THEN GOTO GUILD_20
END

IF ~~ THEN BEGIN GUILD_20
   SAY ~If we decrease her rates, more clients will come, but they will bring a higher risk of violence and disease. This could cause her staff to be unable to work for longer periods of time.~
       ++ ~No need to change their rates then. Keep them as they are now.~ GOTO GUILD_21
       ++ ~Increase her rates. I wish them to have better quality clients who pose less risk.~ GOTO GUILD_21
       ++ ~I want to decrease her rates so we'll have more paying clients coming in.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_21
END

IF ~~ THEN BEGIN GUILD_21
   SAY ~I'll inform Meredia of your decision.~ IF ~~ THEN GOTO GUILD_22
END

IF ~~ THEN BEGIN GUILD_22
   SAY ~Your last venture to oversee, is Diomedes and his fighting pits.~ IF ~~ THEN GOTO GUILD_23
END

IF ~~ THEN BEGIN GUILD_23
   SAY ~Do you prefer an emphasis on honing our guilds combat skills through training, or do you lean more towards maximizing revenue from spectators?~
       ++ ~Let's invest more time and resources into training programs, ensuring that each member reaches their full potential.~ GOTO GUILD_24
       ++ ~I want to focus on maximising revenue from the matches, which we can use to fund better equipment and facilities.~ GOTO GUILD_24
END

IF ~~ THEN BEGIN GUILD_24
   SAY ~Diomedes has stated his opposition towards allowing deathmatches, however, if you wish to reimplement them, the final decision is yours, of course.~ IF ~~ THEN GOTO GUILD_25
END

IF ~~ THEN BEGIN GUILD_25
   SAY ~Allowing deathmatches raises the significant risk of losing valuable fighters whose expertise and experience could have been harnessed for the betterment of the guild.~ IF ~~ THEN GOTO GUILD_26
END

IF ~~ THEN BEGIN GUILD_26
   SAY ~However, they have the potential to spread intrigue and draw significantly larger crowds, thus creating higher-stakes and an increased revenue stream.~
       ++ ~The potential benefits of introducing deathmatches are too substantial to ignore. Inform Diomedes I want them reopened.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_27
       ++ ~Diomedes reservations about deathmatches are valid. We have thrived without them for a significant period and that is how we shall continue.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",-1)~ GOTO GUILD_27
END

IF ~~ THEN BEGIN GUILD_27
   SAY ~Alright, that is all I have for you at this time. I will make the rounds every seven days to collect our profits. Come see me then, and I will let you know how things have fared.~
IF ~~ THEN DO ~
   SetGlobal("h_Saradin","GLOBAL",5)
   SetGlobalTimer("h_GuildPayout","GLOBAL",SEVEN_DAYS)~ EXIT
END

IF WEIGHT #-1 ~GlobalTimerExpired("h_GuildPayout","GLOBAL")~ THEN BEGIN PAY_0
   SAY ~Welcome back, <CHARNAME>. I've just finished making the rounds, and all of your officers' reports are in.~ IF ~~ THEN GOTO PAY_1
END

IF ~~ THEN BEGIN PAY_1
   SAY ~Based on your instructions and our guild expenses, we have accumulated a substantial sum of profits.~
       +~GlobalLT("h_GuildRisk","GLOBAL",3)~+ ~How much will I be receiving?~ GOTO PAY_2
       +~GlobalLT("h_GuildRisk","GLOBAL",8) GlobalGT("h_GuildRisk","GLOBAL",2)~+ ~How much will I be receiving?~ GOTO PAY_3
       +~Global("h_GuildRisk","GLOBAL",8)~+ ~How much will I be receiving?~ GOTO PAY_4
END

IF ~~ THEN BEGIN PAY_2
   SAY ~The guild is operating at a low level of risk and has managed to bring in a total of 1000 gold coins. Would you like to make any changes to our activites?~
       ++ ~I will keep them as they are for now.~ DO ~ GiveGoldForce(1000)~ GOTO PAY_5
       ++ ~I'd like to change their set of instructions.~ DO ~ SetGlobal("h_GuildRisk","GLOBAL",0)~ GOTO GUILD_1
END

IF ~~ THEN BEGIN PAY_3
   SAY ~The guild is operating at a moderate level of risk and has managed to bring in a total of 2000 gold coins. Would you like to make any changes to our activites?~
       ++ ~I will keep them as they are for now.~ DO ~ GiveGoldForce(2000)~ GOTO PAY_5
       ++ ~I'd like to change their set of instructions.~ DO ~ SetGlobal("h_GuildRisk","GLOBAL",0) GiveGoldForce(1500)~ GOTO GUILD_1
END

IF ~~ THEN BEGIN PAY_4
   SAY ~The guild is operating at a high level of risk and has managed to bring in a total of 3000 gold coins. Would you like to make any changes to our activites?~
       ++ ~I will keep them as they are for now.~ DO ~ GiveGoldForce(3000)~ GOTO PAY_5
       ++ ~I'd like to change their set of instructions.~ DO ~ SetGlobal("h_GuildRisk","GLOBAL",0) GiveGoldForce(2000)~ GOTO GUILD_1
END

IF ~~ THEN BEGIN PAY_5
   SAY ~Very good. Report back to me in one week's time.~
IF ~~ THEN DO ~
   SetGlobalTimer("h_GuildPayout","GLOBAL",SEVEN_DAYS)~ EXIT
END

IF ~Global("h_Saradin","GLOBAL",5)~ THEN BEGIN PROFIT_0
   SAY ~There is still some time left before our reports are in. I will keep you updated if anything else requires your attention in the meantime.~ IF ~~ THEN EXIT
END





