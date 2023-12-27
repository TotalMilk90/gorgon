BEGIN h_rigald

IF ~Global("h_RigaldoQuest","GLOBAL",0) NumTimesTalkedTo(0)~ THEN BEGIN 0
   SAY ~Stumbling into the heart of the Gorgon's Eye is no mere accident. Few find us without intent, and even fewer leave without consequence.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~But let's not dally on pleasantries or warnings. You're either here with a purpose or lost beyond your depth. State your business, or find your exit swiftly.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~The shadows here are less forgiving to those who linger without cause.~
       ++ ~I find myself here by chance. What is the significance of this place?~ GOTO 3
       ++ ~I'm interested in joining your operation. How could I go about doing that?~ GOTO 6
       ++ ~I think I'll be leaving now.~ GOTO 10
END

IF ~~ THEN BEGIN 3
   SAY ~Ah, chance is but a mask fate wears when it wishes to remain unseen. Intriguing that it led you here, to the heart of whispers and shadows.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~We're an organization that thrives in the currency of secrets and earned trust, not the idle curiosity of those who stumble upon our doorstep.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~Perhaps, in time, the significance you seek might reveal itself, but for now, it remains shrouded, as do the deepest truths of our world.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
   SAY ~Ah, a bold aspiration to mingle with the shadows of the Gorgon's Eye. Your audacity is as commendable as it is foolhardy.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~Baldwin, the guildmaster, is the mind that discerns such matters. If it's a place among us you seek, he's the one you need to convince.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~But tread carefully, for the path to our inner circle is lined with more than mere shadows. It's a labyrinth where only the astute and the cunning find their way.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Let this be your first lesson: in our world, every step is a gamble, and not everyone emerges from the shadows unscathed.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9.5
   SAY ~A wise choice. Let this encounter be a shadowed memory, for our secrets have a way of silencing those who speak too freely.~
IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",0) NumTimesTalkedToGT(0)~ THEN BEGIN 10
  SAY ~Exiting gracefully is often the wisest choice in a place like this. The shadows here have their own way of complicating matters, and you may not like the outcome.~
IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",1)~ THEN BEGIN 10.5
   SAY ~Welcome to the shadowed embrace of the Gorgon's Eye, friend. Baldwin has spoken, and you have been deemed worthy to embrace our trials.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~I am Rigaldo, master of intrigue and subterfuge, and my role within this guild is to guide and assess the potential of those who dare to enter our realm.~ IF ~~ THEN GOTO 11.5
END

IF ~~ THEN BEGIN 11.5
   SAY ~My experience in the world of thievery and covert operations spans countless years, and I know these treacherous streets like the veins on my own hand.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~It is my duty to evaluate your skills, your cunning, and your ability to navigate the intricate shadows that define our existence.~ IF ~~ THEN GOTO 12.5
END

IF ~~ THEN BEGIN 12.5
   SAY ~As we embark on your trials, remember that every step you take may bring you closer to the heart of our secrets, or plunge you further into darkness.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~But heed my words, for I do not suffer the unworthy lightly.~ IF ~~ THEN GOTO 13.5
END

IF ~~ THEN BEGIN 13.5
   SAY ~The Gorgon's Eye thrives on discretion. Your resolve and resourcefulness will be tested, unveiling facets of this world that remain concealed from the uninitiated.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~And remember, we trade in hidden truths, not idle chatter. Ask your questions, and let us proceed with your trials.~
       ++ ~Why do you and Baldwin have the appearance of Shadow Thieves?~ GOTO 15
       ++ ~Can you tell me anything about the other guild members I might be working with?~ GOTO 18
       ++ ~What are the trials like, and how can I best prepare for them?~ GOTO 27
       ++ ~I'm ready to begin. What is my first mission?~ GOTO 34
END

IF ~~ THEN BEGIN 15
   SAY ~And how, pray tell, have you become privy to the visage of a Shadow Thief?~
       ++ ~I've seen their image in various tomes and scrolls when growing up in Candlekeep.~ GOTO 16
       ++ ~I grew up in Candlekeep, where its walls of knowledge provided me with insights on various lore.~ GOTO 16
       ++ ~I've heard about them through tales and stories, passed down during my time in Candlekeep.~ GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~I have my doubts if any book could yield reliable information of such a secretive organization. Yet, if such knowledge exists, it would indeed be nestled among the hallowed halls of Candlekeep.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~You are perceptive, however. Baldwin and I once bore the mantle of the Shadow Thieves, but our affiliations have long since diverged.~
       ++ ~Can you tell me anything about the other guild members I might be working with?~ GOTO 18
       ++ ~What are the trials like, and how can I best prepare for them?~ GOTO 27
       ++ ~I'm ready to begin. What is my first mission?~ GOTO 34
END

IF ~~ THEN BEGIN 18
   SAY ~Very well, let me introduce you to the key players of our guild. Listen closely, as it will not be repeated.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~First, there's Ariosh, master of the alley. He's the eyes and ears in Beregost. If someone's coming or going, he knows, and more importantly, he knows what they carry with them.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~He's also our mediator with the City Watch, smoothing things over, and handling any misunderstandings that may arise.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~Rhade is our blacksmith and fence. His hands craft more than metal, and his connections delve deep into the black market's underbelly. If you need rare goods, he's your shadow in the forge.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~Liedel, the mistress of bounties, a shadow in the night. She handles the contracts for hunting and killing. Beware her charm, it's as sharp as her blade.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~Zeda, the ghost of smuggling, a wraith in the shadows. If trouble's brewing, her nose twitches first. She's also a priestess, her healing hands able to mend more than just physical wounds.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~And finally, Baldwin, our guildmaster. His determination and ambition are unmatched, as ruthless as he is resourceful.~ IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~He carved this guild from the void, shaped it with bare hands and iron will. Cross him at your peril.~ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY ~These are our shadows, our silent movers. Know them, but never fully. In our world, secrets are currency, and trust is earned in whispers and deeds.~
       ++ ~Why do you and Baldwin have the appearance of Shadow Thieves?~ GOTO 15
       ++ ~What are the trials like, and how can I best prepare for them?~ GOTO 27
       ++ ~I'm ready to begin. What is my first mission?~ GOTO 34
END

IF ~~ THEN BEGIN 27
   SAY ~They are not for the faint of heart, nor the clumsy of hand. You'll be tested on the core arts of our trade. Expect challenges that will probe the depth of your cunning and skill.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY ~For stealth, you must move like a ghost, make no more sound than a breath. The shadows should be your cloak, and silence, your ally. Practice patience in your steps, secrecy in your movements.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~In the art of theft, it's about finesse and timing. Watch, wait, and strike with precision. You must learn to read people, their habits, distractions. Your touch should be as light as a whisper.~ IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY ~Safe-cracking will demand precision and a keen eye. Feel their secrets, listen to their whispers. Familiarize yourself with various locks and tools. Patience is your ally.~ IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY ~And then, there's the art of persuasion. Words are your mask, your dagger. Know your mark, their desires and fears.~ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~Convincing a target requires more than just silver-tongued speech, it demands an understanding of the human psyche.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY ~So, sharpen your skills, refine your senses. These trials aren't just tests; they're your initiation into the true art of thievery.~
       ++ ~Why do you and Baldwin have the appearance of Shadow Thieves?~ GOTO 15
       ++ ~Can you tell me anything about the other guild members I might be working with?~ GOTO 18
       ++ ~I'm ready to begin. What is my first mission?~ GOTO 34
END

IF ~~ THEN BEGIN 34  
   SAY ~Alright, you're eager to start, I see. Very well, I've tailored a task to test the stealth of your step and the deftness of your fingers.~ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
   SAY ~It's a game of shadows, where your sleight of hand and ability to move unseen will be your ticket to success.~ IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
   SAY ~You see, there's a fence passing through our town, goes by the name 'Zieke'. A slick character, with a real nice sparkler on him, a diamond from Waterdeep. It's your job to make it ours.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
   SAY ~Zieke's on the move, planning to meet a buyer at the carnival down south. He won't be lingering, so timing is key.~ IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY ~He's currently holed up at Feldpost's Inn, a fortress of his own making, surrounded by his loyal guards. They're like a pack of wolves, sharp and watchful, circling his room.~ IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
   SAY ~They keep a tight seal on his privacy, eyes peeled for any unwanted visitors. Zieke's up there now, cloistered away with that diamond, thinking he's untouchable.~
       ++ ~What can you tell me about these guards? Any details I should know about?~ GOTO 40
       ++ ~Who exactly is Zieke? What's his demeanor, any habits or quirks that I can use to my advantage?~ GOTO 45
       ++ ~How long is he planning to stay in town? Do we have a window of opportunity, or is this a race against time?~ GOTO 49
       ++ ~I'll get the diamond. You'll hear from me when the job's done.~ GOTO 51
END

IF ~~ THEN BEGIN 40
   SAY ~They're swarming the place. We've seen them at the bar, whispering over their ales. Outside, eyes sharp, keeping a tight watch on the door like hawks.~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
   SAY ~They're in the halls too, patrolling like sentinels. Their numbers make them impossible to miss, so use that to your advantage.~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
   SAY ~But don't underestimate the challenge. You'll need to slip past them, silent as a ghost. One wrong move, one shifty glance, and you'll light up like a beacon.~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
   SAY ~If they catch a whiff of something off, the whole operation's blown. Consider grabbing a little something from Rhade. His tools have a way of persuading things to go quiet, if you catch my drift.~ IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
   SAY ~But don't get too carried away. For this job, it's best to keep things quiet, leave no ripples.~
       ++ ~Who exactly is Zieke? What's his demeanor, any habits or quirks that I can use to my advantage?~ GOTO 45
       ++ ~How long is he planning to stay in town? Do we have a window of opportunity, or is this a race against time?~ GOTO 49
       ++ ~I'll get the diamond. You'll hear from me when the job's done.~ GOTO 51
END

IF ~~ THEN BEGIN 45
   SAY ~Inquisitive, aren't we? Good, intelligence is key in our line of work. Zieke, he's a peculiar one. A renowned fence from Waterdeep, with a reputation as grand as his wares.~ IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
   SAY ~The man's got style, flair, but don't let that fool you. Underneath that rogue's charm lies a mind sharp as a dagger and twice as dangerous.~ IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
   SAY ~However, he's paranoid, obsessed with privacy. Doesn't even trust his own guards in his room. Use that to your advantage. That's your in, an angle you can exploit.~ IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
   SAY ~Sneak in while he's wrapped in his cloak of solitude. Be as quiet as a shadow, as swift as a whisper. Get in, get the diamond, get out. No one's the wiser.~
       ++ ~What can you tell me about these guards? Any details I should know about?~ GOTO 40
       ++ ~How long is he planning to stay in town? Do we have a window of opportunity, or is this a race against time?~ GOTO 49
       ++ ~I'll get the diamond. You'll hear from me when the job's done.~ GOTO 51
END

IF ~~ THEN BEGIN 49
   SAY ~Zieke's stay is fleeting, a shadow at dusk. He'll be gone in a few days, maybe less, and time waits for no one, especially not for us.~ IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
   SAY ~Get in, get the job done, and don't let distractions cost us this opportunity. We need that diamond, and we need it now.~
       ++ ~What can you tell me about these guards? Any details I should know about?~ GOTO 40
       ++ ~Who exactly is Zieke? What's his demeanor, any habits or quirks that I can use to my advantage?~ GOTO 45
       ++ ~I'll get the diamond. You'll hear from me when the job's done.~ GOTO 51
END

IF ~~ THEN BEGIN 51
   SAY ~Let this mission be your canvas, and your skill the brush. Paint us a picture of dexterity and stealth. ~ IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
   SAY ~Move with precision, strike with subtlety. This task is not just about acquiring a gem; it's about proving your worth, asserting your place among us.~ IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
   SAY ~Remember, the night has many eyes and ears. Keep your wits about you, blend with the darkness, and let your actions speak.~ IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
   SAY ~Go now, and I'll await your successful return. Avoid distractions, and focus on the prize. The guild watches, the night whispers, and fortune, my friend, favors the bold.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",2)
   SetGlobal("h_SpawnZieke","GLOBAL",1)
   SetGlobal("h_SpawnZiekeDay","GLOBAL",1)
   SetGlobal("h_SpawnZiekeNight","GLOBAL",1)
   AddJournalEntry(@310,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",2)~ THEN BEGIN 55
   SAY ~Time's a thief that waits for no one. Snatch that jewel swiftly, or our chance will vanish into the night. This isn't a leisurely stroll, it's a race against the sands of time.~
IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc04") Global("h_TalkedToZieke","GLOBAL",0)~ THEN BEGIN 56
   SAY ~I had eyes on you, in case the night turned sour. Now, let's cut through the murk and see where we stand.~ IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
   SAY ~Do you have the prize? Show it here, let's have a look under the light. We need to make sure it's the gem we're after, not some fool's gold.~
       +~PartyHasItem("h_misc04") Global("h_CaughtByDay","GLOBAL",0) Global("h_CaughtByGuards","GLOBAL",0) NumDead("h_ziekec",0)~+ ~Got the diamond right here.~ DO ~AddJournalEntry(@311,QUEST_DONE) AddExperienceParty(600)~ GOTO 61
       +~PartyHasItem("h_misc04") Global("h_CaughtByDay","GLOBAL",1) Global("h_CaughtByGuards","GLOBAL",1) NumDeadGT("h_ziekec",0)~+ ~Got the diamond right here.~ DO ~AddJournalEntry(@311,QUEST_DONE) AddExperienceParty(200)~ GOTO 63
       +~PartyHasItem("h_misc04") Global("h_CaughtByDay","GLOBAL",0) Global("h_CaughtByGuards","GLOBAL",0) NumDeadGT("h_ziekec",0)~+ ~Got the diamond right here.~ DO ~AddJournalEntry(@311,QUEST_DONE) AddExperienceParty(200)~ GOTO 65
END

IF WEIGHT #-1 ~PartyHasItem("h_misc04") Global("h_TalkedToZieke","GLOBAL",1)~ THEN BEGIN 58
   SAY ~What shadow of thought clouded your mind? Approaching Zieke so brazenly? I told you, the man's a fortress of solitude.~ IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
   SAY ~You can't just waltz in expecting him to open his vaults and share a cup of tea. Stealth and subtlety, remember? We're shadows, not clanging cymbals.~ IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
   SAY ~And amidst your daring display, did the gem stay firmly in your grasp, or did it slip through like shadows in the fray? Tell me you didn't scatter our prize to the winds in your hasty retreat.~
       ++ ~Got the gem right here.~ DO ~AddJournalEntry(@311,QUEST_DONE) AddExperienceParty(100)~ GOTO 68
END

IF ~~ THEN BEGIN 61
   SAY ~Now that's the mark of a true shadow. You glided in and out, unseen, unheard, like a whisper in the dark. The diamond's ours, and not a single soul is the wiser.~ IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
   SAY ~That's the art of true thievery. You've shown finesse and cunning that would make the most seasoned rogue nod in respect. Well done.~ IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 63
   SAY ~You've got the gem, but stirred the hornet's nest, didn't you? Remember, in our world, patience is more than a virtue, it's your cloak and dagger.~ IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64
   SAY ~You've shown guts, but finesse is what makes a master thief. Learn to dance with the shadows, blend with them. You'll get there, with time and practice.~ IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 65
   SAY ~Nip the theatrics next time and employ a bit of stealth. Our craft isn't about brute force, it's about moving unseen, striking without a trace.~ IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
   SAY ~Sure, the job's done, but it's a risky game, drawing that much attention. This might bring the City Watch down on our heads.~ IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
   SAY ~Next time, weave through the night quietly. We're in the business of silence, not spectacle.~ IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
   SAY ~Hand over the diamond, then. In exchange, I've got a little something for you. Crafted it with my own hands, a little trinket that's more than meets the eye.~ IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69
   SAY ~You'll find it invaluable in your forthcoming escapades of cunning and thievery. Consider it a token of your initiation, and a tool for the artful deeds yet to come.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",3)
   TakePartyItem("h_misc04")
   DestroyItem("h_misc04")
   GiveItemCreate("h_ring03",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",3)~ THEN BEGIN 70
   SAY ~For your next test, we're delving deeper, beyond the shadows, straight into the lion's den.~ IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71
   SAY ~Gerard Travenhurst, the bloke who considers himself a lord, resides in a grand manor here in Beregost.~ IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
   SAY ~He once sought our 'protection', but now, he's turned his back on us, favoring his hired swords over our subtle safeguarding.~ IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73
   SAY ~Your mission is to infiltrate his manor, a testament to his newfound confidence and misplaced trust.~ IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74
   SAY ~Inside, you'll find a safe, tucked away in the shadows of his upper chambers. It houses his most prized possession, a family heirloom, a necklace, rich in history and value.~ IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75
   SAY ~I want you to crack it open, and claim that necklace. This will test your finesse with locks and your ability to navigate the guarded corridors of his manor.~ IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76
   SAY ~But the task doesn't end there. Once that bauble is in your hands, you'll have a little chat with Gerard himself.~ IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77
   SAY ~Show him the flaw in his armor, the ease with which his treasures can be whisked away. Make it clear that our protection is not a luxury but a necessity.~ IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78
   SAY ~If he's wise, he'll resume his payments. Use that necklace as leverage if needed, a chess piece in your game of smooth persuasion or calculated intimidation.~ IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79
   SAY ~Employ your cunning, your confidence, your words. This is a dance of diplomacy as much as it is a heist.~
       ++ ~What should I do if he refuses to resume his payments, even after I've shown him the vulnerability of his security?~ GOTO 80
       ++ ~After negotiating with Gerard, should I return the necklace to him, or bring it back to the guild's coffers?~ GOTO 82
       ++ ~Will there be any backup or support available in case the situation inside the manor escalates unexpectedly?~ GOTO 84
       ++ ~I believe I've got everything clear. Break in, get the necklace, and negotiate with Gerard. I'm ready to go.~ GOTO 86
END

IF ~~ THEN BEGIN 80
   SAY ~If Travenhurst proves stubborn and refuses to bend, then you'll need to apply a firmer hand. Make an example of his guards if necessary.~ IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81
   SAY ~Remember, in our world, sometimes the subtler arts must give way to more direct methods. It's a harsh lesson, but in our line of work, niceties are often a luxury we can't afford.~
       ++ ~After negotiating with Gerard, should I return the necklace to him, or bring it back to the guild's coffers?~ GOTO 82
       ++ ~Will there be any backup or support available in case the situation inside the manor escalates unexpectedly?~ GOTO 84
       ++ ~I believe I've got everything clear. Break in, get the necklace, and negotiate with Gerard. I'm ready to go.~ GOTO 86
END

IF ~~ THEN BEGIN 82
   SAY ~Should the necklace not be needed as leverage, bring it back to us. I'll ensure you get a fair share of its value.~ IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83
   SAY ~It'll serve as a stark reminder to Gerard of the folly in crossing paths with us. It's not just about the monetary worth, it's about sending a clear message.~
       ++ ~What should I do if he refuses to resume his payments, even after I've shown him the vulnerability of his security?~ GOTO 80
       ++ ~Will there be any backup or support available in case the situation inside the manor escalates unexpectedly?~ GOTO 84
       ++ ~I believe I've got everything clear. Break in, get the necklace, and negotiate with Gerard. I'm ready to go.~ GOTO 86
END

IF ~~ THEN BEGIN 84
   SAY ~I've got eyes on the situation. You're still proving your mettle, so it's crucial we see how you handle things solo.~ IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85
   SAY ~But rest assured, if the waters turn too turbulent, my men will step in. It's a balance, letting you navigate the mission while ensuring the guild's interests aren't compromised.~
       ++ ~What should I do if he refuses to resume his payments, even after I've shown him the vulnerability of his security?~ GOTO 80
       ++ ~After negotiating with Gerard, should I return the necklace to him, or bring it back to the guild's coffers?~ GOTO 82
       ++ ~I believe I've got everything clear. Break in, get the necklace, and negotiate with Gerard. I'm ready to go.~ GOTO 86
END

IF ~~ THEN BEGIN 86
   SAY ~Your clarity and readiness speak well of your potential. Remember, this mission is as much about wits as it is about skill.~ IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87
   SAY ~Infiltrate Travenhurst's manor, secure the necklace, and then, the dance of words with Gerard.~ IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88
   SAY ~It's a delicate symmetry of threat and persuasion, a test of your ability to navigate the murky waters of negotiation. Keep your senses sharp, your mind clearer.~ IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89
   SAY ~Use the shadows as your ally, and let your words be as precise as your lockpicks. This is more than a simple theft, it's a statement, a demonstration of our reach and influence.~ IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90
   SAY ~Return successful, and you've not only secured a valuable asset but also proven your worth to the guild.~ IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91
   SAY ~We're more than just thieves, we're architects of influence and power. Go now, with the stealth of the night and the cunning of a fox. Make us proud.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",4)
   AddJournalEntry(@312,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",4)~ THEN BEGIN 92
   SAY ~You've got a mission at hand, remember? The necklace from Travenhurst's manor won't steal itself. Focus on the task, and only return once you've danced with danger and emerged victorious.~
IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_GerardQuest","GLOBAL",3)~ THEN BEGIN 93
   SAY ~So, tell me about your encounter with Gerard. I trust you've managed to persuade him to resume his contributions to our coffers?~ IF ~~ THEN GOTO 94
END

IF ~~ THEN BEGIN 94
   SAY ~Of course, in the interest of formality, I ask, though you and I both know that my eyes and ears are ever-present.~ IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95
   SAY ~Your actions, your choices on this mission were observed, not to evade your privacy, but to gauge your competence.~ IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96
   SAY ~Now, recount your tale, officially, so we may conclude this trial with the proper decorum befitting the Gorgon's Eye.~
       +~Global("h_GerardStrength","GLOBAL",1)~+ ~I managed to successfully negotiate with Gerard. It took some persuasion, but he saw reason and agreed to resume his payments.~ GOTO 97
       +~Global("h_GerardIntelligence","GLOBAL",1)~+ ~I managed to successfully negotiate with Gerard. It took some persuasion, but he saw reason and agreed to resume his payments.~ GOTO 99
       +~Global("h_GerardWisdom","GLOBAL",1)~+ ~I managed to successfully negotiate with Gerard. It took some persuasion, but he saw reason and agreed to resume his payments.~ GOTO 101
       +~Global("h_GerardCharisma","GLOBAL",1)~+ ~I managed to successfully negotiate with Gerard. It took some persuasion, but he saw reason and agreed to resume his payments.~ GOTO 103
       +~Global("h_GerardFail","GLOBAL",1)~+ ~Negotiations with Gerard broke down. His guards were killed in the confrontation, but it led to him agreeing to resume his payments.~ GOTO 105
END

IF ~~ THEN BEGIN 97
   SAY ~You chose to wield your strength through words, a wise decision. Commanding respect and fear with just your tone and presence is a skill few master.~ IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98
   SAY ~Gerard's compliance, earned through your intimidating persuasion, shows you understand the power of controlled force in negotiation.~ IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 99
   SAY ~Ah, so you used your intellect to outmaneuver Gerard. That's the mark of a true strategist. Confronting a noble with logic and foresight is no small feat.~ IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100
   SAY ~Your ability to think and plan is a valuable asset to the guild. It's always satisfying to see brains triumph over brawn.~ IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 101
   SAY ~Wisdom as your tool of choice, impressive. Convincing Gerard through insight and understanding is a subtle art.~ IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102
   SAY ~It shows depth in your character and an ability to see beyond the immediate. Such qualities are rare and speak volumes of your potential within our ranks.~ IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 103
   SAY ~Charisma, a powerful tool in the right hands, and it seems yours are quite adept.~ IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104
   SAY ~Swinging Gerard with charm and presence is no easy task. It requires a certain finesse, and you've demonstrated that in spades. Your persuasive abilities will serve the guild well.~ IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 105
   SAY ~It's unfortunate that it came down to a deadly confrontation. However, the guild understands that sometimes, such measures are necessary.~ IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 106
   SAY ~You did what you had to do, and Gerard's compliance, albeit forced, is the result we needed.~ IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107
   SAY ~It's a messy solution, but effectiveness in our line of work often requires making the hard choices.~ IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 108
   SAY ~Now, let's discuss the incident at Gerard's manor. I've been informed about your encounter with another player at the safe.~ IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109
   SAY ~You handled it with the efficiency and discretion we value in our guild. Such unexpected complications are part of the job, and you adapted well.~
       +~Global("h_KeptGerardsNecklace","GLOBAL",1)~+ ~He mentioned something about Blackthorn. Is that a name I should know?~ GOTO 110
       +~Global("h_KeptGerardsNecklace","GLOBAL",0)~+ ~He mentioned something about Blackthorn. Is that a name I should know?~ GOTO 111
END

IF ~~ THEN BEGIN 110
   SAY ~Blackthorn? Just a small-time cutthroat trying to stir up trouble. His gang is nothing but a ragtag bunch of misfits, barely noticeable in our world.~ IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 111
   SAY ~Blackthorn? Just a small-time cutthroat trying to stir up trouble. His gang is nothing but a ragtag bunch of misfits, barely noticeable in our world.~ IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 112
   SAY ~But let's turn our attention to Gerard's necklace. It's a significant piece of this puzzle, not just for its value, but for what it represents in our delicate dance of power and influence.~ IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 113
   SAY ~But let's turn our attention to Gerard's necklace. It's a significant piece of this puzzle, not just for its value, but for what it represents in our delicate dance of power and influence.~ IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 114
   SAY ~So, you decided to keep Gerard's necklace. Good, it adds to our coffers and serves as a harsh lesson for Gerard, don't cross the Gorgon's Eye.~ IF ~~ GOTO 115
END

IF ~~ THEN BEGIN 115
   SAY ~But such actions come with their own consequences. It will undoubtedly increase animosity and could escalate tensions. We'll need to be prepared for any repercussions that might follow.~ IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116
   SAY ~Well, hand it over then, the guild will make good use of it. And don't worry, you'll get your fair cut for this job well done.~
       +~PartyHasItem("h_misc05")~+ ~Here's the necklace, exactly as I found it.~ DO ~TakePartyItem("h_misc05") DestroyItem("h_misc05") GiveGoldForce(300)~ GOTO 127
       +~!PartyHasItem("h_misc05")~+ ~I seem to have misplaced it after leaving Gerard's.~ GOTO 119
END

IF ~~ THEN BEGIN 117
   SAY ~I'm aware you returned Gerard's necklace to him. There's merit in that, it eases tension and avoids unnecessary hostility, which can be beneficial in the long run.~ IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118
   SAY ~However, it also means a lost opportunity for profit, and it might have sent a stronger message if we'd kept it as a reminder to Gerard not to cross us.~
       +~!PartyHasItem("h_misc05")~+ ~Gerard seemed to understand the message loud and clear without that extra reminder. It felt like the right call at the time.~ GOTO 122
       +~!PartyHasItem("h_misc05")~+ ~It seemed like returning it would maintain a better balance, avoiding unnecessary complications or backlash.~ GOTO 122
       +~PartyHasItem("h_misc05")~+ ~Actually, I swiped the necklace back off Gerard before leaving. I thought it best to give the impression of returning it, but still keep the upper hand by actually taking it with me.~ DO ~AddExperienceParty(400) TakePartyItem("h_misc05") DestroyItem("h_misc05") GiveGoldForce(300)~ GOTO 124
END

IF ~~ THEN BEGIN 119
   SAY ~You took Gerard's necklace but don't have it with you? That's a careless move, even for a novice. You went through the effort to obtain a valuable asset, only to lose it?~ IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 120
   SAY ~This isn't just about missing out on profits, it's about reputation. We operate in the shadows, and we must always be sharp and precise. Let this be a lesson in attention to detail.~
END

IF ~~ THEN BEGIN 121
   SAY ~Your judgment in the field is crucial, and it's clear you gave this some thought. Avoiding further complications and ensuring a clear message was received by Gerard shows strategic thinking.~ IF ~~ THEN GOTO 122
END

IF ~~ THEN BEGIN 122
   SAY ~It's important to strike a balance between assertion and restraint. Your ability to assess and act accordingly is a valuable trait in this line of work.~ IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 123
   SAY ~Let's hope Gerard continues to see things as clearly as he did in your encounter.~ IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 124
   SAY ~Remarkable... You've truly outdone yourself. To elude even the eyes of my own men, and to outwit Gerard so deftly, that is the art of a true thief!~ IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 125
   SAY ~Such cunning and sleight of hand are rare, even among our ranks. You've demonstrated not just skill, but a deep understanding of the subtleties of our craft.~ IF ~~ THEN GOTO 126
END

IF ~~ THEN BEGIN 126
   SAY ~It's this very prowess in the shadows that defines the essence of the Gorgon's Eye. You've shown a natural instinct for the game we play, and this certainly bodes well for your future here.~ IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 127
   SAY ~With this, you've successfully passed your final trial. Welcome to the fold, <CHARNAME>, you're now an official member of the Gorgon's Eye.~ IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 128
   SAY ~This is not merely a title, but a commitment laden with responsibilities and opportunities. The shadows we operate in are deep and ever-shifting, and your skills will be crucial in navigating them.~ IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129
   SAY ~Ariosh is your contact for work on the streets. His knowledge of the city's underbelly is invaluable for our operations.~ IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 130
   SAY ~For those with a taste for the hunt, Liedel's the one to see for a list of open bounties. She's a resourceful individual with a keen eye for profitable targets.~ IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 131
   SAY ~And of course, the guild is often abuzz with various assignments, each with its own rewards and challenges.~ IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132
   SAY ~Above all, Baldwin has requested your presence. In our hierarchy, the guildmaster's summons is not to be taken lightly.~ IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 133
   SAY ~I suggest you collect your assignments and report in without delay. He'll likely have insights and directives critical to your new role within our ranks.~ IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134
   SAY ~Remember, as part of the Gorgon's Eye, you are now woven into a tapestry of intrigue and power. Every move you make, every treasure you uncover, strengthens our collective dominion.~ IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 135
   SAY ~Your path with us is just beginning, and I have high expectations for your future contributions. The shadows of our guild hold many secrets, and your role in uncovering them is just beginning.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",5)
   SetGlobal("h_BaldwinQuest","GLOBAL",2)
   SetGlobal("h_LiedelQuest","GLOBAL",1)
   SetGlobal("h_ZedaQuest","GLOBAL",2)
   SetGlobal("h_ZedaRiddle","GLOBAL",1)
   SetGlobal("h_GerardQuest","GLOBAL",4)
   AddExperienceParty(400)
   AddJournalEntry(@361,QUEST_DONE)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",5)~ THEN BEGIN 136
   SAY ~Settle your affairs with Baldwin, then we'll discuss the other jobs on the table.~
IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",6)~ THEN BEGIN 137
   SAY ~Ah, you return, seeking yet another chapter in our endless dance with fortune and shadow.~ IF ~~ THEN GOTO 138
END

IF ~~ THEN BEGIN 138
   SAY ~It seems the winds of fate have whispered a peculiar tale from the reaches of Nashkel. A task beckons, one shrouded in mystery and ripe for your unique talents.~ IF ~~ THEN GOTO 139
END

IF ~~ THEN BEGIN 139
   SAY ~In the folds of a farmer's field, a woman named Karp has unearthed relics of arcane nature. Among her discoveries, a pair of rings, destined for a buyer from Ulgoth's Beard, who is en route even now.~ IF ~~ THEN GOTO 140
END

IF ~~ THEN BEGIN 140
   SAY ~Our sources reveal a dual intrigue. Firstly, this Karp eschews the light of legitimate commerce, favoring the murky dealings with fences and shadows of our ilk.~ IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141
   SAY ~Secondly, she veils her finds from the eyes of her spouse, a fact that may prove pivotal in your endeavor. Your journey southward should be marked by discretion and astute judgment.~ IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 142
   SAY ~The path you tread could be one of extortion, wielding the hidden sword of her secret as leverage, or perhaps an artful masquerade, adopting the guise of her expected buyer.~ IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143
   SAY ~Should these avenues falter, the looming shadow of threat may yet yield results. And for those who favor the silent art of thievery, the direct liberation of these items remains an option.~ IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144
   SAY ~Succeed in securing these rings before they vanish into the vastness of the market, and you shall be rewarded.~ IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145
   SAY ~A token of our esteem, one of these rings, shall pass to your keeping. Let it serve as a reminder of our mutually beneficial accord.~
       ++ ~The shadows of secrets hold power. I shall use the veil of her hidden truths as leverage.~ GOTO 146
       ++ ~I'll don the guise of her expected buyer from Ulgoth's Beard, and use my cunning to acquire the rings.~ GOTO 146
       ++ ~Sometimes, fear is the most effective tool. I'll cast a shadow of dread upon her, enough to loosen her grip on those rings.~ GOTO 146
       ++ ~Subtlety and silence shall be my allies. I will relieve her of these rings as a shadow in the night.~ GOTO 146
       ++ ~The path is not yet clear to me. I'll observe and adapt as the situation unfolds, keeping my options open.~ GOTO 146
       ++ ~I will seek a path of understanding and resolution. Dialogue may reveal a solution beneficial to all.~ GOTO 146
END

IF ~~ THEN BEGIN 146
   SAY ~Your path is yours to choose, and the shadows shall bear witness to your journey.~ IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 147
   SAY ~Remember, the essence of our craft lies not in the deed itself, but in its silent execution and the ripples it leaves in its wake.~ IF ~~ THEN GOTO 148
END

IF ~~ THEN BEGIN 148
   SAY ~Let discretion be your guide, and let not the light of day unveil the works done under the cloak of night.~ IF ~~ THEN GOTO 149
END

IF ~~ THEN BEGIN 149
   SAY ~Return with the rings, and your efforts shall be duly rewarded. Tread carefully, for the path you walk is lined with eyes unseen.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",7)
   AddJournalEntry(@315,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",7)~ THEN BEGIN 150
   SAY ~Should your presence here be more than mere chance, and you bear the fruits of your latest endeavor, then speak.~
       +~GlobalLT("h_KarpWorkGood","GLOBAL",3) PartyHasItem("h_misc17")  Global("h_KarpWork","GLOBAL",0)~+ ~Here are the rings, as promised.~ DO ~AddJournalEntry(@317,QUEST_DONE)~ GOTO 151
       +~PartyHasItem("h_misc17") Global("h_KarpWorkGood","GLOBAL",0) GlobalGT("h_KarpWork","GLOBAL",0)~+ ~Here are the rings, as promised.~ DO ~AddJournalEntry(@317,QUEST)~ GOTO 151
       ++ ~I'm still working on it.~ EXIT
END
   
IF ~~ THEN BEGIN 151
   SAY ~Your efforts have not gone unnoticed, and your reward awaits. As promised, one ring is yours, a symbol of our enduring partnership.~ IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 152
   SAY ~Choose your path wisely, for the shadows are ever watchful, and the choices you make echo in the silent halls of our world.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",8)
   TakePartyItem("h_misc17")
   DestroyItem("h_misc17")
   AddExperienceParty(600)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",8) GlobalLT("h_ArioshQuest","GLOBAL",10)~ THEN BEGIN 153
   SAY ~Conclude your dealings with Ariosh. A task lies ahead demanding both of your undivided attention, keen and cutting as twin blades.~
IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",8) Global("h_ArioshQuest","GLOBAL",10)~ THEN BEGIN 154
   SAY ~Ah, you've returned to the shadows from whence you thrive. It's time we set your talents to a task of delicate precision.~ IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155
   SAY ~South, at the carnival in Nashkel, a subtle game is afoot, one that requires your deft hands and silent steps.~ IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 156
   SAY ~The Gamesmen, they wield weapons not of steel but of cunning, stun darts, potent enough to turn the tides of fortune.~ IF ~~ THEN GOTO 157
END

IF ~~ THEN BEGIN 157
   SAY ~These darts, hidden within the grandeur of the two large gambling tents on the western wing of the carnival, are your quarry.~ IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 158
   SAY ~Your mission is to infiltrate the carnival, relieve the Gamesmen of their hidden arsenals without stirring the winds of suspicion.~ IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 159
   SAY ~Once you've secured these stun darts, rendezvous with Ariosh and his men. They'll be lurking like shadows behind the tents, awaiting your signal.~ IF ~~ THEN GOTO 160
END

IF ~~ THEN BEGIN 160
   SAY ~Equip them with the Gamesmen's own tools of trade. What follows is a play of irony, using their own kit to usurp their winnings and, most crucially, their gambling licenses.~ IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 161
   SAY ~Now, once you've handed over the darts to Ariosh, your part in this night's play concludes. Your presence will be required back here, for there are more threads in this web to untangle.~ IF ~~ THEN GOTO 162
END

IF ~~ THEN BEGIN 162
   SAY ~The carnival is but the opening act of a grander scheme. Return promptly, for the shadows await your next endeavor.~
       ++ ~What's the significance of the gambling licenses? Is there a larger purpose behind acquiring them?~ GOTO 163
       ++ ~The carnival falls under Shadow Thief influence. Should I expect any complications?~ GOTO 167
       ++ ~Do we have an estimate on the number of Gamesmen inside those tents?~ GOTO 171
       ++ ~I understand the mission. I'm ready to head down to the carnival.~ GOTO 174
END

IF ~~ THEN BEGIN 163
   SAY ~The gambling licenses are a keystone to our broader strategy. They will serve to legitimize several of our covert casino operations.~ IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 164
   SAY ~By operating under legal pretenses, we can mask our more clandestine activities, funneling resources without drawing undue attention.~ IF ~~ THEN GOTO 165
END

IF ~~ THEN BEGIN 165
   SAY ~We're playing the game by its rules to bend them in our favor. This allows us to expand our influence in plain sight, yet remain shielded by the guise of legality.~ IF ~~ THEN GOTO 166
END

IF ~~ THEN BEGIN 166
   SAY ~It's a tactical move, blending power with subtlety, an art we excel in.~
       ++ ~The carnival falls under Shadow Thief influence. Should I expect any complications?~ GOTO 167
       ++ ~Do we have an estimate on the number of Gamesmen inside those tents?~ GOTO 171
       ++ ~I understand the mission. I'm ready to head down to the carnival.~ GOTO 174
END

IF ~~ THEN BEGIN 167
   SAY ~Indeed, the carnival lies within the domain of the Shadow Thieves, and they will surely be apprised of your visit.~ IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168
   SAY ~But fear not, their main force lies beyond the Cloud Peaks, leaving their presence sparse in these northern regions.~ IF ~~ THEN GOTO 169
END

IF ~~ THEN BEGIN 169
   SAY ~They seldom engage in large operations this far north. Thus, your mission should encounter minimal interference.~ IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 170
   SAY ~It's an opportune moment to strike, taking advantage of the thin spread of their operatives.~
       ++ ~What's the significance of the gambling licenses? Is there a larger purpose behind acquiring them?~ GOTO 163
       ++ ~Do we have an estimate on the number of Gamesmen inside those tents?~ GOTO 171
       ++ ~I understand the mission. I'm ready to head down to the carnival.~ GOTO 174
END

IF ~~ THEN BEGIN 171
   SAY ~I admire your foresight in seeking such details. Preparedness is a trait of the prudent. There are eight Gamesmen in total, evenly divided with four in each tent.~ IF ~~ THEN GOTO 172
END

IF ~~ THEN BEGIN 172
   SAY ~This information should aid in strategizing your approach. Remember, subtlety and discretion are paramount.~ IF ~~ THEN GOTO 173
END

IF ~~ THEN BEGIN 173
   SAY ~Each Gamesman is a cog in their operation, removing them quietly will be instrumental in ensuring the success of our endeavor.~
       ++ ~What's the significance of the gambling licenses? Is there a larger purpose behind acquiring them?~ GOTO 163
       ++ ~The carnival falls under Shadow Thief influence. Should I expect any complications?~ GOTO 167
       ++ ~I understand the mission. I'm ready to head down to the carnival.~ GOTO 174
END

IF ~~ THEN BEGIN 174
   SAY ~Your readiness marks the beginning of a significant chapter in our expansion into Amn. This mission at the carnival is but the first step in a larger dance of power and influence.~ IF ~~ THEN GOTO 175
END

IF ~~ THEN BEGIN 175
   SAY ~Your role is crucial, a testament to the trust we place in your abilities. Go now, with the shadows as your ally.~ IF ~~ THEN GOTO 176
END

IF ~~ THEN BEGIN 176
   SAY ~Let this mission be the herald of our reach extending beyond its current bounds, a signal of the dawning of a new era under our sway.~ IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 177
   SAY ~Return upon completion, for there are further plans where your skills will be instrumental.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",9)
   SetGlobal("h_GuildThieves","GLOBAL",2)
   AddJournalEntry(@321,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN 178
   SAY ~Be mindful, this endeavor is of substantial magnitude, leaving no margin for error. Ensure that you meticulously relieve each Gamesman of their gear prior to signaling our brethren.~ IF ~~ THEN GOTO 179
END

IF ~~ THEN BEGIN 179
   SAY ~Once this crucial phase is executed with precision, Ariosh will assume the reins. The success of this operation hinges on flawless execution at every step.~
IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",10)~ THEN BEGIN 180
   SAY ~The echoes of your deeds at the carnival have already reached my ears, resonating with the unmistakable timbre of success.~ IF ~~ THEN GOTO 181
END

IF ~~ THEN BEGIN 181  
   SAY ~Your adeptness in the art of clandestine operations reinforces your esteemed place amongst our enigmatic fold.~ IF ~~ THEN GOTO 182
END

IF ~~ THEN BEGIN 182
   SAY ~With the acquisition of these gambling licenses, we unfurl the first chapter of a more ambitious narrative.~ IF ~~ THEN GOTO 183
END

IF ~~ THEN BEGIN 183
   SAY ~These documents are not mere paper and ink, but the foundational stones upon which we shall erect our influence in the south.~ IF ~~ THEN GOTO 184
END

IF ~~ THEN BEGIN 184
   SAY ~Your role in this has been pivotal, and now, as we orchestrate the silent takeover of power, we stand on the cusp of extending our reach, weaving our web into the edges of Amn.~ IF ~~ THEN GOTO 185
END

IF ~~ THEN BEGIN 185
   SAY ~The ground is set; the shadows lengthen. Our journey southward begins.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",11)
   AddJournalEntry(@323,QUEST_DONE)
   GiveGoldForce(800)
   AddExperienceParty(600)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",11) Global("h_ProcusQuest","GLOBAL",0) GlobalLT("h_BountyNumber","GLOBAL",3)~ THEN BEGIN 186
   SAY ~A pause in our grand design is upon us as we meticulously prepare for our advance into Amn.~ IF ~~ THEN GOTO 187
END

IF ~~ THEN BEGIN 187
   SAY ~While the gears of our operation are being set into motion, I urge you to address any remaining affairs within our guild's domain.~
IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",11) Global("h_ProcusQuest","GLOBAL",0) Global("h_BountyNumber","GLOBAL",3) Global("h_LiedelQuest","GLOBAL",2)~ THEN BEGIN 188
   SAY ~The time has come to discuss Nashkel, a realm distinct in its challenges.~ IF ~~ THEN GOTO 189
END

IF ~~ THEN BEGIN 189
   SAY ~Unlike the territories where the Flaming Fist's influence wanes, Nashkel is a fortress of order, guarded by an army with iron discipline.~ IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 190
   SAY ~Our movements there must be as imperceptible as a shadow on a moonlit night.~ IF ~~ THEN GOTO 191
END

IF ~~ THEN BEGIN 191
   SAY ~The Shadow Thieves, our enigmatic counterparts, have their influence south of the Cloud Peaks, their presence here a mere whisper. Yet, caution is our watchword, as even whispers can herald a storm.~ IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 192
   SAY ~Your next undertaking is to locate our associate, Procus. He will be amongst the throngs at the carnival, near the jousting lists.~ IF ~~ THEN GOTO 193
END

IF ~~ THEN BEGIN 193
   SAY ~His role, and consequently yours, is pivotal in establishing our foothold amidst the carnival's chaos. The area itself provides a tapestry of faces and diversions, an ideal veil for our endeavors.~ IF ~~ THEN GOTO 194
END

IF ~~ THEN BEGIN 194
   SAY ~Meld with the crowd, carve out our niche, but remain vigilant. In this den of revelry, our success hinges on guile and discretion.~ IF ~~ THEN GOTO 195
END

IF ~~ THEN BEGIN 195
   SAY ~Now, before your departure south, a detour to Gilbald's is in order. A matter has arisen that requires your discerning eye.~ IF ~~ THEN GOTO 196
END 

IF ~~ THEN BEGIN 196
   SAY ~We cannot afford oversights in our ranks, such negligence can unravel the most elaborate plans.~ IF ~~ THEN GOTO 197
END

IF ~~ THEN BEGIN 197
   SAY ~Also, Liedel, the ever diligent sentinel, has amassed a new collection of bounties. Her persistence is a testament to her dedication.~ IF ~~ THEN GOTO 198
END

IF ~~ THEN BEGIN 198
   SAY ~Indulge her, if you will, and then we can refocus on the matters that truly demand our cunning.~ IF ~~ THEN GOTO 200
END

IF ~~ THEN BEGIN 200
   SAY ~Your role in this is not merely an errand but a cornerstone in maintaining the equilibrium of our clandestine symphony.~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnProcus","GLOBAL",1)
   SetGlobal("h_GilbaldQuest","GLOBAL",1)
   SetGlobal("h_LiedelQuest","GLOBAL",3)
   SetGlobal("h_ZedaRiddle2","GLOBAL",1)
   AddJournalEntry(@338,QUEST)~ EXIT
END

IF ~OR(2) Global("h_ProcusQuest","GLOBAL",0) GlobalGT("h_ProcusQuest","GLOBAL",0) Global("h_RigaldoQuest","GLOBAL",11) GlobalLT("h_ProcusQuest","GLOBAL",7)~ THEN BEGIN 201
   SAY ~Maintain a vigilant ear, <CHARNAME>. Nashkel is akin to a capricious enchantress, her moods ever-changing, and we stand at the precipice of our grand endeavor within her bounds.~
IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",11) Global("h_ProcusQuest","GLOBAL",7)~ THEN BEGIN 202
   SAY ~Back within the enigmatic embrace of our lair, swift and incisive as ever, aren't you?~ IF ~~ THEN GOTO 203
END

IF ~~ THEN BEGIN 203
   SAY ~The echoes of your recent triumphs in Nashkel have swiftly found their way to me, carried on the clandestine currents of our underworld.~ IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 204
   SAY ~Our intricate venture is unfolding with precision, a tapestry woven by your adept hands.~ IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 205
   SAY ~The gold acquired, the networks of influence you've entwined, it's all coalescing splendidly, aligning with our most ambitious designs.~ IF ~~ THEN GOTO 206
END

IF ~~ THEN BEGIN 206
   SAY ~The Gorgon's Eye, under our guidance, is etching its indelible mark upon the world, and you, my friend, are at the heart of this intricate web.~ IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 207
   SAY ~Your contributions have not gone unnoticed, they resonate with the finesse of a masterful conductor.~ IF ~~ THEN GOTO 208
END

IF ~~ THEN BEGIN 208
   SAY ~Well done, indeed. We are but steps away from realizing the full extent of our vision, a testament to your unwavering dedication and skill.~
IF ~~ THEN DO ~
   SetGlobal("h_ProcusQuest","GLOBAL",8)
   AddJournalEntry(@349,QUEST_DONE)
   GiveGoldForce(800)
   AddExperienceParty(600)~ EXIT
END

IF ~OR(2) GlobalLT("h_BountyNumber","GLOBAL",6) GlobalLT("h_GilbaldQuest","GLOBAL",6) Global("h_RigaldoQuest","GLOBAL",11) Global("h_ProcusQuest","GLOBAL",8)~ THEN BEGIN 209
   SAY ~At present, the wellspring of leads has run dry. I suggest you converse with our guild's brethren, their pursuits may reveal tasks suited to your particular skills.~
IF ~~ THEN EXIT
END

IF ~Global("h_BountyNumber","GLOBAL",6) Global("h_GilbaldQuest","GLOBAL",6) Global("h_RigaldoQuest","GLOBAL",11) Global("h_ProcusQuest","GLOBAL",8)~ THEN BEGIN 210
   SAY ~It's time to cast your gaze upon a local enigma, Borland of Beregost. Beneath the guise of a benevolent host to wayward travelers, he veils a more nefarious trade.~ IF ~~ THEN GOTO 211
END

IF ~~ THEN BEGIN 211
   SAY ~Borland deals in black lotus, among other spices, substances that dance upon the edge of shadow. Our interest in his operation presents us with a bifurcation of paths.~ IF ~~ THEN GOTO 212
END

IF ~~ THEN BEGIN 212
   SAY ~You could weave your way into his confidence, persuading him to share a portion of his illicit profits in exchange for our tacit permission to continue.~ IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 213
   SAY ~His operations could thrive under our watchful eye, contributing to our vast coffers. Alternatively, you could dismantle his facade, securing his stock of spice for our possession.~ IF ~~ THEN GOTO 215
END

IF ~~ THEN BEGIN 215
   SAY ~In doing so, his enterprise crumbles, and we seize control of the substance's flow within our territory.~ IF ~~ THEN GOTO 216
END

IF ~~ THEN BEGIN 216
   SAY ~Each course holds its own merit, a testament to the versatility of our operations. The decision lies with you, a choice between partnership and usurpation.~ IF ~~ THEN GOTO 217
END

IF ~~ THEN BEGIN 217
   SAY ~Proceed as you deem fit, but remember, the outcome shall ripple through our guild's future endeavors.~ IF ~~ THEN GOTO 218
END

IF ~~ THEN BEGIN 218
   SAY ~Borland's shadowy abode, the nucleus of his clandestine activities, lies discreetly on the east side of town.~ IF ~~ THEN GOTO 219
END

IF ~~ THEN BEGIN 219
   SAY ~Seek it out across from the Red Sheaf, where the unsuspecting eye sees only an ordinary dwelling, masking the truth of what lies within.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",12)
   AddJournalEntry(@324,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",12)~ THEN BEGIN 220
   SAY ~Ah, <CHARNAME>, back amidst the shadows. Tell me, has our little problem with Borland been resolved, or do the winds still carry whispers of unrest?~
       +~Global("h_BorlandPays","GLOBAL",2)~+ ~Borland will be paying us our share. His operation continues, but now under our watchful eye.~ GOTO 221
       +~Global("h_BorlandCloses","GLOBAL",2) PartyHasItem("h_misc07")~+ ~Borland's operation in Beregost is no more. I've shut it down and acquired his supply.~ GOTO 225
       ++ ~I'm still working on it, but I'll get it sorted out soon.~ EXIT
END

IF ~~ THEN BEGIN 221
   SAY ~A pragmatic approach, indeed. Allowing Borland to continue, yet under our banner, expands our influence and coffers simultaneously.~ IF ~~ THEN GOTO 222
END

IF ~~ THEN BEGIN 222
   SAY ~It's a subtle art, weaving control while allowing the facade of independence. Your actions serve as a testament to the cunning and reach of the Gorgon's Eye.~ IF ~~ THEN GOTO 223
END

IF ~~ THEN BEGIN 223
   SAY ~This arrangement will send ripples through Beregost, a subtle reminder of our omnipresence. Excellent work. Now, let's focus on leveraging this new development to our further advantage.~ IF ~~ THEN GOTO 224
END

IF ~~ THEN BEGIN 224
   SAY ~Here is your cut for the work, a fair share for a job well executed. The Gorgon's Eye values your diligence and skill.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",13)
   SetGlobal("h_SpawnAriosh","GLOBAL",1)
   SetGlobal("h_SpawnZylark","GLOBAL",6)
   AddJournalEntry(@362,QUEST_DONE)
   AddExperienceParty(800)
   GiveGoldForce(400)~ EXIT
END

IF ~~ THEN BEGIN 225
   SAY ~A decisive move. Closing down Borland's enterprise cuts off one more unchecked stream in the undercurrent of Beregost. It's a harsh lesson for those who operate outside our influence.~ IF ~~ THEN GOTO 226
END

IF ~~ THEN BEGIN 226
   SAY ~Your actions speak to the uncompromising nature of our guild. Let this serve as a reminder to others that the Gorgon's Eye is not to be defied.~ IF ~~ THEN GOTO 227
END

IF ~~ THEN BEGIN 227
   SAY ~Well done. Here's your deserved cut, and a bit extra for the Black Lotus you've secured. It's a rare prize that adds to our leverage.~ IF ~~ THEN GOTO 228
END

IF ~~ THEN BEGIN 228
   SAY ~Consider this bonus a token of the Gorgon's Eye's appreciation for your exceptional work.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",13)
   SetGlobal("h_SpawnAriosh","GLOBAL",1)
   SetGlobal("h_SpawnZylark","GLOBAL",6)
   AddJournalEntry(@363,QUEST_DONE)
   TakePartyItem("h_misc07")
   DestroyItem("h_misc07")
   AddExperienceParty(800)
   GiveGoldForce(800)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",13)~ THEN BEGIN 229
   SAY ~Thamuz leads this assault with the same ruthless cunning we once honed together. I have no words left for idle talk amidst this grim dance of old allies.~
IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",14)~ THEN BEGIN 230
   SAY ~Lean in, my deft companion, for a task beckons that bears your mark.~ IF ~~ THEN GOTO 231
END

IF ~~ THEN BEGIN 231
   SAY ~The Avowed, those Candlekeep monks, have whispered through the shadows about a treasure lost, a tome, ripe with hidden lore, vanished like mist.~ IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 232
   SAY ~On its journey to the keep it disappeared, snatched from the very road. It seems our reputation for retrieving the elusive has reached even their ears.~ IF ~~ THEN GOTO 233
END

IF ~~ THEN BEGIN 233
   SAY ~Of course, they clamor for discretion, as monks are wont to do. Their doctrine, 'Those who destroy knowledge, with ink, fire, or sword, are themselves destroyed.' guides their plea.~ IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 234
   SAY ~And you, rumored to be acquainted with Candlekeep's sacred walls, you'll fathom their quirks better than any.~ IF ~~ THEN GOTO 235
END

IF ~~ THEN BEGIN 235
   SAY ~I'm tasking you to journey to Baldur's Gate, to parley with Ravenscar, who reigns over the local thieves. They're well-informed, likely to have caught scent of this absconded tome.~ IF ~~ THEN GOTO 236
END

IF ~~ THEN BEGIN 236
   SAY ~Seek them out, exchange words, and unearth what they know. But tread lightly, like a shadow's whisper, for that's our way in this game.~
       ++ ~Do we have any specifics on the stolen tome?~ GOTO 237
       +~!Dead("Alatos")~+ ~What can you tell me about Ravenscar and the thieves guild in Baldur's Gate?~ GOTO 241
       +~!Dead("Alatos")~+ ~Alright, I'll head to the city and speak with Ravenscar.~ GOTO 245
       +~Dead("Alatos")~+ ~Ravenscar is dead. He thought he could pull a fast one on me, but I showed him otherwise.~ GOTO 246
END

IF ~~ THEN BEGIN 237
   SAY ~'Netheril's Grimoire of Lost Arcana', such is the name they've adorned it with, an intriguing moniker for a tome shrouded in mystery.~ IF ~~ THEN GOTO 238
END

IF ~~ THEN BEGIN 238
   SAY ~The essence of this artifact, ah, therein lies the true expedition. We speak of arcane secrets, spells lost to time, lost whispers of ancient Netherese wisdom.~ IF ~~ THEN GOTO 239
END

IF ~~ THEN BEGIN 239
   SAY ~The monks, they're quivering in their cloisters over its loss, and rightly so.~ IF ~~ THEN GOTO 240
END

IF ~~ THEN BEGIN 240
   SAY ~This is no mere collection of parchment, it's a beacon of forgotten power, a relic that commands respect and fear in equal measure.~
       +~!Dead("Alatos")~+ ~What can you tell me about Ravenscar and the thieves guild in Baldur's Gate?~ GOTO 241
       +~!Dead("Alatos")~+ ~Alright, I'll head to the city and speak with Ravenscar.~ GOTO 245
       +~Dead("Alatos")~+ ~Ravenscar is dead. He thought he could pull a fast one on me, but I showed him otherwise.~ GOTO 246
END

IF ~~ THEN BEGIN 241
   SAY ~They're a cunning lot, known for their shrewd dealings and keen intellects. They've woven their influence into the fabric of the city, their hands deftly playing in many a secretive venture.~ IF ~~ THEN GOTO 242
 END
 
 IF ~~ THEN BEGIN 242
    SAY ~The guild, seasoned by time and tribulations, has etched its mark well. Rumors abound of their sprawling network, eyes ever-watchful for opportunities akin to this.~ IF ~~ THEN GOTO 243
 END
 
 IF ~~ THEN BEGIN 243
    SAY ~As for guild tensions, cast those worries aside. In Ravenscar's domain, we stand on common ground. They, like us, appreciate the art of cooperation in our shadowed profession.~ IF ~~ THEN GOTO 244
 END
 
 IF ~~ THEN BEGIN 244
    SAY ~No need for blades to flash; keep the discourse smooth, and you'll glean the knowledge we seek.~
       ++ ~Do we have any specifics on the stolen tome?~ GOTO 237
       +~!Dead("Alatos")~+ ~Alright, I'll head to the city and speak with Ravenscar.~ GOTO 245
END

IF ~~ THEN BEGIN 245
   SAY ~Keep your senses sharp and your demeanor collected. Ravenscar possesses a keen instinct for truth, and he holds in high regard those who deal plainly. A forthright approach will earn his respect.~
IF ~~ THEN DO ~
   SetGlobal("h_BookQuest","GLOBAL",1)
   SetGlobal("h_Ravenscar","GLOBAL",1)
   AddJournalEntry(@350,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 246
   SAY ~By the shadows, what have you done? Slaying Ravenscar wasn't part of the play! You've unleashed a maelstrom in our world of whispers and guile.~ IF ~~ THEN GOTO 247
END

IF ~~ THEN BEGIN 247
   SAY ~We tread a delicate path in the dark, and now you've cast a glaring torch over us all. A war, a bloody war between guilds, could be upon us!~ IF ~~ THEN GOTO 248
END

IF ~~ THEN BEGIN 248
   SAY ~This isn't just about your vengeance. Think, for the gods' sake, think about the webs you've tangled!~ IF ~~ THEN GOTO 249
END

IF ~~ THEN BEGIN 249
   SAY ~Every last one of them... wiped out? <CHARNAME>, you've razed an entire guild, single-handedly dismantling Ravenscar's reign. This is no mere feat... it's a portent.~ IF ~~ THEN GOTO 250
END

IF ~~ THEN BEGIN 250
   SAY ~Baldwin, we tread on a razor's edge. We've a tempest in our midst, and it's edging ever closer. We must proceed with our plans, but with eyes wide open.~ IF ~~ THEN GOTO 251
END

IF ~~ THEN BEGIN 251
   SAY ~Venture into the Gate, probe the underbelly, seek out the black markets for the tome.~ IF ~~ THEN GOTO 252
END

IF ~~ THEN BEGIN 252
   SAY ~Yet be vigilant, more than ever. <CHARNAME>, your strength is undeniable, a dual-edged blade, and one that could cut us just as deeply.~
IF ~~ THEN DO ~
   SetGlobal("h_KilledRavenscar","GLOBAL",1)
   SetGlobal("h_Ravenscar","GLOBAL",2)
   AddJournalEntry(@351,QUEST)~ EXIT
END

IF WEIGHT #-1 ~Global("h_BookQuest","GLOBAL",1)~ THEN BEGIN 253
   SAY ~Make haste to Baldur's Gate. Seek out Ravenscar, delve into the depths of their cunning guild, and pry into what whispers they may harbor about 'Netheril's Grimoire of Lost Arcana'.~
IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_KilledRavenscar","GLOBAL",1)~ THEN BEGIN 254
   SAY ~Make haste to Baldur's Gate, and immerse yourself in the clandestine embrace of the black markets. There, amidst the whispers and shadows, seek out any leads on the 'Netheril's Grimoire of Lost Arcana'.~
IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc29")~ THEN BEGIN 255
   SAY ~Ah, you emerge from the shadows once more. Have you ensnared that elusive tome in your grasp, or does our game of conceal and seek persist?~
       ++ ~Got it right here. 'Netheril's Grimoire of Lost Arcana', just as you asked.~ DO ~TakePartyItem("h_misc29") DestroyItem("h_misc29")~ GOTO 256
END

IF ~~ THEN BEGIN 256
   SAY ~The Candlekeep scholars will no doubt be overjoyed to see their tome once more, though not before they part with a sizeable reward, naturally.~ IF ~~ THEN GOTO 257
END

IF ~~ THEN BEGIN 257
   SAY ~They sit upon a mountain of gold, those monks, offering a fortune for its return. Our coffers will swell significantly, a direct result of your skilled endeavors.~ IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 258
   SAY ~Your actions have solidified your worth to our guild, and this bounty you receive is but a fraction of the recognition you deserve. Use it with the cunning and discretion you've shown thus far.~ IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 259
   SAY ~As for what lies ahead, our joint ventures promise to shine even brighter, with such talent in our ranks.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",15)
   AddJournalEntry(@359,QUEST_DONE)
   AddExperienceParty(1200)
   GiveGoldForce(1000)~ EXIT
END

IF ~OR(2) GlobalLT("h_MerediaQuest","GLOBAL",5) GlobalLT("h_BountyNumber","GLOBAL",9) Global("h_RigaldoQuest","GLOBAL",15)~ THEN BEGIN 260 //GlobalLT("h_ArioshQuest","GLOBAL",22)
   SAY ~At present, the wellspring of leads has run dry. I suggest you converse with our guild's brethren, their pursuits may reveal tasks suited to your particular skills.~
IF ~~ THEN EXIT
END

IF ~Global("h_MerediaQuest","GLOBAL",5) Global("h_BountyNumber","GLOBAL",9) Global("h_RigaldoQuest","GLOBAL",15)~ THEN BEGIN 261 //Global("h_ArioshQuest","GLOBAL",22)
   SAY ~You've arrived at an opportune moment. A new venture unfolds, one that demands your particular talents. Borland's grasp on his spice source has been... shall we say, loosened.~ IF ~~ THEN GOTO 262
END

IF ~~ THEN BEGIN 262
   SAY ~Through deft negotiation, we've rerouted a significant flow of black lotus directly to our doorsteps, bypassing Borland almost entirely. The quality, I assure you, is unparalleled.~ IF ~~ THEN GOTO 263
END

IF ~~ THEN BEGIN 263
   SAY ~Now, here's where you step in. A substantial shipment of this potent lotus needs to be transported, discreetly and securely, to the Lotus Tent at the Nashkel Carnival.~ IF ~~ THEN GOTO 264
END

IF ~~ THEN BEGIN 264
   SAY ~It's a delicate task, requiring both finesse and caution. The carnival, with its myriad eyes and ears, is no place for the heavy-handed. You must be as the whispering wind, quiet and unseen.~ IF ~~ THEN GOTO 265
END

IF ~~ THEN BEGIN 265
   SAY ~This operation, should you navigate it successfully, will not only flood our coffers but also cement our position as the premier purveyors of this exquisite rarity.~ IF ~~ THEN GOTO 266
END

IF ~~ THEN BEGIN 266
   SAY ~Do this right, and you'll have proven your worth tenfold in the shadows we tread.~ IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267
   SAY ~Remember, the essence of our trade lies in the silent dance of shadows and secrets. Tread carefully, and let the carnival's cacophony be your cloak.~
       ++ ~Considering our ongoing feud with the Shadow Thieves, isn't the carnival a risky place for such a trade?~ GOTO 268
       ++ ~Who will I be meeting, and how much gold should I be expecting for the transaction?~ GOTO 273
       ++ ~Smuggling lotus isn't my cup of tea. Do you have another job that might suit my skills better?~ GOTO 283
       ++ ~I'll make my way to the Nashkel Carnival and ensure the lotus reaches its destination.~ GOTO 277
END

IF ~~ THEN BEGIN 268
   SAY ~Ah, you're right to be cautious, given our tussle with the Shadow Thieves. However, the winds of fortune blow favorably for us this time.~ IF ~~ THEN GOTO 269
END

IF ~~ THEN BEGIN 269
   SAY ~Lately, the Shadow Thieves have been uncharacteristically silent, almost as if they're lying low, which gives us a sliver of opportunity.~ IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270
   SAY ~Furthermore, we still have Procus and his operation firmly rooted in the carnival. He's been our eyes and ears on that front and assures me that everything is running as smooth as silk.~ IF ~~ THEN GOTO 271
END

IF ~~ THEN BEGIN 271
   SAY ~The carnival, with its constant hustle and bustle, provides the perfect cover for our endeavor. It's a risky play, no doubt, but one well within our means to control.~ IF ~~ THEN GOTO 272
END

IF ~~ THEN BEGIN 272
   SAY ~Trust in Procus, trust in our preparation, and trust in the shadows that have always been our ally.~
       ++ ~Who will I be meeting, and how much gold should I be expecting for the transaction?~ GOTO 273
       ++ ~Smuggling lotus isn't my cup of tea. Do you have another job that might suit my skills better?~ GOTO 283
       ++ ~I'll make my way to the Nashkel Carnival and ensure the lotus reaches its destination.~ GOTO 277
END

IF ~~ THEN BEGIN 273
   SAY ~You'll be delivering a hefty sum of five pounds of the finest black lotus, each pound valued at a steep 600 gold. The quality of this lotus commands a high price on the market, and rightfully so.~ IF ~~ THEN GOTO 274
END

IF ~~ THEN BEGIN 274
   SAY ~Your contact at the carnival will be the proprietor of the Lotus Tent, a discreet fellow who knows how to handle such delicate trades. He'll be awaiting you inside.~ IF ~~ THEN GOTO 275
END

IF ~~ THEN BEGIN 275
   SAY ~Upon successful delivery, you'll be entitled to a 20% cut. It's a fair share for a job well done, and believe me, for this quality of lotus, buyers are more than willing to pay the asking price.~ IF ~~ THEN GOTO 276
END

IF ~~ THEN BEGIN 276
   SAY ~Ensure the transaction is smooth, and your reward will reflect the value of the goods you've safeguarded.~
       ++ ~Considering our ongoing feud with the Shadow Thieves, isn't the carnival a risky place for such a trade?~ GOTO 268
       ++ ~Smuggling lotus isn't my cup of tea. Do you have another job that might suit my skills better?~ GOTO 283
       ++ ~I'll make my way to the Nashkel Carnival and ensure the lotus reaches its destination.~ GOTO 277
END

IF ~~ THEN BEGIN 277
   SAY ~Very well, make for the Nashkel Carnival with due haste, but heed my words closely.~ IF ~~ THEN GOTO 278
END

IF ~~ THEN BEGIN 278
   SAY ~Avoid the main roads; the Flaming Fist has been unusually vigilant of late, patrolling with a keen eye for anything out of the ordinary.~ IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 279
   SAY ~Stick to the less-traveled paths, blend with the shadows, and move with the discretion we're known for.~ IF ~~ THEN GOTO 280
END

IF ~~ THEN BEGIN 280
   SAY ~Remember, you're not just carrying a commodity, you're transporting power, influence, and potential. It's not just the gold at stake but the reputation and future prospects of our guild.~ IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281
   SAY ~And while the carnival's chaos is a boon, it can also be a bane. Keep your wits about you, not all there are mere merrymakers. Some eyes might see more than they should.~ IF ~~ THEN GOTO 282
END

IF ~~ THEN BEGIN 282
   SAY ~Trust in your skills, and let the cacophony of the carnival mask your true purpose. Return to us once the deed is done, and we shall reap the rewards of your success together.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",16)
   SetGlobal("h_FlamingFist","GLOBAL",1)
   SetGlobal("h_ExtraQuest","GLOBAL",1)
   AddJournalEntry(@327,QUEST)
   GiveItemCreate("h_misc07",LastTalkedToBy,5,0,0)~ EXIT
END

IF ~~ THEN BEGIN 283
   SAY ~Curious, I wasn't under the impression that the task was up for debate. However, I recognize that the lotus trade might not be to everyone's liking.~ IF ~~ THEN GOTO 284
END

IF ~~ THEN BEGIN 284
   SAY ~Given your standing in our guild and your proven capabilities, I'll grant you some leeway this time. But don't let this become a pattern, <CHARNAME>.~ IF ~~ THEN GOTO 285
END

IF ~~ THEN BEGIN 285
   SAY ~The ability to choose our paths is a luxury we seldom afford in our shadowed world. Now, onto another matter then.~ IF ~~ THEN GOTO 286
END

IF ~~ THEN BEGIN 286
   SAY ~We've got a situation with a client, Pruflas. He's been fogging his senses day in and day out at that very same lotus tent, to the point of oblivion.~ IF ~~ THEN GOTO 287
END

IF ~~ THEN BEGIN 287
   SAY ~His wife is desperate, offering a substantial reward for his safe return. That's where you step in.~ IF ~~ THEN GOTO 288
END

IF ~~ THEN BEGIN 288
   SAY ~Navigate your way to him, offer a guiding hand, and bring him back to the anxious arms of his spouse.~ IF ~~ THEN GOTO 289
END

IF ~~ THEN BEGIN 289
   SAY ~Succeed, and you'll earn a handsome cut of the reward. How does that sound for a change of pace?~
       ++ ~I appreciate the alternative. Helping Pruflas seems more my style.~ GOTO 292
       ++ ~On second thought, I think I'd prefer the original task and ensure the black lotus reaches the Carnival.~ GOTO 290
   END
   
IF ~~ THEN BEGIN 290
   SAY ~Your fickleness is trying, <CHARNAME>. A decision made should be as steadfast as the shadows we dwell in.~ IF ~~ THEN GOTO 291
END

IF ~~ THEN BEGIN 291
   SAY ~However, since you've set your mind on the lotus delivery, see it through with unwavering resolve.~ IF ~~ THEN GOTO 278
END

IF ~~ THEN BEGIN 292
   SAY ~Fine, then. Pruflas it is. Just remember, this isn't about charity or goodwill; it's a job like any other, with its own gains and stakes.~ IF ~~ THEN GOTO 293
END

IF ~~ THEN BEGIN 293
   SAY ~Bring him back from his stupor, not necessarily for his well-being, but because it's profitable for us. Do this efficiently, and you'll get your due share.~ IF ~~ THEN GOTO 294
END

IF ~~ THEN BEGIN 294
   SAY ~Now off with you, and let's hope this diversion proves worthwhile for the guild.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",16)
   SetGlobal("h_PruflasQuest","GLOBAL",1)
   SetGlobal("h_SpawnQuass","GLOBAL",1)
   AddJournalEntry(@332,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",16)~ THEN BEGIN 295
   SAY ~Back from the shadows of Nashkel, are we? Tell me, has the task been seen to its end, or do we still dance around unfinished business?~
       +~Global("h_LotusQuest","GLOBAL",1) PartyGoldGT(2999)~+ ~Had a run in with the Flaming Fist and the Shadow Thieves, but I pulled through. Here's the loot.~ GOTO 296
       +~Global("h_LotusQuest","GLOBAL",2) PartyGoldGT(2399)~+ ~The Flaming Fist got me on the road, had to give up a pound to see them off.~  GOTO 300
       +~Global("h_PruflasQuest","GLOBAL",3) Global("h_ExtraQuest","GLOBAL",0) NumDead("h_pruflc",0)~+ ~I was able to get Pruflas to return home to his wife.~ GOTO 305
       +~Global("h_PruflasQuest","GLOBAL",3) Global("h_ExtraQuest","GLOBAL",0) NumDead("h_pruflc",1)~+ ~Well, I kind of killed Pruflas by giving him too much black lotus.~ GOTO 307
       ++ ~Nothing new to report yet.~ EXIT
END

IF ~~ THEN BEGIN 296
   SAY ~So, you managed to slip past the Flaming Fist and dodge the Shadow Thieves, delivering the goods without a hitch. Efficient, I'll give you that.~ IF ~~ THEN GOTO 297
END

IF ~~ THEN BEGIN 297
   SAY ~In our line of work, keeping a low profile is as good as gold, and you've done just that. Keep up this level of work, it's what keeps us afloat in these treacherous waters.~ IF ~~ THEN GOTO 298
END

IF ~~ THEN BEGIN 298
   SAY ~The total haul comes to 3000 gold, and from that, I'll carve out your twenty-percent. And for the extra effort, let's tack on another five percent. That puts 750 gold in your pocket.~ IF ~~ THEN GOTO 299
END

IF ~~ THEN BEGIN 299
   SAY ~Nice work out there, <CHARNAME>.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@331,QUEST_DONE)
   TakePartyItemAll("h_misc07")
   AddExperienceParty(800)
   TakePartyGold(3000)
   GiveGoldForce(750)~ EXIT
END

IF ~~ THEN BEGIN 300
   SAY ~So, the Flaming Fist had you cornered, and you greased their palms with our product to slip away. It's a loss, yes, but the fact you walked away from their clutches is something else.~ IF ~~ THEN GOTO 301
END

IF ~~ THEN BEGIN 301
   SAY ~It's not often someone can outmaneuver the Fist, especially when they're breathing down your neck.~ IF ~~ THEN GOTO 302
END

IF ~~ THEN BEGIN 302
   SAY ~You've shown resourcefulness in a tight spot, <CHARNAME>, and that's worth something, even if it cost us.~ IF ~~ THEN GOTO 303
END

IF ~~ THEN BEGIN 303
   SAY ~Next time though, aim for a cleaner operation. Our coffers can't always afford such... creative solutions.~ IF ~~ THEN GOTO 304
END

IF ~~ THEN BEGIN 304
   SAY ~I'll hold onto the 2400 gold, and from that stash, I'll slice off your twenty-percent share. That leaves you with a neat sum of 480 gold. Fair's fair in our trade, <CHARNAME>.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@331,QUEST_DONE)
   TakePartyItemAll("h_misc07")
   AddExperienceParty(800)
   TakePartyGold(2400)
   GiveGoldForce(480)~ EXIT
END

IF ~~ THEN BEGIN 305
   SAY ~The news has already reached my ears, along with a rather hefty sum from his doting wife. Quite a tidy amount, I must say.~ IF ~~ THEN GOTO 306
END

IF ~~ THEN BEGIN 306
   SAY ~Good work, <CHARNAME>. It's these kinds of results that bolster our standing and ensure our coffers are well-lined.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@336,QUEST_DONE)
   GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 307
   SAY ~You did what? Killed Pruflas? I'm not interested in the messy details, <CHARNAME>. This isn't just a botched job, it's a blunder that's cost us dearly.~ IF ~~ THEN GOTO 308
END

IF ~~ THEN BEGIN 308
   SAY ~We lose not just the payment but face a potential backlash. I expect a higher caliber of discretion and competence from those in our ranks.~ IF ~~ THEN GOTO 309
END

IF ~~ THEN BEGIN 309
   SAY ~Let this serve as a stark reminder that in our line of work, every action has its price, and it's high time you start weighing yours more carefully.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@337,QUEST_DONE)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",17)~ THEN BEGIN 310
   SAY ~At present, the wellspring of leads has run dry. I suggest you converse with our guild's brethren, their pursuits may reveal tasks suited to your particular skills.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",18)~ THEN BEGIN 311
   SAY ~Ah, so you're at the helm now, are you? I must admit, the guild was running like a well-oiled machine until Baldwin lost his bearings.~ IF ~~ THEN GOTO 312
END

IF ~~ THEN BEGIN 312
   SAY ~If you can steer this ship with a firm hand, keep us on course, we might just weather this storm.~ IF ~~ THEN GOTO 313
END

IF ~~ THEN BEGIN 313
   SAY ~Remember, a leader in our line of work needs more than just ambition, it requires a shrewd mind and a keen eye for the shadows.~ IF ~~ THEN GOTO 314
END

IF ~~ THEN BEGIN 314
   SAY ~Do it right, and we'll be back to our profitable ways in no time.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",19)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",19)~ THEN BEGIN 315
   SAY ~Ah, the Guildmaster graces us with their presence. Our operations are running as smooth as silk under the cover of night, just as you'd like to hear.~
IF ~~ THEN EXIT
END

