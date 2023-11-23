APPEND NOBL10

IF WEIGHT #-1 ~Global("h_GerardQuest","GLOBAL",0) Global("h_RigaldoQuest","GLOBAL",4)~ THEN BEGIN G_0
   SAY ~Welcome, welcome, I suppose. What brings you here? I have pressing engagements that demand my attention, by jove! Time is a precious commodity, you understand.~
       ++ ~Well, for starters, you can hand over that necklace right quick. Nice and easy-like too. You've missed your last payment, and I'm here to collect.~ GOTO G_1
       ++ ~I know about your family's dark history, Gerard. It's time to make amends and do what's right. Hand over the pendant and resume your payments.~ GOTO G_1
END

IF ~~ THEN BEGIN G_1
   SAY ~Payment? You're one of Rigaldo's dogs, then? Hmph! I shan't debase myself by dealing with the likes of you lot. Tell him he will not be recieving another penny from me. Now, begone!~
       ++ ~Calling me a dog are you? Hope you're ready to eat those words.~ GOTO G_2
       ++ ~I'm afraid I can't do that. *unsheathe your blade* Play nice now, before things get ugly.~ GOTO G_2
       ++ ~You'll cooperate if you know what's good for you, else the wrong people will find out about your past.~ GOTO G_3
       ++ ~Tough talk for a two-bit slaver. I'll see to it you're hanging from the gallows for what you've done!~ GOTO G_3
END

IF ~~ THEN BEGIN G_2
   SAY ~Shut your mouth! Don't touch me, or my guards will rip you in two!~
       +~CheckStatGT(Player1,18,STR)~+ ~Those two dim-wits? Don't make me laugh! Give 'em a ring then and let's see what their made of.~ GOTO G_7
       +~CheckStatLT(Player1,19,STR)~+ ~Those two dim-wits? Don't make me laugh! Give 'em a ring then and let's see what their made of.~ GOTO G_5
       +~CheckStatGT(Player1,18,CHR)~+ ~Hand over the goods or your secrets will echo throughout every corner of Faerun. Mark my words.~ GOTO G_8
       +~CheckStatLT(Player1,19,CHR)~+ ~Hand over the goods or your secrets will echo throughout every corner of Faerun. Mark my words.~ GOTO G_5
       ++ ~Last chance to play nice. Even the bill, or it's lights out.~ GOTO G_4
       ++ ~I won't keep quiet, not until you've answered for your crimes!~ GOTO G_4
END

IF ~~ THEN BEGIN G_3
   SAY ~Quiet, will you! I've paid a hefty sum to have those accusations veiled. Another utterance from your mouth and my guards will silence it for good.~
       +~CheckStatGT(Player1,18,STR)~+ ~Those two dim-wits? Don't make me laugh! Give 'em a ring then and let's see what their made of.~ GOTO G_7
       +~CheckStatLT(Player1,19,STR)~+ ~Those two dim-wits? Don't make me laugh! Give 'em a ring then and let's see what their made of.~ GOTO G_5
       +~CheckStatGT(Player1,18,CHR)~+ ~Hand over the goods or your secrets will echo throughout every corner of Faerun. Mark my words.~ GOTO G_8
       +~CheckStatLT(Player1,19,CHR)~+ ~Hand over the goods or your secrets will echo throughout every corner of Faerun. Mark my words.~ GOTO G_5
       ++ ~Last chance to play nice. Even the bill, or it's lights out.~ GOTO G_4
       ++ ~I won't keep quiet, not until you've answered for your crimes!~ GOTO G_4
END

IF ~~ THEN BEGIN G_4
   SAY ~I knew Rigaldo's dogs were brainless mutts, but by jove! You can't even comprehend the simplest of commands, can you? Guards, get this fool out of my sight!~
IF ~~ THEN DO ~
   SetGlobal("h_GuardsAttack","GLOBAL",1)
   SetGlobal("h_GerardQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN G_5
   SAY ~You asked for it. Guards protect me! Kill this intruder at once!~
IF ~~ THEN DO ~
   SetGlobal("h_GuardsAttack","GLOBAL",1)
   SetGlobal("h_GerardQuest","GLOBAL",1)~ EXIT
END

IF WEIGHT #-1 ~Global("h_GerardQuest","GLOBAL",1)~ THEN BEGIN G_6
   SAY ~Take the bloody necklace then, you dumb brute!~
IF ~~ THEN DO ~
   SetGlobal("h_GerardQuest","GLOBAL",2)
   AddJournalEntry(@313,QUEST)
   GiveItemCreate("h_misc05",LastTalkedToBy,0,0,0)
   MoveToPoint([612.327])~ EXIT
END

IF ~~ THEN BEGIN G_7
   SAY ~By jove! I do have my reservations about those two. Curse it all! Guards, you may dismiss yourselves.~ IF ~~ THEN GOTO G_10
END

IF ~~ THEN BEGIN G_8
   SAY ~*sigh* Guards, dismiss yourselves.~ IF ~~ THEN GOTO G_9
END

IF ~~ THEN BEGIN G_9
   SAY ~You think you can blackmail me, do you? Very well, take your pendant. But remember, secrets have a way of coming back to haunt those who hold them. Mark *my* words.~
IF ~~ THEN DO ~
   SetGlobal("h_GerardQuest","GLOBAL",2)
   SetGlobal("h_GerardCharisma","GLOBAL",1)
   AddJournalEntry(@313,QUEST)
   GiveItemCreate("h_misc05",LastTalkedToBy,0,0,0)
   MoveToPoint([612.327])~ EXIT
END

IF ~~ THEN BEGIN G_10
   SAY ~Here, take the bloody necklace then, you bastard. You can let Rigaldo know I'll be resuming my payments.~
IF ~~ THEN DO ~
   SetGlobal("h_GerardQuest","GLOBAL",2)
   SetGlobal("h_GerardStrength","GLOBAL",1)
   AddJournalEntry(@313,QUEST)
   GiveItemCreate("h_misc05",LastTalkedToBy,0,0,0)
   MoveToPoint([612.327])~ EXIT
END

IF WEIGHT #-1 ~Global("h_GerardQuest","GLOBAL",2)~ THEN BEGIN G_11
   SAY ~Get out of my sight you dog! Rigaldo will get his payments.~ IF ~~ THEN EXIT
END

END