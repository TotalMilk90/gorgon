BEGIN h_ilenad

IF ~Global("h_IlenaTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Oh, hi there! Can't say I've seen your face around here before. It's always a pleasure to meet someone new, especially in our cozy little hideaway.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~My name's Ilena, and I have... let's call it, a special touch for helping people unwind and feel right at home.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Whether it's a friendly chat or a bit more... private attention, I'm here to make you feel as comfortable as I can.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~And just so you know, my lips are sealed... except when they're not. I'm good at keeping secrets, and our moments together will stay between us, a hidden world that only we will know.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~So, are you curious about the little wonders we could explore together? Believe me, I have ways of making your time here feel like a dream you won't want to wake from.~
       +~Global("h_AishaBounty","GLOBAL",2)~+ ~I'm actually here to discuss the situation between Amrius and Aisha. There's a lot of talk about what happened, and your name came up.~ DO ~SetGlobal("h_IlenaTalk","GLOBAL",1)~ GOTO 16
       ++ ~Let's sit down for a while and talk. I'm always up for a good conversation.~ DO ~SetGlobal("h_IlenaTalk","GLOBAL",1)~ GOTO 6
       ++ ~I'm interested in spending some... private time together.~ DO ~SetGlobal("h_IlenaTalk","GLOBAL",1)~ GOTO 9
       ++ ~As much as I'd like to stay, I have some things I need to take care of.~ DO ~SetGlobal("h_IlenaTalk","GLOBAL",1)~ GOTO 12
END

IF ~Global("h_IlenaTalk","GLOBAL",1)~ THEN BEGIN 5
   SAY ~<CHARNAME>, my favorite visitor. I must be doing something right for you to find your way back to me. So, what brings you to my little corner of the world today?~
       +~Global("h_AishaBounty","GLOBAL",2)~+ ~I'm actually here to discuss the situation between Amrius and Aisha. There's a lot of talk about what happened, and your name came up.~ GOTO 16
       ++ ~Let's sit down for a while and talk. I'm always up for a good conversation.~ GOTO 6
       ++ ~I'm interested in spending some... private time together.~ GOTO 9
       ++ ~As much as I'd like to stay, I have some things I need to take care of.~ GOTO 15
END

IF ~~ THEN BEGIN 6
   SAY ~Oh, I'm so glad you said that! There's something uniquely enticing about a deep, meaningful conversation, isn't there?~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~Please, go speak with Madam Meredia to set things up. She'll ensure everything is just perfect for us.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~I'll be waiting, thinking about all the delightful possibilities our talk might bring. See you soon, then!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
   SAY ~Your interest flatters me. I assure you, spending private time together will be an experience you'll find deeply gratifying.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~There's a whole world of pleasure and sensation I'm eager to introduce you to. In fact, I'm already tingling at the thought of revealing my... special ways of bringing you joy.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~Please, arrange the details with Madam Meredia. She'll ensure we have the perfect setting for our encounter. The wait will be worth it, I promise.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
   SAY ~Such a shame you have to leave. I had already started imagining all the delightful ways we could have spent our time together. It's a real tease, isn't it?~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~But I understand, responsibilities must be tended to. Just know, when you return, I'll be here, eagerly waiting to turn those fantasies into reality.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~Imagine the possibilities, the whispers, the caresses... Let that thought keep you company until you're back. Don't keep me waiting too long, ok, darling?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
   SAY ~It was lovely spending time with you. Don't be a stranger, okay? I'll always be here for a chat or just to share a moment. Come back and visit me soon!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
   SAY ~Oh, not this again. What have they gotten themselves into now? It's like they can't go a day without some new melodrama. Every time I turn around, there's another saga brewing with those two.~
       ++ ~Believe it or not, Amrius has gone as far as putting a bounty on her after what happened the other night.~ GOTO 17
       ++ ~It's quite a mess, he's put a hit out on Aisha after their altercation at the Burning Wizard.~ GOTO 17
       ++ ~This time it's serious. Amrius has placed a bounty on Aisha's head. Apparently, there was a major blowup between them at the tavern.~ GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~You know, I might have been the only sober one there that night. It's a wild tale, but here's the truth.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~Amrius hired me specifically to ruffle Aisha's feathers. He knew she was at the Burning Wizard and wanted to make her jealous... classic Amrius move. And it worked.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~Aisha just lost it when she saw us together. She flew at him like a banshee, gave him a good thrashing, right there in the tavern. It was quite the scene.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~But wanting her dead? That's a bit extreme, even for Amrius. Here's the thing though, both of them, they're a bit... well, unhinged.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~Aisha and Amrius, they're like fire and oil. They set each other off in the worst ways. It's like they have these dual sides to them.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~One minute they're fine, the next, it's as if someone else takes over, someone with no control, no predictability. It's not just mood swings, it's like they're completely different people at times.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~You might say they're perfectly disastrous for each other. One moment, it's passionate love, the next, it's all-out war. Their emotions, their behaviors, you never know what you're going to get.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~It's why they're drawn to each other, and why they're so toxic. So, while the bounty is shocking, in a twisted way, it's just another chapter in their chaotic story.~
       ++ ~Since you seem to have some influence over Amrius, do you think you could persuade him to drop the bounty?~ GOTO 30
       ++ ~This whole saga is turning into a farce. I'm thinking it might be easier just to collect the bounty on Aisha and be done with it.~ GOTO 28
       ++ ~You know Amrius and Aisha better than most. What's your advice on how I should handle this situation?~ GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~Well, it's a tricky situation, isn't it? On one hand, Aisha certainly doesn't deserve to die over a tavern scuffle and a fit of jealousy. That's extreme, even considering their volatile history.~ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY ~But on the other hand, it's not really my place to meddle in guild business, especially when it comes to matters as serious as bounties. I've learned it's best to keep a bit of distance in these things.~ IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY ~I'd say the decision ultimately lies with you. You're the one tasked with this, after all. It's a tough call, but you'll need to weigh the consequences and make the choice that seems right to you.~
       ++ ~Since you seem to have some influence over Amrius, do you think you could persuade him to drop the bounty?~ GOTO 30
       ++ ~This whole saga is turning into a farce. I'm thinking it might be easier just to collect the bounty on Aisha and be done with it.~ GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY ~That's... well, it's certainly a decision. I won't pretend to understand all the reasons behind it, nor is it my place to judge. It's just a bit sad, isn't it? How things turn out sometimes.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~But if that's what you've decided, then I suppose there's not much more to say.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 30
   SAY ~You want me to talk to Amrius about dropping the bounty? That's... well, it's not usually my place to get involved in these affairs. But I can see this situation is spiraling out of control.~ IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY ~Alright, I'll do it. I have some free time later tonight, and I can meet with him. I can't promise anything, but I'll see if there's a way to convince him to let this go.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",3)
   SetGlobalTimer("h_IlenaDropsBounty","GLOBAL",FIFTEEN_HOURS)
   AddJournalEntry(@469,QUEST)~ EXIT
END

IF WEIGHT #-1 ~Global("h_MerediaQuest","GLOBAL",3)~ THEN BEGIN 32
   SAY ~Oh, <CHARNAME>! It's such a relief to see you!~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY ~His wife returned unexpectedly and discovered us together! I was forced to witness the terrible events that followed.~ IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
   SAY ~I made an attempt to flee, but he overpowered me and knocked me out. When I awoke, we were on the road, heading south. I was so scared. I didn't know what he was going to do with me!~ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
   SAY ~Thank you, <CHARNAME>. You truly are my savior! I don't know how I can ever repay you.~ IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
   SAY ~I'll be making my way back to the den now. I'm sure Meredia must have been beside herself with worry over my absence.~
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",4)
   SetGlobal("h_RespawnIlena","GLOBAL",1)
   AddJournalEntry(@714,QUEST)
   EscapeArea()~ EXIT
END

