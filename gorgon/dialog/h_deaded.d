BEGIN h_deaded

IF ~Global("h_FightingPits","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Aye, friend, this ain't a place for the faint of heart. Best find yourself a different pastime, yeah? Keep it movin'.~ IF ~~ THEN EXIT
END

IF ~Global("h_FightingPits","GLOBAL",1)~ THEN BEGIN 1
   SAY ~You must be the new blood, eh? Welcome to the pits. I'm Diomedes, and this here is my esteemed companion, Shadow. Don't let her charming looks fool ya, she's got a keen eye for a good fight.~
       +~Global("h_JoinFightingPits","GLOBAL",0)~+ ~You run the show here, Diomedes? What exactly are the pits?~ DO ~SetGlobal("h_JoinFightingPits","GLOBAL",1)~ GOTO 8
       ++ ~How does your work here tie in with the operations of the Gorgon's Eye?~ GOTO 5
       ++ ~What's the story behind Shadow? She looks like she's seen her fair share of action.~ GOTO 2
       +~Global("h_JoinFightingPits","GLOBAL",1)~+ ~I'm looking to prove myself in the pits. How can I get in on the action?~ GOTO 11
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 2
   SAY ~Ah, Shadow, she's been with me for longer than I care to remember. Found her in the back alleys of Beregost, a scrawny thing barely clinging to life. Nursed her back, I did.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Since then, she's been my constant companion, never leaving my side, especially in the thick of battle.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~She's got a keen sense for danger, that one. Saved my hide more times than I can count. In a way, she's the true heart of these pits, always watchful, always alert.~
       +~Global("h_JoinFightingPits","GLOBAL",0)~+ ~You run the show here, Diomedes? What exactly are the pits?~ DO ~SetGlobal("h_JoinFightingPits","GLOBAL",1)~ GOTO 8
       ++ ~How does your work here tie in with the operations of the Gorgon's Eye?~ GOTO 5
       +~Global("h_JoinFightingPits","GLOBAL",1)~+ ~I'm looking to prove myself in the pits. How can I get in on the action?~ GOTO 11
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 5
   SAY ~Plain and simple, the pits are a two-fold operation. They bring in a steady stream of gold, primarily from bets and an eager crowd.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~And they also serve as a training ground for Gorgon's Eye members, a place where potential recruits can earn their place.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~Established guild members also come down to hone their skills, and learn a thing or two from my fighters. Combat training, discipline, and a taste for blood. It's all forged right here.~
       +~Global("h_JoinFightingPits","GLOBAL",0)~+ ~You run the show here, Diomedes? What exactly are the pits?~ DO ~SetGlobal("h_JoinFightingPits","GLOBAL",1)~ GOTO 8
       ++ ~What's the story behind Shadow? She looks like she's seen her fair share of action.~ GOTO 2
       +~Global("h_JoinFightingPits","GLOBAL",1)~+ ~I'm looking to prove myself in the pits. How can I get in on the action?~ GOTO 11
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY ~The pits are a battlefield, a duelin' arena, a place where two combatants square off, and have a dance of iron and skill.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~But mind you, it's not about death matches here. It's about honin' one's abilities, pushin' the limits, and showin' the world what a true fighter's made of.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~We forge strength, sharpen minds, and temper spirits. It's more than just a stage for combat. It's where we find our true selves, and learn what we're truly capable of.~
       ++ ~How does your work here tie in with the operations of the Gorgon's Eye?~ GOTO 5
       ++ ~What's the story behind Shadow? She looks like she's seen her fair share of action.~ GOTO 2
       +~Global("h_JoinFightingPits","GLOBAL",1)~+ ~I'm looking to prove myself in the pits. How can I get in on the action?~ GOTO 11
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 11
   SAY ~Eager, aren't ya? I like that. Before you dive in, it's wise to get a lay of the land. Speak to some of the fighters, get a sense of the rhythm and the tricks of the trade. It'll serve you well.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~Once you reckon you've got a grip on things, come back to me, and we'll get you sorted for a match. Remember, patience and knowledge are just as vital as iron in these pits.~
IF ~~ THEN DO ~
   SetGlobal("h_FightingPits","GLOBAL",2)
   AddJournalEntry(@810,QUEST)~ EXIT
END

IF ~Global("h_FightingPits","GLOBAL",2)~ THEN BEGIN 13
   SAY ~You've got that look in your eye, like you're after somethin'. What's it then, lookin' to throw down in the pits, or you just after some intel?~
       +~Global("h_FirstPitsFight","GLOBAL",0)~+ ~I'm ready to step into the arena, Diomedes. Let's do this.~ GOTO 21
       ++ ~Are there any rules I should be aware of?~ GOTO 14
       ++ ~Are there any rewards for participating in the fights?~ GOTO 18
       ++ ~I've come to check on Shadow. How's she doing today? Mind if I give her a little scratch?~ GOTO 20
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 14
   SAY ~Aye, the rules are simple, but they're crucial to the very foundation of what we do here. No magic, and no killin'.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~It's not about sorcery or death, you see. We're here for the raw skill, the art of combat. Magic tends to tip the scales, and we want a fair fight.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~Now, as for death strikes, it's not that we shy away from intensity. Far from it. But we're not executioners. We're here for fierce battles, not for senseless bloodshed.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~So, remember these rules well. They're the backbone of what we do here in the pits. They ensure that every victory is earned, every defeat a lesson, and every match a true spectacle.~
       ++ ~I'm ready to step into the arena, Diomedes. Let's do this.~ GOTO 21
       ++ ~Are there any rewards for participating in the fights?~ GOTO 18
       ++ ~I've come to check on Shadow. How's she doing today? Mind if I give her a little scratch?~ GOTO 20
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 18
   SAY ~There certainly are. First and foremost, there's the invaluable experience gained from each bout. There's no substitute for the lessons learned in the heat of battle.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~And for those who prove themselves, there's a share of the profits. You see, we're not just here for sport, we're here to entertain, and the crowd is more than willing to show their appreciation.~
       ++ ~I'm ready to step into the arena, Diomedes. Let's do this.~ GOTO 21
       ++ ~Are there any rules I should be aware of?~ GOTO 14
       ++ ~I've come to check on Shadow. How's she doing today? Mind if I give her a little scratch?~ GOTO 20
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 20
   SAY ~You've got a good eye for company, mate. Cats have a way of finding the right folks. Just be gentle with her, yeah?~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21
   SAY ~Ready to dive into action then? Now, that's the spirit! Let's not waste any time then.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~Remember how we do things. No magic, we keep it old school. And no killin' blows, we're here for sport, not bloodshed.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~Now, get your gear sorted and let's step into the arena.~
       +~Global("h_PitsFight","GLOBAL",0)~+ ~Let's go.~ GOTO 24
       +~Global("h_PitsFight","GLOBAL",1)~+ ~Let's go.~ DO ~SetGlobal("h_PitsFight","GLOBAL",2)~ GOTO 25
       +~Global("h_PitsFight","GLOBAL",3)~+ ~Let's go.~ DO ~SetGlobal("h_PitsFight","GLOBAL",4)~ GOTO 26
       +~Global("h_PitsFight","GLOBAL",5)~+ ~Let's go.~ DO ~SetGlobal("h_PitsFight","GLOBAL",6)~ GOTO 28
       +~Global("h_PitsFight","GLOBAL",7)~+ ~Let's go.~ DO ~SetGlobal("h_PitsFight","GLOBAL",8)~ GOTO 29
       ++ ~On second thought, I need a little more time to prepare.~ EXIT
END

IF ~~ THEN BEGIN 24
   SAY ~For your first go, we'll pair you up with Khalid. He's got a knack for uncovering a fighter's weaknesses. Gotta see what you're made of, after all.~
IF ~~ THEN DO ~
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pitcut")~ EXIT
END

IF ~~ THEN BEGIN 25
   SAY ~You'll be facin' Grom, next. He's a force to be reckoned with, a different kind of beast. Be ready for a battle.~
IF ~~ THEN DO ~
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pi2cut")~ EXIT
END

IF ~~ THEN BEGIN 26
   SAY ~You're starting to draw a crowd now, <CHARNAME>. People are starting to hear about the new blood taking down all my fighters. Let's not disappoint them, shall we?~ IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY ~Alright then. Brace yourself, you're facing Lyria Winterheart. She's a wily one, so keep your guard up.~
IF ~~ THEN DO ~
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pi3cut")~ EXIT
END

IF ~~ THEN BEGIN 28
   SAY ~Your next challenge will be Serra Swiftwind, the cloaked archer. Keep your wits about you, for she's as sharp as her arrows. Good luck, my friend.~
IF ~~ THEN DO ~
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pi4cut")~ EXIT
END

IF ~~ THEN BEGIN 29
   SAY ~You've come a long way, and now you face the pinnacle of the pits. Roran 'Iron Fist' Stonebreaker, the reigning champion.~ IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY ~He's a force of nature, a monk with fists that could shatter stone. Be on your guard, and fight smart. This won't be an easy bout.~
IF ~~ THEN DO ~
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pi5cut")~ EXIT
END

IF ~Global("h_FightingPits","GLOBAL",3)~ THEN BEGIN 31
   SAY ~From the moment you stepped into these pits, I saw something special in you. You've proven me right in the most spectacular way.~ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~Defeating Roran, the reigning champion, is no small feat. You've surpassed all expectations.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY ~There's no one left in the pits to challenge you, except for Isla, but she's long since retired.~ IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
   SAY ~She became one of the most notorious assassins and sell-swords the Sword Coast has ever seen. No one knows where she is now, not even me.~ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
   SAY ~She left it all behind, vanished into the shadows. Finding her won't be easy, but if you're set on proving yourself, she's the one you'll have to convince.~
IF ~~ THEN DO ~
   AddJournalEntry(@816,QUEST_DONE)~ EXIT
END