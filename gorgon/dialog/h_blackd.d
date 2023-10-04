BEGIN h_blackd

IF ~Global("h_ArioshQuest","GLOBAL",4)~ THEN BEGIN 0
   SAY ~'Bout time someone stumbled into our little party. Saves us the trouble of huntin' down fresh meat.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Fancy a dance, do ya? Well, it'll cost ya, won't it? Cough up your valuables, nice and easy-like, and we might let you toddle away in one piece.~
       ++ ~You're treading dangerous ground here. You and your lot should think twice before making enemies of the Gorgon's Eye.~ GOTO 2
       ++ ~Enough chit-chat, Blackthorn. Let's start the violence, shall we? Draw your shiv, and let's tango!~ GOTO 9
END

IF ~~ THEN BEGIN 2
   SAY ~You're in league with the Gorgon's Eye, then, are ya? I've danced with a lot worse than you lot, I'll tell ya that.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I'll say it again, hand over your valuables, or this night'll get proper nasty for ya.~
       ++ ~You're making a grave mistake, lad. I'm thinkin' you won't live long enough to see the morning sun, at this rate.~ GOTO 9
       ++ ~Turn around now and leave town, lest you meet the shadows that'll haunt your every step.~ GOTO 6
       ++ ~Ditch the child's play and pledge your shiv to the Gorgon's Eye. It'll be in your best interest.~ GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Link up with the Eye, eh? I'll admit, the prospect has its allure, but I ain't exactly one for takin' orders, yeah?~
       ++ ~If you can't take orders, you're just another loose cog in the machine, and that won't fly.~ GOTO 9
       ++ ~No one's askin' you to be a lackey, Blackthorn. The Gorgon's Eye offers opportunities, not just orders.~ GOTO 5
       ++ ~You'll regret passin' over this chance. We don't just steal scraps from the streets, we control the whole damn game.~ GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~I'll give you this, mate, the notion's got me thinkin'. The Eye's got a reputation, and I reckon you've earned it in some fashion.~
       ++ ~Blackthorn, you're a capable rogue, but imagine what you could achieve under the Gorgon's Eye banner.~ GOTO 10
       ++ ~You've got skills, Blackthorn, but you're just scratching the surface. Join us, and you'll see the real power and influence we wield.~ GOTO 10
       ++ ~You're wasting your talents here. The Gorgon's Eye offers true power and wealth. Don't be a fool, Blackthorn, seize this chance.~ GOTO 10
END

IF ~~ THEN BEGIN 6
   SAY ~Why'd I be botherin' to take my business elsewhere? This district suits me just fine, it does. And as for handlin' the likes o' you lot, don't think you'll be scarin' me off so easy.~
       ++ ~Feelin' lucky, are ya? Alright then, mate. Draw your shiv and let's see who's left standin'!~ GOTO 9
       ++ ~Crossing the Gorgon's Eye is a death sentence. We don't forget, and we don't forgive. Leave now, while you still have a choice.~ GOTO 8
       ++ ~This district's got its share of shadows, but it's overflowing. Seek a place where your skills won't go to waste.~ GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Look, I've been carvin' my slice here for a while, and it's been good. But maybe you're onto somethin'.~ IF ~~ THEN GOTO 8.2
END

IF ~~ THEN BEGIN 8.2
   SAY ~See, it's a squeeze in this joint, and you're no run-of-the-mill geezer. I'm thinkin' it's high time for a switch-up, find a different gutter to call home.~ IF ~~ THEN GOTO 8.5
END

IF ~~ THEN BEGIN 8.5
   SAY ~I'll be off then, scoutin' for a nest that suits our kin best. You won't be catchin' sight of us 'round these parts again.~
IF ~~ THEN DO ~
   SetGlobal("h_BlackLeave","GLOBAL",1)
   SetGlobal("h_ArioshQuest","GLOBAL",5)
   AddJournalEntry(@518,QUEST)~ EXIT
END


IF ~~ THEN BEGIN 9
   SAY ~Up for a little shadowplay, are we? Blades out, mate. We'll see who's got the slickest moves in the alley.~
IF ~~ THEN DO ~
   SetGlobal("h_BlackFight","GLOBAL",1)
   SetGlobal("h_ArioshQuest","GLOBAL",5)
   AddJournalEntry(@517,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY ~Alright then, consider me in. I've had my fill of playin' lone wolf. Let's see what the Gorgon's Eye has in store, shall we?~
IF ~~ THEN DO ~
   SetGlobal("h_BlackJoin","GLOBAL",1)
   SetGlobal("h_ArioshQuest","GLOBAL",5)
   AddJournalEntry(@519,QUEST)~ EXIT
END

CHAIN
   IF WEIGHT #-1 ~Global("h_ValeraQuest","GLOBAL",3) Global("h_BlackJoin","GLOBAL",1)~ THEN h_blackd 0
~She's as quiet as a grave now. No more chit-chattin' from her.~
   == h_ariosd
~Good work, Blackthorn. You're turning out to be a real asset to the Eye. <CHARNAME> made a wise choice bringin' you in.~
   == h_blackd
~Cheers, boss. I'ts a real bleedin' pleasure. Solid crew, and plenty of action. Feels like home, yeah?~
   == h_ariosd
~That's the spirit, lad. You've proven yourrself time and again, now. Keep showin' that kind of loyalty, and there'll always be a place for ya.~
   == h_blackd
~Been more than happy to spill a bit o' blood for the cause. The Gorgon's Eye's got me bloody back, it does.~
   == h_ariosd
~Alright then, mate. Kick back to your usual duties. Keep that edge keen, you hear?~
   == h_blackd
~You got it, boss. I'll be watchin' the shadows, ready for whatever rolls our way.~
   DO ~
      SetGlobal("h_ValeraQuest","GLOBAL",4)
      SetGlobal("h_ArioshQuest","GLOBAL",10)
      EscapeArea()~
EXIT

