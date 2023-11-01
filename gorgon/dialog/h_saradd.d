BEGIN h_saradd

// ~Very well. Henceforth, I will accept you as my novice, and you shall address me as, 'Master Shadow'. These titles echo the ancient customs of our order.~
// ~For now, you bear the title 'Unproved'. To advance within the ranks, you must demonstrate your dedication and prowess in the trials that await.~

IF ~Global("h_Saradin","GLOBAL",0)~ THEN BEGIN 0
   SAY ~I haven't the time nor desire to speak with you at present.~ IF ~~ THEN EXIT
END

IF ~Global("h_Saradin","GLOBAL",1)~ THEN BEGIN 1
   SAY ~What is it you seek?~
     //  +~Global("h_JoinMask","GLOBAL",1)~+ ~I have come to recite the Creed of the Maskarran.~ EXIT
       ++ ~I'm interested in learning about the Kerykeion, can you tell me anything about it?~ GOTO KERY_2
       ++ ~How did Baldwin become known as 'The Butcher'?~ GOTO BUTCHER_2
       ++ ~What is your role here in the guild?~ GOTO SARA_2
       ++ ~Nothing at the moment.~ EXIT
END

IF ~~ THEN BEGIN KERY_2
   SAY ~I can tell you many things. What is it that you wish to know?~
       ++ ~Why is Baldwin so interested in the Kerykeion?~ GOTO BALDWIN_3
       ++ ~What kind of power does the Kerykeoin hold?~ GOTO KERY_3
       ++ ~Can you tell me more about the Kerykeion's history?~ GOTO KERY_7
       ++ ~Who exactly were the Gorgon Sisters?~ GOTO GORGON_0
       ++ ~I'd like to ask you about something else.~ GOTO 1
END

IF ~~ THEN BEGIN GORGON_0
   SAY ~In the shadowed depths of the Underworld, the Gorgon Sisters, Stheno, Euryale, and Medusa, were serpent-like beings with an insatiable hunger.~ IF ~~ THEN GOTO GORGON_1
END

IF ~~ THEN BEGIN GORGON_1
   SAY ~Their sustenance extended beyond mortal prey, to a ravenous quest for power itself. Amidst the Underworld's labyrinthine expanse, they sought out dark creatures and formidable foes.~ IF ~~ THEN GOTO GORGON_2
END

IF ~~ THEN BEGIN GORGON_2
   SAY ~With serpentine precision, they would strike, their venomous fangs injecting a potent elixir that drained their victims of vitality.~ IF ~~ THEN GOTO GORGON_3
END

IF ~~ THEN BEGIN GORGON_3
   SAY ~The sisters reveled in the rush of power that surged through their veins with each conquest, their voracity growing with every fallen adversary.~ IF ~~ THEN GOTO GORGON_4
END

IF ~~ THEN BEGIN GORGON_4
   SAY ~In the heart of the Underworld, they were both predators and rulers, their dominion unchallenged, their hunger never sated.~ IF ~~ THEN GOTO GORGON_5
END

IF ~~ THEN BEGIN GORGON_5
   SAY ~Medusa, the lone mortal among them, harbored a bitter jealousy born from her mortality. This resentment festered, intensifying her desire for power and propelling her down a treacherous path.~ IF ~~ THEN GOTO GORGON_6
END

IF ~~ THEN BEGIN GORGON_6
   SAY ~It was amidst this insatiable pursuit that the dark tale of the Kerykeion unfurled. For the Gorgon Sisters' voracity played a pivotal role in the staff's creation and the subsequent entrapment of their essence.~ IF ~~ THEN GOTO GORGON_7
END

IF ~~ THEN BEGIN GORGON_7
   SAY ~Forever bound to its malevolent influence, their tragic legacy became inseparable from the ominous aura of the Kerykeion. ~ IF ~~ THEN GOTO GORGON_8
END
                                  
IF ~~ THEN BEGIN GORGON_8
   SAY ~In the realms of the Underworld, their name would echo through the ages as a testament to the perilous hunger for both prey and power.~
       ++ ~Why is Baldwin so interested in the Kerykeion?~ GOTO BALDWIN_3
       ++ ~What kind of power does the Kerykeoin hold?~ GOTO KERY_3
       ++ ~Can you tell me more about the Kerykeion's history?~ GOTO KERY_7
       ++ ~I'd like to ask you about something else.~ GOTO 1
END

IF ~~ THEN BEGIN KERY_3
   SAY ~In the annals of arcane artifacts, the Kerykeion stands as a testament to power, shrouded in a malevolence that chills the very soul.~ IF ~~ THEN GOTO KERY_4
END

IF ~~ THEN BEGIN KERY_4
   SAY ~Known foremost for its dread ability to petrify any who dare meet its gaze, this fell staff harbors an even darker secret.~ IF ~~ THEN GOTO KERY_5
END

IF ~~ THEN BEGIN KERY_5
   SAY ~It is said that with a whispered incantation, it can summon forth an unending swarm of serpents, a nightmarish tide that answers only to its master's call.~ IF ~~ THEN GOTO KERY_6
END

IF ~~ THEN BEGIN KERY_6
   SAY ~Yet, amidst these harrowing abilities, a scroll bears witness to an even more sinister power, the unlocking of a mage's constraints on spellcasting, rendering arcane incantations a seamless extension of one's aura.~
       ++ ~Why is Baldwin so interested in the Kerykeion?~ GOTO BALDWIN_3
       ++ ~Can you tell me more about the Kerykeion's history?~ GOTO KERY_7
       ++ ~Who exactly were the Gorgon Sisters?~ GOTO GORGON_0
       ++ ~I'd like to ask you about something else.~ GOTO 1
END

IF ~~ THEN BEGIN KERY_7
   SAY ~The Kerykeion's history is a web of contradictions and shadowed truths, where certainty is elusive.~ IF ~~ THEN GOTO KERY_8
END

IF ~~ THEN BEGIN KERY_8
   SAY ~Once bearing the name Caduceus, it was wrought by a demon in the depths of the Underworld. A being who would soon become ensnared by the voracious Gorgon sisters, their insatiable hunger for power sealing its fate.~ IF ~~ THEN GOTO KERY_9
END

IF ~~ THEN BEGIN KERY_9
   SAY ~Yet, the tale takes a darker turn with their mortal half-sister, Medusa, consumed by envy at their immortality and eternal prowess.~ IF ~~ THEN GOTO KERY_10
END

IF ~~ THEN BEGIN KERY_10
   SAY ~With a malevolent twist of fate, she wove the staff into her dark arts, imprisoning the essence of her immortal kin within, birthing the Kerykeion and forever cursing their existence.~  IF ~~ THEN GOTO KERY_11
END

IF ~~ THEN BEGIN KERY_11
   SAY ~Their petrified forms coiled endlessly around its length, a grim testament to their eternal entrapment.~  IF ~~ THEN GOTO KERY_12
END

IF ~~ THEN BEGIN KERY_12
   SAY ~Through epochs and realms, the Kerykeion passed hands, from god to god, demon to demon, until it eventually found its way to the realms of Faerun, emerging in the wake of the Time of Troubles.~ IF ~~ THEN GOTO KERY_13
END

IF ~~ THEN BEGIN KERY_13
   SAY ~Accounts diverge on its exploits and fate, but all culminate in the same somber conclusion. The staff met its end, shattering into fragments that now lie strewn across the disparate reaches of the Sword Coast, awaiting a soul bold enough to seek its dark embrace.~
       ++ ~Why is Baldwin so interested in the Kerykeion?~ GOTO BALDWIN_3
       ++ ~What kind of power does the Kerykeoin hold?~ GOTO KERY_3
       ++ ~Who exactly were the Gorgon Sisters?~ GOTO GORGON_0
       ++ ~I'd like to ask you about something else.~ GOTO 1
END

IF ~~ THEN BEGIN SARA_2
   SAY ~Ah, I am but a humble follower of Mask, known as a Hidden One within the revered ranks of the church.~ IF ~~ THEN GOTO SARA_3
END

IF ~~ THEN BEGIN SARA_3
   SAY ~My purpose lies in offering measured guidance and insights, ever mindful of the shadowed path we tread.~ IF ~~ THEN GOTO SARA_4
END

IF ~~ THEN BEGIN SARA_4
   SAY ~As a high-ranking member, my duty is to serve the greater cause, to further Mask's enigmatic agenda, focused on the art of thievery and the elusive dance of shadows.~ IF ~~ THEN GOTO SARA_5
END

IF ~~ THEN BEGIN SARA_5
   SAY ~It is in this capacity that I find myself aligned with the Gorgon's Eye and its astute leader, Baldwin.~ IF ~~ THEN GOTO SARA_6
END

IF ~~ THEN BEGIN SARA_6
   SAY ~Together, we navigate the delicate tapestry of intrigue, ensuring that our pursuits align seamlessly with the clandestine designs of our patron deity.~
       ++ ~I'd like to ask you about something else.~ GOTO 1
END

IF ~~ THEN BEGIN BUTCHER_2
   SAY ~'The Butcher' moniker bestowed upon Baldwin is a testament to the ruthless efficiency with which he operated within the infamous ranks of the Shadow Thieves.~ IF ~~ THEN GOTO BUTCHER_3
END

IF ~~ THEN BEGIN BUTCHER_3
   SAY ~Even beyond the guild's darkened halls, Baldwin's reputation echoed through the streets. It was a name whispered with a mix of awe and trepidation, for those outside the guild had borne witness to the aftermath of his operations.~ IF ~~ THEN GOTO BUTCHER_4
END

IF ~~ THEN BEGIN BUTCHER_4
   SAY ~Baldwin's methods were uncompromising, leaving a trail of blood and calculated chaos in his wake.~  IF ~~ THEN GOTO BUTCHER_5
END

IF ~~ THEN BEGIN BUTCHER_5
   SAY ~To those who glimpsed the aftermath, he was 'The Butcher', a title born of equal parts respect for his formidable skill and a stark acknowledgment of the unforgiving nature of his work in the field.~
       ++ ~I'd like to ask you something else.~ GOTO 1
END

IF ~~ THEN BEGIN BALDWIN_3
   SAY ~It goes back to Baldwin's youth, steeped in the dreams and aspirations exchanged with his elder brother, Richard.~ IF ~~ THEN GOTO BALDWIN_4
END

IF ~~ THEN BEGIN BALDWIN_4
   SAY ~In the early days of their aspiring rogue-hood, Richard stumbled upon a mysterious manuscript in the depths of an ancient library.~ IF ~~ THEN GOTO BALDWIN_5
END

IF ~~ THEN BEGIN BALDWIN_5
   SAY ~The tome bore cryptic symbols and a veiled reference to the legendary staff, known then as the Caduceus.~ IF ~~ THEN GOTO BALDWIN_6
END

IF ~~ THEN BEGIN BALDWIN_6
   SAY ~With each passing day, Richard would regale Baldwin with tales of the staff's illustrious history, weaving a tapestry of ancient civilizations, forgotten realms, and the enigmatic figures who wielded its power.~ IF ~~ THEN GOTO BALDWIN_7
END

IF ~~ THEN BEGIN BALDWIN_7
   SAY ~Baldwin, at a young and impressionable age, found himself ensnared in the allure of the Kerykeion. The staff's legend gripped his imagination, stoking the flames of his ambition. He yearned to wield its power and rewrite the course of history itself.~ IF ~~ THEN GOTO BALDWIN_8
END

IF ~~ THEN BEGIN BALDWIN_8
   SAY ~With unrefined skills and scarce resources at their disposal, they opted to align themselves with the Shadow Thieves, envisioning a path that would steer them towards the coveted acquisition of the staff.~ IF ~~ THEN GOTO BALDWIN_9
END

IF ~~ THEN BEGIN BALDWIN_9
   SAY ~As the years wore on, Baldwin's obsession with the staff deepened. His every waking moment was consumed by the singular purpose of attaining this artifact of unparalleled might.~ IF ~~ THEN GOTO BALDWIN_10
END

IF ~~ THEN BEGIN BALDWIN_10
   SAY ~He poured over dusty tomes, sought out long-forgotten sages, and ventured into treacherous realms in pursuit of any scrap of knowledge related to the staff.~ IF ~~ THEN GOTO BALDWIN_11
END

IF ~~ THEN BEGIN BALDWIN_11
   SAY ~It was this perilous imbalance that ultimately led to Baldwin's downfall within the ranks of the Shadow Thieves.~
       ++ ~How did Baldwin lose the trust of the Shadow Thieves?~ GOTO BALDWIN_12
       ++ ~What can you tell me about Baldwin's time in the Shadow Thieves?~ GOTO BALDWIN_21
       ++ ~Can you tell me anything more about his brother, Richard?~ GOTO BALDWIN_28
       ++ ~I'd like to ask you about something else.~ GOTO KERY_2
END

IF ~~ THEN BEGIN BALDWIN_12
   SAY ~Baldwin's growing detachment from the affairs of the Shadow Thieves did not go unnoticed. His duties to the guild became secondary, his allegiance wavering.~ IF ~~ THEN GOTO BALDWIN_13
END

IF ~~ THEN BEGIN BALDWIN_13
   SAY ~The once loyal operative now walked a precarious line between the shadows and the seductive allure of the Kerykeion.~ IF ~~ THEN GOTO BALDWIN_14
END

IF ~~ THEN BEGIN BALDWIN_14
   SAY ~His disregard for the guild's directives, his flagrant pursuit of the staff, and his willingness to trespass into forbidden territories strained the fragile bonds of trust that held the guild together.~ IF ~~ THEN GOTO BALDWIN_15
END

IF ~~ THEN BEGIN BALDWIN_15
   SAY ~The fateful day arrived when Baldwin's insubordination could no longer be ignored. His own brother, Richard, faced an agonizing decision.~ IF ~~ THEN GOTO BALDWIN_16
END

IF ~~ THEN BEGIN BALDWIN_16
   SAY ~Fearing the catastrophic consequences of Baldwin's unchecked obsession, he made the painful choice to expose him to the Shadow Thieves' leadership.~ IF ~~ THEN GOTO BALDWIN_17
END

IF ~~ THEN BEGIN BALDWIN_17
   SAY ~The revelation of Baldwin's transgressions shattered the guild's confidence in him. The council, faced with no alternative, decreed his banishment, a sentence that cast him into the unforgiving realm beyond the guild's sanctuary.~
       ++ ~What happened after his banishment?~ GOTO BALDWIN_18
       ++ ~I'd like to ask you about something else.~ GOTO KERY_2
END

IF ~~ THEN BEGIN BALDWIN_18
   SAY ~After the decree of banishment severed Baldwin's ties with the Shadow Thieves, a bitter fire smoldered within him. He sought revenge on the Shadow Thieves, his heart hardened by the sting of betrayal.~ IF ~~ THEN GOTO BALDWIN_19
END

IF ~~ THEN BEGIN BALDWIN_19
   SAY ~Fuelled by a vengeful resolve, he struck back, exacting retribution with calculated precision. In shadows deep, he silenced those who had betrayed him, sparing only his brother, Richard.~ IF ~~ THEN GOTO BALDWIN_20
END

IF ~~ THEN BEGIN BALDWIN_20
   SAY ~Baldwin, now a pariah, set forth on a solitary journey, fueled by a singular purpose, to seize the Kerykeion and claim the power that had consumed his every waking thought.~ IF ~~ THEN GOTO BALDWIN_21
END

IF ~~ THEN BEGIN BALDWIN_21
   SAY ~With stolen documents clutched in his hand, Baldwin fled north to Beregost, a town cloaked in wilderness and intrigue.~ IF ~~ THEN GOTO BALDWIN_22
END

IF ~~ THEN BEGIN BALDWIN_22
   SAY ~Here, he forged the Gorgon's Eye, a sanctuary for outcasts, a refuge for those drawn to the allure of forbidden power. Its name echoes the ancient staff's legend, a constant reminder of his unyielding pursuit.~ IF ~~ THEN GOTO BALDWIN_23
END

IF ~~ THEN BEGIN BALDWIN_23
   SAY ~Baldwin's purpose was clear. Relentlessly track the path to the Kerykeion, with the shadows of Beregost concealing his unwavering resolve.~
       ++ ~What can you tell me about Baldwin's time in the Shadow Thieves?~ GOTO BALDWIN_24
       ++ ~Can you tell me anything more about his brother, Richard?~ GOTO BALDWIN_28
       ++ ~I'd like to ask you about something else.~ GOTO KERY_2
END

IF ~~ THEN BEGIN BALDWIN_24
   SAY ~During the intervening years between Baldwin's induction into the Shadow Thieves and his eventual banishment, he ascended through the ranks with calculated finesse.~ IF ~~ THEN GOTO BALDWIN_24.5
END

IF ~~ THEN BEGIN BALDWIN_24.5
   SAY ~His reputation as a skilled rogue with a penchant for command solidified, particularly within the Athkatla branch in Amn.~ IF ~~ THEN GOTO BALDWIN_25
END

IF ~~ THEN BEGIN BALDWIN_25
   SAY ~There, he operated directly under the formidable Renal Bloodscalp, a name synonymous with notoriety and power.~ IF ~~ THEN GOTO BALDWIN_25.5
END

IF ~~ THEN BEGIN BALDWIN_25.5
   SAY ~Baldwin's tenure was marked by a duality of loyalty to the guild and an insatiable hunger for arcane knowledge, both fueled by his ambitions.~ IF ~~ THEN GOTO BALDWIN_26
END

IF ~~ THEN BEGIN BALDWIN_26
   SAY ~He executed missions with surgical precision, earning respect and trust among his peers. Yet, in the shadows, he was consumed by his relentless quest for the Kerykeion, his obsession a carefully guarded secret.~ IF ~~ THEN GOTO BALDWIN_27
END

IF ~~ THEN BEGIN BALDWIN_27
   SAY ~It was this very duality that would eventually fracture his allegiance, culminating in a fateful clash of loyalties that led to his expulsion from the guild he once called home.~
       ++ ~Can you tell me anything more about his brother, Richard?~ GOTO BALDWIN_28
       ++ ~How did Baldwin lose the trust of the Shadow Thieves?~ GOTO BALDWIN_12
       ++ ~I'd like to ask you about something else.~ GOTO KERY_2
END

IF ~~ THEN BEGIN BALDWIN_28
   SAY ~Richard was a figure of exceptional acumen and finesse within the realm of rogues. His intellect was formidable, matched only by his precise execution of covert operations.~ IF ~~ THEN GOTO BALDWIN_29
END

IF ~~ THEN BEGIN BALDWIN_29
   SAY ~Richard's approach was marked by a directness that brooked no deviation, and an unyielding resolve that garnered him respect. However, in the shadow of his younger sibling, Richard's aspirations paled in comparison.~ IF ~~ THEN GOTO BALDWIN_30
END

IF ~~ THEN BEGIN BALDWIN_30
   SAY ~While he excelled in the craft of thievery and subterfuge, he lacked the same fervent ambition and relentless drive that defined Baldwin's pursuit of power and knowledge.~ IF ~~ THEN GOTO BALDWIN_31
END

IF ~~ THEN BEGIN BALDWIN_31
   SAY ~This divergence in their pursuits, while it set them on separate paths, also served to underline the unique strengths and weaknesses that each brought to their chosen trades.~
       ++ ~What can you tell me about Baldwin's time in the Shadow Thieves?~ GOTO BALDWIN_21
       ++ ~How did Baldwin lose the trust of the Shadow Thieves?~ GOTO BALDWIN_12
       ++ ~I'd like to ask you about something else.~ GOTO KERY_2
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
   AddJournalEntry(@220,QUEST_DONE)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN FINAL_10
   SAY ~It is regrettable, yet I sense the pull of a potent destiny guiding you towards a significant journey. I bid you farewell, and remember that the guild's facilities shall remain at your disposal.~
IF ~~ THEN DO ~
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
   SAY ~Your next officer is Liedel. She oversees all the bounty hunting and assassination contracts that we receive~ IF ~~ THEN GOTO GUILD_12
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
   SAY ~Your last officer that needs direction is Madam Meredia, who is in charge of our courtesan wing.~ IF ~~ THEN GOTO GUILD_19
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




