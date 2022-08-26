BEGIN h_saradd

IF ~Global("h_Saradin","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Sorry, but I haven't the time nor desire to speak with you at present.~ IF ~~ THEN EXIT
END

IF ~Global("h_Saradin","GLOBAL",1)~ THEN BEGIN 1
   SAY ~Yes? What is it I can help you with?~
       ++ ~I'm interested in learning about the Kerykeion, can you tell me anything about it?~ GOTO KERY_2
       ++ ~How did Baldwin become known as "The Butcher"?~ GOTO BUTCHER_2
       ++ ~Nothing at the moment.~ EXIT
END

IF ~~ THEN BEGIN KERY_2
   SAY ~I can tell you many things. What is it that you wish to know?~
       ++ ~Why does Baldwin seem so interested in obtaining the Kerykeion?~ GOTO KERY_3
       ++ ~What types of powers does the staff possess?~ GOTO KERY_8
       ++ ~I would like to know more about its history.~ GOTO KERY_10
       ++ ~That is all for now, I must be going.~ EXIT
END

IF ~~ THEN BEGIN KERY_3
   SAY ~Baldwin had first learned of the staff from his elder brother Richard, who would fill his ears with tales of its past and hopes for its future.~ IF ~~ THEN GOTO KERY_4
END

IF ~~ THEN BEGIN KERY_4
   SAY ~Over time his fascination with the staff grew rapidly. He became obsessed, spending all his time buried in research. It eventually led to his banishment from the Shadow Thieves.~
       ++ ~What exactly did they banish him for?~ GOTO KERY_5
       ++ ~What can you tell me about Baldwin's time in the Shadow Thieves?~ GOTO KERY_6
       ++ ~Can you tell me anything more about his brother, Richard?~ GOTO KERY_7
       ++ ~I'd like to ask you about something else.~ GOTO KERY_2
END

IF ~~ THEN BEGIN KERY_5
   SAY ~He would repeatedly defer, ignore, and disobey his orders in favor of his personal investigations. He was eventually turned in by his own brother after an unsuccessful attempt to steal restricted documents from another officer's personal vault.~
       ++ ~What can you tell me about Baldwin's time in the Shadow Thieves?~ GOTO KERY_6
       ++ ~Can you tell me anything more about his brother, Richard?~ GOTO KERY_7
       ++ ~I'd like to ask you about something else.~ GOTO KERY_2
END

IF ~~ THEN BEGIN KERY_6
   SAY ~He was a respected rogue with some command in the Shadow Thieves, Athkatla branch in Amn, working directly under his more renown superior, Renal Bloodscalp.~
       ++ ~What exactly did they banish him for?~ GOTO KERY_5
       ++ ~Can you tell me anything more about his brother, Richard?~ GOTO KERY_7
       ++ ~I'd like to ask you about something else.~ GOTO KERY_2
END

IF ~~ THEN BEGIN KERY_7
   SAY ~I know he was an exceptional rogue in his own right. He was very direct and unwavering in his actions, yet he lacked the ambition and initiative that Baldwin posessed.~
       ++ ~What exactly did they banish him for?~ GOTO KERY_5
       ++ ~What can you tell me about Baldwin's time in the Shadow Thieves?~ GOTO KERY_6
       ++ ~I'd like to ask you about something else.~ GOTO KERY_2
END

IF ~~ THEN BEGIN KERY_8
   SAY ~The Kerykeion was a great staff of power most notably known for its ability to petrify any who met its gaze. It's also documented to be capable of summoning an endless swarm of serpents to assist its wielder.~
       ++ ~Is there anything else that it can do?~ GOTO KERY_9
       ++ ~I'd like to ask you about something else.~ GOTO KERY_2
END

IF ~~ THEN BEGIN KERY_9
   SAY ~There is one scroll that suggests it has the ability to unlock a mage's limitations on spellcasting, allowing spells to have negligible interference with ones aura.~
       ++ ~I'd like to ask you about something else.~ GOTO KERY_2
END

IF ~~ THEN BEGIN KERY_10
   SAY ~The Kerykeion has a very muddled past and is tough to piece together efficiently, due to many contradicting excerpts. There are only a few things of certainty.~ IF ~~ THEN GOTO KERY_11
END

IF ~~ THEN BEGIN KERY_11
   SAY ~Originally, it bore a different name, Caduceus, and was created by a demon residing in the Underworld. He eventually fell prey to the two immortal and voracious, snake-like beings known as the Gorgon sisters.~ IF ~~ THEN GOTO KERY_12
END

IF ~~ THEN BEGIN KERY_12
   SAY ~However, they also had a mortal half-sister, Medusa, who was jealous of their immortality. She took revenge against them by stealing the staff to use in tandem with her dark magic. She was able to trap their essence within it, creating the Kerykeion and cursing their infinite existence.~
        ++ ~In what ways did that change the staff?~ GOTO KERY_13
        ++ ~What happened after that?~ GOTO KERY_14
        ++ ~I'd like to ask you about something else.~ GOTO KERY_2
END

IF ~~ THEN BEGIN KERY_13
   SAY ~The curse transformed her sisters into petrified serpents that now entwine the staff. It endlessly feeds off their power, growing exceedingly stronger as time goes on.~
       ++ ~What happened after that?~ GOTO KERY_14
       ++ ~I'd like to ask you about something else.~ GOTO KERY_2
END

IF ~~ THEN BEGIN KERY_14
   SAY ~Eons after Medusa's death, the Kerykeion was passed around many lesser gods until arriving here on Toril at the dawn of the Time of Troubles.~ IF ~~ THEN GOTO KERY_15
END

IF ~~ THEN BEGIN KERY_15
   SAY ~Accounts of its use and whereabouts differ to a large extent, but all conclude that it was destroyed in some type of large battle. We believe the fragments eventually became scattered around different regions of the Sword Coast.~
       ++ ~I'd like to ask you about something else.~ GOTO KERY_2
END

IF ~~ THEN BEGIN BUTCHER_2
   SAY ~Ah yes, I suppose a name like that does bring out ones curious nature.~ IF ~~ THEN GOTO BUTCHER_3
END

IF ~~ THEN BEGIN BUTCHER_3
   SAY ~It is a title he picked up following his departure from the Shadow Thieves, some years ago.~ IF ~~ THEN GOTO BUTCHER_4
END

IF ~~ THEN BEGIN BUTCHER_4
   SAY ~They left him with nothing, not a single coin nor weapon. He was lost for a while, living in the slums and eating leftover scraps from the inns.~ IF ~~ THEN GOTO BUTCHER_5
END

IF ~~ THEN BEGIN BUTCHER_5
   SAY ~The only thing keeping him going was the thought of revenge on the Shadow Thieves for casting him out.~ IF ~~ THEN GOTO BUTCHER_6
END

IF ~~ THEN BEGIN BUTCHER_6
   SAY ~He began to disrupt their trade. He knew their movements and snared their routes like a rabbit's trail. Hunting them down to kill and steal their supplies.~ IF ~~ THEN GOTO BUTCHER_7
END

IF ~~ THEN BEGIN BUTCHER_7
   SAY ~Some say he had gone mad in his isolation, making him ruthless with his killings. Dismembering their limbs and displaying them as some kind of trophy to be admired.~ IF ~~ THEN GOTO BUTCHER_8
END

IF ~~ THEN BEGIN BUTCHER_8
   SAY ~Countless assassins were sent to stop him, yet they all ended up the same, dead and butchered.~ IF ~~ THEN GOTO BUTCHER_9
END

IF ~~ THEN BEGIN BUTCHER_9
   SAY ~The rest of the tale I do not know. He eventually made his way to Beregost, and started the Gorgon's Eye.~
       ++ ~What do you think made him decide to come north?~ GOTO BUTCHER_10
       ++ ~I'd like to ask you about something else.~ GOTO 1
END

IF ~~ THEN BEGIN BUTCHER_10
   SAY ~I assume something reignited his passion for the Kerykeion. Maybe a clue, or a dream. Or maybe it was the thought of using it for revenge against the Shadow Thieves.~
       ++ ~I'd like to ask you about something else.~ GOTO 1
END

IF ~Global("h_Saradin","GLOBAL",3)~ THEN BEGIN FINAL_1
   SAY ~It seems Baldwin lacked the mental and physical fortitude to properly wield the Kerykeion, resulting in his essence becoming possessed by the remains of the Gorgon Sisters.~ IF ~~ THEN GOTO FINAL_2
END

IF ~~ THEN BEGIN FINAL_2
   SAY ~This was a rather unfortunate event, but fascinating nonetheless. A pity about the staff, but the piece you recieved does appear authentic.~ IF ~~ THEN GOTO FINAL_3
END

IF ~~ THEN BEGIN FINAL_3
   SAY ~Return to the guild and bring it to Rhade. He may be able to tap into its power and make use of it.~ IF ~~ THEN GOTO FINAL_4
END

IF ~~ THEN BEGIN FINAL_4
   SAY ~With Baldwin gone the position of guildmaster will also need to be filled. He had plans to leave you in charge of the guild, and I agree with his decision.~ IF ~~ THEN GOTO FINAL_5
END

IF ~~ THEN BEGIN FINAL_5
   SAY ~Aside from your natural leadership abilities, I can sense something... different about your aura. I believe it to be in all of our best interests to place you in charge.~ IF ~~ THEN GOTO FINAL_6
END

IF ~~ THEN BEGIN FINAL_6
   SAY ~The position is yours if you'll have it. What do you say?~
       ++ ~I accept your offer and will assume control of the Gorgon's Eye as its guildmaster.~ GOTO FINAL_7
       ++ ~I accept your offer but I am not sure how active of a leader I can be, as I have a different journey that I must take.~ GOTO FINAL_8
       ++ ~I have no wish to lead the Gorgon's Eye at this time, so I must decline your offer.~ GOTO FINAL_9
END

IF ~~ THEN BEGIN FINAL_7
   SAY ~Excellent. Speak with me upon your return and I will discuss our operations at length.~
IF ~~ THEN DO ~
   SetGlobal("h_Meredia","GLOBAL",1)
   SetGlobal("h_Saradin","GLOBAL",4)
   SetGlobal("h_RigaldoQuest","GLOBAL",18)
   SetGlobal("h_SpawnAriosh","GLOBAL",5)
   SetGlobal("h_LiedelQuest","GLOBAL",5)
   AddJournalEntry(@220,QUEST_DONE)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN FINAL_8
   SAY ~Not to worry, the guild is fairly self-sufficient. Speak with me upon your return and I will discuss our operations at length.~
IF ~~ THEN DO ~
   SetGlobal("h_Meredia","GLOBAL",1)
   SetGlobal("h_Saradin","GLOBAL",4)
   SetGlobal("h_RigaldoQuest","GLOBAL",18)
   SetGlobal("h_SpawnAriosh","GLOBAL",5)
   SetGlobal("h_LiedelQuest","GLOBAL",5)
   AddJournalEntry(@220,QUEST_DONE)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN FINAL_9
   SAY ~That is unfortunate, but I sense you have a rather strong destiny leading you towards an important journey. I will say farewell then, and know that the guilds facilities shall remain open to you.~
IF ~~ THEN DO ~
   AddJournalEntry(@221,QUEST_DONE)
   EscapeArea()~ EXIT
END

IF ~Global("h_Saradin","GLOBAL",4)~ THEN BEGIN GUILD_0
   SAY ~Welcome back, Mifune. If you have the time I'd like to go over your new responsibilities as guildmaster.~
       ++ ~Yes, I am ready to begin directing the movements of our guild.~ GOTO GUILD_1
       ++ ~I have a few other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN GUILD_1
   SAY ~I will go through your officers one-by-one and you can inform me of any adjustments you wish to make regarding their activities.~ IF ~~ THEN GOTO GUILD_2
END

IF ~~ THEN BEGIN GUILD_2
   SAY ~Rigaldo is in charge of all our general thieving activities. This includes pickpocketing, mugging, extortion, blackmail, break-ins and safe-cracking.~ IF ~~ THEN GOTO GUILD_3
END

IF ~~ THEN BEGIN GUILD_3
   SAY ~Would you like his thieves to focus more on upper class targets where both the risk and reward are higher, or to have them stick to the general public where it is safer?~
       ++ ~Go for the upper class targets. They will have more valuable items that will outweigh the risk.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_4
       ++ ~Stick with the general public. There is a lot more marks and less chance of getting caught.~ GOTO GUILD_4
END

IF ~~ THEN BEGIN GUILD_4
   SAY ~Do you want them to forcefully mug as many targets as they can, or spend more time hidden in stealth waiting for the right moment to strike?~
       ++ ~Have them hit as many targets as possible, even if it means using force.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_5
       ++ ~Better to have them stick to the shadows waiting for safer opportunities.~ GOTO GUILD_5
END

IF ~~ THEN BEGIN GUILD_5
   SAY ~Regarding our protection racket, should we stick to the usual threats and blackmail, or use more physical violence if they are unwilling to cooperate?~
       ++ ~Use violence if necessary. Fear will keep everyone in line.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_6
       ++ ~I don't want people getting seriously hurt. Just stick to using blackmail.~ GOTO GUILD_6
END

IF ~~ THEN BEGIN GUILD_6
   SAY ~Alright, that's it for Rigaldo. These instructions seem in line with his thieves abilities and I foresee everything working out fine.~ IF ~~ THEN GOTO GUILD_7
END

IF ~~ THEN BEGIN GUILD_7
   SAY ~Next up is Zeda, our resident smuggler.~ IF ~~ THEN GOTO GUILD_8
END

IF ~~ THEN BEGIN GUILD_8
   SAY ~She mostly operates between Amn and Baldur's Gate to avoid conflict with the other guilds. However, she could further branch out and expand her activities.~
       ++ ~Keep her operating where she is. I don't want to instigate any more trouble between guilds.~ GOTO GUILD_9
       ++ ~Have her expand her operations farther out. The risk is worth it to gain more opportunity.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_9
END

IF ~~ THEN BEGIN GUILD_9
   SAY ~Black lotus has been her most profitable venture since obtaining our new supplier. However, it is much riskier to transport and carries higher penalties than her usual goods do.~ IF ~~ THEN GOTO GUILD_9.5
END

IF ~~ THEN BEGIN GUILD_9.5
   SAY ~Do you want her to continue increasing her stock in lotus, or begin to temper her dealings with safer, less valuable items.~
       ++ ~Have her continue focusing on the black lotus. It's higher profits should make up for any bribes or bail we would have to pay.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_10
       ++ ~Have her shift back more to her usual goods. I don't want her taking any unnecessary risk.~ GOTO GUILD_10
END

IF ~~ THEN BEGIN GUILD_10
   SAY ~Alright, I believe she will be pleased with this set of instructions.~ IF ~~ THEN GOTO GUILD_11
END

IF ~~ THEN BEGIN GUILD_11
   SAY ~Your next officer is Liedel. She is in charge of all the bounty hunting and assassination contracts that we receive.~ IF ~~ THEN GOTO GUILD_12
END

IF ~~ THEN BEGIN GUILD_12
   SAY ~There isn't much to direct here as she is fairly self sufficient. You could have her cease assassination work altogether and focus only on live bounties, but doing would create a noticable decrease in our profits.~
       ++ ~Have her continue the way she is then. She seems to have things under control.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_13
       ++ ~I don't want innocent people being killed. Have her stick to the live bounties from now on.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",-2)~ GOTO GUILD_13
END

IF ~~ THEN BEGIN GUILD_13
   SAY ~I will let her know.~ IF ~~ THEN GOTO GUILD_14
END

IF ~~ THEN BEGIN GUILD_14
   SAY ~Next up is Gilbald and his gamesmen.~ IF ~~ THEN GOTO GUILD_15
END

IF ~~ THEN BEGIN GUILD_15
   SAY ~They currently have their games rigged to payout 20% of their profits. If you increase the payout, more players will likely come to gamble, but less coin will be gained from each.~ IF ~~ THEN GOTO GUILD_16
END

IF ~~ THEN BEGIN GUILD_16
   SAY ~If you decrease the payout, less players will come to gamble, but the ones who do will end up losing more. The difficulty lies in finding the right balance between the two.~
       ++ ~Keep the payout at 20%. It seems to be working fine as is.~ GOTO GUILD_17
       ++ ~Increase the payout to 30%. Having more players coming in should be more profitable in the long run.~ GOTO GUILD_17
       ++ ~Decrease the payout to 10%. I want to milk as much money from those suckers as I can.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_17
END

IF ~~ THEN BEGIN GUILD_17
   SAY ~Alright, I will let Gilbald know of your decision.~ IF ~~ THEN GOTO GUILD_18
END

IF ~~ THEN BEGIN GUILD_18
   SAY ~Your last officer that needs direction is, Madam Meredia, who is in charge of our courtesan wing.~ IF ~~ THEN GOTO GUILD_19
END

IF ~~ THEN BEGIN GUILD_19
   SAY ~If we increase her rates it will attract less patrons overall, but the ones that do come would be wealthy and clean.~ IF ~~ THEN GOTO GUILD_20
END

IF ~~ THEN BEGIN GUILD_20
   SAY ~If we decrease her rates, more clients will come, but they will bring a higher risk of violence and disease. This could cause her staff to be unable to work for longer periods of time.~
       ++ ~No need to change their rates then. Keep them as they are now.~ GOTO GUILD_21
       ++ ~Increase her rates. I wish them to have better quality clients who pose less risk.~ GOTO GUILD_21
       ++ ~I want to decrease her rates so we'll have more paying clients coming in.~ DO ~ IncrementGlobal("h_GuildRisk","GLOBAL",1)~ GOTO GUILD_21
END

IF ~~ THEN BEGIN GUILD_21
   SAY ~Alright, that is all I have for you at this time. I will make the rounds every 7 days to collect our profits. Come see me then and I will let you know how things faired.~
IF ~~ THEN DO ~
   SetGlobal("h_Saradin","GLOBAL",5)
   SetGlobalTimer("h_GuildPayout","GLOBAL",SEVEN_DAYS)~ EXIT
END

IF ~Global("h_Saradin","GLOBAL",5)~ THEN BEGIN PROFIT_0
   SAY ~There is still some time left before our reports are in. I will keep you updated if anything else requires your attention in the meantime.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~GlobalTimerExpired("h_GuildPayout","GLOBAL")~ THEN BEGIN PAY_0
   SAY ~Welcome back, <CHARNAME>. I've just finished making the rounds and all of your officers reports are in.~ IF ~~ THEN GOTO PAY_1
END

IF ~~ THEN BEGIN PAY_1
   SAY ~Based off your instructions and our guild expenses, we have netted a nice sum of profits.~
       +~GlobalLT("h_GuildRisk","GLOBAL",3)~+ ~How much will I be receiving?~ GOTO PAY_2
       +~GlobalLT("h_GuildRisk","GLOBAL",8) GlobalGT("h_GuildRisk","GLOBAL",2)~+ ~How much will I be receiving?~ GOTO PAY_3
       +~Global("h_GuildRisk","GLOBAL",8)~+ ~How much will I be receiving?~ GOTO PAY_4
END

IF ~~ THEN BEGIN PAY_2
   SAY ~Your guild is operating at a low level of risk and has managed to bring in a total of 750 gold coins. Would you like to make any changes to our activites?~
       ++ ~I will keep them as they are for now.~ DO ~ GiveGoldForce(750)~ GOTO PAY_5
       ++ ~I'd like to change their set of instructions.~ DO ~ SetGlobal("h_GuildRisk","GLOBAL",0)~ GOTO GUILD_1
END

IF ~~ THEN BEGIN PAY_3
   SAY ~Your guild is operating at a moderate level of risk and has managed to bring in a total of 1500 gold coins. Would you like to make any changes to our activites?~
       ++ ~I will keep them as they are for now.~ DO ~ GiveGoldForce(1500)~ GOTO PAY_5
       ++ ~I'd like to change their set of instructions.~ DO ~ SetGlobal("h_GuildRisk","GLOBAL",0) GiveGoldForce(1500)~ GOTO GUILD_1
END

IF ~~ THEN BEGIN PAY_4
   SAY ~Your guild is operating at a high level of risk and has managed to bring in a total of 2000 gold coins. Would you like to make any changes to our activites?~
       ++ ~I will keep them as they are for now.~ DO ~ GiveGoldForce(2000)~ GOTO PAY_5
       ++ ~I'd like to change their set of instructions.~ DO ~ SetGlobal("h_GuildRisk","GLOBAL",0) GiveGoldForce(2000)~ GOTO GUILD_1
END

IF ~~ THEN BEGIN PAY_5
   SAY ~Very good. Report back to me in one week's time.~
IF ~~ THEN DO ~
   SetGlobalTimer("h_GuildPayout","GLOBAL",SEVEN_DAYS)~ EXIT
END




