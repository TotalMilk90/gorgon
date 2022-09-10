BEGIN h_lieded

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",13)~ THEN BEGIN WAR_0
   SAY ~Oh, this is exciting isn't it! It's giving me quite the thrill.~
END

IF ~Global("h_LiedelQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Beat it rookie. Come back when your abilities have been better tested.~ IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",1) Global("h_DeclineBounty","GLOBAL",0)~ THEN BEGIN 1
   SAY ~Riggy tells me you show some promise in the field. That is quite the praise coming from someone with his standing.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~I think it's time I properly introduce myself. My name is Liedel, and I am a purveyor of private contracts and bounties you won't find posted in the light of town.~
       ++ ~By "private contracts", do you really mean assassin-for-hire?~ GOTO 3
       ++ ~Who is Riggy?~ GOTO 2.5
       ++ ~Pleasure to meet you Liedel. What current bounties do you have available?~ GOTO 4
END

IF ~~ THEN BEGIN 2.5
   SAY ~*laughing* That's my nickname for little ol' Rigaldo. Oh, I do love how much he detests that name.~
       ++ ~By "private contracts", do you really mean assassin-for-hire?~ GOTO 3
       ++ ~What current bounties do you have available?~ GOTO 4
END

IF ~~ THEN BEGIN 3
   SAY ~Does that bother you? To be fair, most people do shy away from the job at first, until learning how lucrative the trade can be.~
       ++ ~What current bounties do you have available.~ GOTO 4
       ++ ~Who is Riggy?~ GOTO 2.5
       ++ ~I'm not interested in any bounty hunting right now.~ GOTO DECLINE_0
END

IF ~~ THEN BEGIN DECLINE_0
   SAY ~Suit yourself.~
IF ~~ THEN DO ~
   SetGlobal("h_DeclineBounty","GLOBAL",1)~ EXIT
END

IF ~Global("h_DeclineBounty","GLOBAL",1)~ THEN BEGIN DECLINE_1
   SAY ~Well, look who decided to come back. *laughing* Changed your tune, have you? Or did you just come for a chat?~
       ++ ~What current bounties do you have available.~ GOTO 4
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 4
   SAY ~As of right now, I have three unclaimed bounties.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~The first one is for a man named, Carth. He borrowed money from the Zhentarim and failed to pay them back on time. They request his debt to be settled with either coin, or his life.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~He was last seen heading north, past the Coast Way. He is a rather large man who wouldn't last a day in the wilderness, so I would search for him in a surrounding inn or tavern.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~The second contract is for a rogue by the name of, Vapula Simberg. He was once a member of the thieves guild in Baldur's Gate, but after years of depravity he couldn't stomach the work anymore.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~He testified against his guildmates, placing several of them in prison and forcing them to pay substantial fines and bribes.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Our latest reports suggest he has turned to the cloth, living a new life of piety. I would suggest you start looking for him wandering about the temples.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~The third bounty is for a courtesan here in Beregost, named Aisha. I'm absent all the details but it seems to be over a lovers quarrel or some such.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~She has no known family and doesn't have the means to get far on her own. She is most likely hiding out somewhere in the city.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~That is all I have for now. Return to me when you have made any progress.~
IF ~~ THEN DO ~
   SetGlobal("h_DeclineBounty","GLOBAL",2)
   SetGlobal("h_LiedelQuest","GLOBAL",2)
   AddJournalEntry(@410,QUEST)
   AddJournalEntry(@415,QUEST)
   AddJournalEntry(@419,QUEST)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",2) GlobalLT("h_BountyNumber","GLOBAL",3)~ THEN BEGIN BOUNTY_1
   SAY ~Back already, darling? Do you have any news for me?~
       +~Global("h_CarthBounty","GLOBAL",1)~+ ~I am here regarding the bounty on Carth.~ GOTO CARTH_1
       +~Global("h_CarthBounty","GLOBAL",3)~+ ~I am here regarding the bounty on Carth.~ GOTO CARTH_3
       +~PartyHasItem("h_misc09")~+ ~I am here regarding the bounty on Vapula.~ GOTO VAPULA_1
       +~Global("h_AishaBounty","GLOBAL",4)~+ ~I am here regarding the bounty on Aisha.~ GOTO AISHA_3
       +~Global("h_AishaBounty","GLOBAL",5)~+ ~I am here regarding the bounty on Aisha.~ GOTO AISHA_1
       ++ ~Nothing to report as of yet.~ EXIT
END

IF ~~ THEN BEGIN CARTH_1
   SAY ~Alright, I'm listening.~
       ++ ~I killed him after I found him hiding out at the Friendly Arm Inn.~ GOTO CARTH_2
END

IF ~~ THEN BEGIN CARTH_2
   SAY ~Good work, <CHARNAME>. Here is you reward then, 500 gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@413,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN CARTH_3
   SAY ~That bounty was recently pulled, it seems he was able to repay his debt.~
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@414,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN VAPULA_1
   SAY ~Alright, I'm listening.~
       ++ ~I killed him after I found him training at the Temple of Lathander. I have his pendant here as proof.~ GOTO VAPULA_2
END

IF ~~ THEN BEGIN VAPULA_2
   SAY ~Indeed you do, and it appears to be authentic.~ IF ~~ THEN GOTO VAPULA_3
END

IF ~~ THEN BEGIN VAPULA_3
   SAY ~Good work, <CHARNAME>. Here is you reward then, 500 gold coins.~
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@418,QUEST_DONE)
   TakePartyItem("h_misc09")
   DestroyItem("h_misc09")
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN AISHA_1
   SAY ~Alright, I'm listening.~
       ++ ~I killed her after finding her in a room at the Red Sheaf.~ GOTO AISHA_2
END

IF ~~ THEN BEGIN AISHA_2
   SAY ~Good work, <CHARNAME>. Here is you reward then, 500 gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@425,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN AISHA_3
   SAY ~That bounty is no longer available.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@424,QUEST_DONE)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",2) Global("h_BountyNumber","GLOBAL",3)~ THEN BEGIN MIDDLE_0
   SAY ~*yawn* Things are a bit slow at the moment. Not that I'm surprised, though. What more can you really expect from a boring little town like this?~ IF ~~ THEN EXIT
END

          ///////////////////////////////////
          //////// Second Bounty List ///////
          ///////////////////////////////////


IF ~Global("h_LiedelQuest","GLOBAL",3)~ THEN BEGIN SECOND_0
   SAY ~I have some new bounties available if you are interested in hearing them.~
       ++ ~Yes, I'm interested.~ GOTO SECOND_1
       ++ ~I'm not interested in any bounty hunting right now.~ EXIT
END

IF ~~ THEN BEGIN SECOND_1
   SAY ~The first bounty I have is for a runaway slave, named Europea. She escaped from her owner's house here in Beregost and fled into the western woods.~ IF ~~ THEN GOTO SECOND_2
END

IF ~~ THEN BEGIN SECOND_2
   SAY ~If she is brought in alive, he is offering twice the usual reward. Otherwise, he requests the return of her slave-collar as proof she is dead.~ IF ~~ THEN GOTO SECOND_3
END

IF ~~ THEN BEGIN SECOND_3
   SAY ~The next bounty is for a dryad, named Katreda. A couple of hunters wish to log a section of the Larswood and build a hunting compound.~ IF ~~ THEN GOTO SECOND_4
END

IF ~~ THEN BEGIN SECOND_4
   SAY ~Katreda is making it all but impossible for them to begin their work and they wish for her to be removed, peacefully... or permanently.~ IF ~~ THEN GOTO SECOND_5
END

IF ~~ THEN BEGIN SECOND_5
   SAY ~The last bounty is a bit of a strange one, even for me. A necromancer, named Zhontac, is looking for someone who is willing to bring him a human corpse to practice his magic on.~ IF ~~ THEN GOTO SECOND_6
END

IF ~~ THEN BEGIN SECOND_6
   SAY ~Coincidentally, one of his previous victims had escaped and put a bounty out on Zhontac himself.~ IF ~~ THEN GOTO SECOND_7
END

IF ~~ THEN BEGIN SECOND_7
   SAY ~You can either help Zhontac with his quest, or kill him and collect his bounty. The most profitable play of course would be to do both. Help Zhontac first and then kill him after recieving your reward.~ IF ~~ THEN GOTO SECOND_8
END

IF ~~ THEN BEGIN SECOND_8
   SAY ~Either way, he can be found in his backyard on the eastern side of town, practicing his magic after sundown.~ IF ~~ THEN GOTO SECOND_9
END

IF ~~ THEN BEGIN SECOND_9
   SAY ~That is all I have for now. Return to me when you have made any progress.~
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
   SAY ~Back already, darling? Do you have any news for me?~
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
   SAY ~Alright, I'm listening.~
       ++ ~I have her with me here. She is a bit roughed up but is still alive.~ GOTO EURO_2
END

IF ~~ THEN BEGIN EURO_2
   SAY ~Poor girl. I'll inform her owner. Here is your reward, 1,000 gold coins for returning her alive.~
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
   SAY ~Alright, I'm listening.~
       ++ ~I found her dead in the woods and have her slave collar here with me.~ GOTO EURO_4
END

IF ~~ THEN BEGIN EURO_4
   SAY ~I will inform her owner. Here is your usual reward, 500 gold coins.~
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc10")
   DestroyItem("h_misc10")
   AddJournalEntry(@430,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN KATREDA_1
   SAY ~Alright, I'm listening.~
       ++ ~She refused to leave the hunters alone so I was forced to kill her.~ GOTO KATREDA_2
END

IF ~~ THEN BEGIN KATREDA_2
   SAY ~Dryads are a stubborn bunch. Here is your usual reward, 500 gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@433,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN KATREDA_3
   SAY ~That bounty is no longer available.~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@437,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN ZHONTAC_1
   SAY ~Alright, I'm listening.~
       ++ ~I completed his request and decided to let him live to finish his research.~ GOTO ZHONTAC_2
END

IF ~~ THEN BEGIN ZHONTAC_2
   SAY ~I'm surprised you didn't go for the extra bounty. Here is you reward then, 500 gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_MagnusBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@444,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN ZHONTAC_3
   SAY ~Alright, I'm listening.~
       ++ ~I completed his request and then killed him for his bounty.~ GOTO ZHONTAC_4
END

IF ~~ THEN BEGIN ZHONTAC_4
   SAY ~Excellent work. I'm sure the payoff will be well worth the efforts.~
IF ~~ THEN DO ~
   SetGlobal("h_KilledMagnus","GLOBAL",3)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@445,QUEST_DONE)
   GiveGoldForce(1000)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN ZHONTAC_5
   SAY ~Alright, I'm listening.~
       ++ ~I decided to collect his bounty without entertaining his request.~ GOTO ZHONTAC_6
END

IF ~~ THEN BEGIN ZHONTAC_6
   SAY ~Honestly, I don't blame you. It was a little out there. Here is your usual reward then, 500 gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_ZhontacBounty","GLOBAL",5)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@440,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",4) Global("h_BountyNumber","GLOBAL",6)~ THEN BEGIN RID_0
   SAY ~Gods, I get so bored around here, I don't know how much more of it I can take. Even Riggy's been all business lately so he's no help.~ IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",5)~ THEN BEGIN FINAL_0
   SAY ~What is it? Am I expected to bow in the presence of the new guildmaster?~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_BetrayBaldwin","GLOBAL",5)~ THEN BEGIN BETRAY_1
   SAY ~Oh, my. That was exhilarating! Poor Riggy, though. It was clear he'd be overmatched, but that foolish pride of his...~ IF ~~ THEN GOTO BETRAY_2
END

IF ~~ THEN BEGIN BETRAY_2
   SAY ~At any rate, I've decided that I will enlist in the Shadow Thieves. These small-time guilds just don't do it for me anymore. Maybe I'll see you around one day, <CHARNAME>.~
IF ~~ THEN DO ~
   EscapeArea()~ EXIT
END