BEGIN h_quassd

IF ~True()~ THEN BEGIN 0
   SAY ~Easy there there, <CHARNAME>. Hands at your side and refrain from any sudden movements. Refuse and your life will be forfeit.~
       ++ ~Your threats won't sway me. I've faced your kind before.~ GOTO 1
       ++ ~If your intent was blood, you would have acted already. Speak your piece.~ GOTO 2
       ++ ~You Shadow Thieves are becoming quite the nuisance. Draw Steel!~ GOTO 8
END

IF ~~ THEN BEGIN 1
   SAY ~If we brought our full might upon you, your guild would crumble.~ IF ~~ THEN GOTO 1.5
END

IF ~~ THEN BEGIN 1.5
   SAY ~However, I did not travel here to pursue confrontation.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY ~Very perceptive, and straight to the point. I will afford you the same courtesy.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I am Quass, of the Shadow Thieves. I seek to parley, and discuss a proposition that would serve both our interests.~
       ++ ~Alright, I'm listening.~ GOTO 4
       ++ ~Save it, Quass. Trust isn't my strong suit.~ GOTO 8
END

IF ~~ THEN BEGIN 4
   SAY ~Your guildmaster's ambitions pose a dire threat. They must be halted, at any cost.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~He must not succeed in obtaining the final piece of the Kerykeion, and I could use your assurance in preventing it.~
       ++ ~Spare me the lecture. Thamuz told me the tale. What's in it for me?~ GOTO 6
       ++ ~Nice try, but I would never betray my guild.~ GOTO 8
END

IF ~~ THEN BEGIN 6
   SAY ~World-savings not enough for you? Yes, our line of work always demands a fitting reward, I suppose.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~After Baldwin is dealt with, we will appropriate the Gorgon's Eye guildhall and appoint you as the acting leader, under our command, of course.~
       ++ ~I refuse. I will not betray the Gorgon's Eye.~ GOTO 8
       ++ ~I accept. I will betray the Gorgon's Eye.~ GOTO 9
END

IF ~~ THEN BEGIN 8
   SAY ~A pity. Then we shall end this with bloodshed.~
IF ~~ THEN DO ~
   SetGlobal("h_ShadowWar","GLOBAL",7)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
   SAY ~Wise choice. Here is your mission, listen closely.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~We have crafted a false Kerykeion piece, laden with a powerful spell trap. If Baldwin attempts to fuse it with the genuine shards, the trap will activate and result in his demise.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~We have a spy amongst your ranks. When it is time to strike, they will be revealed with the utterance of the code, "The Shortbow of the Shaar."~
       ++ ~How do I ensure Baldwin tries to fuse the fake piece?~ GOTO 12
       ++ ~What happens if Baldwin figures out it's a fake?~ GOTO 13
       ++ ~What if the fusion process fails?~ GOTO 14
       ++ ~I understand. Is there anything else?~ GOTO 15
END

IF ~~ THEN BEGIN 12
   SAY ~You must use tact when presenting him the piece. Act as if nothing is amiss and play your part well.~
       ++ ~What happens if Baldwin figures out it's a fake?~ GOTO 13
       ++ ~What if the fusion process fails?~ GOTO 14
       ++ ~I understand. Is there anything else?~ GOTO 15
END

IF ~~ THEN BEGIN 13
   SAY ~It has been meticulously crafted to be indistinguishable from a genuine shard. However, if Baldwin suspects, he must be compelled to attempt the fusion. It is a risk that we are forced to take.~
       ++ ~How do I ensure Baldwin tries to fuse the fake piece?~ GOTO 12
       ++ ~What if the fusion process fails?~ GOTO 14
       ++ ~I understand. Is there anything else?~ GOTO 15
END

IF ~~ THEN BEGIN 14
   SAY ~If it fails, the fake piece will disintegrate, and it should raise no suspicion. Baldwin will assume there was an unforeseen error, and we will be left to prepare for the real strike.~
       ++ ~How do I ensure Baldwin tries to fuse the fake piece?~ GOTO 12
       ++ ~What happens if Baldwin figures out it's a fake?~ GOTO 13
       ++ ~I understand. Is there anything else?~ GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~By order of the Shadow Thieves, I officially decree you as part of our auxiliary forces. You are hereby required to carry out your duty, under penalty of death. Good day.~
IF ~~ THEN DO ~
   SetGlobal("h_BetrayBaldwin","GLOBAL",1)
   AddJournalEntry(@222,QUEST)
   GiveItemCreate("h_misc14",LastTalkedToBy,0,0,0)
   EscapeArea()~ EXIT
END

