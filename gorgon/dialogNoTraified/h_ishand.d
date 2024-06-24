BEGIN h_ishand

IF ~Global("h_IshaniTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Well, well, aren't you a sight for these bored eyes. What brings someone like you to my little corner of the Blade and Stars? Looking for a bit of excitement or perhaps just a bit of company?~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~You see, I'm not just any courtesan. I'm a connoisseur of life's finer things, particularly jewelry. These baubles, they're like stars in the night sky, each one sparkling with a story to tell.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~And of course, they draw attention, much like myself. People just can't help but stare. But hey, who can blame them? It's kind of fun being the center of attention. It's all part of the game, isn't it?~
       ++ ~And what game is this, pray tell?~ GOTO 3
       ++ ~I'm playing a game of my own that could use your... personal touch. Care to lend me a hand?~ GOTO 7
       ++ ~How about a change of scenery, Ishani? I've got a job up in Beregost that could use a touch of your charm.~ GOTO 6
END

IF ~~ THEN BEGIN 3
   SAY ~Why, it's is the grand game of life, my dear. A game of charm, wit, and allure. The art of captivating hearts and minds, and perhaps a few pockets along the way.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~It's about making every moment sparkle and leaving an impression that lasts a lifetime. You see, in a place like this, we're all players, each with our own role to play.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~Now, what brings you to my glittering stage?~
       ++ ~I'm playing a game of my own that could use your... personal touch. Care to lend me a hand?~ GOTO 7
       ++ ~I'm in need of some company for a job in Beregost. What do you say we make it an adventure?~ GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Oh, a trip, is it? Well, that does sound intriguing. But let's not get ahead of ourselves. What sort of services are we talking about?~
       ++ ~I need you to use your 'special talents' to divert the attention of a certain Flaming Fist Inspector.~ GOTO 9
END

IF ~~ THEN BEGIN 7
   SAY ~Well now, aren't you the charmer? I must admit, I'm quite intrigued. What sort of game are we talking about, darling?~
       ++ ~I'd like you to accompany me to Beregost and help me divert the attention of a certain Flaming Fist Inspector.~ GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Oh, I see. Well, I suppose business is business. My apologies for getting ahead of myself.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Alright, then, what is the price for this little adventure?~
       ++ ~Well, how much is your usual rate?~ GOTO 11
       ++ ~Fancy a bit of fine jewelery, do you? Name a piece, and maybe I can get it for you.~ GOTO 13
       ++ ~Play your part to perfection first, then we can talk about payment.~ GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~You're quite the character, aren't you? But let's get one thing straight, darling. Payment first, then performance. That's how I operate.~
       ++ ~Well, how much is your usual rate?~ GOTO 11
       ++ ~Fancy a bit of fine jewelery, do you? Name a piece, and maybe I can get it for you.~ GOTO 13
END

IF ~~ THEN BEGIN 11
   SAY ~Well, you know, I've never been hired for an out-of-town job before. I've never even left the city proper, to be honest.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~Oh, I know! How about this?~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~I've been simply dying to get my hands on the Moonlit Cascade necklace. Lady Eudika wore it at the last soiree, and it was simply divine!~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~If you manage to acquire such a treasure for me, I'd be ever so inclined to join you on your little adventure. What do you say, darling?~
       ++ ~Consider it done. Where can I find this Lady Eudika to uh... ask her where she obtained this necklace?~ GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~Hehe, you needn't be coy with me, love. You've a mind to liberate that necklace, don't you?~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~Oh, I do adore a <MANWOMAN> of action! Secure that Moonlit Cascade for me, and I shall owe you a large debt of gratitude.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~Lady Eudika. She's, uh, well acquainted with the Silvershields, and she's currently staying with them at their estate.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~And... just so you know, there's a bit of a... guard presence around there. You might need to be, you know, extra sneaky.~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnEudika","GLOBAL",1)
   SetGlobal("h_IshaniTalk","GLOBAL",1)
   AddJournalEntry(@542,QUEST)~ EXIT
END

IF ~Global("h_IshaniTalk","GLOBAL",1)~ THEN BEGIN 19
   SAY ~Well, well, you're back sooner than I expected. Did you manage to find Lady Eudika's necklace? Or did you get distracted by some other shiny trinkets?~
       +~PartyHasItem("h_misc24")~+ ~Well, let's just say the Moonlit Cascade now belongs to a more appreciative owner.~ DO ~TakePartyItem("h_misc24") DestroyItem("h_misc24") AddExperienceParty(600) AddJournalEntry(@543,QUEST)~ GOTO 20
       ++ ~I'm still working on it.~ EXIT
END

IF ~~ THEN BEGIN 20
   SAY ~You've done it! The Moonlit Cascade... it's even more magnificent up close. I'm utterly entranced.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~The way the light dances on its surface, it's truly enchanting. I can see why Lady Eudika adorned it so. What a splendid addition to my little collection, don't you think?~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~Well, I'm all ready to join you on this little adventure. Just say the word, and we can be off.~
       +~PartyHasItem("h_misc25")~+ ~I'm ready if you are. Let's get going.~ GOTO 25
       ++ ~I need to finish up a few more things in the city first. Wait here until I return.~ GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~Alright, love. I'll be here, admiring this magnificent piece of jewelry.~
IF ~~ THEN DO ~
   SetGlobal("h_IshaniTalk","GLOBAL",2)~ EXIT
END

IF ~Global("h_IshaniTalk","GLOBAL",2)~ THEN BEGIN 24
   SAY ~Well, I'm all ready to join you on this little adventure. Just say the word, and we can be off.~
       +~PartyHasItem("h_misc25")~+ ~I'm ready if you are. Let's get going.~ GOTO 25
       ++ ~I need to finish up a few more things in the city first. Wait here until I return.~ GOTO 23
END

IF ~~ THEN BEGIN 25
   SAY ~Excellent! To Beregost we go, then. Lead the way, my daring accomplice.~
IF ~~ THEN DO ~
   SetGlobal("h_IshaniTalk","GLOBAL",3)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_ishcut")~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",17)~ THEN BEGIN 26
   SAY ~Keep it together, Ishani. You've got this. Just one smooth move, and it'll all be over.~ IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY ~Oh, <CHARNAME>. I'll be ready to put on a great show, don't you worry!~ IF ~~ THEN EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",18) Global("h_PoisonInspector","GLOBAL",1)~ THEN BEGIN 28
   SAY ~Well, did you see that? I did it! I really did it! He never saw it coming. I got a little scared for a moment, but then... poof! All done! I'm pretty good at this, aren't I?~
       ++ ~Well done, Ishani. The inspector didn't stand a chance.~ GOTO 29
       ++ ~You did an amazing job, Ishani. Your skills are truly impressive.~ GOTO 29
       ++ ~Well, you managed not to mess it up completely, nice work.~ GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~As much as I've had fun tagging along with you, I have to make my way back to Baldur's Gate now.~ IF ~~ THEN GOTO 29.5
END

IF ~~ THEN BEGIN 29.5
   SAY ~But hey, don't be a stranger! You should come visit me sometime. I promise, I'll have something extra special waiting for you.~ IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY ~Until next time, <CHARNAME>.~
IF ~~ THEN DO ~
   EscapeArea()~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",18) Global("h_FightInspector","GLOBAL",1)~ THEN BEGIN 31
   SAY ~You're a decisive one, aren't you? I had him wrapped around my finger, but your method was more direct, I suppose.~ IF ~~ THEN GOTO 29
END




CHAIN
   IF ~Global("h_IshaniTalk","GLOBAL",3)~ THEN h_ishand 0
~So, this is Beregost, eh? Not a bad little town, very quaint. A tad bit damp here for my liking, but I've seen worse, I suppose.~
   == h_ariosd
~It has its charms, yeah? You must be Ishani, I take it? Welcome to our humble abode. Let's not get too cozy, however. We've business to attend to.~
   =
~Now, <CHARNAME> has filled me in on the Inspector's little vices, and I've whipped up a fitting plan for us, see?~
   =
~<CHARNAME>, you will escort Ishani down to the Jovial Juggler, and hand deliver that bottle of Moonshae whiskey to the barkeep.~
   =
~Let him know he'll be sendin' word for the Inspector. Little Ishani here's gonna be offerin' up some critical information about the Gorgon's Eye, and it's for his ears only.~
   == h_ishand
~I can play that part. What comes next?~
   == h_ariosd
~You'll use your... feminine wiles to entice him into sharin' a drink. Work your charm and keep him distracted.~
   =
~The bartender will graciously present the whiskey to the Inspector, only, we've made a few... adjustments.~
   =
~He'll be lights out sooner than you can blink. Won't even know what hit 'em.~
   == h_ishand
~Oh, what a devious little plan. Let's give the Inspector a night he won't forget, shall we?~
   == h_ariosd
~Aye, but let's not get ahead of ourselves. There's a lot of moving parts in this play and we don't want to muss it up.~
   =
~We can't afford any slip-ups now. This is our chance to get rid of him for good. So give it your all, and make sure he pays dearly for what he's done.~
   =
~We won't get another shot like this, mark my words.~
   == h_ishand
~I understand. I'll meet you at the Jovial Juggler for our little date, <CHARNAME>. Don't be late!~
   == h_ariosd
~<CHARNAME>, I need a quiet word with ya before ya start dashin' off, yeah?~
   DO ~
      SetGlobal("h_ArioshQuest","GLOBAL",16)
      SetGlobal("h_IshaniTalk","GLOBAL",4)
      SetGlobal("h_SpawnCook","GLOBAL",1)
      ActionOverride("h_ishanc",EscapeArea())
      AddJournalEntry(@545,QUEST)~
EXIT
