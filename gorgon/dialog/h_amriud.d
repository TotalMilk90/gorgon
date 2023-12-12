BEGIN h_amriud

IF ~Global("h_AmriusTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Scram, mate. Ain't in the mood for gabbin' with some random bloke. Me head's killin' me, and I'm not exactly chuffed to be chattin'.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~So unless you've got a pint or somethin' for this ache, do one.~
       +~Global("h_AishaBounty","GLOBAL",1)~+ ~Rough night, huh? Looks like you've been through the wringer.~ GOTO 2
       ++ ~Seems you're having a bad day, and I've no interest in making it worse. Good luck with that.~ EXIT
END

IF ~~ THEN BEGIN 2
   SAY ~Yeah, s'pose it's been a rough one. Had a bit of a run-in that didn't end too well for my face. Not lookin' for pity, though, So if you're just 'ere to have a laugh, you've seen it all.~
       ++ ~Does it look like I'm laughing? I'm here about that hit you've slapped on Aisha.~ GOTO 3
       ++ ~Just here for some facts, Amrius. I want to talk about Aisha's bounty.~ GOTO 3
       ++ ~I'm not one to find joy in others' troubles. Now, what's the story with you and Aisha?~ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~That bounty, eh? Unfortunate bit of business, that. But look at me mug, this wasn't just a bit of bad luck at the card table. She's got a temper on her, that one, and a right hook to match.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Can't just let that slide, now, can I? She needs to learn, you can't go around smacking people and not expect consequences.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~And before you start, I know what you're thinking, but it's not just about the scrap. It's about respect, about teaching a lesson.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~She thinks she can walk away from me, make a fool of me in front of everyone? Not on my watch. She deserves every bit of what's coming.~
       ++ ~She says you got handsy and she had to fight back. Sounds like you brought this on yourself.~ GOTO 7
       ++ ~Aisha told me a different story, that you were drunk and wouldn't take no for an answer.~ GOTO 7
       ++ ~According to Aisha, you were the aggressor, and she was only acting in self defense.~ GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~No, no, no, you've got it all wrong. That ain't what happened at all. Look, I was chattin' up another bird that night, yeah? And Aisha, she gets all jealous, sees me talking and loses it.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~I go over to smooth things over, and she just flips. Starts hittin', fightin', going completely mad.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~She shoves me, and I'm telling you, I wasn't about to hit a woman, not in front of the whole tavern. So, I back off, but she pushes me right into that table.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~I was drunk, yeah, and fuming. So, I put the bounty on her, right there and then. It wasn't about her saying 'no' or anything like that. It was her making a scene, making me look like a right git!~
        ++ ~I'm not here to play judge. Your spat with Aisha is your business. I just want that bounty gone.~ GOTO 11
        ++ ~Honestly, I couldn't care less who started what. I'm just here to see that bounty on Aisha removed.~ GOTO 11
        ++ ~That's an interesting twist. I think I'll double-check this with Aisha. Two sides to every story, after all.~ GOTO 12
        ++ ~Your version is quite different. I'll have a word with Aisha about this. I Want to make sure I'm getting the whole truth.~ GOTO 12
END

IF ~~ THEN BEGIN 11
   SAY ~Why should I lift that hit, eh?~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~You've got no idea, mate. She's the one who stirred up this whole mess, not me.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~There I was, mindin' my own, and she flies off the handle, makes a right scene in front of everyone. And let me tell you, it's not just that one time.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~Aisha's got a screw loose, I swear. One minute she's sweet as honey, the next, she's a raging storm, throwing accusations, screaming blue murder. It's not normal, I tell ya.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~It's like watching someone else take over her, or chatting with a brick wall that suddenly decides to swing at you. You can't predict her, and that's dangerous.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~She needs a lesson in keeping her head, in understanding actions have consequences. Can't have someone that unpredictable roaming around causing havoc. It's bad for business, bad for everyone.~
       ++ ~Fair enough, Amrius. I'll go back and have a word with Aisha. Let's see if her story holds up.~ DO ~SetGlobal("h_AmriusMentionsIlena","GLOBAL",1)~ GOTO 48 
       +~CheckStatGT(Player1,17,STR)~+ ~Listen, Amrius, I can make this real ugly for you, or you can lift the bounty and walk away. Your choice.~ GOTO 17
       +~CheckStatLT(Player1,18,STR)~+ ~Listen, Amrius, I can make this real ugly for you, or you can lift the bounty and walk away. Your choice.~ GOTO 19
       +~CheckStatGT(Player1,17,INT)~+ ~Think about it logically, Amrius. Keeping this bounty only escalates things. You could end up drawing unwanted attention to yourself.~ GOTO 20
       +~CheckStatLT(Player1,18,INT)~+ ~Think about it logically, Amrius. Keeping this bounty only escalates things. You could end up drawing unwanted attention to yourself.~ GOTO 22
       +~CheckStatGT(Player1,17,WIS)~+ ~Imagine if you were in Aisha's place, Amrius. Frightened, alone, with a price on your head. Wisdom is knowing when to forgive.~ GOTO 23
       +~CheckStatLT(Player1,18,WIS)~+ ~Imagine if you were in Aisha's place, Amrius. Frightened, alone, with a price on your head. Wisdom is knowing when to forgive.~ GOTO 25
       +~CheckStatGT(Player1,17,CHR)~+ ~Come on, Amrius. You're a reasonable man, aren't you? Drop the bounty, and we can put all this behind us, no hard feelings.~ GOTO 26
       +~CheckStatLT(Player1,18,CHR)~+ ~Come on, Amrius. You're a reasonable man, aren't you? Drop the bounty, and we can put all this behind us, no hard feelings.~ GOTO 28
END

IF ~~ THEN BEGIN 17
   SAY ~Alright, alright, keep your shirt on. I'm not in shape for another brawl. You're a tough one, ain't ya? It's been a while since I've felt outmatched.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~Look, I'm all for standing my ground, but maybe going after Aisha ain't the smartest move right now. Alright, I'll lift the bounty.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 19
   SAY ~You think you can intimidate me? Ha! I've seen worse than you. The bounty stays.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 20
   SAY ~You're making a lot of sense, more than I care to admit. I've been so fixated on getting back at Aisha, I didn't stop to think of the trouble it's stirrin' up.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~I need to keep things low-key, and this bounty is like a beacon, ain't it? Alright, you've made your point. The hit's off. I don't need any more eyes on my business.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 22
   SAY ~Trying to outsmart me? Nice try, but I'm not convinced. The bounty stays. Aisha needs to learn her lesson.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 23
   SAY ~I've been so wrapped up in my own anger, I hadn't stopped to consider it from her angle. Yeah, I've been in tight spots before, felt the world against me. It ain't a good place to be.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~Maybe I did let my anger get the best of me. Alright, I'll remove the bounty. But don't expect me to forgive and forget.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 25
   SAY ~Empathy? For her? Not a chance. She made her bed, now she can lie in it. The bounty stays.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 26
   SAY ~Well, when you put it like that... This whole thing with Aisha's been a right headache, and what's it really getting me? More aggro than it's worth.~ IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY ~Alright, you've got me. I'll lift the bounty. But don't think I'm always this easy to sway.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28
   SAY ~Sweet talk won't work on me. I'm not lifting that bounty for anything. Aisha's got to pay for what she did.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 29
   SAY ~Right then, you've bent my ear enough, and I ain't too big to admit when I've maybe gone a bit overboard. But don't get it twisted, this ain't me going soft.~ IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY ~She's still in deep with me, and I won't be forgettin' her little stunt anytime soon. But for now, I've got bigger fish to fry than squabbling over some tavern scrap.~ IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY ~You've got some bottle, chattin' up to me like this. Not everyday someone manages to get through to Amrius. But don't think this makes us pals or nothin'.~ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~Now jog on, I've got a right mess to sort, and it's all thanks to you stickin' your nose in.~
IF ~~ THEN DO ~
   SetGlobal("h_ConvincedAmrius","GLOBAL",1)
   AddJournalEntry(@422,QUEST)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 33
   SAY ~So, save your gab, mate. I've been round the block, seen all sorts of chancers like you, and you ain't changin' my mind.~ IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
   SAY ~This bounty on Aisha ain't just about a bit of tit for tat, it's about respect, about standing your ground. She stepped out of line, and there's no walking back from that.~ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
   SAY ~And you, coming in here, tryna throw your weight around in my business... you've got some cheek. But that's all you've got.~ IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
   SAY ~This is my manner, my rules. Aisha can stew in her own juice. She's earned it, for the muck she's dragged me through.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
   SAY ~Now, I'm done nattering. Best scarper off, while you've still got the chance to walk away.~
       ++ ~Alright, if words aren't enough, then let's talk gold. Everything has a price.~ GOTO 41
       ++ ~There's got to be something you want or need that I can provide. What about a trade?~ GOTO 38
       ++ ~Maybe there's another kind of currency we can deal in? Information, connections, something you can't buy with gold.~ GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY ~Enough's enough, I'm fed up with all this yammering. No favors, no deals, nothing's going to change my mind. Just get out of my face and go back to Aisha.~ IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
   SAY ~If it ain't you who sorts her out, someone else is gonna step up, and that'll work for me. I'm through with her games, and I'm through with this conversation.~ IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
   SAY ~Don't push your luck, mate. I've got other means to handle this, and I don't need you complicating things further.~
       ++ ~Alright, if words aren't enough, then let's talk gold. Everything has a price.~ GOTO 41
END

IF ~~ THEN BEGIN 41
   SAY ~Ha! Now we're speaking my language! Gold does make the world go 'round, doesn't it? Alright, you've piqued my interest.~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
   SAY ~But for me to forget the whole thing, scrub the bounty, and swallow my pride... it'll cost you. Not just a few coins, mind you. I'm talking about a grand sum... 1000 gold pieces.~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
   SAY ~That's my price. Pay up, and Aisha's free as a bird. Otherwise, you can forget about it.~
       +~PartyGoldLT(1000)~+ ~That's quite the sum. I don't have that much on me right now, but I'll be back with it. Just keep that bounty on hold.~ GOTO 44
       +~PartyGoldGT(999)~+ ~That's a steep price, but if it'll settle this, then fine. I'll pay the 1000 gold.~ GOTO 46
       ++ ~You're out of your mind, Amrius. I'm not paying that. I'll find another way to sort this out with Aisha.~ DO ~SetGlobal("h_PayAmrius","GLOBAL",1) AddJournalEntry(@467,QUEST)~ GOTO 48
END

IF ~~ THEN BEGIN 44
   SAY ~You think I can just pause a bounty like it's some tavern tab? It's out there now, isn't it?~ IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
   SAY ~You better scrape together those coins quick, 'cause I can't promise how long before someone else decides to cash in. This ain't a game, mate. Hustle up with that gold.~
IF ~~ THEN DO ~
   SetGlobal("h_AmriusTalk","GLOBAL",1)
   SetGlobal("h_PayAmrius","GLOBAL",1)
   AddJournalEntry(@467,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 46
   SAY ~Well, I'll be... You're actually gonna cough up a grand for that harlot? You're either daft or too flush with gold. Either way, suits me fine.~ IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
   SAY ~I'll get the bounty lifted, you have my word. Never thought I'd see the day someone'd pay that much for a bit of tavern scuffle. Off with you then, I've got business to sort.~
IF ~~ THEN DO ~
   SetGlobal("h_AmriusTalk","GLOBAL",1)
   SetGlobal("h_PayAmrius","GLOBAL",2)
   SetGlobal("h_AmriusMentionsIlena","GLOBAL",2)
   AddJournalEntry(@422,QUEST)
   TakePartyGold(1000)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 48
   SAY ~Right then, off you go, back to Aisha. Have your chat, see what she spins this time. You're looking for truth in a web of lies, but who am I to stop you?~ IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
   SAY ~Just remember, stories change depending on who's telling 'em. So, take whatever she says with a grain of salt, mate.~ IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
   SAY ~And if you ever find yourself doubting, well, you know where to find me. We'll see how long it takes before you realize who's playing who in this little drama of ours.~
IF ~~ THEN DO ~
   SetGlobal("h_AmriusTalk","GLOBAL",1)
   AddJournalEntry(@466,QUEST)~ EXIT
END

IF ~Global("h_AmriusTalk","GLOBAL",1)~ THEN BEGIN 51
    SAY ~Back again, are ya? Make it quick, I've got better things to do than chew the fat all day.~
        +~Global("h_AishaBounty","GLOBAL",1) Global("h_PayAmrius","GLOBAL",1)~+ ~Amrius, I've got the 1000 gold. It's a steep price, but if it's what it takes to settle this whole mess, then so be it.~ GOTO 46
        +~Global("h_AishaBounty","GLOBAL",1) Global("h_PayAmrius","GLOBAL",0)~+ ~What'll it take to get that bounty gone? Everything has a price.~ GOTO 41
        +~Global("h_AishaBounty","GLOBAL",2) Global("h_AmriusExtraTalk","GLOBAL",0)~+ ~I've just spoken with Aisha, and I'm starting to see what you meant. She went off on a tangent about Ilena and jealousy that was pretty intense.~ GOTO 52
        +~GlobalTimerExpired("h_IlenaDropsBounty","GLOBAL")~+ ~I heard Ilena might have been looking to chat with you. Has she stopped by recently?~ GOTO 67
        ++ ~Fair enough. I don't have anything pressing at the moment. I'll leave you to your business.~ EXIT
END

IF ~~ THEN BEGIN 52
   SAY ~Ha! I knew it! I told you, didn't I? Aisha's as unpredictable as they come. One minute she's sweet as pie, the next she's a raging inferno.~ IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
   SAY ~And when she gets going about Ilena? Oh, that's a sight to behold! You saw it yourself, mate. It's like trying to reason with a storm. Can't be done.~ IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
   SAY ~She's got this wild side that just bursts out without warning. It's why I had to put that bounty on her. You can't have that kind of unpredictability running wild. It's dangerous.~ IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
   SAY ~But you've seen it now with your own eyes, so you know I wasn't just spinning tales.~
       ++ ~Well, given everything that's happened, what do you think is the best course of action now?~ GOTO 56
       ++ ~What can you tell me about Ilena. You think it's worth hearing her side of this?~ GOTO 60
       ++ ~After seeing Aisha's true colors, it seems like the only logical step is to go ahead and cash in on that bounty.~ GOTO 64
END

IF ~~ THEN BEGIN 56
   SAY ~Best course of action? It's what I've been saying from the start, the bounty on Aisha needs to be seen through. She's too unpredictable, too volatile.~ IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
   SAY ~With someone like her, you never know what kind of havoc she'll wreak next. It's not just about settling a personal score anymore, it's about safety, stability.~ IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
   SAY ~As long as she's out there, with her wild swings and that temper, there's no telling what damage she could do.~ IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
   SAY ~Taking her out... it's harsh, I know, but it's the only way this ends without more chaos. It's the only way to put a stop to this cycle of madness once and for all.~
       ++ ~What can you tell me about Ilena. You think it's worth hearing her side of this?~ GOTO 60
       ++ ~After seeing Aisha's true colors, it seems like the only logical step is to go ahead and cash in on that bounty.~ GOTO 64
END

IF ~~ THEN BEGIN 60
   SAY ~Ilena? Nah, mate, don't bother with her. She was just some bird I was chatting with that night, nothing significant.~ IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61
   SAY ~Look, Ilena's got nothing to do with all this mess between me and Aisha. She was just there, you know, wrong place, wrong time. It's not like she's a key player in this or anything.~ IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
   SAY ~Best not to drag her into it. We've got enough drama as it is, and involving her would just complicate things unnecessarily.~ IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
   SAY ~Stick to sorting out things with Aisha, that's where the real problem is.~
IF ~~ THEN DO ~
   SetGlobal("h_AmriusExtraTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 64
   SAY ~After getting the full Aisha experience, I can't say I'm surprised you've come to that conclusion. It's a tough call, but that's are part of the game, innit?~ IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
   SAY ~You're doing the right thing, handling the bounty. It's a messy business, but it needs doing. She's brought this on herself, really.~ IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
   SAY ~Just be careful, yeah? Aisha's full of surprises, and not the pleasant kind. Make sure you're prepared for whatever she might throw your way.~
IF ~~ THEN DO ~
   SetGlobal("h_AmriusExtraTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 67
   SAY ~Yeah, Ilena popped in, didn't she? Should've known you had a hand in that. She's got her ways, making you see the other side of the coin and all that.~ IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
   SAY ~So yeah, I'm scrapping the bounty on Aisha. Don't often flip my decisions, but Ilena made a fair point or two.~ IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69
   SAY ~Better to let this storm pass than keep kickin' up a fuss. Aisha's a right handful, but this ain't the way to sort it, is it?~ IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
   SAY ~Just hope I'm not making a mistake by letting her off the hook. But there it is, the bounty's off. Happy now?~
       ++ ~It was the right move, and it's better for everyone this way. Let's put this whole mess behind us.~ GOTO 71
       ++ ~It's not always easy to change course, but it often leads to better outcomes. Thank you for reconsidering.~ GOTO 71
       ++ ~I guess it's smarter to avoid the extra hassle. Aisha's not worth the trouble anyway.~ GOTO 71
END

IF ~~ THEN BEGIN 71
   SAY ~Yeah, you're probably right. Sometimes you gotta step back, reassess the situation. It's done now, the bounty's off, and hopefully, this'll calm the waters a bit.~ IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
   SAY ~We'll see if Aisha takes this chance to cool off and sort herself out. Anyway, I've got other matters to attend to, other fires to put out.~ IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73
   SAY ~Let's just hope this decision doesn't come back to bite us. Alright, I'm off then.~
IF ~~ THEN DO ~
   SetGlobal("h_ConvincedIlena","GLOBAL",1)
   AddJournalEntry(@422,QUEST)
   EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~Dead("h_aishac")~ THEN BEGIN 74
   SAY ~So, word's out about Aisha. The deed's done, contract settled. It's a grim game we play, isn't it?~ IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75
   SAY ~Thought I knew what I wanted, slapping that price on her head... but it hits different when it's all over.~ IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76
   SAY ~Didn't quite picture it ending like this. Just something you do in the spur of the moment, but then it sticks with you.~ IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77
   SAY ~Well, that's that, no turning the clock back. Got to crack on with other things now.~
IF ~~ THEN DO ~
   EscapeArea()~ EXIT
END
