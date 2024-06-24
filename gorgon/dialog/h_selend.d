BEGIN h_selend

IF ~Global("h_SelenaQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY @58000 /* Avast 'ere, ye scurvy dog! Wha's th' wind blowin' ye t' me an' me scallywags, struttin' ye about like ye own th' joint? Spit it out, why be ye here? */
       ++ @58001 /* I represent the Gorgon's Eye thieves guild. We've heard of your reputation, Selena, and would like to discuss a potential partnership. */ GOTO 4
       ++ @58002 /* I'm here to ensure you and your crew don't become a problem for us in these parts. How we proceed forward is up to you. */ GOTO 2
       ++ @58003 /* This territory now belongs to me, and I've come to eliminate any contenders. Unsheathe your blades, pirate! */ GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY @58004 /* Well, well, see 'ere an' 'ave a gander at ye, all puffed up an' ready fer a scrap! This bit o' ground won't be swappin' 'er owners so easily, mark me words! */
IF ~~ THEN DO ~
   SetGlobal("h_FightSelena","GLOBAL",1)
   SetGlobal("h_SpawnRepCrew","GLOBAL",1)
   SetGlobal("h_ProcusQuest","GLOBAL",5)
   AddJournalEntry(@344,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 2
   SAY @58005 /* An' what, I be askin', d'ye mean by them words, eh? Ye think ye can stroll in 'ere an' give us the ol' heave-ho, do ye? Well, we'll see 'bout that now, won't we? */
       ++ @58006 /* The Gorgon's Eye is lookin' to bolster its ranks with a crew of your caliber. Think of the spoils we could reap, and the exciting adventures to be had. */ GOTO 4
       ++ @58007 /* Let me be plain, Selena. Join up with the Gorgon's Eye, or prepare for a tempest of trouble. */ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @58008 /* Ye've got a tongue sharp'r than a cutlass, matey! I ain't takin' orders from ye. Draw yer steel, an' let's settle this th' ol'-fashioned way! */
IF ~~ THEN DO ~
   SetGlobal("h_FightSelena","GLOBAL",1)
   SetGlobal("h_SpawnRepCrew","GLOBAL",1)
   SetGlobal("h_ProcusQuest","GLOBAL",5)
   AddJournalEntry(@344,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 4
   SAY @58009 /* Gorgon's Eye, ye say? Ne'er 'eard o' the likes. Ain't no wind of 'em in me reckonin'. What've they got 'ere that we can't be findin' on our own, eh? */
       ++ @58010 /* We'll open doors for untold wealth, boundless riches, and a plunderer's dream of spoils and fortunes. It's an opportunity like no other. */ GOTO 5
       ++ @58011 /* Embracing the Gorgon's Eye means embarking on a grand adventure, a life of daring escapades and legendary exploits. */ GOTO 5
       ++ @58012 /* We can tap into a vast reservoir of resources and connections that reach far and wide across the realms. */ GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @58013 /* Aye, I'll admit, th' notion o' alignin' with a bigger outfit 'as its appeal. More resourcin', more reachin' clout 'cross th' seas, an' th' coastal crews. */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @58014 /* But let's not be hoistin' anchor too quick, ya? I'll be needin' a sign, a testament t' yer capabilities an' dedication. */ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @58015 /* In th' heart o' Nashkel, within th' Amnian army's barracks, there's a set o' documents that would do wonders in clearin' me crew's name o' any unlawful misgivin's. */ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @58016 /* Bring those parchments t' me, an' ye'll find us sailin' alongside th' Gorgon's Eye flag. Keep in mind, though, this ain't a task fer those green in th' face or quick to th' sea-sick. */ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @58017 /* Th' barracks are guarded tighter than a clam's shell, an' th' prize we're seekin' could be under tighten' lock-up in th' army's coffers. Can ye 'andle such a feat, I wonder? */
       ++ @58018 /* You've got a deal, Stardancer. I'll retrieve those papers, and in return, you and your crew will be joining our little operation here. */ GOTO 10
       ++ @58019 /* I've no intention of provoking the Amnian army. Your best course of action is to fall in line with our plans. Disobedience will come at a cost. */ GOTO 3
END

IF ~~ THEN BEGIN 10
   SAY @58020 /* Aye, it'll be settled 'ere then. Ye secure them papers, and ye'll have a crew o' true rogues workin' alongside ye, no doubt about it. */
IF ~~ THEN DO ~
   SetGlobal("h_SelenaQuest","GLOBAL",1)
   SetGlobal("h_AddEvidence","GLOBAL",1)
   AddJournalEntry(@345,QUEST)~ EXIT
END

IF ~Global("h_SelenaQuest","GLOBAL",1)~ THEN BEGIN 11
   SAY @58021 /* Off wit' ye, then! Bring back 'ere them scribbles, an' we'll be standin' tall together, ready fer whatever be comin' our way, savvy? */ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc27")~ THEN BEGIN 12
   SAY @58022 /* Ah, ye've got that look about ye, like a cat that's got the cream. Let's see 'em then, ya? I'm fixin' to peek at these secrets they've been scribblin' down 'bout me an' me crew. */
       ++ @58023 /* Here's the documents, as promised. */ DO ~TakePartyItem("h_misc27") DestroyItem("h_misc27")~ GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY @58024 /* Ye've done good, ye have, mate! These papers'll keep th' army off our backs for a spell, that's fer sure. */ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY @58025 /* I can't stand them stuffy soldiers pokin' their noses where they don't belong. They'll be scratchin' their heads for a while now! */ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY @58026 /* I pledged me word to ye and, by the seas, I'll be stickin' to it. We'll meet ye back at yer headquarters, don't ye worry. */ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY @58027 /* Oh, did ye think ye could sneak 'round these parts without us knowin'? We've got our ways, we do. */
IF ~~ THEN DO ~
   ActionOverride("h_piratc",EscapeArea())
   ActionOverride("h_pira2c",EscapeArea())
   ActionOverride("Vitiare",EscapeArea())
   SetGlobal("h_SelenaQuest","GLOBAL",2)
  // SetGlobal("h_SelenaLeaveArea","GLOBAL",1)
   SetGlobal("h_SpawnSelena","GLOBAL",3)
   SetGlobal("h_SpawnVitiare","GLOBAL",3)
   SetGlobal("h_ProcusQuest","GLOBAL",5)
   EscapeArea()
   AddJournalEntry(@346,QUEST)
   AddExperienceParty(600)~ EXIT
END

IF ~Global("h_SelenaQuest","GLOBAL",2)~ THEN BEGIN 17
   SAY @58028 /* Aye, I reckon we'll fit in just fine 'round these waters. Plen'y o' opportunities, an' a crew like ours knows how t'make th' most o' 'em. It's excitin', it is! */ IF ~~ THEN EXIT
END
