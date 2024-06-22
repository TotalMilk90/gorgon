BEGIN h_aishad

IF ~Global("h_AishaBounty","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Oh! You've... startled me. I'm sorry, I'm not really... available for company right now.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Please, I just need some time alone. It's been a... difficult night, and I'm still trying to... make sense of things.~
       +~GlobalLT("h_LiedelQuest","GLOBAL",2)~+ ~I don't want to pry, but you seem troubled. Is there anything I can do to help?~ GOTO 2
       +~GlobalGT("h_LiedelQuest","GLOBAL",1)~+ ~Steady yourself, Aisha. I'm clued in on the bounty. I just want to know why someones got it in for you.~ GOTO 13
       +~GlobalGT("h_LiedelQuest","GLOBAL",1)~+ ~Cut the crap, Aisha. I'm here for the bounty. Best not make this messier than it needs to be.~ GOTO 11
       ++ ~Not available for company? What do you mean by that?~ GOTO 7
       ++ ~Seems like you've got a lot on your plate right now. I'll leave you to it.~ GOTO 10
END

IF ~~ THEN BEGIN 2
   SAY ~Oh, it's kind of you to offer help, really. But, I... I'm not sure if there's anything anyone can do.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~It's just a complicated situation, you know? The kind that you hope to wake up from and find it's just a bad dream.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~I'm just trying to stay out of sight, out of mind. Maybe it'll all blow over soon. That's what I keep telling myself, at least.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~Sorry, I wish I could say more, but I'm just... not sure it's safe to, for you or for me.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Thank you for your concern. I just... I really need some time alone right now. I appreciate your kindness.~
       ++ ~Not available for company? What do you mean by that?~ GOTO 7
       ++ ~Seems like you've got a lot on your plate right now. I'll leave you to it.~ GOTO 10
END

IF ~~ THEN BEGIN 7
   SAY ~Ah, you mean my work... Yes, I am a courtesan, and normally, I'd welcome company, to offer conversation or... comfort.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~But right now, I'm just not in the right frame of mind for... for any of that. Recent events have left me a bit shaken, and I need some time to gather myself, to process everything.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~My mind's a whirlwind of thoughts, and fears... It's not often that I find myself wishing for solitude, but here we are.~
       +~GlobalGT("h_LiedelQuest","GLOBAL",1)~+ ~Steady yourself, Aisha. I'm clued in on the bounty. I just want to know why someones got it in for you.~ GOTO 13
       +~GlobalGT("h_LiedelQuest","GLOBAL",1)~+ ~Cut the crap, Aisha. I'm here for the bounty. Best not make this messier than it needs to be.~ GOTO 11
       +~GlobalLT("h_LiedelQuest","GLOBAL",2)~+ ~I don't want to pry, but you seem troubled. Is there anything I can do to help?~ GOTO 2
       ++ ~Seems like you've got a lot on your plate right now. I'll leave you to it.~ GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~I appreciate your discretion. Sometimes it's hard to know who to trust. I'll manage somehow. Thank you.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
   SAY ~Please, wait! This bounty, it's... it's all a terrible mistake, a misunderstanding. He... Amrius, he's the one who should be answering for what he did, not me.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~I was just trying to protect myself. Please, you have to believe me. There's more to this than what it seems, if you'd only give me a chance to explain!~
       ++ ~Alright, spill it. I'm listening.~ GOTO 13
       ++ ~Sorry sweetheart, but you ain't my type. (Snap her neck.)~ GOTO 27
END

IF ~~ THEN BEGIN 13
   SAY ~Oh, gods. A-alright, where do I even begin? I... I work as an escort in the taverns around here. It's a job, just like any other, and it's always been on my own terms.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~But, the other night, I was at the Burning Wizard, just for a quiet drink, not working or anything. That's when Amrius showed up, completely drunk, reeking of ale and arrogance.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~He demanded that I leave with him, but I told him no, that I was off duty... but he wouldn't listen. He just got angrier, and more insistent. He grabbed at me, and I had to fight him off.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~He was so drunk he could barely stand. He stumbled back into a table, crashing down in a mess of food, drink and blood, his face mangled from who knows what.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~The whole tavern erupted in laughter at the sight of him. I was so scared, but I saw my chance and I ran. I haven't stopped shaking since.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~The next morning, when I heard about the bounty... It's like my worst nightmare coming true, and I haven't dared to leave this room since.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~And... there you have it. That's the whole, frightful mess I find myself in now. I never imagined a simple refusal could turn my life upside down like this.~
       ++ ~What else can you tell me about Amrius? Any details that could help me understand the situation better?~ GOTO 20
       ++ ~Where can I find him? Maybe I can convince him to remove the bounty.~ GOTO 25
       ++ ~Tragic story, but it changes nothing for me. A bounty is a bounty, and I intend to collect it. (Snap her neck.)~ GOTO 27
END

IF ~~ THEN BEGIN 20
   SAY ~Well, Amrius and I... we have some history, you could say. He's been a client of mine, more than once. I always thought it was just business... he paid, I provided company, nothing more.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~But, looking back, there was a certain... intensity in his eyes, a way he spoke that made me uneasy. It's as if, with each meeting, he believed he owned a part of me.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~And last night, when I said 'no', it was like I shattered some illusion he had about us. Like he thought our history gave him some kind of... entitlement to me.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~I can't help but feel that it's my fault somehow... that I somehow led him on. Did my professionalism give him the wrong idea?~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~I'm just... really frightened, about how wrong I was, about how dangerous his obsession might be. I never imagined it would lead to this.~
       ++ ~Where can I find him? Maybe I can convince him to remove the bounty.~ GOTO 25
       ++ ~Tragic story, but it changes nothing for me. A bounty is a bounty, and I intend to collect it. (Snap her neck.)~ GOTO 27
END

IF ~~ THEN BEGIN 25
   SAY ~Really? You'd do that for me? Oh, thank you! Thank you so much. I've heard that he's still at the Burning Wizard, probably nursing his wounds and his pride after... our altercation.~ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY ~Please, be careful, though. Amrius can be... unpredictable, especially now. But just knowing you're willing to help, it means more than I can express.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",1)
   AddJournalEntry(@421,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 27
   SAY ~N-no! Stay back!~
IF ~~ THEN DO ~
   Kill("h_aishac")
   AddJournalEntry(@420,QUEST)
   ReputationInc(-1)~ EXIT
END

IF ~Global("h_AishaBounty","GLOBAL",1)~ THEN BEGIN 28
   SAY ~Any updates on this dreadful situation? The suspense is almost too much to bear, and I'm clinging to any shred of hope here.~
       +~Global("h_AmriusMentionsIlena","GLOBAL",1)~+ ~Amrius told me a different story about jealousy and a fight that you started. Is there any truth to that?~ GOTO 31
       +~Global("h_PayAmrius","GLOBAL",1)~+ ~He's demanding a ransom of 1000 gold to call it off. It's an outrageous amount, but that's his condition.~ GOTO 35
       +~OR(2) Global("h_PayAmrius","GLOBAL",2) Global("h_ConvincedAmrius","GLOBAL",1)~+ ~Things with Amrius are settled, and he's agreed to remove the bounty. You're out of harm's way.~ GOTO 65
       ++ ~I haven't spoken to Amrius yet. But don't worry, I'll sort this out and get back to you with answers.~ GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~Oh, I see. Well, I'm holding onto hope that you can sort things out with him. Your willingness to help means the world to me in such a frightening time.~ IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY ~But please, be cautious around Amrius, he's not the most reasonable when he's upset. I'll be here, trying to stay calm and waiting anxiously for any news you bring.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31
   SAY ~His story? About jealousy? Well, it's... You see, things aren't always black and white. But jealousy over Ilena? That's... ridiculous.~ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~I mean, why would I be? She's just another face in the crowd, nothing special. But the way Amrius was parading around her, laughing and whispering, as if I wasn't even there.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY ~It was like a game to him, a way to get a rise out of me. And maybe, just maybe, it worked. It's not that I care about Ilena, but the disrespect, the way he disregarded me, treated me like I was invisible.~ IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
   SAY ~It was humiliating, infuriating! And yes, I was angry, who wouldn't be? To be made a fool of in front of everyone. But to say I started a fight out of jealousy? That's not the whole truth!~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 35
   SAY ~One thousand gold? That... insufferable brute! What on earth does he think he's going to do with that much? Oh, wait, I know, he's probably planning to elope with that... that Ilena!~ IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
   SAY ~Can you believe the nerve of him? Asking for a king's ransom as if he's entitled to it, and for what? To run away with her? That's just like him, scheming and dreaming up grand plans.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
   SAY ~And Ilena, oh, don't get me started on her. She struts around like she owns the place, batting her eyelashes, thinking she's the town's darling.~ IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY ~It's all an act, I tell you. A performance to fool everyone into thinking she's this innocent little flower. But I see through it, I do.~ IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
   SAY ~They're both as bad as each other, him with his delusions of grandeur, and her with her little miss perfect act.~ IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
   SAY ~But I'm onto them. Ilena's sweet facade doesn't fool me. Beneath that veneer of purity, there's a manipulator, a schemer. She's not above this, not above using people for her own gain.~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
   SAY ~And Amrius, he's just a pawn, a puppet in her hands. Well, let them have their little game. I'm not playing by their rules anymore.~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
   SAY ~They think they can control me, sideline me? I'll be the one to turn the tables. I'll show them, just you watch. They won't see me coming.~
       ++ ~I'm no expert, but I think we might have found the root of the problem. I'll come back after speaking with Ilena.~ GOTO 43
       ++ ~Wait, Ilena from the Gorgon's Eye? I'll go and see what she has to say about all this.~ GOTO 43
       ++ ~Uhh, that escalated quickly. I'm going to need some time to... process my thoughts here.~ GOTO 45
       ++ ~Well, that was quite the performance. I'm not sure if I should applaud or be concerned.~ GOTO 45
END

IF ~~ THEN BEGIN 43
   SAY ~Just be careful with that one. She's got a way of twisting words and batting eyes that can turn the heads of even the most discerning.~ IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
   SAY ~Don't let her sweet talk fool you. She's more cunning than she lets on. But then, I'm sure you'll figure that out soon enough.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",2)
   AddJournalEntry(@468,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 45
   SAY ~Well, I might not have Ilena's talent for weaving tales and charming every ear in the room, but at least I'm honest.~ IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
   SAY ~She's the one you should watch out for. All sugar on the surface, but underneath? Well, let's just say, she's got her own agenda.~ IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
   SAY ~Just remember, not everything that glitters in Ilena's world is gold.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",2)
   AddJournalEntry(@468,QUEST)~ EXIT
END

IF ~Global("h_AishaBounty","GLOBAL",2)~ THEN BEGIN 48
   SAY ~Oh, off to see Ilena now, are we? She's just wonderful, isn't she? So charming, so beloved by everyone. They all adore her, hanging on her every word. She can do no wrong in their eyes.~ IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
   SAY ~Don't mind me, though, go and hear her side, her perfectly crafted, honey-dripped words. It's what everyone does.~ IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
   SAY ~But remember, while she's weaving her sweet little stories, there's always more lurking beneath that perfect veneer. Oh, but you'll see, you'll see... everyone does, eventually.~
IF ~~ THEN EXIT
END

IF ~Global("h_AishaBounty","GLOBAL",3)~ THEN BEGIN 51
   SAY ~Oh, you're back! I've been thinking about earlier, and I... I just want to apologize for how I acted. I don't know what came over me, really. It's not like me to be so harsh and catty.~ IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
   SAY ~I guess the stress of everything with Amrius just got to me. I'm usually not that kind of person, you know? I'm truly sorry if I came across as unpleasant.~ IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
   SAY ~But, um, have you had any luck? Any updates on Amrius and the situation with the bounty?~
   +~Global("h_ConvincedIlena","GLOBAL",1)~+ ~Ilena spoke with Amrius, and she managed to convince him to remove the bounty. You're safe now.~ GOTO 56
   +~Global("h_ConvincedIlena","GLOBAL",0)~+ ~Truth be told, I've actually decided to kill you and cash in on that bounty. (Snap her neck.)~ DO ~Kill("h_aishac") AddJournalEntry(@420,QUEST)~ EXIT
   ++ ~Not yet, Aisha. I'm still working on it. I'll update you when there's news.~ GOTO 54
END

IF ~~ THEN BEGIN 54
   SAY ~I understand these things can't be rushed. Just knowing you're on it gives me some peace of mind. Thank you for keeping at it.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",4)~ EXIT
END

IF ~Global("h_AishaBounty","GLOBAL",4)~ THEN BEGIN 55
   SAY ~There you are! I've been so on edge waiting to hear from you. Any updates on our situation? Anything at all would be a relief to hear.~
       +~Global("h_ConvincedIlena","GLOBAL",1)~+ ~Ilena spoke with Amrius, and she managed to convince him to remove the bounty. You're safe now.~ GOTO 56
       +~Global("h_ConvincedIlena","GLOBAL",0)~+ ~Truth be told, I've actually decided to kill you and cash in on that bounty. (Snap her neck.)~ DO ~Kill("h_aishac") AddJournalEntry(@420,QUEST)~ EXIT
       ++ ~Not yet, Aisha. I'm still working on it. I'll update you when there's news.~ GOTO 54
END

IF ~~ THEN BEGIN 56
   SAY ~He... he lifted the bounty because of Ilena? I can't believe it. Why would Amrius listen to her? It doesn't make sense. It's... it's absurd, preposterous!~ IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
   SAY ~She's nothing, a nobody, and yet... yet he just drops it at her say-so? Because she bats her eyelashes? I can't believe it. I won't! It's a mockery of everything, a complete farce!~ IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
   SAY ~All this time, the threat of the bounty... it was a connection, a twisted acknowledgment.~ IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
   SAY ~It was proof! Proof that I was still there in his thoughts, his heart... that I got under his skin enough to push him to that extreme!~ IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
   SAY ~But now? Am I so insignificant that he'd just toss me aside for her? It feels like a betrayal, like I'm worth less than... less than whatever she offered him. It's infuriating!~ IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61
   SAY ~Ilena, with her pretty words and perfect hair, coming in and stealing my place? No, it's more than that. She's stolen my significance, she's made me a ghost in his mind.~ IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
   SAY ~It's all a game to her, and now she's won. She's taken my place... made me irrelevant. It's humiliating, degrading!~ IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
   SAY ~I refuse to be forgotten! This isn't the end. No, I'm going to find Amrius, and I'll make him see. I'll make him realize what he's done!~ IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64
   SAY ~He thinks he can erase me so easily? I'll show him, I'll show them both. They can't just discard me. I'm Aisha, and I won't be overlooked, not by him, not by anyone!~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",5)
   AddJournalEntry(@423,QUEST)
   AddExperienceParty(300)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 65
   SAY ~He did? Amrius removed the bounty? Oh, I can hardly believe it... That's incredible! I've been living under this dark cloud for so long, and now, just like that, it's gone.~ IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
   SAY ~This is... it's a miracle, a true miracle. I can finally breathe, finally live without looking over my shoulder every second. Thank you, I can't thank you enough for this.~ IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
   SAY ~But, you know, it's odd. Amrius, he's not one to change his mind easily, especially not when he's all riled up. I keep thinking back to that night at the tavern, the way things unfolded.~ IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
   SAY ~Ilena was there too, you know. I'm not saying she's involved, but it's curious. I can't help but wonder... Did she have something to do with this?~ IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69
   SAY ~It's not like Amrius to just... forgive. Not unless there's a reason, a push. And Ilena, she's always been so... perfect, and so poised. But what if she's not what she seems?~ IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
   SAY ~What if she's been playing a game this whole time, weaving her web around Amrius, around all of us? It's all starting to make a twisted kind of sense.~ IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71
   SAY ~She's the puppet master, and we're just her pawns in this elaborate game of hers. It's chilling, really, when you start to see the strings. I wonder what her endgame is, what she truly wants.~ IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
   SAY ~But one thing's for sure, I'm not going to let her pull the wool over my eyes. Not anymore. I'm going to find out what she's really up to.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",5)
   AddJournalEntry(@423,QUEST)
   AddExperienceParty(300)
   EscapeArea()~ EXIT
END
