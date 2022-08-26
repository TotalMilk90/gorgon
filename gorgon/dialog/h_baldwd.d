BEGIN h_baldwd

IF WEIGHT #-1 ~Alignment(Player1,LAWFUL_GOOD)~ THEN BEGIN SORRY_0
   SAY ~I think you've stumbled into the wrong place, friend. I'm sure there's a cat stuck in a tree somewhere that requires your aid. Now, begone from me. Your sanctimonious aura disgusts me.~ IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN JOIN_0
   SAY ~Only a fool would approach one such as me unannounced. Tradition would have you killed for such a disturbance but, oh... wait. I know of this one... <CHARNAME>, is it?~
       ++ ~Another assassin then? You're not the first to threaten my life only to forfeit their own.~ GOTO JOIN_1
       ++ ~How is it that you know my name? Who are you?~ GOTO JOIN_2
       ++ ~<CHARNAME>? Never heard of 'em. Now if you'll excuse me I must be going.~ GOTO JOIN_12
END

IF ~~ THEN BEGIN JOIN_1
   SAY ~You can lower your weapons, no need to be alarmed. I am not your enemy. At least I don't have to be.~ IF ~~ THEN GOTO JOIN_3
END

IF ~~ THEN BEGIN JOIN_2
   SAY ~I make it my business to know who wanders about the city. And you are but one of many.~ IF ~~ THEN GOTO JOIN_3
END

IF ~~ THEN BEGIN JOIN_3
   SAY ~I am Baldwin, and you have found yourself in the den of the Gorgon's Eye.~ IF ~~ THEN GOTO JOIN_4
END

IF ~~ THEN BEGIN JOIN_4
   SAY ~It may not appear much, but appearances are meant to deceive. Rest assured, our operations run throughout all quarters south of the gate.~ IF ~~ GOTO JOIN_5
END

IF ~~ THEN BEGIN JOIN_5
   SAY ~Now then, if I recall there is a rather large bounty on your head, and here you stand surrounded by my cutthroats and hunters.~ IF ~~ THEN GOTO JOIN_6
END

IF ~~ THEN BEGIN JOIN_6
   SAY ~I could have you killed at the snap of my fingers, collect my reward and I would think nothing of it. However, I believe your abilities may prove to be worth just a bit more.~ IF ~~ THEN GOTO JOIN_7
END

IF ~~ THEN BEGIN JOIN_7
   SAY ~I extend an offer for you to join us, if ambition and coin be your interest.~
       ++ ~I thought Ravenscar controlled the whole of the Sword Coast.~ GOTO JOIN_8
       ++ ~What could I expect to gain from joining your guild?~ GOTO JOIN_10
       ++ ~What types of tasks would be required of me?~ GOTO JOIN_11
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO JOIN_14
       ++ ~I'm not sure if I can trust you, but if the coin is good then I accept.~ GOTO JOIN_14
       ++ ~I don't think I'm interested in working for a bunch of thieves.~ GOTO JOIN_12
END

IF ~~ THEN BEGIN JOIN_8
   SAY ~Oh my, quite a surprise you would be so informed. A refreshing contrast to the usual drab I am forced to deal with. Ravenscar's influence does leave the walls yes, to be sure, but his jurisdiction stays within.~
       ++ ~And what of the Shadows Thieves? We are not far from Amn.~ GOTO JOIN_9
       ++ ~What could I expect to gain from joining your guild?~ GOTO JOIN_10
       ++ ~What types of tasks would be required of me?~ GOTO JOIN_11
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO JOIN_14
       ++ ~I'm not sure if I can trust you, but if the coin is good then I accept.~ GOTO JOIN_14
       ++ ~I don't think I'm interested in working for a bunch of thieves.~ GOTO JOIN_12
END

IF ~~ THEN BEGIN JOIN_9
   SAY ~Linvail's dogs don't typically sniff around this far north. I have staked my claim to this territory and none have sent challenge.~
       ++ ~I thought Ravenscar controlled the whole of the Sword Coast.~ GOTO JOIN_8
       ++ ~What could I expect to gain from joining your guild?~ GOTO JOIN_10
       ++ ~What types of tasks would be required of me?~ GOTO JOIN_11
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO JOIN_14
       ++ ~I'm not sure if I can trust you, but if the coin is good then I accept.~ GOTO JOIN_14
       ++ ~I don't think I'm interested in working for a bunch of thieves.~ GOTO JOIN_12
END

IF ~~ THEN BEGIN JOIN_10
   SAY ~I offer you an opportunity to gain unique skills in the sneaksman's trade from some of the finest theives in Faerun. You would be armed and trained, and recieve a cut from the guilds earnings.~
       ++ ~I thought Ravenscar controlled the whole of the Sword Coast.~ GOTO JOIN_8
       ++ ~What types of tasks would be required of me?~ GOTO JOIN_11
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO JOIN_14
       ++ ~I'm not sure if I can trust you, but if the coin is good then I accept.~ GOTO JOIN_14
       ++ ~I don't think I'm interested in working for a bunch of thieves.~ GOTO JOIN_12
END

IF ~~ THEN BEGIN JOIN_11
   SAY ~Your duties would include pickpocketing and extorting targets for selected possessions. Some of your missions may require stealth to obtain sensitive information, while others may require a more brutish approach.~
       ++ ~I thought Ravenscar controlled the whole of the Sword Coast.~ GOTO JOIN_8
       ++ ~What could I expect to gain from joining your guild?~ GOTO JOIN_10
       ++ ~What types of tasks would be required of me?~ GOTO JOIN_11
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO JOIN_14
       ++ ~I'm not sure if I can trust you, but if the coin is good then I accept.~ GOTO JOIN_14
       ++ ~I don't think I'm interested in working for a bunch of thieves.~ GOTO JOIN_12
END

IF ~~ THEN BEGIN JOIN_12
   SAY ~Hmm, I see. As you were then.~
IF ~~ THEN DO ~
   SetGlobal("h_DidNotJoin","GLOBAL",1)~ EXIT
END

IF ~Global("h_DidNotJoin","GLOBAL",1)~ THEN BEGIN JOIN_13
   SAY ~<CHARNAME>, you return. Have you reconsidered my offer then?~
       ++ ~Though I am skeptical of your nature, I have decided I would like to join your guild.~ GOTO JOIN_14
       ++ ~What could I expect to gain from joining your guild?~ GOTO JOIN_10
       ++ ~What types of tasks would be required of me?~ GOTO JOIN_11
       ++ ~No, I have no desire to work with a bunch of thieves.~ GOTO JOIN_12
END

IF ~~ THEN BEGIN JOIN_14
   SAY ~Excellent, welcome aboard then! Make yourself at home and all that. Rigaldo will be in charge of directing your assignments within the guild. Off with you now though, as I must attend to my duties.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",1)
   SetGlobal("h_DidNotJoin","GLOBAL",2)
   SetGlobal("h_BaldwinQuest","GLOBAL",1)
   AddJournalEntry(@200,USER)
   ReputationInc(-2)~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",1)~ THEN BEGIN JOIN_15
   SAY ~No time to chat, I'm afraid. Attend to your regular duties unless instructed otherwise.~ IF ~~ THEN EXIT
END


          ///////////////////////////////////////////
          ////////// Mage in the Mountains //////////
          ///////////////////////////////////////////


IF ~Global("h_BaldwinQuest","GLOBAL",2)~ THEN BEGIN MAGE_1
   SAY ~Ah, <CHARNAME>! Just the person I wanted to see. Rigaldo tells me you are doing fine work, and I think it is time I filled you in on some official guild business.~ IF ~~ THEN GOTO MAGE_2
END

IF ~~ THEN BEGIN MAGE_2
   SAY ~A network of spies under my employ are investigating the location of an ancient staff called the Kerykeion.~ IF ~~ THEN GOTO MAGE_3
END

IF ~~ THEN BEGIN MAGE_3
   SAY ~We believe it was brought to Faerun during the Time of Troubles, but was destroyed in some ghastly battle.~ IF ~~ THEN GOTO MAGE_4
END

IF ~~ THEN BEGIN MAGE_4
   SAY ~Most historians have viewed it as myth, but I believe they just lack the sort of... curiousity that people in our profession find themselves with.~ IF ~~ THEN GOTO MAGE_5
END

IF ~~ THEN BEGIN MAGE_5
   SAY ~Now as it so happens, we have devised a way to reassemble the staff and restore its power.~ IF ~~ THEN GOTO MAGE_6
END

IF ~~ THEN BEGIN MAGE_6
   SAY ~I needn't bore you with the details, but rest assured this will be a demanding campaign requiring considerable efforts on all fronts.~
       ++ ~What can you tell me about the staff?~ GOTO MAGE_7
       ++ ~What is it that you would have me do?~ GOTO MAGE_9
END

IF ~~ THEN BEGIN MAGE_7
   SAY ~It is a weapon of unprecedented power created by the demons and gorgons of the Underworld.~ IF ~~ THEN GOTO MAGE_8
END

IF ~~ THEN BEGIN MAGE_8
   SAY ~Saradin ponders his theories about its history, and would be happy to delve into its details. If you're curious feel free to ask him.~
       ++ ~What is it that you would have me do?~ GOTO MAGE_9
END

IF ~~ THEN BEGIN MAGE_9
   SAY ~I would like you to aid me in the collection of its parts.~ IF ~~ THEN GOTO MAGE_10
END

IF ~~ THEN BEGIN MAGE_10
   SAY ~There are whispers of a witch practicing dark magic atop the highest peak in the Gibberling Mountains. Tales of deafening screams and auras of green light filling its night sky.~ IF ~~ THEN GOTO MAGE_11
END

IF ~~ THEN BEGIN MAGE_11
   SAY ~We believe she has found a part of the staff and has somehow managed to unleash its power.~ IF ~~ THEN GOTO MAGE_12
END

IF ~~ THEN BEGIN MAGE_12
   SAY ~I am sending you to find this witch. If it is in her possession then you have my full authority to retrieve it by any means necessary.~
       ++ ~Alright, I will go locate this mage and bring back the piece if she has it.~ GOTO MAGE_13
END

IF ~~ THEN BEGIN MAGE_13
   SAY ~Aye, it's settled then. Return to me when you have finished your duty.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",3)
   SetGlobal("h_SpawnDeneb","GLOBAL",1)
   SetGlobal("h_Saradin","GLOBAL",1)
   AddJournalEntry(@210,QUEST)~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",3)~ THEN BEGIN MAGE_14
   SAY ~<CHARNAME>, you've returned. Were you able to locate this mage? Tell me, was she in possession of the staff?~
       +~PartyHasItem("h_misc01")~+ ~Yes she was, and I had to kill her for it. She mentioned that other thieves had come for it recently as well.~ GOTO MAGE_15
       ++ ~I have a few other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN MAGE_15
   SAY ~That is curious indeed. None but our own should have known of this endeavor.~ IF ~~ THEN GOTO MAGE_16
END

IF ~~ THEN BEGIN MAGE_16
   SAY ~Listen carefully. I have sensed something... ominous here of late. Movement in the shadows that is not our own. Eyes in the city that do not belong.~ IF ~~ THEN GOTO MAGE_17
END

IF ~~ THEN BEGIN MAGE_17
   SAY ~With the addition of your report I can only conclude that we are being watched. By who, I am unsure.~ IF ~~ THEN GOTO MAGE_18
END

IF ~~ THEN BEGIN MAGE_18
   SAY ~Going forward, be on your guard while about the city. I will have my spies investigate further.~ IF ~~ THEN GOTO MAGE_19
END

IF ~~ THEN BEGIN MAGE_19
   SAY ~At any rate, we were able to obtain what they could not. Strength may be on our side. Excellent work, <CHARNAME>.~ IF ~~ THEN GOTO MAGE_20
END

IF ~~ THEN BEGIN MAGE_20
   SAY ~Here is your reward. A ring I picked up from my days in Athkatla. I will send word when new information on the Kerykeion becomes available. If you'll excuse me, I have some pressing business to attend to.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",4)
   SetGlobal("h_RigaldoQuest","GLOBAL",6)
   AddJournalEntry(@212,QUEST_DONE)
   TakePartyItem("h_misc01")
   DestroyItem("h_misc01")
   GiveItemCreate("h_ring01",LastTalkedToBy,0,0,0)
   AddExperienceParty(800)
   MoveToPoint([922.1052])
   Face(SW)~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",4)~ THEN BEGIN MAGE_21
   SAY ~No time to chat, I'm afraid. Attend to your regular duties unless instructed otherwise.~ IF ~~ THEN EXIT
END


          ///////////////////////////////////
          /////// Bombs over Beregost ///////
          ///////////////////////////////////


IF ~Global("h_BaldwinQuest","GLOBAL",5)~ THEN BEGIN BOMBS_0
   SAY ~<CHARNAME>! Go to the surface and eliminate all the Shadow Thieves from the city.~
       ++ ~Ariosh mentioned Thamuz was leading their offensive, do you know who he is?~ GOTO BOMBS_1
       +~NumDead("h_sthiec",12) NumDead("h_thiefc",11) PartyHasItem("h_misc08")~+ ~I have found these reports among the dead, but it's written in a code that I cannot decipher.~ GOTO NAGATE_1
       ++ ~Understood.~ EXIT
END

IF ~~ THEN BEGIN BOMBS_1
   SAY ~Aye. Thamuz and I were comrades once. He is a dangerous rogue who has mastered the arts of stealth and deception. He should not be underestimated.~
       ++ ~Why have they decided to attack us now?~ GOTO BOMBS_2
END

IF ~~ THEN BEGIN BOMBS_2
   SAY ~I fear the true reason alludes me as well. This is their first attempt against me since I left Amn many years ago.~ IF ~~ THEN GOTO BOMBS_3
END

IF ~~ THEN BEGIN BOMBS_3
   SAY ~It could be in retaliation for our excerise at the carnival. Although, the more likely conclusion is that they have become aware of our movements toward the Kerykeion, and wish to stop us.~ IF ~~ THEN GOTO BOMBS_4
END

IF ~~ THEN BEGIN BOMBS_4
   SAY ~Regardless, we have more pressing matters at hand and should leave these theories for another time. Is there anything else you need?~
       +~NumDead("h_sthiec",10) NumDead("h_thiefc",7) PartyHasItem("h_misc08")~+ ~I have found these reports among the dead, but it's written in a code that I cannot decipher.~ GOTO NAGATE_1
       ++ ~No, that is all.~ EXIT
END


          ///////////////////////////////////
          ///////// Learn of Nagate /////////
          ///////////////////////////////////


IF ~~ THEN BEGIN NAGATE_1
   SAY ~Let me see that!~ IF ~~ THEN GOTO NAGATE_2
END

IF ~~ THEN BEGIN NAGATE_2
   SAY ~...~ IF ~~ THEN GOTO NAGATE_3
END

IF ~~ THEN BEGIN NAGATE_3
   SAY ~Belay those orders! The attack was a feint! Their main force is heading north towards the Wood of Sharp Teeth.~ IF ~~ THEN GOTO NAGATE_4
END

IF ~~ THEN BEGIN NAGATE_4
   SAY ~They are planning negotiations with a group of smugglers for the purchase of a Kerykeion piece! Dammit, those bastards have been one step ahead of us this whole time.~ IF ~~ THEN GOTO NAGATE_5
END

IF ~~ THEN BEGIN NAGATE_5
   SAY ~<CHARNAME>, I need you to head north immediately. They are meeting with a rogue named Nagate by some old ruins near the bandit camp.~ IF ~~ THEN GOTO NAGATE_6
END

IF ~~ THEN BEGIN NAGATE_6
   SAY ~Be on your guard with this one. According to these reports, the Shadow Thieves have suspicions that this may be a trap.~ IF ~~ THEN GOTO NAGATE_7
END

IF ~~ THEN BEGIN NAGATE_7
   SAY ~Regardless, if you hurry you should be able to make it before their battalion arrives.~
IF ~~ THEN DO ~
   SetGlobal("h_GuildMusic","GLOBAL",2)
   SetGlobal("h_BaldwinQuest","GLOBAL",6)
   SetGlobal("h_RigaldoQuest","GLOBAL",14)
   SetGlobal("h_SpawnNagate","GLOBAL",1)
   SetGlobal("h_ShadowWar","GLOBAL",3)
   AddJournalEntry(@214,QUEST_DONE)
   AddJournalEntry(@215,QUEST)
   TakePartyItem("h_misc08")
   DestroyItem("h_misc08")~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",6)~ THEN BEGIN NAGATE_8
   SAY ~You have your orders now get to it!~ IF ~~ THEN EXIT
END


          ///////////////////////////////////
          //////// Return From Thamuz ///////
          ///////////////////////////////////


IF ~Global("h_BaldwinQuest","GLOBAL",7)~ THEN BEGIN THAMUZ_0
   SAY ~Finally, you return. What is your report then, were you able to locate Nagate?~
       ++ ~I arrived just in time to witness his death. He was killed by Thamuz, who abruptly appeared from the shadows.~ GOTO THAMUZ_1
END

IF ~~ THEN BEGIN THAMUZ_1
   SAY ~I presume Thamuz is dead then. As I doubt he would allow you to just walk away from such an encounter.~
       ++ ~Yes, I killed him along with his small party of thieves. We spoke at some length, and he had some interesting things to say.~ GOTO THAMUZ_2
END

IF ~~ THEN BEGIN THAMUZ_2
   SAY ~I see. Well, go on. If you've something to say, spit it out.~
       ++ ~He said that someone hired them to exterminate us from Beregost, but would not say who.~ GOTO THAMUZ_4
       ++ ~He said that no mortal is capable of wielding the Kerykeion and if you try you will become a danger to us all.~ GOTO THAMUZ_5
       ++ ~Baldwin, what exactly is your plan after obtaining the Kerykeion?~ GOTO THAMUZ_7
       ++ ~He mentioned they have been aware of all our activities since you founded the Gorgon's Eye.~ GOTO THAMUZ_9
END

IF ~~ THEN BEGIN THAMUZ_4
   SAY ~Hmm... that is an interesting choice of words. I will send my spies to investigate this claim. Was there anything else?~
       ++ ~He said that no mortal is capable of wielding the Kerykeion and if you try you will become a danger to us all.~ GOTO THAMUZ_5
       ++ ~Baldwin, what exactly is your plan after obtaining the Kerykeion?~ GOTO THAMUZ_7
       ++ ~He mentioned they have been aware of all our activities since you founded the Gorgon's Eye.~ GOTO THAMUZ_9
       ++ ~That is all. I am ready for my next mission.~ GOTO THAMUZ_10
END

IF ~~ THEN BEGIN THAMUZ_5
   SAY ~I did warn of you Thamuz' deception. It sounds a poor attempt at sowing distrust between us, incase he failed at killing you.~ IF ~~ THEN GOTO THAMUZ_6
END

IF ~~ THEN BEGIN THAMUZ_6
   SAY ~It is nonsense of course, as I have spent my entire life studying the Kerykeion. No mortal has even had the opportunity to wield it, so that is a baseless claim.~
       ++ ~He said that someone hired them to exterminate us from Beregost, but would not say who.~ GOTO THAMUZ_4
       ++ ~Baldwin, what exactly is your plan after obtaining the Kerykeion?~ GOTO THAMUZ_7
       ++ ~He mentioned they have been aware of all our activities since you founced the Gorgon's Eye.~ GOTO THAMUZ_9
       ++ ~That is all. I am ready for my next mission.~ GOTO THAMUZ_10
END

IF ~~ THEN BEGIN THAMUZ_7
   SAY ~Now that we are in open war against the Shadow Thieves, there is no reason to further withhold my plans.~ IF ~~ THEN GOTO THAMUZ_8
END

IF ~~ THEN BEGIN THAMUZ_8
   SAY ~I will use the Kerykeion to satisfy my vengeance against the Shadow Thieves. I will eliminate their leaders and appropriate their entire organization.~
       ++ ~He said that someone hired them to exterminate us from Beregost, but would not say who.~ GOTO THAMUZ_4
       ++ ~He said that no mortal is capable of wielding the Kerykeion and if you try you will become a danger to us all.~ GOTO THAMUZ_5
       ++ ~He mentioned they have been aware of all our activities since you founded the Gorgon's Eye.~ GOTO THAMUZ_9
       ++ ~That is all. I am ready for my next mission.~ GOTO THAMUZ_10
END

IF ~~ THEN BEGIN THAMUZ_9
   SAY ~I've always suspected as much. I assumed it was them who beat us to the witch in the Gibberling Mountains, as well as those I saw snooping around town before their attack.~
       ++ ~He said that someone hired them to exterminate us from Beregost, but would not say who.~ GOTO THAMUZ_4
       ++ ~He said that no mortal is capable of wielding the Kerykeion and if you try you will become a danger to us all.~ GOTO THAMUZ_5
       ++ ~What exactly is your plan after obtaining the Kerykeion?~ GOTO THAMUZ_7
       ++ ~That is all. I am ready for my next mission.~ GOTO THAMUZ_10
END

IF ~~ THEN BEGIN THAMUZ_10
   SAY ~I will inform you when my spies turn up anything new. In the meantime, return to your usual guild work.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",8)
   SetGlobal("h_RigaldoQuest","GLOBAL",15)
   SetGlobal("h_LiedelQuest","GLOBAL",3)
   AddJournalEntry(@217,QUEST_DONE)
   TakePartyItem("h_misc02")
   DestroyItem("h_misc02")
   AddExperienceParty(800)~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",8) NumItemsPartyLT("h_misc13",1)~ THEN BEGIN THAMUZ_12
   SAY ~No time to chat, I'm afraid. Attend to your regular duties unless instructed otherwise.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc14")~ THEN BEGIN BETRAY_0
   SAY ~No time to chat, I'm afraid. Attend to your regular duties unless instructed otherwise.~
       ++ ~I have found the last piece of the Kerykeion.~ GOTO BETRAY_1
END

IF ~~ THEN BEGIN BETRAY_1
   SAY ~You what? How is that possible?! Speak, quickly!~
       ++ ~I found it among the remains of some Shadow Thieves I killed on my last mission.~ GOTO BETRAY_2
       ++ ~I found it hidden in a chest at the Nashkel carnival.~ GOTO BETRAY_2
       ++ ~I found it on the corpse of a powerful mage that I fought.~ GOTO BETRAY_2
       ++ ~I purchased it from a smuggler near Baldur's Gate.~ GOTO BETRAY_2
END

IF ~~ THEN BEGIN BETRAY_2
   SAY ~Is that so? Give it here so that I may examine it.~ IF ~~ THEN GOTO BETRAY_3
END

IF ~~ THEN BEGIN BETRAY_3
   SAY ~*laughing* Yes, it is magnificent! You have outdone youself, <CHARNAME>. I knew not killing you was the right move when you first stumbled in here!~ IF ~~ THEN GOTO BETRAY_4
END

IF ~~ THEN BEGIN BETRAY_4
   SAY ~There is still much work to be done. Leave me now, while I make the necessary preparations for its assembly.~
IF ~~ THEN DO ~
   SetGlobal("h_FakeKery","GLOBAL",1)
   TakePartyItem("h_misc14")
   DestroyItem("h_misc14")
   AddJournalEntry(@223,QUEST)~ EXIT
END


          ///////////////////////////////////
          ///////// Gerard's Gambit /////////
          ///////////////////////////////////


IF ~Global("h_BaldwinQuest","GLOBAL",8) PartyHasItem("h_misc13")~ THEN BEGIN GERARD_0
   SAY ~No time to chat, I'm afraid. Attend to your regular duties unless instructed otherwise.~
       ++ ~I ran into one of your Snake Heads. He ended up succumbing to his injuries after engaging with the Shadow Thieves. He found this document among their belongings.~ GOTO GERARD_1
END

IF ~~ THEN BEGIN GERARD_1
   SAY ~Give it here, quickly!~ IF ~~ THEN GOTO GERARD_2
END

IF ~~ THEN BEGIN GERARD_2
   SAY ~...~ IF ~~ THEN GOTO GERARD_3
END

IF ~~ THEN BEGIN GERARD_3
   SAY ~That foolish bastard. *laughing* Oh, he is a dead man indeed.~ IF ~~ THEN GOTO GERARD_4
END

IF ~~ THEN BEGIN GERARD_4
   SAY ~<CHARNAME>, all of our work is finally about to pay off. It was our own Gerard Travenhurst, who was responsible for enlisting the services of the Shadow Thieves.~ IF ~~ THEN GOTO GERARD_5
END

IF ~~ THEN BEGIN GERARD_5
   SAY ~Not only that, but the reward he is offering for my execution is none other than the final piece of the Kerykeion!~
       ++ ~Gerard has had the last piece this whole time?~ GOTO GERARD_6
       ++ ~What if we are being led into a trap?~ GOTO GERARD_7
       ++ ~How do you wish to proceed?~ GOTO GERARD_8
END

IF ~~ THEN BEGIN GERARD_6
   SAY ~It appears that way, yes. He was also aiding them with knowledge of our activities and whereabouts.~
       ++ ~What if we are being led into a trap?~ GOTO GERARD_7
       ++ ~How do you wish to proceed?~ GOTO GERARD_8
END

IF ~~ THEN BEGIN GERARD_7
   SAY ~It's possible, but it will be worth the risk. If I am able to procure the final piece and successfully reassemble the staff, then no trap will be able to ensnare us.~
       ++ ~Gerard has had the piece this whole time?~ GOTO GERARD_6
       ++ ~How do you wish to proceed?~ GOTO GERARD_8
END


IF ~~ THEN BEGIN GERARD_8
   SAY ~Meet me at Gerard's, presently! We will end this at his manor, once and for all.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",9)
   SetGlobal("h_ShadowWar","GLOBAL",8)
   SetGlobal("h_SpawnBaldwin","GLOBAL",1)
   AddJournalEntry(@218,QUEST)
   EscapeArea()~ EXIT
END