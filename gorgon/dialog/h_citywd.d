BEGIN h_citywd

IF WEIGHT #-1 ~PartyHasItem("h_misc21") Global("h_ChanceToRun","GLOBAL",0)~ THEN BEGIN CAUGHT_0
   SAY ~Hold it right there! I've been watching you slinking around these streets like a rat in the shadows. What have you got there?~
       +~CheckStatGT(Player1,18,CHR)~+ ~Steady on, mate. No need to get all knickers in a twist. Just out for a leisurely jaunt, enjoying the night's breeze.~ GOTO CAUGHT_1
       +~CheckStatLT(Player1,19,CHR)~+ ~Steady on, mate. No need to get all knickers in a twist. Just out for a leisurely jaunt, enjoying the night's breeze.~ GOTO CAUGHT_2
       +~CheckStatGT(Player1,18,STR)~+ ~You've got no clue what kind of hornets' nest you're stirrin', do ya? Let me slip away, or you'll be in for a real howling.~ GOTO CAUGHT_3
       +~CheckStatLT(Player1,19,STR)~+ ~You've got no clue what kind of hornets' nest you're stirrin', do ya? Let me slip away, or you'll be in for a real howling.~ GOTO CAUGHT_4
       +~PartyGoldGT(19)~+ ~(Stumble and drop a handful of coins.) Oh, no! My coins! Fancy givin' a bloke a hand? It's darker than a raven's feather out here!~ DO ~TakePartyGold(20)~ GOTO CAUGHT_5
       ++ ~Reckon you're a match for me, do ya? Let's dance, then. Draw your iron, and let's see who's got the mettle to stand tall when the dust settles.~ GOTO CAUGHT_7
END

IF ~~ THEN BEGIN CAUGHT_1
   SAY ~Alright, alright, keep your hair on. Just be mindful of your step, we've got a watchful eye on things 'round here. Scram, and fast, before I change my tune.~
IF ~~ THEN DO ~
   SetGlobal("h_BluffedWatch","GLOBAL",1)
   SetGlobal("h_ChanceToRun","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN CAUGHT_2
   SAY ~Save the smooth talk for someone who hasn't seen it all, eh? I know you're causin' mischief. Last chance to play nice. Hand over the bag, and let's see what you're hiding.~
       ++ ~You've got it all wrong, officer. This is just some odds and ends, no mischief intended.~ GOTO CAUGHT_3
       ++ ~I'd advise you to think this through, mate. You don't want any trouble, and I've got places to be.~ GOTO CAUGHT_3
       ++ ~If you want this bag, you'll have to try and take it. I'm not backing down.~ GOTO CAUGHT_3
END

IF ~~ THEN BEGIN CAUGHT_3
   SAY ~You've chosen the hard way, then. So be it! I've dealt with troublemakers like you more times than I can count, and I'm not backing down now.~ IF ~~ THEN GOTO CAUGHT_8
END

IF ~~ THEN BEGIN CAUGHT_4
   SAY ~Bloody hell, letting a cheeky blighter like you get the better of me. Get out of here before I change my mind, and don't let me catch you causing any more trouble!~
IF ~~ THEN DO ~
   SetGlobal("h_BluffedWatch","GLOBAL",1)
   SetGlobal("h_ChanceToRun","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN CAUGHT_5
   SAY ~Blimey! Alright, alright, hold on. I'll help you pick 'em up. Can't see a ruddy thing out here myself.~
IF ~~ THEN DO ~
   SetGlobal("h_BluffedWatch","GLOBAL",1)
   SetGlobal("h_ChanceToRun","GLOBAL",1)~ EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc21") Global("h_ChanceToRun","GLOBAL",2)~ THEN BEGIN CAUGHT_6
   SAY ~You've pushed your luck too far, scoundrel! You should've scrammed when you had the chance! The whole City Watch knows your out here now!~ IF ~~ THEN GOTO CAUGHT_8
END

IF ~~ THEN BEGIN CAUGHT_7
   SAY ~Wait... you're one of them, aren't you? Gorgon's Eye scum! This won't end well for you, I promise.~ IF ~~ THEN GOTO CAUGHT_8
END

IF ~~ THEN BEGIN CAUGHT_8
   SAY ~Oi, lads! Over 'ere, quick! We've got a sneak-thief on the prowl!~
IF ~~ THEN DO ~
   SetGlobal("h_CaughtByWatch","GLOBAL",1)
   SetGlobal("h_ChanceToRun","GLOBAL",3)
   Enemy()~ EXIT
END

IF ~RandomNum(8,8)~ THEN BEGIN 0
   SAY ~Keep your blades sheathed, and your tempers in check.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,1)~ THEN BEGIN 1
   SAY ~Beregost folk look out for one another, that's our way.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,2)~ THEN BEGIN 2
   SAY ~The Fist may be the muscle, but we're the heart of this town.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,3)~ THEN BEGIN 3
   SAY ~The Flaming Fist might get the glory, but we get the job done.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,4)~ THEN BEGIN 4
   SAY ~Beregost's got the Gorgon's Eye thieves guild on its doorstep. Watch yourselves.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,5)~ THEN BEGIN 5
   SAY ~Steer clear of any shadowy dealings, the Gorgon's Eye's been more active as of late.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,6)~ THEN BEGIN 6
   SAY ~Don't make it easy for the Gorgon's Eye, they're watching, always.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,7)~ THEN BEGIN 7
   SAY ~The Flaming Fist's got its hands full, and the thieves are seizing the chance.~
IF ~~ THEN EXIT
END


