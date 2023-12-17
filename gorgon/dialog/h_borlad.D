APPEND MTBE5

IF WEIGHT #-1 ~Global("h_BorlandPays","GLOBAL",0) Global("h_BorlandCloses","GLOBAL",0) Global("h_RigaldoQuest","GLOBAL",12)~ THEN BEGIN B_0
   SAY ~Ah, welcome to my humble abode. I'm not accustomed to receiving guests unannounced, but I'm always open to new faces. What brings you to my doorstep today?~
       ++ ~Greetings Borland. I've come to make arrangements regarding your future contributions to the Gorgon's Eye.~ GOTO B_2
       ++ ~I'm here to put an end to your operation, Borland. It's time to close down, for the good of everyone.~ GOTO B_33
       ++ ~Apologies, wrong residence. Please excuse the intrusion.~ GOTO B_1
END

IF ~~ THEN BEGIN B_1
   SAY ~Oh, I see. No harm done, stranger. It's easy to lose one's way around here. If you're ever in need of a place to rest or just a friendly chat, my door is always open to travelers.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN B_2
   SAY ~Future contributions to the Gorgon's Eye, is it? I assure you, you must be mistaken in your visit. I'm just a humble host to travelers.~ IF ~~ THEN GOTO B_3
END

IF ~~ THEN BEGIN B_3
   SAY ~Dealings with a guild like yours aren't exactly in my ledger. I think there's been some misunderstanding here.~ IF ~~ THEN GOTO B_4
END

IF ~~ THEN BEGIN B_4
   SAY ~Surely, a man of my simple means wouldn't be on your radar for... contributions, as you put it.~
       ++ ~Cut the act, Borland. Your little side business hasn't gone unnoticed. The Gorgon's Eye wants in on your spice trade. Pay up, or shut down.~ GOTO B_5
       ++ ~You've been dealing spice without our consent. Let's find a middle ground where you continue your business with the Gorgon's Eye's oversight.~ GOTO B_5
       ++ ~I'm not here to threaten, Borland, but your spice trade raises concerns. We suggest a contribution of your profits for our partnership.~ GOTO B_5
END

IF ~~ THEN BEGIN B_5
   SAY ~Absolutely not! This is my home, my business, and I've built it from the ground up! How dare you barge in here demanding a share of what I've worked so hard to create!~ IF ~~ THEN GOTO B_6
END

IF ~~ THEN BEGIN B_6
   SAY ~You think you can just waltz in and take a cut because you call yourselves the Gorgon's Eye? I don't care for your threats or your offers of 'oversight'.~ IF ~~ THEN GOTO B_7
END

IF ~~ THEN BEGIN B_7
   SAY ~I've operated just fine without your consent, and I intend to keep it that way. This is extortion, plain and simple!~
       +~CheckStatGT(Player1,17,STR)~+ ~Refusing our offer might lead to an unfortunate show of force. It's better to comply and avoid a physical demonstration of what happens when you defy us.~ GOTO B_8
       +~CheckStatLT(Player1,18,STR)~+ ~Refusing our offer might lead to an unfortunate show of force. It's better to comply and avoid a physical demonstration of what happens when you defy us.~ GOTO B_26
       +~CheckStatGT(Player1,17,INT)~+ ~Analyze your situation critically. By defying the Gorgon's Eye, you risk everything. Our oversight offers protection and stability, it's a strategic alliance.~ GOTO B_10
       +~CheckStatLT(Player1,18,INT)~+ ~Analyze your situation critically. By defying the Gorgon's Eye, you risk everything. Our oversight offers protection and stability, it's a strategic alliance.~ GOTO B_26
       +~CheckStatGT(Player1,17,WIS)~+ ~Aligning with us isn't just about submission; it's about foreseeing the path ahead. Wisdom is knowing when to adapt. It could be more beneficial than you realize.~ GOTO B_12
       +~CheckStatLT(Player1,18,WIS)~+ ~Aligning with us isn't just about submission; it's about foreseeing the path ahead. Wisdom is knowing when to adapt. It could be more beneficial than you realize.~ GOTO B_26
       +~CheckStatGT(Player1,17,CHR)~+ ~Imagine the growth and influence your business could achieve with us by your side. We're offering you a chance to expand, not just survive.~ GOTO B_14
       +~CheckStatLT(Player1,18,CHR)~+ ~Imagine the growth and influence your business could achieve with us by your side. We're offering you a chance to expand, not just survive.~ GOTO B_26
END

IF ~~ THEN BEGIN B_8
   SAY ~I can see there's no flexing against the muscle of the Gorgon's Eye. It's a hard pill to swallow, being strong-armed like this. But what choice do I have?~ IF ~~ THEN GOTO B_9
END

IF ~~ THEN BEGIN B_9
   SAY ~The pressure of your strength is undeniable, and it leaves me with little room to maneuver. Perhaps there's some logic in yielding, but it's a difficult thought to entertain.~ IF ~~ THEN GOTO B_16
END

IF ~~ THEN BEGIN B_10
   SAY ~Outsmarted at my own game... that's hard to swallow. The logic of your position is clear, albeit infuriating. I see no benefit in resisting a force that has outthought me. ~ IF ~~ THEN GOTO B_11
END

IF ~~ THEN BEGIN B_11
   SAY ~You've painted me into a strategic corner, and it's irksome to be outplayed at my own game. While it galls me to consider it, perhaps there's a practical side to your proposal.~ IF ~~ THEN GOTO B_16
END

IF ~~ THEN BEGIN B_12
   SAY ~Hmm... Your perspective forces me to look beyond the immediate, though it's against my instincts. There's sense in your words, even if it chafes to admit it.~ IF ~~ THEN GOTO B_13
END

IF ~~ THEN BEGIN B_13
   SAY ~The prospect of gaining broader perspectives and guidance does have its appeal. It might be wise to consider the long-term benefits of this partnership.~ IF ~~ THEN GOTO B_16
END

IF ~~ THEN BEGIN B_14
   SAY ~Hmm... Charmed or coerced, I can't quite tell which. It's vexing to be swayed against my better judgement, but I find myself pondering the potential benefits, despite myself.~ IF ~~ THEN GOTO B_15
END

IF ~~ THEN BEGIN B_15
   SAY ~Is there merit in this partnership you propose? It's a bitter pill, but I see no other way out.~ IF ~~ THEN GOTO B_16
END

IF ~~ THEN BEGIN B_16
   SAY ~Here I am, faced with decisions that I never imagined I'd have to make. This 'partnership' with the Gorgon's Eye, it's clear now, is not a matter of choice but of necessity.~ IF ~~ THEN GOTO B_17
END

IF ~~ THEN BEGIN B_17
   SAY ~I'll agree to your terms, but it's an agreement born from pressure, not mutual respect or desire. I'm doing this to protect what I've built, though it feels more like capitulation than cooperation.~ IF ~~ THEN GOTO B_18
END

IF ~~ THEN BEGIN B_18
   SAY ~Let's proceed then, with this arrangement, and see where it leads us.~
       ++ ~Glad you're on board, Borland. We look forward to a prosperous relationship.~ GOTO B_19
       ++ ~It's a smart move, Borland. This partnership will be mutually beneficial.~ GOTO B_19
       ++ ~Wise decision, Borland. But remember, we're watching. Any slip-ups, and you'll find us less than forgiving.~ GOTO B_23
END

IF ~~ THEN BEGIN B_19
   SAY ~I suppose there's no turning back now. This partnership, if we can call it that, marks a significant shift in how I've always operated.~ IF ~~ THEN GOTO B_20
END

IF ~~ THEN BEGIN B_20
   SAY ~While I can't say I'm entirely pleased with these new terms, I understand the necessity given the circumstances.~ IF ~~ THEN GOTO B_21
END

IF ~~ THEN BEGIN B_21
   SAY ~I'll make the necessary preparations for our arrangement and brace for the changes ahead.~ IF ~~ THEN GOTO B_22
END

IF ~~ THEN BEGIN B_22
   SAY ~Let's just hope that this alliance brings more than just oversight and that the promises of stability and growth aren't hollow.~
IF ~~ THEN DO ~
   SetGlobal("h_BorlandPays","GLOBAL",2)
   AddJournalEntry(@325,QUEST)~ EXIT
END

IF ~~ THEN BEGIN B_23
   SAY ~So, this is the hand I've been dealt. Forced into a corner, with little choice but to agree to your demands. Against the might of the Gorgon's Eye, my options are limited.~ IF ~~ THEN GOTO B_24
END

IF ~~ THEN BEGIN B_24
   SAY ~I'll ensure your collections are as timely and complete as you demand. Though coerced into this agreement, I can only hope it doesn't spell the ruin of everything I've built.~ IF ~~ THEN GOTO B_25
END

IF ~~ THEN BEGIN B_25
   SAY ~You'll have your share, as agreed, but know that this 'partnership' was never my choice.~
IF ~~ THEN DO ~
   SetGlobal("h_BorlandPays","GLOBAL",2)
   AddJournalEntry(@325,QUEST)~ EXIT
END

IF ~~ THEN BEGIN B_26
   SAY ~You come into my home, making demands and threats, and expect me to bow to your will? Your words have no sway here, and your attempts to intimidate and persuade me are laughable at best.~ IF ~~ THEN GOTO B_27
END

IF ~~ THEN BEGIN B_27
   SAY ~You've gravely underestimated who you're dealing with. Do you know who I am? Borland of Beregost is not some lowly street merchant to be bullied by the likes of you!~ IF ~~ THEN GOTO B_28
END

IF ~~ THEN BEGIN B_28
   SAY ~I have connections, deep within the City Watch, officials whose loyalty I've secured. They turn a blind eye to my operations, ensuring my business thrives without interference.~ IF ~~ THEN GOTO B_29
END

IF ~~ THEN BEGIN B_29
   SAY ~You thought you could just walk in and take a slice of my empire? What a fool! Zylark! Show yourself and handle this intruder! Teach them the price of meddling in the affairs of Borland!~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnZylark","GLOBAL",1)
   SetGlobal("h_BorlandPays","GLOBAL",1)
   CreateCreature("h_zylarc",[280.352],E)~ EXIT
END

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",12) GlobalGT("h_SpawnZylark","GLOBAL",1) Global("h_BorlandPays","GLOBAL",1)~ THEN BEGIN B_30
   SAY ~By the gods... I never thought... Zylark was one of the best, and yet you... you dispatched him so easily. I see now that I've severely misjudged the situation and underestimated you.~ IF ~~ THEN GOTO B_31
END

IF ~~ THEN BEGIN B_31
   SAY ~Please, let's not have any more bloodshed. I'll agree to your terms. Whatever the Gorgon's Eye demands of my operation, I'll comply. Just... no more violence.~
IF ~~ THEN DO ~
   SetGlobal("h_BorlandPays","GLOBAL",2)
   SetGlobal("h_SpawnZylark","GLOBAL",3)
   AddJournalEntry(@325,QUEST)~ EXIT
END

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",12) Global("h_BorlandPays","GLOBAL",2)~ THEN BEGIN B_32
   SAY ~Ah, it's you again. I haven't forgotten our 'arrangement', don't worry. The contributions are being made as agreed, though I can't say I'm pleased about it.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN B_33
   SAY ~End my operation? Oh, you must mean my little hospitality business. How dreadful that offering weary travelers a free place to rest could be seen as such a terrible thing.~ IF ~~ THEN GOTO B_34
END

IF ~~ THEN BEGIN B_34
   SAY ~Surely, you're not here to shut down a man's charitable deeds?  All I have here are open doors and warm beds for those in need.~
       ++ ~The Gorgon's Eye is aware of your spice trade. It's harming the community, and it's time you stopped.~ GOTO B_35
       ++ ~Cut the act, Borland. Your spice dealings are interfering with the Gorgon's Eye's operations. Shut it down now, or we'll do it by force.~ GOTO B_35
END

IF ~~ THEN BEGIN B_35
   SAY ~You come into my home, wielding the name of the Gorgon's Eye as if it were some sort of royal decree, expecting me to cower and comply?~ IF ~~ THEN GOTO B_36
END

IF ~~ THEN BEGIN B_36
   SAY ~I've built this operation from nothing, and I won't be bullied into submission, not by you or your guild.~ IF ~~ THEN GOTO B_37
END

IF ~~ THEN BEGIN B_37
   SAY ~You think you can just waltz in here and dictate terms? I've faced challenges before and I'll face this one head-on too. The Gorgon's Eye may be a force in this town, but so am I.~ IF ~~ THEN GOTO B_38
END

IF ~~ THEN BEGIN B_38
   SAY ~I won't be dismantled by threats or coerced into fear. You've picked the wrong man to intimidate.~
       +~CheckStatGT(Player1,17,STR)~+ ~The strength behind the Gorgon's Eye is not to be underestimated. We can, and will, dismantle your operation if you force our hand. It's in your best interest to shut down now.~ GOTO B_39
       +~CheckStatLT(Player1,18,STR)~+ ~The strength behind the Gorgon's Eye is not to be underestimated. We can, and will, dismantle your operation if you force our hand. It's in your best interest to shut down now.~ GOTO B_54
       +~CheckStatGT(Player1,17,INT)~+ ~Think logically about this. Continuing your trade under these circumstances only invites risk and conflict. Shutting down is the smart move, both for your safety and your future prospects.~ GOTO B_41
       +~CheckStatLT(Player1,18,INT)~+ ~Think logically about this. Continuing your trade under these circumstances only invites risk and conflict. Shutting down is the smart move, both for your safety and your future prospects.~ GOTO B_55
       +~CheckStatGT(Player1,17,WIS)~+ ~Borland, consider the wider implications. Continuing this path leads to inevitable downfall. It's not just about today; it's about your long-term well-being.~ GOTO B_43
       +~CheckStatLT(Player1,18,WIS)~+ ~Borland, consider the wider implications. Continuing this path leads to inevitable downfall. It's not just about today; it's about your long-term well-being.~ GOTO B_56
       +~CheckStatGT(Player1,17,CHR)~+ ~Let's approach this with mutual understanding. Shutting down this side business preserves your reputation and spares you from a conflict you can't win. It's the more favorable path.~ GOTO B_45
       +~CheckStatLT(Player1,18,CHR)~+ ~Let's approach this with mutual understanding. Shutting down this side business preserves your reputation and spares you from a conflict you can't win. It's the more favorable path.~ GOTO B_57
       ++ ~Borland, if you won't shut down willingly, perhaps the City Watch should know about your Black Lotus trade. Close down now or face legal consequences.~ GOTO B_59
END

IF ~~ THEN BEGIN B_39
   SAY ~Your show of force is unsettling, to say the least. I built this business to stand on its own, not to be threatened into submission. Yet, the power you wield isn't something I can ignore.~ IF ~~ THEN GOTO B_40
END

IF ~~ THEN BEGIN B_40
   SAY ~It's a hard truth to face, but maybe shutting down is the lesser of two evils. I need to consider this carefully.~ IF ~~ THEN GOTO B_47
END

IF ~~ THEN BEGIN B_41
   SAY ~You make a logical argument, more's the pity. It's frustrating to admit that continuing might bring more harm than good.~ IF ~~ THEN GOTO B_42
END

IF ~~ THEN BEGIN B_42
   SAY ~My pride wants to fight, but my mind sees the sense in your words. Shutting down might indeed be the smarter choice.~ IF ~~ THEN GOTO B_47
END

IF ~~ THEN BEGIN B_43
   SAY ~You're forcing me to look at the bigger picture, something I've been avoiding. While I resent the suggestion, I can't deny the wisdom in your foresight.~ IF ~~ THEN GOTO B_44
END

IF ~~ THEN BEGIN B_44
   SAY ~The future does look bleak if I continue as is. This decision isn't easy, but I need to ponder the potential outcomes.~ IF ~~ THEN GOTO B_47
END

IF ~~ THEN BEGIN B_45
   SAY ~Your words are persuasive, and that bothers me. I wanted to protect what I've built, not dismantle it.~ IF ~~ THEN GOTO B_46
END

IF ~~ THEN BEGIN B_46
   SAY ~Yet, the way you put it, shutting down could actually preserve my standing in the long run. It's a bitter pill, but maybe it's the right one. I need to weigh this option.~ IF ~~ THEN GOTO B_47
END

IF ~~ THEN BEGIN B_47
   SAY ~Well, after mulling over what you've said, as much as it grates against me, I see that I have little choice. You've backed me into a corner and made valid points I can't just ignore.~ IF ~~ THEN GOTO B_48
END

IF ~~ THEN BEGIN B_48
   SAY ~So, I'll shut down the operation. It's not a decision I make lightly, and it's certainly not one I'm happy about. But it seems to be the only sensible course of action under the circumstances.~ IF ~~ THEN GOTO B_49
END

IF ~~ THEN BEGIN B_49
   SAY ~You've won, and my business, as you so forcefully pointed out, has to end.~
       ++ ~I'm glad you're seeing reason, Borland. It's for the best. This decision will benefit you and the community in the long run.~ GOTO B_50
       ++ ~It's a wise choice, Borland. Shutting down this operation is the right move under these circumstances.~ GOTO B_50
       ++ ~Finally, you come to your senses. Just remember, we will be watching. Any attempts to restart this operation, and it won't end so nicely.~ GOTO B_52
END

IF ~~ THEN BEGIN B_50
   SAY ~ I'll shut it down, but don't think this has earned you or the Gorgon's Eye any respect. You've strong-armed a hardworking man out of his livelihood.~ IF ~~ THEN GOTO B_51
END

IF ~~ THEN BEGIN B_51
   SAY ~Now, get out of my sight before I reconsider my compliance with your so-called 'reasonable' demands.~
IF ~~ THEN DO ~
   SetGlobal("h_BorlandCloses","GLOBAL",2)
   AddJournalEntry(@326,QUEST)~ EXIT
END

IF ~~ THEN BEGIN B_52
   SAY ~So, it's done. I'll close my operation, but mark my words, the Gorgon's Eye and you, its puppet, will get no gratitude from me. You've crushed what I've built with threats and intimidation.~ IF ~~ THEN GOTO B_53
END

IF ~~ THEN BEGIN B_53
   SAY ~Here, take the last of the lotus. This is all that's left of what I had. Now, I've done what you've asked, so I'd appreciate it if you'd leave my property. There's nothing more for you here.~
IF ~~ THEN DO ~
   SetGlobal("h_BorlandCloses","GLOBAL",2)
   AddJournalEntry(@326,QUEST)
   GiveItemCreate("h_misc07",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN B_54
   SAY ~You think a little show of muscle can scare me into closing shop? I've dealt with bigger threats than you, and I'm still standing. Your attempt at intimidation is more pitiful than persuasive.~ IF ~~ THEN GOTO B_58
END

IF ~~ THEN BEGIN B_55
   SAY ~Your reasoning falls flat, I'm afraid. Did you really think a few logical points would sway me? I've been in this business long enough to know better than to fold at the first sign of trouble.~ IF ~~ THEN GOTO B_58
END

IF ~~ THEN BEGIN B_56
   SAY ~Foreseeing doom and gloom, are we? I find your so-called 'wisdom' quite laughable. I've navigated tougher situations than this. Your warnings are nothing but empty words to me.~ IF ~~ THEN GOTO B_58
END

IF ~~ THEN BEGIN B_57
   SAY ~Your charm won't work on me. I've heard smoother talkers than you, and I haven't budged. It's almost funny how you thought you could sway me with sweet words. You're out of your depth.~ IF ~~ THEN GOTO B_58
END

IF ~~ THEN BEGIN B_58
   SAY ~All this talk, all these threats and attempts at persuasion, and you think you have the upper hand?~ IF ~~ THEN GOTO B_59
END

IF ~~ THEN BEGIN B_59
   SAY ~Let me enlighten you. The City Watch? They're in my pocket, and they turn a blind eye to my operations. You're not just up against me; you're up against a network that you can't hope to topple.~ IF ~~ THEN GOTO B_60
END

IF ~~ THEN BEGIN B_60
   SAY ~You've made a grave mistake coming here and making enemies out of people like me. You're outmatched and outplayed. Zylark! This fool's time has come to an end. Take care of them.~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnZylark","GLOBAL",1)
   SetGlobal("h_BorlandCloses","GLOBAL",1)
   CreateCreature("h_zylarc",[280.352],E)~ EXIT
END

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",12) GlobalGT("h_SpawnZylark","GLOBAL",1) Global("h_BorlandCloses","GLOBAL",1)~ THEN BEGIN B_61
   SAY ~By the gods... I never thought... Zylark was one of the best, and yet you... you dispatched him so easily. I see now that I've severely misjudged the situation and underestimated you.~ IF ~~ THEN GOTO B_62
END

IF ~~ THEN BEGIN B_62
   SAY ~Please, let's not have any more bloodshed. I'll agree to your terms. Whatever the Gorgon's Eye demands of my operation, I'll comply. Just... no more violence.~ IF ~~ THEN GOTO B_63
END

IF ~~ THEN BEGIN B_63
   SAY ~Here, take the last of the lotus. This is all that's left of what I had. Now, I've done what you've asked, so I'd appreciate it if you'd leave my property. There's nothing more for you here.~
IF ~~ THEN DO ~
   SetGlobal("h_BorlandCloses","GLOBAL",2)
   SetGlobal("h_SpawnZylark","GLOBAL",3)
   AddJournalEntry(@325,QUEST)
   GiveItemCreate("h_misc07",LastTalkedToBy,0,0,0)~ EXIT
END

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",12) Global("h_BorlandCloses","GLOBAL",2)~ THEN BEGIN B_64
   SAY ~I haven't forgotten what transpired between us. The operation has been ceased, just as you demanded. It's a bitter pill to swallow, closing down what I've built, but it's done. Happy now?~
IF ~~ THEN EXIT
END

END