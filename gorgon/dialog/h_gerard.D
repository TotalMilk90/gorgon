APPEND NOBL10

IF WEIGHT #-1 ~Global("h_GerardQuest","GLOBAL",0) Global("h_RigaldoQuest","GLOBAL",4) Global("h_GerardGoodQuest","GLOBAL",0)~ THEN BEGIN G_10
   SAY ~Welcome, welcome. Please make yourself at home and chat with me a while. I rarely receive company these days. What can I do for you fine folk?~
       ++ ~Well for starters you can hand over that necklace right quick. Nice and easy-like too. I've come on behalf of the the Gorgon's Eye and it seems you've missed your last payment. I'm here to collect it.~ GOTO G_11
       ++ ~Hello Gerard, it seems you've missed your last payment and I'm here to collect. That necklace you're wearing looks the proper value. Be a good lad and hand it over now, no one needs to get hurt.~ GOTO G_11
       ++ ~Listen, I'm working with the Gorgon's Eye and they want me to bring back your family's necklace. However, you seem like a nice fellow and I can't just take it from you. I'd rather find a peaceful solution to this if possible.~ GOTO GOOD_1
END

IF ~~ THEN BEGIN G_11
   SAY ~Payment? You're one of Rigaldo's dogs then? Hmph! I shan't debase myself by dealing with the likes of you lot. Tell him he will not be recieving another penny from me. Now begone!~
       ++ ~Give me the necklace if you want to live!~ GOTO G_14
       ++ ~I'm afraid I can't do that. *unsheathe your blade* Play nice now, before things get ugly.~ GOTO G_14
       ++ ~I don't want to hurt you, Gerard, but you'll soon leave me no choice.~ GOTO G_14
       +~CheckStatGT(Player1,17,STR)~+ ~Do you think your guards stand any chance against me? If you don't hand over that necklace then I'll be forced to slaughter you all!~ GOTO G_12
       ++ ~Did you just call me a dog? That's it! Time to die!~ GOTO G_14
END

IF ~~ THEN BEGIN G_12
   SAY ~By jove! I do have my reservations about those two. *sigh* Guards, you may leave us.~ IF ~~ THEN GOTO G_13
END

IF ~~ THEN BEGIN G_13
   SAY ~Here, take the bloody necklace then you bastard. And let Rigaldo know I'll be resuming my payments.~
IF ~~ THEN DO ~
   SetGlobal("h_GerardQuest","GLOBAL",2)
   AddJournalEntry(@313,QUEST)
   GiveItemCreate("h_misc05",LastTalkedToBy,0,0,0)
   ReputationInc(-1)
   MoveToPoint([612.327])~ EXIT
END

IF ~~ THEN BEGIN G_14
   SAY ~You fool, this is exactly why I employ sentry at my door. Guards protect me!~
IF ~~ THEN DO ~
   SetGlobal("h_GuardsAttack","GLOBAL",1)
   SetGlobal("h_GerardQuest","GLOBAL",1)~ EXIT
END

IF WEIGHT #-1 ~Global("h_GerardQuest","GLOBAL",1)~ THEN BEGIN G_15
   SAY ~Take the bloody necklace then you dumb brutes!~
IF ~~ THEN DO ~
   SetGlobal("h_GerardQuest","GLOBAL",2)
   AddJournalEntry(@313,QUEST)
   GiveItemCreate("h_misc05",LastTalkedToBy,0,0,0)
   ReputationInc(-1)
   MoveToPoint([612.327])~ EXIT
END

IF WEIGHT #-1 ~Global("h_GerardQuest","GLOBAL",2)~ THEN BEGIN G_16
   SAY ~Get out of my sight you dog! Rigaldo will get his payments.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GOOD_1
   SAY ~A peaceful solution that ends with robbery? Bah! I've never heard of such absurdity. Leave at once or I'll have my guards escort you by force.~
       ++ ~Is there any way I could pay or trade you for it, or perhaps do something for you in return?~ GOTO GOOD_2
       ++ ~I don't want to hurt you Gerard, but you'll soon leave me no choice.~ GOTO G_14
       +~CheckStatGT(Player1,17,STR)~+ ~Do you think your guards stand any chance against me? If you don't hand over that necklace now, then I'll be forced to slaughter you all!~ GOTO G_12
END

IF ~~ THEN BEGIN GOOD_2
   SAY ~Absolutely not! I knew Rigaldo's dogs were brainless mutts, but you can't even comprehend the simplest of commands can you? Guards, get this fool out of my sight!~
IF ~~ THEN DO ~
   SetGlobal("h_GuardsAttack","GLOBAL",1)
   SetGlobal("h_GerardGoodQuest","GLOBAL",1)~ EXIT
END

IF WEIGHT #-1 ~Global("h_GerardGoodQuest","GLOBAL",1)~ THEN BEGIN GOOD_3
   SAY ~By jove! Alright, you can have the necklace, just leave me be!~
IF ~~ THEN DO ~
   SetGlobal("h_GerardQuest","GLOBAL",2)
   AddJournalEntry(@313,QUEST)
   GiveItemCreate("h_misc05",LastTalkedToBy,0,0,0)
   MoveToPoint([612.327])~ EXIT
END

END