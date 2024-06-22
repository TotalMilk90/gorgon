BEGIN h_deaded

IF ~Global("h_FightingPits","GLOBAL",0)~ THEN BEGIN 0
   SAY @28500 /* Aye, friend, this ain't a place for the faint of heart. Best find yourself a different pastime, yeah? Keep it movin'. */ IF ~~ THEN EXIT
END

IF ~Global("h_FightingPits","GLOBAL",1)~ THEN BEGIN 1
   SAY @28501 /* You must be the new blood, eh? Welcome to the pits. I'm Diomedes, and this here is my esteemed companion, Shadow. Don't let her charming looks fool ya, she's got a keen eye for a good fight. */
       +~Global("h_JoinFightingPits","GLOBAL",0)~+ @28502 /* You run the show here, Diomedes? What exactly are the pits? */ DO ~SetGlobal("h_JoinFightingPits","GLOBAL",1)~ GOTO 8
       ++ @28503 /* Who is the current champion of the arena? */ GOTO A0
       ++ @28504 /* How does your work here tie in with the operations of the Gorgon's Eye? */ GOTO 5
       ++ @28505 /* What's the story behind your cat? She looks like she's seen her fair share of action. */ GOTO 2
       +~Global("h_JoinFightingPits","GLOBAL",1)~+ @28506 /* I'm looking to prove myself in the pits. How can I get in on the action? */ GOTO 11
       ++ @28507 /* I'll be going now. */ EXIT
END

IF ~~ THEN BEGIN A0
   SAY @28508 /* Champion of the arena, a title not easily won or kept. Currently, it's held by Roran, a ruthless fighter who crushes his opponents without mercy. */ IF ~~ THEN GOTO A1
END

IF ~~ THEN BEGIN A1
   SAY @28509 /* And before him, there was Isla Darkcloak, a legend in her own right. She was a force to be reckoned with, combining strength and technique in a way I've seldom seen. */ IF ~~ THEN GOTO A2
END

IF ~~ THEN BEGIN A2
   SAY @28510 /* Now, she's retired, leaving behind a legacy that's hard to match. If you aim to challenge Roran, you'll need to be prepared for a brutal fight. */
       +~Global("h_JoinFightingPits","GLOBAL",0)~+ @28502 /* You run the show here, Diomedes? What exactly are the pits? */ DO ~SetGlobal("h_JoinFightingPits","GLOBAL",1)~ GOTO 8
       ++ @28504 /* How does your work here tie in with the operations of the Gorgon's Eye? */ GOTO 5
       ++ @28505 /* What's the story behind your cat? She looks like she's seen her fair share of action. */ GOTO 2
       +~Global("h_JoinFightingPits","GLOBAL",1)~+ @28506 /* I'm looking to prove myself in the pits. How can I get in on the action? */ GOTO 11
       ++ @28507 /* I'll be going now. */ EXIT
END

IF ~~ THEN BEGIN 2
   SAY @28511 /* Ah, Shadow, she's been with me for longer than I care to remember. Found her in the back alleys of Beregost, a scrawny thing barely clinging to life. Nursed her back, I did. */ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @28512 /* Since then, she's been my constant companion, never leaving my side, especially in the thick of battle. */ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @28513 /* She's got a keen sense for danger, that one. Saved my hide more times than I can count. In a way, she's the true heart of these pits, always watchful, always alert. */
       +~Global("h_JoinFightingPits","GLOBAL",0)~+ @28502 /* You run the show here, Diomedes? What exactly are the pits? */ DO ~SetGlobal("h_JoinFightingPits","GLOBAL",1)~ GOTO 8
       ++ @28503 /* Who is the current champion of the arena? */ GOTO A0
       ++ @28504 /* How does your work here tie in with the operations of the Gorgon's Eye? */ GOTO 5
       +~Global("h_JoinFightingPits","GLOBAL",1)~+ @28506 /* I'm looking to prove myself in the pits. How can I get in on the action? */ GOTO 11
       ++ @28507 /* I'll be going now. */ EXIT
END

IF ~~ THEN BEGIN 5
   SAY @28514 /* Plain and simple, the pits are a two-fold operation. They bring in a steady stream of gold, primarily from bets and an eager crowd. */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @28515 /* And they also serve as a training ground for Gorgon's Eye members, a place where potential recruits can earn their place. */ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @28516 /* Established guild members also come down to hone their skills, and learn a thing or two from my fighters. Combat training, discipline, and a taste for blood. It's all forged right here. */
       +~Global("h_JoinFightingPits","GLOBAL",0)~+ @28502 /* You run the show here, Diomedes? What exactly are the pits? */ DO ~SetGlobal("h_JoinFightingPits","GLOBAL",1)~ GOTO 8
       ++ @28503 /* Who is the current champion of the arena? */ GOTO A0
       ++ @28505 /* What's the story behind your cat? She looks like she's seen her fair share of action. */ GOTO 2
       +~Global("h_JoinFightingPits","GLOBAL",1)~+ @28506 /* I'm looking to prove myself in the pits. How can I get in on the action? */ GOTO 11
       ++ @28507 /* I'll be going now. */ EXIT
END

IF ~~ THEN BEGIN 8
   SAY @28517 /* The pits are a battlefield, a duelin' arena, a place where two combatants square off, and have a dance of iron and skill. */ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @28518 /* But mind you, it's not about death matches here. It's about honin' one's abilities, pushin' the limits, and showin' the world what a true fighter's made of. */ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY @28519 /* We forge strength, sharpen minds, and temper spirits. It's more than just a stage for combat. It's where we find our real selves, and learn what we're truly capable of. */
       ++ @28503 /* Who is the current champion of the arena? */ GOTO A0
       ++ @28504 /* How does your work here tie in with the operations of the Gorgon's Eye? */ GOTO 5
       ++ @28505 /* What's the story behind your cat? She looks like she's seen her fair share of action. */ GOTO 2
       +~Global("h_JoinFightingPits","GLOBAL",1)~+ @28506 /* I'm looking to prove myself in the pits. How can I get in on the action? */ GOTO 11
       ++ @28507 /* I'll be going now. */ EXIT
END

IF ~~ THEN BEGIN 11
   SAY @28520 /* Eager, aren't ya? I like that. Before you dive in, it's wise to get a lay of the land. Speak to some of the fighters, get a sense of the rhythm and the tricks of the trade. It'll serve you well. */ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY @28521 /* Once you reckon you've got a grip on things, come back to me, and we'll get you sorted for a match. Remember, patience and knowledge are just as vital as iron in these pits. */
IF ~~ THEN DO ~
   SetGlobal("h_FightingPits","GLOBAL",2)
   AddJournalEntry(@810,USER)~ EXIT
END

IF ~Global("h_FightingPits","GLOBAL",2)~ THEN BEGIN 13
   SAY @28522 /* You've got that look in your eye, like you're after somethin'. What's it then, lookin' to throw down in the pits, or you just after some intel? */
       +~Global("h_FirstPitsFight","GLOBAL",0)~+ @28523 /* I'm ready to step into the arena, Diomedes. Let's do this. */ GOTO 21
       ++ @28524 /* Are there any rules I should be aware of? */ GOTO 14
       ++ @28525 /* Are there any rewards for participating in the fights? */ GOTO 18
       ++ @28526 /* I've come to check on Shadow. How's she doing today? Mind if I give her a little scratch? */ GOTO 20
       ++ @28507 /* I'll be going now. */ EXIT
END

IF ~~ THEN BEGIN 14
   SAY @28527 /* Aye, the rules are simple, but they're crucial to the very foundation of what we do here. No magic, and no killin'. */ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY @28528 /* It's not about sorcery or death, you see. We're here for the raw skill, the art of combat. Magic tends to tip the scales, and we want a fair fight. */ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY @28529 /* Now, as for death strikes, it's not that we shy away from intensity. Far from it. But we're not executioners. We're here for fierce battles, not for senseless bloodshed. */ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY @28530 /* So, remember these rules well. They're the backbone of what we do here in the pits. They ensure that every victory is earned, every defeat a lesson, and every match a true spectacle. */
       ++ @28523 /* I'm ready to step into the arena, Diomedes. Let's do this. */ GOTO 21
       ++ @28525 /* Are there any rewards for participating in the fights? */ GOTO 18
       ++ @28526 /* I've come to check on Shadow. How's she doing today? Mind if I give her a little scratch? */ GOTO 20
       ++ @28507 /* I'll be going now. */ EXIT
END

IF ~~ THEN BEGIN 18
   SAY @28531 /* There certainly are. First and foremost, there's the invaluable experience gained from each bout. There's no substitute for the lessons learned in the heat of battle. */ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY @28532 /* And for those who prove themselves, there's a share of the profits. You see, we're not just here for sport, we're here to entertain, and the crowd is more than willing to show their appreciation. */
       ++ @28523 /* I'm ready to step into the arena, Diomedes. Let's do this. */ GOTO 21
       ++ @28524 /* Are there any rules I should be aware of? */ GOTO 14
       ++ @28526 /* I've come to check on Shadow. How's she doing today? Mind if I give her a little scratch? */ GOTO 20
       ++ @28507 /* I'll be going now. */ EXIT
END

IF ~~ THEN BEGIN 20
   SAY @28533 /* You've got a good eye for company, mate. Cats have a way of finding the right folks. Just be gentle with her, yeah? */ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21
   SAY @28534 /* Ready to dive into action then? Now, that's the spirit! Let's not waste any time then. */ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY @28535 /* Remember how we do things. No magic, we keep it old school. And no killin' blows, we're here for sport, not bloodshed. */ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY @28536 /* Now, get your gear sorted and let's step into the arena. */
       +~Global("h_PitsFight","GLOBAL",0)~+ @28537 /* Let's go. */ GOTO 24
       +~Global("h_PitsFight","GLOBAL",1)~+ @28537 /* Let's go. */ DO ~SetGlobal("h_PitsFight","GLOBAL",2)~ GOTO 25
       +~Global("h_PitsFight","GLOBAL",3)~+ @28537 /* Let's go. */ DO ~SetGlobal("h_PitsFight","GLOBAL",4)~ GOTO 26
       +~Global("h_PitsFight","GLOBAL",5)~+ @28537 /* Let's go. */ DO ~SetGlobal("h_PitsFight","GLOBAL",6)~ GOTO 28
       +~Global("h_PitsFight","GLOBAL",7)~+ @28537 /* Let's go. */ DO ~SetGlobal("h_PitsFight","GLOBAL",8)~ GOTO 29
       ++ @28538 /* On second thought, I need a little more time to prepare. */ EXIT
END

IF ~~ THEN BEGIN 24
   SAY @28539 /* For your first go, we'll pair you up with Khalid. He's got a knack for uncovering a fighter's weaknesses. Gotta see what you're made of, after all. */
IF ~~ THEN DO ~
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pitcut")~ EXIT
END

IF ~~ THEN BEGIN 25
   SAY @28540 /* You'll be facin' Grom, next. He's a force to be reckoned with, a different kind of beast. Be ready for a battle. */
IF ~~ THEN DO ~
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pi2cut")~ EXIT
END

IF ~~ THEN BEGIN 26
   SAY @28541 /* You're starting to draw a crowd now, <CHARNAME>. People are starting to hear about the new blood taking down all my fighters. Let's not disappoint them, shall we? */ IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY @28542 /* Alright then. Brace yourself, you're facing Lyria Winterheart. She's a wily one, so keep your guard up. */
IF ~~ THEN DO ~
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pi3cut")~ EXIT
END

IF ~~ THEN BEGIN 28
   SAY @28543 /* Your next challenge will be Serra Swiftwind, the cloaked archer. Keep your wits about you, for she's as sharp as her arrows. Good luck, my friend. */
IF ~~ THEN DO ~
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pi4cut")~ EXIT
END

IF ~~ THEN BEGIN 29
   SAY @28544 /* You've come a long way, and now you face the pinnacle of the pits. Roran 'Iron Fist' Stonebreaker, the reigning champion. */ IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY @28545 /* He's a force of nature, a monk with fists that could shatter stone. Be on your guard, and fight smart. This won't be an easy bout. */
IF ~~ THEN DO ~
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pi5cut")~ EXIT
END

IF ~Global("h_FightingPits","GLOBAL",3)~ THEN BEGIN 31
   SAY @28546 /* From the moment you stepped into these pits, I saw something special in you. You've proven me right in the most spectacular way. */ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY @28547 /* Defeating Roran, the reigning champion, is no small feat. You've surpassed all expectations. */ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY @28548 /* There's no one left in the pits to challenge you, except for Isla, but she's long since retired. */ IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
   SAY @28549 /* She became one of the most notorious assassins and sell-swords the Sword Coast has ever seen. No one knows where she is now, not even me. */ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
   SAY @28550 /* She left it all behind, vanished into the shadows. Finding her won't be easy, but if you're set on proving yourself, she's the one you'll have to convince. */
IF ~~ THEN DO ~
   SetGlobal("h_PitsChamp","GLOBAL",1)
   AddJournalEntry(@816,USER)~ EXIT
END

IF ~Global("h_FightingPits","GLOBAL",4)~ THEN BEGIN 36
   SAY @28551 /* By the gods, you've done the impossible! You've managed to convince Isla to return to the arena! I never thought I'd see this day. */ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
   SAY @28552 /* It's been years since I've allowed deathmatchs in these pits, but for two champions of this caliber... it's an opportunity too grand to pass up. */ IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY @28553 /* This will be a battle for the ages, a clash that will echo through the annals of pit-fighting history. */ IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
   SAY @28554 /* When you're ready, champion, just say the word, and we'll make our way to the arena. The pits are waiting, and so is Isla. This is history in the making. */
       ++ @28555 /* I'm ready, Diomedes. */ DO ~SetGlobal("h_PitsFight","GLOBAL",10)~ GOTO 40
       ++ @28556 /* I need a litte more time to prepare. */ EXIT
END

IF ~~ THEN BEGIN 40
   SAY @28557 /* Remember, champion, this is a fight to the end. Show the world your true abilities. */
IF ~~ THEN DO ~
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pi6cut")~ EXIT
END

IF WEIGHT #-1 ~Global("h_BeatIsla","GLOBAL",2)~ THEN BEGIN 41
   SAY @28558 /* Well, I'll be damned. You came into these pits a mystery, a nobody. Look at you now. You've climbed the ranks, defeated some of the toughest fighters around, and even took down Isla herself. */ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
   SAY @28559 /* You're not just a champion, my friend. You're a legend. And that's not something I say lightly. Here's your well-deserved prize money. You've earned every coin. */ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
   SAY @28560 /* Wear your title with pride, Champion. The pits will never forget your name. */ IF ~~ THEN EXIT
IF ~~ THEN DO ~
   SetGlobal("h_BeatIsla","GLOBAL",3)
   AddJournalEntry(@460,USER)
   AddExperienceParty(2000)
   GiveGoldForce(2000)
   GiveItemCreate("h_leat01",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~Global("h_FightingPits","GLOBAL",5)~ THEN BEGIN 44
   SAY @28561 /* Remember, champion, you've etched your name into the history of these pits. The legend of your triumph will echo through the ages. */ IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
   SAY @28562 /* Take your spoils and wear your title with pride. Until we meet again in the arena! */ IF ~~ THEN EXIT
END