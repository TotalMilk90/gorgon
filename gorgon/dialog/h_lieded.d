BEGIN h_lieded

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",13)~ THEN BEGIN WAR_0
   SAY ~Oh, this is quite exhilarating, isn't it? It's sending shivers down my spine, stirring up a certain... appetite for more.~ IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Well, look at you, a fresh face in our little den of shadows. Quite the promising sight, if I do say so.~  IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",1) Global("h_DeclineBounty","GLOBAL",0)~ THEN BEGIN 1
   SAY ~Riggy's been singing your praises, says you've shown some real promise in the field. High commendation, coming from a man with his stature.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~I believe it's high time we became better acquainted. I'm Liedel. I deal in private contracts and bounties you won't find posted in the light of town.~
       ++ ~Pleasure, Liedel. My name is <CHARNAME>. Seaking of names, who is this Riggy you mentioned?~ GOTO 5
       ++ ~By "private contracts", do you really mean, assassin-for-hire?~ GOTO 6
       ++ ~What current bounties do you have available.~ GOTO 7
       ++ ~I'm not interested right now.~ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Such a shame, love. Perhaps the shadows will call to you another time.~
IF ~~ THEN DO ~
   SetGlobal("h_DeclineBounty","GLOBAL",1)~ EXIT
END

IF ~Global("h_DeclineBounty","GLOBAL",1)~ THEN BEGIN 4
   SAY ~Back for more, I see. Have you come seeking more than just conversation, or is it the thrill of our banter that brings you before me?~
       ++ ~What current bounties do you have available.~ GOTO 7
       ++ ~I'm not interested right now.~ EXIT
END

IF ~~ THEN BEGIN 5
   SAY ~Oh, it's just my little pet name for our dear Rigaldo. How he fumes at it, which only makes it more delightful.~
       ++ ~By "private contracts", do you really mean, assassin-for-hire?~ GOTO 6
       ++ ~What current bounties do you have available.~ GOTO 7
       ++ ~I'm not interested right now.~ GOTO 3
END

IF ~~ THEN BEGIN 6
   SAY ~Does it unsettle you, darling? Don't look so pathetic, most feel some hesitation at first, until seeing how alluring the trade can be.~
       ++ ~Pleasure, Liedel. My name is <CHARNAME>. And speaking of names, who is this Riggy you mentioned?~ GOTO 5
       ++ ~What current bounties do you have available.~ GOTO 7
       ++ ~I'm not interested right now.~ GOTO 3
END

IF ~~ THEN BEGIN 7
   SAY ~Right down to business. Now, that's a trait I admire.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Currently, I have three bounties waiting in the shadows, unclaimed.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~The first concerns a man named Carth. He dared to cross the Zhentarim, borrowing coin and failing to repay his debts in time. They've called for recompense, be it in gold or blood.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Carth was last seen heading north, up the Coast Way. He's a hulking figure, ill-suited for the wilderness. Seek him in the surrounding inns or taverns, where he might seek refuge.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~The second contract is for a rogue by the name of Vapula Simberg. He was once a member of the Baldur's Gate thieves guild, but grew weary of the darkness.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~Vapula turned witness, betraying his former comrades and leading them to prisons and in the grip of hefty fines.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~Latest whispers suggest he's found sanctuary in piety, cloaked in newfound devotion. I recommend you scour the temples, for that's where his penance may unfold.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~Last up, a courtesan by the name Aisha. The details are scant, but it seems a lovers' dispute stirs the cauldron.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~Aisha bears no family name, nor the means to vanish in the dead of night. She is concealing herself somewhere within the city's limits, you can count on that.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~That is all I have for the present. Return to me once you've made your mark on the shadows, my dear. I eagerly await your return.~
IF ~~ THEN DO ~
   SetGlobal("h_DeclineBounty","GLOBAL",2)
   SetGlobal("h_LiedelQuest","GLOBAL",2)
   AddJournalEntry(@410,QUEST)
   AddJournalEntry(@415,QUEST)
   AddJournalEntry(@419,QUEST)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",2) GlobalLT("h_BountyNumber","GLOBAL",3)~ THEN BEGIN BOUNTY_1
   SAY ~You have my attention, love. I'm ready to savor the secrets that dance upon your lips.~
       +~Global("h_CarthBounty","GLOBAL",1)~+ ~I am here regarding the bounty on Carth.~ GOTO CARTH_1
       +~Global("h_CarthBounty","GLOBAL",3)~+ ~I am here regarding the bounty on Carth.~ GOTO CARTH_3
       +~PartyHasItem("h_misc09")~+ ~I am here regarding the bounty on Vapula.~ GOTO VAPULA_1
       +~Global("h_AishaBounty","GLOBAL",4)~+ ~I am here regarding the bounty on Aisha.~ GOTO AISHA_3
       +~Global("h_AishaBounty","GLOBAL",5)~+ ~I am here regarding the bounty on Aisha.~ GOTO AISHA_1
       ++ ~Nothing to report yet.~ EXIT
END

IF ~~ THEN BEGIN CARTH_1
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I found him stuffing his face at the Friendly Arm Inn. Tell the Zhents his debt was paid in blood.~ GOTO CARTH_2
END

IF ~~ THEN BEGIN CARTH_2
   SAY ~That I will, my capable companion. Here is the reward for the bounty, five-hundred gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@413,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN CARTH_3
   SAY ~Well, it seems the Incredible Carth was able to settle his debt after all. It's not often our bounties find a way out.~
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@414,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN VAPULA_1
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I tracked him down to the Temple of Lathander and dealt him a swift blow. Here's his pendant as confirmation.~ GOTO VAPULA_2
END

IF ~~ THEN BEGIN VAPULA_2
   SAY ~The burning sun of the morning lord, how grotesque. The pendant bears the weight of authenticity, however. Excellent work, darling.~ IF ~~ THEN GOTO VAPULA_3
END

IF ~~ THEN BEGIN VAPULA_3
   SAY ~Another chapter closed in our shadowed tale. Here is the standard fee, five-hundred gold coins.~
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@418,QUEST_DONE)
   TakePartyItem("h_misc09")
   DestroyItem("h_misc09")
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN AISHA_1
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I found her holed up at the Red Sheaf. Now she's full of holes at the Red Sheaf.~ GOTO AISHA_2
END

IF ~~ THEN BEGIN AISHA_2
   SAY ~I see you've a knack for tying up loose ends. Here's the prize, five-hundred gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@425,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN AISHA_3
   SAY ~A change of heart from poor Amrius. He has decided to rescind the bounty, and as such, is no longer available.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@424,QUEST_DONE)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",2) Global("h_BountyNumber","GLOBAL",3)~ THEN BEGIN MIDDLE_0
   SAY ~Well, it seems the shadows have taken a brief respite from our dance. How utterly boring. Perhaps you could find a way to... entertain me, dear companion?~ IF ~~ THEN EXIT
END

          ///////////////////////////////////
          //////// Second Bounty List ///////
          ///////////////////////////////////

//29
IF ~Global("h_LiedelQuest","GLOBAL",3)~ THEN BEGIN SECOND_0
   SAY ~Finally, a spark in the darkness. I was beginning to grow restless. I have a fresh list of bounties for you, if you're up for the task.~
       ++ ~Let's hear what you've got for me.~ GOTO SECOND_1
       ++ ~I'm not interested right now.~ EXIT
END

IF ~~ THEN BEGIN SECOND_1
   SAY ~First on the list is runaway slave from Beregost, Europea. She managed to put the slip on her owner and fled off into the western woods.~ IF ~~ THEN GOTO SECOND_2
END

IF ~~ THEN BEGIN SECOND_2
   SAY ~If you're skillful enough to bring her back breathing, the reward is quite the handsome sum. But if not, her owner would settle for her slave-collar as a morbid keepsake.~ IF ~~ THEN GOTO SECOND_3
END

IF ~~ THEN BEGIN SECOND_3
   SAY ~Next, we have a peculiar case involving a dryad named Katreda. A pair of hunters are eager to carve a section out of Larswood for their hunting compound.~ IF ~~ THEN GOTO SECOND_4
END

IF ~~ THEN BEGIN SECOND_4
   SAY ~Katreda, however, is proving to be quite the thorn in their side. They'd appreciate it if you could convince her to cease, one way or another.~ IF ~~ THEN GOTO SECOND_5
END

IF ~~ THEN BEGIN SECOND_5
   SAY ~Now, for the peculiar request that's come our way, courtesy of a charming necromancer, Zhontac.~ IF ~~ THEN GOTO SECOND_6
END

IF ~~ THEN BEGIN SECOND_6
   SAY ~He has his eye on a fresh human specimen required to practice his enigmatic experiments on.~ IF ~~ THEN GOTO SECOND_7
END

IF ~~ THEN BEGIN SECOND_7
   SAY ~Coincidentally, one of his previous "volunteers" managed to escape, and now there's a bounty on Zhontac's head himself.~ IF ~~ THEN GOTO SECOND_8
END

IF ~~ THEN BEGIN SECOND_8
   SAY ~You have a choice. You can either help Zhontac with his quest, or eliminate him for his bounty. For the most lucrative outcome, I'd suggest aiding Zhontac first, then ensuring he meets his demise after securing your reward.~ IF ~~ THEN GOTO SECOND_9
END

IF ~~ THEN BEGIN SECOND_9
   SAY ~In either case, he can be found in his backyard on the eastern side of town, practicing his dark arts after nightfall.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelQuest","GLOBAL",4)
   SetGlobal("h_SpawnEuropea","GLOBAL",1)
   SetGlobal("h_KatredaBounty","GLOBAL",1)
   SetGlobal("h_ZhontacBounty","GLOBAL",1)
   AddJournalEntry(@426,QUEST)
   AddJournalEntry(@431,QUEST)
   AddJournalEntry(@438,QUEST)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",4) GlobalLT("h_BountyNumber","GLOBAL",6)~ THEN BEGIN BOUNTY_2
   SAY ~You have my attention, love. I'm ready to savor the secrets that dance upon your lips.~
       +~Global("h_CarthBounty","GLOBAL",1)~+ ~I am here regarding the bounty on Carth.~ GOTO CARTH_1
       +~Global("h_CarthBounty","GLOBAL",3)~+ ~I am here regarding the bounty on Carth.~ GOTO CARTH_3
       +~PartyHasItem("h_misc09")~+ ~I am here regarding the bounty on Vapula.~ GOTO VAPULA_1
       +~Global("h_AishaBounty","GLOBAL",4)~+ ~I am here regarding the bounty on Aisha.~ GOTO AISHA_3
       +~Global("h_AishaBounty","GLOBAL",5)~+ ~I am here regarding the bounty on Aisha.~ GOTO AISHA_1
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
       +~PartyHasItem("h_misc11")~+ ~I am here regarding the bounty on Europea.~ GOTO EURO_1
       +~PartyHasItem("h_misc10")~+ ~I am here regarding the bounty on Europea.~ GOTO EURO_3
       +~Global("h_KatredaBounty","GLOBAL",2)~+ ~I am here regarding the bounty on Katreda.~ GOTO KATREDA_1
       +~Global("h_KatredaBounty","GLOBAL",5)~+ ~I am here regarding the bounty on Katreda.~ GOTO KATREDA_3
       +~Global("h_MagnusBounty","GLOBAL",3)~+ ~I am here regarding the bounty on Zhontac.~ GOTO ZHONTAC_1
       +~Global("h_KilledMagnus","GLOBAL",2)~+ ~I am here regarding the bounty on Zhontac.~ GOTO ZHONTAC_3
       +~Global("h_ZhontacBounty","GLOBAL",4)~+ ~I am here regarding the bounty on Zhontac.~ GOTO ZHONTAC_5
       ++ ~Nothing to report as of yet.~ EXIT
END

IF ~~ THEN BEGIN EURO_1
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I have her here with me. A little worse for the wear, but alive nonetheless.~ GOTO EURO_2
END

IF ~~ THEN BEGIN EURO_2
   SAY ~Ah, the poor thing. I'll inform the client. As for you, enjoy your payday, one-thousand gold coins for this one.~
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc11")
   DestroyItem("h_misc11")
   AddJournalEntry(@429,QUEST_DONE)
   GiveGoldForce(1000)
   AddExperienceParty(600)
   ReputationInc(-2)~ EXIT
END

IF ~~ THEN BEGIN EURO_3
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I found her lifeless form deep in the woods. Here is her slave collar for proof.~ GOTO EURO_4
END

IF ~~ THEN BEGIN EURO_4
   SAY ~Ah, the poor thing. I'll inform the client. Here, take it, five-hundred gold coins for the collar.~
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc10")
   DestroyItem("h_misc10")
   AddJournalEntry(@430,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN KATREDA_1
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~She would not back down, forcing my hand to bring about her permanent end.~ GOTO KATREDA_2
END

IF ~~ THEN BEGIN KATREDA_2
   SAY ~It seems Katreda's determination got the best of her. Another payout then, five-hundred gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@433,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN KATREDA_3
   SAY ~No prizemoney for this job, love. Communcation with Asnabel went silent. The dryad must have made her move. Were you involved in this somehow?~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@437,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN ZHONTAC_1
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I fulfilled his request and opted to spare him so he can see his research through.~ GOTO ZHONTAC_2
END

IF ~~ THEN BEGIN ZHONTAC_2
   SAY ~Leaving money on the table doesn't suit you, <CHARNAME>. Here's the usual rate then, five-hundred gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_MagnusBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@444,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN ZHONTAC_3
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I worked his request, then disposed of him shortly after.~ GOTO ZHONTAC_4
END

IF ~~ THEN BEGIN ZHONTAC_4
   SAY ~Impressive work, darling. I'm thrilled for you. Here's the payout, one-thousand gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_KilledMagnus","GLOBAL",3)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@445,QUEST_DONE)
   GiveGoldForce(1000)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN ZHONTAC_5
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~I chose to claim his bounty outright, sparing myself from entertaining his peculiar request.~ GOTO ZHONTAC_6
END

IF ~~ THEN BEGIN ZHONTAC_6
   SAY ~Can't say I blame you on that one, love. Claim your prize, five-hundred gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_ZhontacBounty","GLOBAL",5)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@446,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",4) Global("h_BountyNumber","GLOBAL",6)~ THEN BEGIN RID_0
   SAY ~Gods, this place can be dreadfully dull at times. I'm not sure how much more of it I can take, honestly. Won't you have any fun with me, <CHARNAME>?~  IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",5)~ THEN BEGIN THIRD_0
   SAY ~Finally, something to stir the pot and break this tiresome routine. There's a fresh batch of bounties ripe for the picking. Are you up for a little excitement, love?~
       ++ ~What targets do you have for me?~ GOTO THIRD_1
       ++ ~I'll have to pass for now.~ EXIT
END

IF ~~ THEN BEGIN THIRD_1
   SAY ~First up, an alchemist, Alaric, who claims to have developed a cure for featherlung, a fast spreading disease that recently devastated the city of Procampur.~ IF ~~ THEN GOTO THIRD_2
END

IF ~~ THEN BEGIN THIRD_2
   SAY ~This cure is drawing attention from all corners of the realms. Most wanting the serum in their own hands with the alchemist forever silenced.~ IF ~~ THEN GOTO THIRD_3
END

IF ~~ THEN BEGIN THIRD_3
   SAY ~There are priests from the temples who want it for the good of the people, and there are merchants who forsee a fortune to be made.~ IF ~~ THEN GOTO THIRD_4
END

IF ~~ THEN BEGIN THIRD_4
   SAY ~Now, my suggestion? We sell it to the merchants. They'll pay top coin, and we could use a windfall like that, don't you think?~ IF ~~ THEN GOTO THIRD_5
END

IF ~~ THEN BEGIN THIRD_5
   SAY ~They say Alaric's got a workshop somewhere in the market district of Baldur's Gate. A place packed full of his lab 'rats' or whatever creatures he's been using for his experiments.~ IF ~~ THEN GOTO THIRD_6
END

IF ~~ THEN BEGIN THIRD_6
   SAY ~Now, onto our next mark, Lord Varlind, one of Grand Duke Belt's closest advisors.~ IF ~~ THEN GOTO THIRD_7
END

IF ~~ THEN BEGIN THIRD_7
   SAY ~There's more to this story than meets the eye. Varlind has been a shadow behind the throne for years, keeping Belt wrapped around his finger, but now, his politcal peers want him out of the way.~ IF ~~ THEN GOTO THIRD_8
END

IF ~~ THEN BEGIN THIRD_8
   SAY ~You'll find him 'holding court' at the opulent Helm and Cloak.~ IF ~~ THEN GOTO THIRD_9
END

IF ~~ THEN BEGIN THIRD_9
   SAY ~This one's got layers, <CHARNAME>, and I'm sure you'll find the challenge quite... intriguing.~ IF ~~ THEN GOTO THIRD_10
END

IF ~~ THEN BEGIN THIRD_10
   SAY ~And lastly, there's Isla Darkcloak, the former champion of the Fighting Pits.~ IF ~~ THEN GOTO THIRD_11
END

IF ~~ THEN BEGIN THIRD_11
   SAY ~She's quite the legend in her own right, <CHARNAME>. Yet, they say she grew bored of the arena, where victory was almost guaranteed for her. A sentiment I can understand too well.~ IF ~~ THEN GOTO THIRD_12
END

IF ~~ THEN BEGIN THIRD_12
   SAY ~Now, she's turned her talents to a different kind of fight, as a ruthless assassin and mercenary.~ IF ~~ THEN GOTO THIRD_13
END

IF ~~ THEN BEGIN THIRD_13
   SAY ~Trouble is, her efficiency has earned her some powerful enemies who've decided it's time to put an end to her reign.~ IF ~~ THEN GOTO THIRD_14
END

IF ~~ THEN BEGIN THIRD_14
   SAY ~Tracking her down won't be a walk in the park. Isla's become quite elusive.~ IF ~~ THEN GOTO THIRD_15
END

IF ~~ THEN BEGIN THIRD_15
   SAY ~I'd suggest you start by talking to some professionals like us, <CHARNAME>. People who reside in Baldur's Gate, who know the underbelly well.~ IF ~~ THEN GOTO THIRD_16
END

IF ~~ THEN BEGIN THIRD_16
   SAY ~Well, my love, it seems the stage is set for quite the performance. Three intriguing pieces on this wicked chessboard.~ IF ~~ THEN GOTO THIRD_17
END

IF ~~ THEN BEGIN THIRD_17
   SAY ~You've got choices to make, and each one is bound to leave its mark. Play your cards right, and you'll walk away from this with pockets full and a reputation that'll set hearts aflutter.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelQuest","GLOBAL",6)
   SetGlobal("h_SpawnAlaric","GLOBAL",1)
   SetGlobal("h_SpawnVarlind","GLOBAL",1)
   SetGlobal("h_IslaBounty","GLOBAL",1)
   AddJournalEntry(@447,QUEST)
   AddJournalEntry(@452,QUEST)
   AddJournalEntry(@457,QUEST)~ EXIT
END


IF ~Global("h_LiedelQuest","GLOBAL",6) GlobalLT("h_BountyNumber","GLOBAL",9)~ THEN BEGIN BOUNTY_2
   SAY ~You have my attention, love. I'm ready to savor the secrets that dance upon your lips.~
       +~PartyHasItem("h_misc30")~+ ~I am here regarding the bounty on Alaric.~ GOTO ALA_1
       +~Dead("h_varlic")~+ ~I am here regarding the bounty on Lord Varlind.~ GOTO VAR_1
       +~Global("h_VarlindBounty","GLOBAL",1)~+ ~I am here regarding the bounty on Lord Varlind.~ GOTO VAR_3
       +~Global("h_IslaBounty","GLOBAL",2)~+ ~I am here regarding the bounty on Isla.~ GOTO ISLA_1
       ++ ~Nothing to report as of yet.~ EXIT
END

IF ~~ THEN BEGIN ALA_1
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~He's been... taken care of, and the serum is now in my hands.~ GOTO ALA_2
END

IF ~~ THEN BEGIN ALA_2
   SAY ~Impressive work, <CHARNAME>. You've proven yourself once again.~ IF ~~ THEN GOTO ALA_3
END

IF ~~ THEN BEGIN ALA_3
   SAY ~The featherlung serum is now yours to command, you've earned the right to decide its fate.~ IF ~~ THEN GOTO ALA_4
END

IF ~~ THEN BEGIN ALA_4
   SAY ~Shall we take it to the healers, potentially saving countless lives? Or will we sell it to the merchants, securing a handsome reward for yourself and the guild?~ IF ~~ THEN GOTO ALA_5
END

IF ~~ THEN BEGIN ALA_5
   SAY ~The choice, my dear, is entirely yours.~
       ++ ~The healers should have the serum. It's the right thing to do.~ GOTO ALA_6
       ++ ~The merchants will pay handsomely for this serum. It's a business decision, and I choose them.~ GOTO ALA_8
END

IF ~~ THEN BEGIN ALA_6
   SAY ~Well, if that's your... sentiment. I suppose it's your call. The healers will have their precious serum. It's not the route I'd choose, mind you, but I can respect your decision.~ IF ~~ THEN GOTO ALA_7
END

IF ~~ THEN BEGIN ALA_7
   SAY ~The coin they offer won't be near what the merchants would have paid. Altruism, while commendable in its own way, rarely lines one's pockets as generously.~
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc30")
   DestroyItem("h_misc30")
   GiveGoldForce(500)
   AddExperienceParty(900)
   ReputationInc(1)
   AddJournalEntry(@450,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN ALA_8
   SAY ~Ah, the merchants, <CHARNAME>... Now that's a choice I can truly appreciate. Practical, strategic, and lucrative. You've certainly piqued my interest.~ IF ~~ THEN GOTO ALA_9
END

IF ~~ THEN BEGIN ALA_9
   SAY ~The coin they offer will be substantial, I assure you. You've got a keen eye for profit, and I must say, it's rather... enticing.~
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc30")
   DestroyItem("h_misc30")
   GiveGoldForce(1000)
   AddExperienceParty(900)
   ReputationInc(-1)
   AddJournalEntry(@451,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN VAR_1
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       ++ ~Consider his chapter closed. The city's landscape may shift, but my coin purse will grow heavier.~ GOTO VAR_2
END

IF ~~ THEN BEGIN VAR_2
   SAY ~Impressive work, love. Varlind's absence won't go unnoticed, that's for sure. Here's your well-deserved reward, 500 gold coins, as per our usual arrangement.~
IF ~~ THEN DO ~
   SetGlobal("h_VarlindBounty","GLOBAL",2)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   GiveGoldForce(500)
   AddExperienceParty(900)
   AddJournalEntry(@455,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN VAR_3
   SAY ~Well, you're a tad late, I'm afraid. His fate has been sealed by another hand.~ IF ~~ THEN GOTO VAR_4
END

IF ~~ THEN BEGIN VAR_4
   SAY ~His body was found, lifeless, and washed up at the city's docks. Sorry love, seems someone else was faster on the draw.~
IF ~~ THEN DO ~
   SetGlobal("h_VarlindBounty","GLOBAL",2)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddExperienceParty(900)
   AddJournalEntry(@456,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN ISLA_1
   SAY ~My, my... I must admit, watching you fight has ignited a certain fire within me. You've proven to be quite the captivating champion, and I seem to find myself drawn to your strength and prowess.~ IF ~~ THEN GOTO ISLA_2
END

IF ~~ THEN BEGIN ISLA_2
   SAY ~There's a certain... allure to a warrior like yourself. Perhaps we could find other ways to satisfy our mutual appetites for excitement and danger. What do you say, my champion?~ IF ~~ THEN GOTO ISLA_3
END

IF ~~ THEN BEGIN ISLA_3
   SAY ~Here is your reward, 500 gold coins, you've certainly earned it. But I must say, I believe you deserve something a bit more... special.~ IF ~~ THEN GOTO ISLA_4
END

IF ~~ THEN BEGIN ISLA_4
   SAY ~Return to me when you're ready for a truly unforgettable experience. Until then, savor your victory in the pits.~
IF ~~ THEN DO ~
   SetGlobal("h_IslaBounty","GLOBAL",3)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddExperienceParty(900)
   AddJournalEntry(@461,QUEST_DONE)~ EXIT
END


IF ~Global("h_LiedelQuest","GLOBAL",6) Global("h_BountyNumber","GLOBAL",9)~ THEN BEGIN BOUNTY_2
   SAY ~This lull in excitement leaves me yearning for more... stimulating activities. Perhaps you could find a way to inject a bit of excitement back into my day, <CHARNAME>?~ IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",7)~ THEN BEGIN FINAL_0
   SAY ~Well, well, look at you, <CHARNAME>. The new guildmaster, no less. I must admit, power does have its allure. Impressive work, love.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_BetrayBaldwin","GLOBAL",5)~ THEN BEGIN BETRAY_1
   SAY ~Oh, my, that was quite the rush! It certainly ignites a certain... passion, doesn't it? Poor Riggy, though, and that stubborn pride of his.~ IF ~~ THEN GOTO BETRAY_2
END

IF ~~ THEN BEGIN BETRAY_2
   SAY ~At any rate, I've decided to enlist in the Shadow Thieves. These small-time guilds just don't do it for me anymore. Maybe I'll see you around one day, <CHARNAME>.~
IF ~~ THEN DO ~
   EscapeArea()~ EXIT
END


CHAIN
     IF WEIGHT #-1 ~Global("h_WatchCutscene","GLOBAL",1)~ THEN h_lieded CS0
~Silent shadows and eyes sharp, comrades! We've got some unwanted company in our midst!~
   == h_ariosd
~You've got some nerve, I'll give you that. How'd you find us, and what's your play? Best choose your next words careful-like, or you'll be regrettin' ever settin' foot in here.~
   == h_baldwd
~Hold, Ariosh. These are but City Watch pups. Let us entertain their whimpers.~
   == h_city5d
~The... the Inspector! H-he uncovered the location of your hideout. He was planning an assault, t-t-to catch you off guard.~
   =
~But, we... we've seen the writing on the wall. We've had enough. We're tired of the constant fear, the bloodshed. We'll bend the knee, and submit to the will of the Gorgon's Eye.~
   =
~The division among the Watch, it's... it's reached a breaking point. After the Inspector, and the Valkyries, our unity has crumbled.~
   =
~Dissension has ripened into a full-blown mutiny. Most of our ranks have turned against Whitewood, and they're calling for blood.~
   =
~She's fled the city, and is seeking refuge at the Temple. We lack the numbers to storm the gates, but with your aid, we might be able to end this madness.~
   == h_ariosd
~How can we be sure you ain't just stringin' us along, eh? No tricks or traps, yeah?~
   == h_city5d
~Go and see for yourselves! The streets are in chaos, painted in turmoil, order and law thrown to the wind.~
   =
~Skirmishes from here to the temple gates. That's where Whitewood's holed up, kept shielded by the Templar Knights.~
   == h_ariosd
~It seems the winds have shifted, <CHARNAME>. The city's gone mad, and Whitewood's caged herself up. I had a plan to deal with her, and now it's ripe for the taking.~
   =
~Head to the Temple. End this. The Gorgon's Eye will see its rightful dominance, and Beregost will know where true power lies.~ DO ~SetGlobal("h_WatchCutscene","GLOBAL",2)~
   == h_baldwd
~Swift and ruthless, <CHARNAME>. Seize this opportunity, and give the city a taste of the Gorgon's Eye's might.~
   DO ~
      //SetGlobal("h_WatchCutscene","GLOBAL",2)
      SetGlobal("h_SpawnTemplar","GLOBAL",1)
      AddJournalEntry(@556,QUEST)~
EXIT
