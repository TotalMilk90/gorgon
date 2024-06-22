BEGIN h_thamud

IF ~True()~ THEN BEGIN 0
   SAY ~Well, this is a pleasant surprise. I must admit, I didn't expect to find you here, <CHARNAME>.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~It's not often that someone manages to outpace the shadows themselves, no, that's a feat few can boast.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~But where are my manners amidst such an unexpected turn of events? I am Thamuz, a name you've likely heard whispered in the shadows.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I am representative of the Shadow Thieves, an organization that prides itself on precision and discretion.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Your swift arrival here speaks to a certain... flair that I can't help but admire. It's a rare occurrence to encounter someone who can match wits with our operations.~
       ++ ~I was under the impression that negotiations were your goal. What drove you to slay this man before me?~ GOTO 5
       ++ ~Baldwin spoke of you. He recalled a past where you both walked as comrades in the shadows.~ GOTO 9
       ++ ~Why are the Shadow Thieves obstructing Baldwin's quest for the Kerykeion? What's your endgame here?~ DO ~SetGlobal("h_ThamuzKery","GLOBAL",1)~ GOTO 12
       ++ ~Why the attack on Beregost? Wouldn't a discreet approach to Nagate have served your purposes better?~ DO ~SetGlobal("h_ThamuzHired","GLOBAL",1)~ GOTO 20
       +~Global("h_ThamuzKery","GLOBAL",1)~+ ~I have no desire to fight you, Thamuz. I plan to stop Baldwin myself, before this impending disaster.~ GOTO 25
       +~Global("h_ThamuzKery","GLOBAL",1)~+ ~It seems our paths are destined to cross blades. Prepare yourself, Shadow Thief.~ GOTO 28
       +~Global("h_ThamuzKery","GLOBAL",0)~+ ~It seems our paths are destined to cross blades. Prepare yourself, Shadow Thief.~ GOTO 30
END

IF ~~ THEN BEGIN 5
   SAY ~I find it somewhat disheartening, as a fellow practitioner of our shadowed arts, that you'd even need to ask.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~In our realm, negotiations are often cloaked in duplicity and unpredictability. My methods, while unorthodox, serve a purpose.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~By removing Nagate, I've eliminated an unpredictable factor, a potential leak in our tightly woven tapestry. He was a loose end, one that needed tying up.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~What I sought is securely in my grasp, and any details of our exchange have perished with him. In our world, silence is often the most effective form of negotiation.~
       ++ ~Baldwin spoke of you. He recalled a past where you both walked as comrades in the shadows.~ GOTO 9
       ++ ~Why are the Shadow Thieves obstructing Baldwin's quest for the Kerykeion? What's your endgame here?~ DO ~SetGlobal("h_ThamuzKery","GLOBAL",1)~ GOTO 12
       ++ ~Why the attack on Beregost? Wouldn't a discreet approach to Nagate have served your purposes better?~ DO ~SetGlobal("h_ThamuzHired","GLOBAL",1)~ GOTO 20
       +~Global("h_ThamuzKery","GLOBAL",1)~+ ~I have no desire to fight you, Thamuz. I plan to stop Baldwin myself, before this impending disaster.~ GOTO 25
       +~Global("h_ThamuzKery","GLOBAL",1)~+ ~It seems our paths are destined to cross blades. Prepare yourself, Shadow Thief.~ GOTO 28
       +~Global("h_ThamuzKery","GLOBAL",0)~+ ~It seems our paths are destined to cross blades. Prepare yourself, Shadow Thief.~ GOTO 30
END

IF ~~ THEN BEGIN 9
   SAY ~Ah, Baldwin's romanticism of the past. Yes, we were comrades once, allies in a world cloaked in darkness. But allegiances in our line of work are as fickle as the shadows we inhabit.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Baldwin chose his path, one that led away from the tenets we once upheld together. Now, we stand on opposite ends, each a reminder to the other of what once was and what can never be again.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~It's a tale as old as the guilds themselves, a bond built in shadow, only to be severed by differing ambitions.~
       ++ ~I was under the impression that negotiations were your goal. What drove you to slay this man before me?~ GOTO 5
       ++ ~Why are the Shadow Thieves obstructing Baldwin's quest for the Kerykeion? What's your endgame here?~ DO ~SetGlobal("h_ThamuzKery","GLOBAL",1)~ GOTO 12
       ++ ~Why the attack on Beregost? Wouldn't a discreet approach to Nagate have served your purposes better?~ DO ~SetGlobal("h_ThamuzHired","GLOBAL",1)~ GOTO 20
       +~Global("h_ThamuzKery","GLOBAL",1)~+ ~I have no desire to fight you, Thamuz. I plan to stop Baldwin myself, before this impending disaster.~ GOTO 25
       +~Global("h_ThamuzKery","GLOBAL",1)~+ ~It seems our paths are destined to cross blades. Prepare yourself, Shadow Thief.~ GOTO 28
       +~Global("h_ThamuzKery","GLOBAL",0)~+ ~It seems our paths are destined to cross blades. Prepare yourself, Shadow Thief.~ GOTO 30
END

IF ~~ THEN BEGIN 12
   SAY ~You ask a prudent question, <CHARNAME>. This isn't mere obstruction but an essential countermeasure. Baldwin's fixation with the Kerykeion has rendered him blind to its dire implications.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~As Shadow Thieves, we grasp the true nature of what he pursues. This artifact isn't a simple tool of power, it's akin to an ancient force capable of warping the very essence of reality.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~Our objective transcends petty rivalry or the scramble for power. We seek to prevent a disaster that could unravel the very fabric of Faerun.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~The Kerykeion, in its entirety, possesses the potential to distort reality itself, to bend the wills and fates of all living beings.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~Baldwin envisions it as his path to supremacy, oblivious to the fact that it is also a gateway to widespread ruin.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~Thus, we intervene, not merely as opponents but as guardians against a threat to the world's balance.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~Should Baldwin succeed in his quest, the ensuing havoc would respect no allegiances, affecting even those who believe they can control such forces.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~Our actions, although they may seem obstructive, are measures taken to prevent a disaster of unfathomable proportions.~
       ++ ~I was under the impression that negotiations were your goal. What drove you to slay this man before me?~ GOTO 5
       ++ ~Baldwin spoke of you. He recalled a past where you both walked as comrades in the shadows.~ GOTO 9
       ++ ~Why the attack on Beregost? Wouldn't a discreet approach to Nagate have served your purposes better?~ DO ~SetGlobal("h_ThamuzHired","GLOBAL",1)~ GOTO 20
       +~Global("h_ThamuzKery","GLOBAL",1)~+ ~I have no desire to fight you, Thamuz. I plan to stop Baldwin myself, before this impending disaster.~ GOTO 25
       +~Global("h_ThamuzKery","GLOBAL",1)~+ ~It seems our paths are destined to cross blades. Prepare yourself, Shadow Thief.~ GOTO 28
       +~Global("h_ThamuzKery","GLOBAL",0)~+ ~It seems our paths are destined to cross blades. Prepare yourself, Shadow Thief.~ GOTO 30
END
   
IF ~~ THEN BEGIN 20
   SAY ~On our way to meet Nagate, we received a lucrative offer from another player in this shadowy game, one with a vested interest in seeing Baldwin and the Gorgon's Eye weakened.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~This benefactor paid handsomely for a demonstration of force against Baldwin's stronghold.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~Furthermore, it provided an opportunity to assess the defenses and capabilities of your paltry guild, gathering intelligence for future maneuvers.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~It was a calculated risk, one that we deemed necessary given the complexity of the situation.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~The world of shadows is often not as straightforward as it seems, and sometimes, actions that appear reckless have deeper, hidden motivations.~
       ++ ~I was under the impression that negotiations were your goal. What drove you to slay this man before me?~ GOTO 5
       ++ ~Baldwin spoke of you. He recalled a past where you both walked as comrades in the shadows.~ GOTO 9
       ++ ~Why are the Shadow Thieves obstructing Baldwin's quest for the Kerykeion? What's your endgame here?~ DO ~SetGlobal("h_ThamuzKery","GLOBAL",1)~ GOTO 12
       +~Global("h_ThamuzKery","GLOBAL",1)~+ ~I have no desire to fight you, Thamuz. I plan to stop Baldwin myself, before this impending disaster.~ GOTO 25
       +~Global("h_ThamuzKery","GLOBAL",1)~+ ~It seems our paths are destined to cross blades. Prepare yourself, Shadow Thief.~ GOTO 28
       +~Global("h_ThamuzKery","GLOBAL",0)~+ ~It seems our paths are destined to cross blades. Prepare yourself, Shadow Thief.~ GOTO 30
END

IF ~~ THEN BEGIN 25
   SAY ~An amusing ploy, albeit an unsavory reflection of your loyalty, yet, it is one that I cannot satisfy. Your allegiance to Baldwin, whether unwavering or fractured, matters little now.~ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY ~You stand before me as an obstacle, one that must be removed for the greater scheme to unfold.~ IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY ~Regrettably, this means your journey ends here, <CHARNAME>. It's time for you to embrace the fate that awaits all who meddle in affairs beyond their grasp.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY ~These hallowed ruins, once a cradle of ancient wisdom, shall now serve as your tomb. It's a fitting end, perhaps, for one who dared to challenge the currents of power.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~So, ready yourself, <CHARNAME>, for I must ensure that this storied ground becomes the final resting place of your ambitions.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",7)
   SetGlobal("h_ShadowWar","GLOBAL",4)
   SetGlobal("h_SpawnAriosh","GLOBAL",4)
   AddJournalEntry(@216,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 30
   SAY ~So be it, if combat is your chosen path. But heed this warning before we clash.~ IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY ~Your allegiance to Baldwin and his quest for the Kerykeion is a path fraught with peril, more than you realize.~ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~He seeks to reforge an artifact of devastating power, one that could unleash chaos untold upon Faerun. His obsession blinds him to the cataclysmic consequences.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY ~Understand, your fight here may be against me, but the true battle, the one for the very fate of our world, lies ahead with the man you serve.~ IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
   SAY ~Now, if it is a fight you desire, I will grant it. But remember, the truths I speak may be the last you hear if you continue to follow Baldwin blindly.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",7)
   SetGlobal("h_ShadowWar","GLOBAL",4)
   SetGlobal("h_SpawnAriosh","GLOBAL",4)
   AddJournalEntry(@216,QUEST)~ EXIT
END


