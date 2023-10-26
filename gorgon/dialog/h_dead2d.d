BEGIN h_dead2d

IF ~Global("h_PitsFight","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Alright, you two, listen up. This here's a moment for you both to learn, to grow, and to prove yourselves.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Khalid, you've got the experience, the wisdom. Share it, but don't hold back. And you, newcomer, show us what you're made of.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~This ain't about putting on a spectacle. It's about grit, about technique. Remember, this is your chance to step up. Now, let's see who's got the fire inside.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Begin!~
IF ~~ THEN DO ~
   SetGlobal("h_PitsFight","GLOBAL",1)
   ActionOverride("h_pits1c",Enemy())
   EscapeArea()~ EXIT
END

IF ~Global("h_BeatKhalid","GLOBAL",1)~ THEN BEGIN 4
   SAY ~Well, well, looks like we've got a surprise on our hands, don't we? In this corner, our newcomer has shown us a thing or two about determination and skill.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~Khalid, you fought well, no doubt about that. But today, victory belongs to the fresh blood. You've earned your keep, mate.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Here's your share of the purse, a testament to your prowess. Wear it as a badge of honor. This won't be the last time we see you in these pits, I reckon. Well done.~
IF ~~ THEN DO ~
   SetGlobal("h_BeatKhalid","GLOBAL",2)
   SetGlobal("h_FightersTalk","GLOBAL",2)
   AddJournalEntry(@811,QUEST)
   AddExperienceParty(200)
   GiveGoldForce(100)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pigcut")~ EXIT
END

IF ~Global("h_PitsFight","GLOBAL",2)~ THEN BEGIN 7
   SAY ~Alright, you two. This is what you've been training for. Grom, I see the fire in your eyes. Remember, this ain't about drawing blood. It's about testing your limits, honing your skills. No lethal blows.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~And you, newcomer. You've got something to prove here. Grom's a different beast altogether. He'll test your mettle in ways you haven't seen yet. Adapt and fight smart. It's a whole new game.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Show us what you're made of!~
IF ~~ THEN DO ~
   SetGlobal("h_PitsFight","GLOBAL",3)
   ActionOverride("h_pits2c",Enemy())
   EscapeArea()~ EXIT
END

IF ~Global("h_BeatGrom","GLOBAL",1)~ THEN BEGIN 10
   SAY ~Well, I'll be damned. You did it, <CHARNAME>. You faced Grom and came out on top. That's no small feat. You've got real potential, I'll give you that.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~Take your winnings, and remember, this is just the beginning. There's more to come, and I've no doubt you'll face it head-on. Well done.~
IF ~~ THEN DO ~
   SetGlobal("h_BeatKhalid","GLOBAL",3)
   SetGlobal("h_BeatGrom","GLOBAL",2)
   AddJournalEntry(@812,QUEST)
   AddExperienceParty(400)
   GiveGoldForce(200)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pigcut")~ EXIT
END

IF ~Global("h_PitsFight","GLOBAL",4)~ THEN BEGIN 12
   SAY ~Ladies and gentlemen, welcome back to the pits! Today, we have an exciting match for you.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~In one corner, we have our seasoned rogue, Lyria 'Frostbite' Winterheart, known for her quick strikes and evasive moves.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~And in the other corner, our new contender, <CHARNAME>, climbing the ranks and eager to make a name for <HIMHER>self.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~Let the match begin!~
IF ~~ THEN DO ~
   SetGlobal("h_PitsFight","GLOBAL",5)
   ActionOverride("h_pits3c",Enemy())
   EscapeArea()~ EXIT
END

IF ~Global("h_BeatLyria","GLOBAL",1)~ THEN BEGIN 16
   SAY ~Well now, that was a bout to remember! You've got a spark in you, <CHARNAME>. Took on Lyria like a seasoned fighter.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~This arena's seen its share of battles, but a victory like yours, unexpected and hard-fought, it's what makes this place special.~ IF ~~ THEN GOTO 18
END 

IF ~~ THEN BEGIN 18
   SAY ~Here's your cut, well earned. Keep this up, and you'll be etching your name in the annals of the pits history.~
IF ~~ THEN DO ~
   SetGlobal("h_BeatGrom","GLOBAL",3)
   SetGlobal("h_BeatLyria","GLOBAL",2)
   AddJournalEntry(@813,QUEST)
   AddExperienceParty(600)
   GiveGoldForce(300)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pigcut")~ EXIT
END




IF ~Global("h_PitsFight","GLOBAL",6)~ THEN BEGIN 19
   SAY ~Bear witness, for we have a match of extraordinary promise before us today.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~Our new challenger, with valor in their eyes, faces none other than Serra Swiftwind, the archer of Silverymoon.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~Serra stands proud and tall with her bow poised and her spirit attuned to nature's grace. Strength and skill will surely intertwine in this dance of combat!~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~Now, let the clash begin!~
IF ~~ THEN DO ~
   SetGlobal("h_PitsFight","GLOBAL",7)
   ActionOverride("h_pits4c",Enemy())
   EscapeArea()~ EXIT
END

IF ~Global("h_BeatSerra","GLOBAL",1)~ THEN BEGIN 23
   SAY ~Well fought, well fought indeed! Our challenger has proven themselves once again, overcoming formidable odds!~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~Serra Swiftwind, your grace and precision with the bow are unmatched. And yet, it seems today, our newcomer's determination shone brighter. A testament to the unpredictable nature of the pits.~ IF ~~ THEN GOTO 25
END 

IF ~~ THEN BEGIN 25
   SAY ~Here stands a testament to courage and tenacity. A share of the earnings for this display of skill and willpower.~ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY ~Remember, friends, the pits have their own rhythm, and today, it played in favor of our challenger. Let this victory inspire us all to greater heights!~
IF ~~ THEN DO ~
   SetGlobal("h_BeatLyria","GLOBAL",3)
   SetGlobal("h_BeatSerra","GLOBAL",2)
   AddJournalEntry(@814,QUEST)
   AddExperienceParty(800)
   GiveGoldForce(400)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pigcut")~ EXIT
END

IF ~Global("h_PitsFight","GLOBAL",8)~ THEN BEGIN 27
   SAY ~Ladies and gentlemen, gather 'round! Today, we have a match that will be etched in the annals of this arena's history! A clash of titans, a contest of wills!~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY ~In this corner, we have the current champion, a living legend, Roran 'Iron Fist' Stonebreaker! His fists are like thunder, his strikes like lightning!~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~And in this corner, <CHARNAME>, who's fought tooth and nail to reach this moment, a newcomer who's faced formidable foes and triumphed!~ IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY ~It's time to see if they've got what it takes to dethrone the champion!~ IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY ~Let the battle begin!~
IF ~~ THEN DO ~
   SetGlobal("h_PitsFight","GLOBAL",9)
   ActionOverride("h_pits5c",Enemy())
   EscapeArea()~ EXIT
END

IF ~Global("h_BeatRoran","GLOBAL",1)~ THEN BEGIN 32
   SAY ~What a match we have just witnessed! <CHARNAME>, against all odds, has emerged victorious against the reigning champion!~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY ~A feat that will be sung about in the taverns and spoken of in hushed tones for ages to come!~ IF ~~ THEN GOTO 34
END 

IF ~~ THEN BEGIN 34
   SAY ~This is what the pits are about, my friends! A testament to the indomitable spirit, to the unyielding will to fight! This is where legends are born and stories are forged!~ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
   SAY ~You have shown us all the true heart of a warrior. You faced the best and emerged victorious.~ IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
   SAY ~You have earned not only the title of champion, but the respect and admiration of everyone here.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
   SAY ~Your winnings, well-earned and rightfully deserved. Wear them with pride, for you have proven yourself in the crucible of combat!~
IF ~~ THEN DO ~
   SetGlobal("h_BeatSerra","GLOBAL",3)
   SetGlobal("h_BeatRoran","GLOBAL",2)
   AddJournalEntry(@815,QUEST)
   AddExperienceParty(1000)
   GiveGoldForce(500)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_pigcut")~ EXIT
END
