BEGIN h_rich2d

IF ~Global("h_SpawnRichard","GLOBAL",3)~ THEN BEGIN 1
   SAY @56000 /* <CHARNAME>! The plan was a failure. We must eliminate this abomination before it's too late! My rogues will aid you in securing the rest of the guild. */ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @56001 /* If this creature should manage to escape, Faerun's fate will be sealed. */
IF ~~ THEN DO ~
   SetGlobal("h_SpawnRichard","GLOBAL",4)
   SetGlobal("h_ShadowWar","GLOBAL",9)
   SetGlobal("h_AttackedGuild","GLOBAL",1)
   EquipRanged()
   Attack("h_snak2c") ~ EXIT
END


IF WEIGHT #-1 ~Dead("h_snak2c")~ THEN BEGIN 3
   SAY @56002 /* The Kerykeion's power must have been more potent than we foresaw, allowing him to transform into that... monstrosity. */ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @56003 /* Nevertheless, Baldwin now lies defeated, and the Kerykeion has disintegrated beyond repair. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @56004 /* The final authentic fragment, however, has been kept in my possession, hidden for years. */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @56005 /* My brother has soiled any significance it once held. I will offer it to you as a token of gratitude for your assistance, and as an effort to move past our shared history. */ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @56006 /* Rhade will stay behind and orchestrate the preparations for the guild's closure and the subsequent transfer of assets. */ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @56007 /* We have efficiently evaluated the Gorgon's Eye worth and are prepared to promptly allocate your share. */ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @56008 /* With this, I extend my regards and bid you a good day. */
IF ~~ THEN DO ~
   SetGlobal("h_ShadowWar","GLOBAL",10)
   SetGlobal("h_GuildMusic","GLOBAL",4)
   AddJournalEntry(@225,QUEST_DONE)
   GiveItemCreate("h_misc03",LastTalkedToBy,0,0,0)
   GiveGoldForce(20000)
   EscapeArea()~ EXIT
END

/* The Gorgon's Eye guildhall is now yours, subservient only to the Shadow Thieves.
   I will appoint Procus as your lieutenant. Speak with him and he will attend to your affairs.
   Submit your dues and continue your duty. This will be a profitabe arrangement for us both. Good day.
*/

CHAIN
     IF ~Global("h_BetrayBaldwin","GLOBAL",4)~ THEN h_rich2d 0
@56009 /* Baldwin, enough! Take hold of your senses and cease this folly at once! */
   == h_baldwd
@56010 /* Ah, my dear brother, here to witness my ascent into godhood, are you? How considerate. */
   == h_rich2d
@56011 /* Godhood? Are you mad! I've come to stop you, and to take ownership of the Kerykeion. */
   =
@56012 /* Surrender it, and I will bring you in before the Shadowmaster. There may still be mercy. */
   == h_baldwd
@56013 /* Do you take me a for a fool, brother? After all these years, the Kerykeion is finally within my grasp. */
   =
@56014 /* And here you stand, offering me your dungeons... when I could have the world, instead! */
   == h_rich2d
@56015 /* Do not let the pull of the Kerykeion consume you! Relieve yourself of its grasp, and we will somehow find a path back from this madness. */
   == h_baldwd
@56016 /* Ah, the voice of reason speaks! But it's far too late for that, the power is mine now, and with it, I shall have my retribution. */
   =
@56017 /* It was a dream we both shared once, do you remember? Or is even that lost to you now, along with your honor, after betraying your own brother! */
   == h_rich2d
@56018 /* I have not forgotten. Yet, I cannot say the same for you. */
   =
@56019 /* It is you who are lost, brother. Ensnared in the malevolent embrace of the Kerykeion, and from it, you've emerged a dark taint of delusion. */
   =
@56020 /* You butcherd your kin. Cut them down like helpless dogs. There was no desire for retribtion in your eyes, only malice. */
   == h_baldwd
@56021 /* You remain restrained by fear, lacking ambition, and that is why you will fail. You are still the same coward as you were on the day of banishment. */
   =
@56022 /* Comrades, ready yourselves for battle! <CHARNAME>, protect me while I finish preparing the Kerykeion for fusion! */
   =
@56023 /* ... */
   =
@56024 /* So, this is what it's come to, <CHARNAME>? */
   == h_rich2d
@56025 /* Baldwin, your guild betrays you. <CHARNAME> has seen through your delusions and fights alongside us. */
   =
@56026 /* Rhade, a plant in your organization since the dawning of the Gorgon's Eye. */
   =
@56027 /* As for the rest of you, I give you this chance to join with us and strike down your master! He is only exploiting you for his own selfish desires! */
   == h_zedadd
@56028 /* <CHARNAME>, it's not true is it? How could you do this to your own guild! */
   =
@56029 /* I knew I smelled somethin' funny on you when you first walked in here! */
   == h_ariosd
@56030 /* If it weren't for Baldwin I'd still be out on the streets. I'll die before I let this guild fall into the hands of you lot! */
   == h_rigald
@56031 /* Betrayal, <CHARNAME>? Leading our foes to the heart of our sanctum? Such treachery cuts deeper than the sharpest blade. You've sealed your fate with this folly. */
   =
@56032 /* Remember, in the shadowed world we tread, every step is watched, every act remembered. You were once a commendable member of our fold, but this... this double-cross is a sin beyond redemption. */
   =
@56033 /* The shadows may forgive, but we, the Gorgon's Eye, do not. */
   == h_lieded
@56034 /* Finally, some action around here! Sorry, Baldwin, but I think it's time for me to switch things up a bit. */
   =
@56035 /* Consider this my formal resignation from the Gorgon's Eye. */
   =
@56036 /* I sensed you harbored secrets, <CHARNAME>, but Eury? That was beyond my reckoning. */
   == h_eurynd
@56037 /* Heh. I'll take that as a compliment. */
   =
@56038 /* Shall we get to it then? */
   == h_baldwd
@56039 /* It matters not how many of you turn coat against me. Your futile efforts have granted me ample time to complete my arcane preparations! */
   =
@56040 /* You shall all kneel before me as I ascend to the echelons of godhood! */
   =
@56041 /* Dark sisters, I free you from your bonds! Grant me your eternal power! */
   =
@56042 /* AaaAAHHHH!!! */
      DO ~
         Kill("h_baldwc")
         CreateCreature("h_snak2c",[919.1086],S)
         SetGlobal("h_SpawnRichard","GLOBAL",3)
         SetGlobal("h_BaldwinQuest","GLOBAL",12)
         SetGlobal("h_BetrayBaldwin","GLOBAL",5)
         PlaySound("h_figmus")~
EXIT
