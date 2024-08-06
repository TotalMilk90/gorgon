BEGIN h_quassd

IF ~True()~ THEN BEGIN 0
   SAY @54500 /* Easy there there, <CHARNAME>. Hands at your side and refrain from any sudden movements. Refuse and your life will be forfeit. */
       ++ @54501 /* Your threats won't sway me. I've faced your kind before. */ GOTO 1
       ++ @54502 /* If your intent was blood, you would have acted already. Speak your piece. */ GOTO 2
       ++ @54503 /* You Shadow Thieves are becoming quite the nuisance. Draw Steel! */ GOTO 8
END

IF ~~ THEN BEGIN 1
   SAY @54504 /* If we brought our full might upon you, your pathetic guild would crumble. However, I did not travel here to pursue confrontation. */ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY @54505 /* Very perceptive, and straight to the point. I will afford you the same courtesy. */ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @54506 /* I am Quass, of the Shadow Thieves. I seek to parley, and discuss a proposition that would serve both our interests. */
       ++ @54507 /* Alright, I'm listening. */ GOTO 4
       ++ @54508 /* Save it, Quass. Trust isn't my strong suit. */ GOTO 8
END

IF ~~ THEN BEGIN 4
   SAY @54509 /* Your guildmaster's ambitions pose a dire threat. They must be halted, at any cost. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @54510 /* He must not succeed in obtaining the final piece of the Kerykeion, and I could use your assurance in preventing it. */
       ++ @54511 /* Spare me the lecture. Thamuz told me the tale. What's in it for me? */ GOTO 6
       ++ @54512 /* Why should I help you? */ GOTO 6
       ++ @54513 /* Nice try, but I would never betray my guild. */ GOTO 8
END

IF ~~ THEN BEGIN 6
   SAY @54514 /* World-savings not enough for you? Yes, our line of work always demands a fitting reward, I suppose. */ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @54515 /* After Baldwin is dealt with, we will appropriate the Gorgon's Eye guildhall and redistribute its resources throughout our organization. */ IF ~~ THEN GOTO 7.5
   //appoint you as the acting leader, under our command, of course.
END

IF ~~ THEN BEGIN 7.5
   SAY @54516 /* You would be entitled to a substantial share of the spoils. */
       ++ @54517 /* I refuse. I will not betray the Gorgon's Eye. */ GOTO 8
       ++ @54518 /* I accept. I will betray the Gorgon's Eye. */ GOTO 9
END

IF ~~ THEN BEGIN 8
   SAY @54519 /* A pity. Then we shall end this with bloodshed. */
IF ~~ THEN DO ~
   SetGlobal("h_ShadowWar","GLOBAL",7)
   SetGlobal("h_SpawnSnakeHead","GLOBAL",1)
   SetGlobal("h_RandomEncounterForced","GLOBAL",1)
   Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
   SAY @54520 /* You've made a wise choice. <CHARNAME>. Baldwin's recklessness threatens more than just our operations. Together, we can halt his plans and secure our future. */ IF ~~ THEN GOTO 9.5
END

IF ~~ THEN BEGIN 9.5
   SAY @54521 /* Now, let us begin our preparations. Time is of the essence. */ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY @54522 /* We have crafted a false Kerykeion piece, laden with a powerful spell trap. If Baldwin attempts to fuse it with the genuine shards, the trap will activate and result in his demise. */ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY @54523 /* We have a spy among your ranks. When it is time to strike, they will be revealed with the utterance of the code, "The Shortbow of the Shaar." */
       ++ @54524 /* How do I ensure Baldwin tries to fuse the fake piece? */ GOTO 12
       ++ @54525 /* What happens if Baldwin figures out it's a fake? */ GOTO 13
       ++ @54526 /* What if the fusion process fails? */ GOTO 14
       ++ @54527 /* I understand. Is there anything else? */ GOTO 15
END

IF ~~ THEN BEGIN 12
   SAY @54528 /* You must use tact when presenting him the piece. Play your part well, and act as if nothing is amiss. */
       ++ @54525 /* What happens if Baldwin figures out it's a fake? */ GOTO 13
       ++ @54526 /* What if the fusion process fails? */ GOTO 14
       ++ @54527 /* I understand. Is there anything else? */ GOTO 15
END

IF ~~ THEN BEGIN 13
   SAY @54529 /* It has been meticulously crafted to be indistinguishable from a genuine shard. However, if Baldwin suspects, he must still be compelled to attempt the fusion. It is a risk that we are forced to take. */
       ++ @54524 /* How do I ensure Baldwin tries to fuse the fake piece? */ GOTO 12
       ++ @54526 /* What if the fusion process fails? */ GOTO 14
       ++ @54527 /* I understand. Is there anything else? */ GOTO 15
END

IF ~~ THEN BEGIN 14
   SAY @54530 /* If it fails, the fake piece will disintegrate, and it should raise no suspicion. Baldwin will assume there was an unforeseen error, and we will be left to prepare for the real strike. */
       ++ @54524 /* How do I ensure Baldwin tries to fuse the fake piece? */ GOTO 12
       ++ @54525 /* What happens if Baldwin figures out it's a fake? */ GOTO 13
       ++ @54527 /* I understand. Is there anything else? */ GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY @54531 /* By order of the Shadow Thieves, I officially decree you as part of our auxiliary forces. You are hereby required to carry out your duty, under penalty of death. Good day. */
IF ~~ THEN DO ~
   SetGlobal("h_BetrayBaldwin","GLOBAL",1)
   AddJournalEntry(@222,QUEST)
   GiveItemCreate("h_misc14",LastTalkedToBy,0,0,0)
   EscapeArea()~ EXIT
END

