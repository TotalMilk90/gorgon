BEGIN h_baldwd

IF WEIGHT #-1 ~Alignment(Player1,LAWFUL_GOOD)~ THEN BEGIN 0
   SAY ~I think you've stumbled into the wrong place, friend. I'm certain there's a cat ensnared in the branches outside, desperate for your gallant rescue. Now, begone from me. Your stench of sanctimonious bullshit disgusts me.~ IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN JOIN_0
   SAY ~Only a fool would approach one such as me unannounced. Tradition would have you killed for such a disturbance but, oh... wait. I know of this one... <CHARNAME>, is it?~
       ++ ~Another assassin then? You're not the first to threaten my life only to forfeit their own.~ GOTO JOIN_1
       ++ ~How did you come by my name? Who are you?~ GOTO JOIN_2
       ++ ~<CHARNAME>? Never heard of 'em. Now, if you'll excuse me, I must be going.~ GOTO JOIN_15
END

IF ~~ THEN BEGIN JOIN_1
   SAY ~You can lower your weapons, no need to be alarmed. I am not your enemy. At least I don't have to be.~ IF ~~ THEN GOTO JOIN_3
END

IF ~~ THEN BEGIN JOIN_2
   SAY ~I make it my business to know those prowling about the city. You are just one of many.~ IF ~~ THEN GOTO JOIN_3
END

IF ~~ THEN BEGIN JOIN_3
   SAY ~I am Baldwin, and you have found yourself in the den of the Gorgon's Eye.~ IF ~~ THEN GOTO JOIN_4
END

IF ~~ THEN BEGIN JOIN_4
   SAY ~It may not appear much, but appearances are meant to deceive, are they not? Rest assured, our operations run throughout all quarters south of the gate.~ IF ~~ GOTO JOIN_5
END

IF ~~ THEN BEGIN JOIN_5
   SAY ~Now then, if I recall, there is a rather large bounty on your head. And here you stand... surrounded by my cutthroats and hunters.~ IF ~~ THEN GOTO JOIN_6
END

IF ~~ THEN BEGIN JOIN_6
   SAY ~I could have you killed at the lift of my finger, collect my reward and think nothing of it. However, I believe your abilities may prove to be worth just a bit more.~ IF ~~ THEN GOTO JOIN_7
END

IF ~~ THEN BEGIN JOIN_7
   SAY ~I extend to you an offer to join us, if ambition and coin align with your interests.~
       ++ ~I thought Ravenscar controlled the whole of the Sword Coast?~ GOTO JOIN_8
       ++ ~What might I gain from joining your guild?~ GOTO JOIN_10
       ++ ~What manner of tasks would be required of me?~ GOTO JOIN_11
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO JOIN_17
       ++ ~I don't know if I can trust you, but if the coin is right, I'm in.~ GOTO JOIN_17
       ++ ~Petty thievery is of no interest to me.~ GOTO JOIN_13
END

IF ~~ THEN BEGIN JOIN_8
   SAY ~Oh my, quite a surprise that you would be so informed. A refreshing contrast to the usual drab I am forced to deal with. Ravenscar's influence does leave the walls yes, to be sure, but his jurisdiction stays within.~
       ++ ~What of the Shadows Thieves? We are not far from Amn.~ GOTO JOIN_9
       ++ ~What might I gain from joining your guild?~ GOTO JOIN_10
       ++ ~What manner of tasks would be required of me?~ GOTO JOIN_11
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO JOIN_17
       ++ ~I don't know if I can trust you, but if the coin is right, I'm in.~ GOTO JOIN_17
       ++ ~Petty thievery is of no interest to me.~ GOTO JOIN_13
END

IF ~~ THEN BEGIN JOIN_9
   SAY ~Linvail's dogs don't typically sniff around this far north. I have staked my claim to this territory and none have sent challenge.~
       ++ ~I thought Ravenscar controlled the whole of the Sword Coast?~ GOTO JOIN_8
       ++ ~What might I gain from joining your guild?~ GOTO JOIN_10
       ++ ~What manner of tasks would be required of me?~ GOTO JOIN_11
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO JOIN_17
       ++ ~I don't know if I can trust you, but if the coin is right, I'm in.~ GOTO JOIN_17
       ++ ~Petty thievery is of no interest to me.~ GOTO JOIN_13
END

IF ~~ THEN BEGIN JOIN_10
   SAY ~I offer you an opportunity to gain unique skills in the art of shadows from some of Faerun's finest. You will be armed, trained, and entitled to a cut of the guilds spoils.~
       ++ ~I thought Ravenscar controlled the whole of the Sword Coast?~ GOTO JOIN_8
       ++ ~What manner of tasks would be required of me?~ GOTO JOIN_11
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO JOIN_17
       ++ ~I don't know if I can trust you, but if the coin is right, I'm in.~ GOTO JOIN_17
       ++ ~Petty thievery is of no interest to me.~ GOTO JOIN_13
END

IF ~~ THEN BEGIN JOIN_11
   SAY ~In this guild, you will find yourself immersed in a spectrum of clandestine endeavors.~ IF ~~ THEN GOTO JOIN_12
END

IF ~~ THEN BEGIN JOIN_12
   SAY ~Pickpocketing and persuading treasures away from unwilling hands. Engaging in covert heists and acquiring guarded intelligence. Many of these undertakings will demand shadows, while others, a bolder touch.~
       ++ ~I thought Ravenscar controlled the whole of the Sword Coast?~ GOTO JOIN_8
       ++ ~What might I gain from joining your guild?~ GOTO JOIN_10
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO JOIN_17
       ++ ~I don't know if I can trust you, but if the coin is right, I'm in.~ GOTO JOIN_17
       ++ ~Petty thievery is of no interest to me.~ GOTO JOIN_13
END

IF ~~ THEN BEGIN JOIN_13
   SAY ~I see. As you were then.~
IF ~~ THEN DO ~
   SetGlobal("h_DidNotJoin","GLOBAL",2)~ EXIT
END

IF ~Global("h_DidNotJoin","GLOBAL",2)~ THEN BEGIN JOIN_14
   SAY ~Have you reconsidered my proposition, then?~
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO JOIN_17
       ++ ~I don't know if I can trust you, but if the coin is right, I'm in.~ GOTO JOIN_17
       ++ ~Petty thievery is of no interest to me.~ GOTO JOIN_13
END

IF ~~ THEN BEGIN JOIN_15
   SAY ~I see. As you were then.~
IF ~~ THEN DO ~
   SetGlobal("h_DidNotJoin","GLOBAL",1)~ EXIT
END

IF ~Global("h_DidNotJoin","GLOBAL",1)~ THEN BEGIN JOIN_16
   SAY ~State your business, quickly.~
       ++ ~How did you come by my name? Who are you?~ GOTO JOIN_2
       ++ ~I'll be leaving now.~ EXIT
END

IF ~~ THEN BEGIN JOIN_17
   SAY ~Excellent, welcome aboard then! Make yourself at home and all that. Or don't. It matters little to me.~ IF ~~ THEN GOTO JOIN_18
END

IF ~~ THEN BEGIN JOIN_18
   SAY ~Rigaldo will be in charge of directing your assignments within the guild. Relay your questions to him, or even Saradin for that matter, if he'll stomach your company for long.~ IF ~~ THEN GOTO JOIN_19
END

IF ~~ THEN BEGIN JOIN_19
   SAY ~That will be all for now. I've other matters to attend.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",1)
   SetGlobal("h_DidNotJoin","GLOBAL",3)
   SetGlobal("h_BaldwinQuest","GLOBAL",1)
   AddJournalEntry(@202,USER)
   ReputationInc(-2)~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",1)~ THEN BEGIN JOIN_20
   SAY ~Small talk won't serve you here. Attend to your duties and fulfill your role.~ IF ~~ THEN EXIT
END


          ///////////////////////////////////////////
          ////////// Mage in the Mountains //////////
          ///////////////////////////////////////////


IF ~Global("h_BaldwinQuest","GLOBAL",2)~ THEN BEGIN MAGE_0
   SAY ~Ah, <CHARNAME>. Just the person I wanted to see. Rigaldo speaks highly of your skills, and envisions a promising future for you within the guild.~ IF ~~ THEN GOTO MAGE_1
END

IF ~~ THEN BEGIN MAGE_1
   SAY ~You're an official member of the Gorgon's Eye now. There's a lot more work ahead, but I have full confidence in your abilities.~ IF ~~ THEN GOTO MAGE_2
END

IF ~~ THEN BEGIN MAGE_2
   SAY ~Now, for the task at hand. I'm entrusting you with highly classified guild business, so pay close attention.~ IF ~~ THEN GOTO MAGE_3
END

IF ~~ THEN BEGIN MAGE_3
   SAY ~Under my command, I have a black-ops unit of exceptionally skilled spies and shadows, referred to as my Snake Heads.~ IF ~~ THEN GOTO MAGE_4
END

IF ~~ THEN BEGIN MAGE_4
   SAY ~They have been assigned the task of investigating the whereabouts of an extremely powerful and ancient artifact, the Kerykeion.~ IF ~~ THEN GOTO MAGE_5
END

IF ~~ THEN BEGIN MAGE_5
   SAY ~We believe it made its way to Faerun during the Time of Troubles, but was detroyed shortly after and seperated in three fragments.~ IF ~~ THEN GOTO MAGE_6
END

IF ~~ THEN BEGIN MAGE_6
   SAY ~Our objective is to collect these fragments and reconstruct the staff in working order. Our seasoned alchemists and smiths have already devised a method for this to be accomplished.~ IF ~~ THEN GOTO MAGE_6.5
END

IF ~~ THEN BEGIN MAGE_6.5
   SAY ~Our latest intel points to a dark socerer, perched high atop the Gibberling Mountains, to carry one in her possession. I want you to retrieve it.~ IF ~~ THEN GOTO MAGE_7
END

IF ~~ THEN BEGIN MAGE_7
   SAY ~This will be a demanding campaign, requiring considerable efforts on all fronts. I trust that you're up for the challenge.~
       ++ ~What can you tell me about the Kerykeion?~ GOTO MAGE_8
       ++ ~How does one become a Snake Head?~ GOTO MAGE_12
       ++ ~Where are the Gibberling Mountains located?~ GOTO MAGE_14
       ++ ~I'll return when I have the shard.~ GOTO MAGE_15
END

IF ~~ THEN BEGIN MAGE_8
   SAY ~The Kerykeion is a magical staff of unprecedented power, forged in the endless depths of the underworld by a team of serpentine demi-gods, the Gorgon Sisters.~ IF ~~ THEN GOTO MAGE_9
END

IF ~~ THEN BEGIN MAGE_9
   SAY ~The feeble minds of most historians have dismissed it as mere legend, their lack of curiosity a glaring testament to their ignorance. Yet, within the echelons of our profession, we know better.~ IF ~~ THEN GOTO MAGE_10
END

IF ~~ THEN BEGIN MAGE_10
   SAY ~We understand the dark allure that dwells within the heart of such mysteries. The artifact exists, each shard containing the essence of a different sister, silently waiting for rebirth.~ IF ~~ THEN GOTO MAGE_11
END

IF ~~ THEN BEGIN MAGE_11
   SAY ~Saradin is a meticulous chronicler on the matter, seek him out for further queries, if you desire.~
       ++ ~How does one become a Snake Head?~ GOTO MAGE_12
       ++ ~Where are the Gibberling Mountains located?~ GOTO MAGE_14
       ++ ~I'll return when I have the shard.~ GOTO MAGE_15
END

IF ~~ THEN BEGIN MAGE_12
   SAY ~Becoming a Snake Head requires more than just skill. You need to possess an instinct for the shadows, an innate ability to blend seamlessly into any environment.~ IF ~~ THEN GOTO MAGE_13
END

IF ~~ THEN BEGIN MAGE_13
   SAY ~You must be able to think on your feet, adapt to unforeseen circumstances, and above all, maintain absolute discretion. It's not a path for the faint of heart, but those who prove themselves earn the privilege.~
       ++ ~What can you tell me about the Kerykeion?~ GOTO MAGE_8
       ++ ~Where are the Gibberling Mountains located?~ GOTO MAGE_14
       ++ ~I'll return when I have the shard.~ GOTO MAGE_15
END

IF ~~ THEN BEGIN MAGE_14
   SAY ~You can find them far to the southeast, overlooking the entrance to the mines of Nashkel.~
       ++ ~What can you tell me about the Kerykeion?~ GOTO MAGE_8
       ++ ~How does one become a Snake Head?~ GOTO MAGE_12
       ++ ~I'll return when I have the shard.~ GOTO MAGE_15
END

IF ~~ THEN BEGIN MAGE_15
   SAY ~I knew I could count on you. Locate the dark witch and retrieve the artifact, whatever the cost.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",3)
   SetGlobal("h_SpawnDeneb","GLOBAL",1)
   SetGlobal("h_Saradin","GLOBAL",1)
   AddJournalEntry(@210,QUEST)~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",3)~ THEN BEGIN MAGE_16
   SAY ~This is an important mission. Don't fail me.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc01")~ THEN BEGIN MAGE_17
   SAY ~The Kerykeion! Hand it here, quickly!~ IF ~~ THEN DO ~ TakePartyItem("h_misc01") DestroyItem("h_misc01")~ GOTO MAGE_18
END

IF ~~ THEN BEGIN MAGE_18
   SAY ~Incredible, <CHARNAME>, you've done it! You can feel it, can you not? The intoxicating pull of its power, the whispered promises of dominion? A fractured taste of what's to come.~ IF ~~ THEN GOTO MAGE_19
END

IF ~~ THEN BEGIN MAGE_19
   SAY ~I await a detailed report of your encounter. Discuss with me any matters of import.~
       ++ ~The mage appeared unstable. As if the Kerykeion had warped her mind.~ DO ~IncrementGlobal("h_MageNumber","GLOBAL",1)~ GOTO MAGE_20
       ++ ~She mentioned other rogues who assailed her for the Kerykeion.~ DO ~IncrementGlobal("h_MageNumber","GLOBAL",1)~ GOTO MAGE_21
       ++ ~When the battle begun she was able to summon snakes under her command.~ DO ~IncrementGlobal("h_MageNumber","GLOBAL",1)~ GOTO MAGE_22
END

IF ~~ THEN BEGIN MAGE_20
   SAY ~Then she was weak, and unworthy of its gift. There is a strength required to wield it, a mental fortitude to shield oneself from the darkness.~
       +~GlobalGT("h_MageNumber","GLOBAL",2)~+ ~That is all I have to report.~ GOTO MAGE_23
       ++ ~She mentioned other rogues who assailed her for the Kerykeion.~ DO ~IncrementGlobal("h_MageNumber","GLOBAL",1)~ GOTO MAGE_21
       ++ ~When the battle begun she was able to summon snakes under her command.~ DO ~IncrementGlobal("h_MageNumber","GLOBAL",1)~ GOTO MAGE_22
END

IF ~~ THEN BEGIN MAGE_21
   SAY ~That is curious news, indeed. None but our own should have known of this endeavor.~
       +~GlobalGT("h_MageNumber","GLOBAL",2)~+ ~That is all I have to report.~ GOTO MAGE_23
       ++ ~The mage appeared unstable. As if the Kerykeion had warped her mind.~ DO ~IncrementGlobal("h_MageNumber","GLOBAL",1)~ GOTO MAGE_20
       ++ ~When the battle begun she was able to summon snakes under her command.~ DO ~IncrementGlobal("h_MageNumber","GLOBAL",1)~ GOTO MAGE_22
END

IF ~~ THEN BEGIN MAGE_22
   SAY ~Ah, yes fascinating! My research spoke of this unique power, the gorgon's offspring. A true testament to the serpent gods.~
       +~GlobalGT("h_MageNumber","GLOBAL",2)~+ ~That is all I have to report.~ GOTO MAGE_23
       ++ ~The mage appeared unstable. As if the Kerykeion had warped her mind.~ DO ~IncrementGlobal("h_MageNumber","GLOBAL",1)~ GOTO MAGE_20
       ++ ~She mentioned other rogues who assailed her for the Kerykeion.~ DO ~IncrementGlobal("h_MageNumber","GLOBAL",1)~ GOTO MAGE_21
END

IF ~~ THEN BEGIN MAGE_23
   SAY ~Listen carefully. I have sensed a presence here of late, a stirring in the shadows not of our making. Eyes in the city, alien and unwelcomed.~ IF ~~ THEN GOTO MAGE_24
END

IF ~~ THEN BEGIN MAGE_24
   SAY ~With your report, it becomes evident that we are under scrutiny. An attempt to uncover our knowledge of the Kerykeion, perhaps. I will have my spies investigate this matter.~ IF ~~ THEN GOTO MAGE_25
END

IF ~~ THEN BEGIN MAGE_25
   SAY ~Attend to your regular duties, but excerise caution in your movements, especially within the city. Eye every shadow and question every face.~ IF ~~ THEN GOTO MAGE_26
END

IF ~~ THEN BEGIN MAGE_26
   SAY ~That is all for now, you are dismissed. I will summon you if needed.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",4)
   SetGlobal("h_RigaldoQuest","GLOBAL",6)
   AddJournalEntry(@212,QUEST_DONE)
   AddExperienceParty(800)
   MoveToPoint([922.1052])
   Face(SW)~ EXIT
 //EscapeAreaMove("h_guilda",922,1052,SW)~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",4)~ THEN BEGIN MAGE_27
   SAY ~Small talk won't serve you here. Attend to your duties and fulfill your role.~ IF ~~ THEN EXIT
END


          ///////////////////////////////////
          /////// Bombs over Beregost ///////
          ///////////////////////////////////


IF ~Global("h_BaldwinQuest","GLOBAL",5)~ THEN BEGIN BOMBS_0
   SAY ~<CHARNAME>! Ascend to the surface and eliminate all the Shadow Thieves from the city.~
       +~NumDead("h_sthiec",12) NumDead("h_thiefc",11) PartyHasItem("h_misc08")~+ ~I found these reports among the dead, but I can't decipher the code.~ GOTO NAGATE_1
       ++ ~Ariosh mentioned Thamuz leads their offensive. Do you know who he is?~ GOTO BOMBS_1
       ++ ~Why have they decided to attack us now?~ GOTO BOMBS_2
       ++ ~Understood.~ EXIT
END

IF ~~ THEN BEGIN BOMBS_1
   SAY ~Aye. Thamuz and I were once comrades. He's a lethal rogue, a master of stealth and deception. Do not underestimate him.~
       +~NumDead("h_sthiec",12) NumDead("h_thiefc",11) PartyHasItem("h_misc08")~+ ~I found these reports among the dead, but I can't decipher the code.~ GOTO NAGATE_1
       ++ ~Why have they decided to attack us now?~ GOTO BOMBS_2
       ++ ~Understood.~ EXIT
END

IF ~~ THEN BEGIN BOMBS_2
   SAY ~This is their first strike against me since my departure from Amn, many years ago. I fear the timing of their attack alludes me, as well.~ IF ~~ THEN GOTO BOMBS_3
END

IF ~~ THEN BEGIN BOMBS_3
   SAY ~It could be swift retribution for our carnival engagement. However, the more probable scenario is that they've caught wind of our progress toward the Kerykeion and aim to thwart us.~ IF ~~ THEN GOTO BOMBS_4
END

IF ~~ THEN BEGIN BOMBS_4
   SAY ~Regardless, we have more pressing matters at hand and should defer these speculations for another time.~
       +~NumDead("h_sthiec",12) NumDead("h_thiefc",11) PartyHasItem("h_misc08")~+ ~I found these reports among the dead, but I can't decipher the code.~ GOTO NAGATE_1   //10 7
       ++ ~Ariosh mentioned Thamuz leads their offensive. Do you know who he is?~ GOTO BOMBS_1
       ++ ~Understood.~ EXIT
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
   SAY ~Belay those orders! The attack was a feint! Their main forces head north, destined for the Wood of Sharp Teeth.~ IF ~~ THEN GOTO NAGATE_4
END

IF ~~ THEN BEGIN NAGATE_4
   SAY ~They are planning negotiations with a cadre of smugglers for the acquisition of a Kerykeion piece! Dammit, those bastards have been one step ahead of us this whole time!~ IF ~~ THEN GOTO NAGATE_5
END

IF ~~ THEN BEGIN NAGATE_5
   SAY ~<CHARNAME>, head north immediately. Avoid all confrontation. With haste, you might reach the smugglers before their main battalion arrives.~ IF ~~ THEN GOTO NAGATE_6
END

IF ~~ THEN BEGIN NAGATE_6
   SAY ~Their contact goes by the name Nagate, stationed at the ancient elven ruins. If this report is to be believed, that is where you'll find them.~ IF ~~ THEN GOTO NAGATE_7
END

IF ~~ THEN BEGIN NAGATE_7
   SAY ~Move out, soldier! Time is of the essence.~
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
   SAY ~You have your orders, now get to it!~ IF ~~ THEN EXIT
END


          ///////////////////////////////////
          //////// Return From Thamuz ///////
          ///////////////////////////////////


IF ~Global("h_BaldwinQuest","GLOBAL",7)~ THEN BEGIN THAMUZ_0
   SAY ~You've made it back alive I see. What is your report?~
       ++ ~I arrived just in time to witness Nagate's demise at the hands of Thamuz.~ GOTO THAMUZ_1
END

IF ~~ THEN BEGIN THAMUZ_1
   SAY ~And the Kerykeion?~
       ++ ~I bested Thamuz and secured the fragment. However, we had a lengthy exchange before our battle, and it raised some interesting questions.~ GOTO THAMUZ_2
END

IF ~~ THEN BEGIN THAMUZ_2
   SAY ~I see. Well, go on. If you've something to say, spit it out.~
       ++ ~Someone paid them a hefty sum to exterminate us from Beregost.~ GOTO THAMUZ_4
       ++ ~He asserted that no mortal possesses the capacity to wield the Kerykeion. To attempt it would imperil us all.~ GOTO THAMUZ_5
       ++ ~They've been keeping tabs on our every move since you founded the Gorgon's Eye.~ GOTO THAMUZ_9
       ++ ~I want to know your intentions with the Kerykeion.~ GOTO THAMUZ_7
END

IF ~~ THEN BEGIN THAMUZ_4
   SAY ~Is that do? I shall dispatch my agents to probe this allegation. Anything else?~
       ++ ~He asserted that no mortal possesses the capacity to wield the Kerykeion. To attempt it would imperil us all.~ GOTO THAMUZ_5
       ++ ~They've been keeping tabs on our every move since you founded the Gorgon's Eye.~ GOTO THAMUZ_9
       ++ ~I want to know your intentions with the Kerykeion.~ GOTO THAMUZ_7
       ++ ~That concludes my report.~ GOTO THAMUZ_10
END

IF ~~ THEN BEGIN THAMUZ_5
   SAY ~Thamuz, always the puppet-master, weaving his webs of deceit. This seems a feeble endeavor to sow discord between us, should his attempt on your life had failed.~ IF ~~ THEN GOTO THAMUZ_6
END

IF ~~ THEN BEGIN THAMUZ_6
   SAY ~It's sheer absurdity, for I've devoted my life to studying the Kerykeion. No mortal has ever even had the opportunity to wield it, rendering his claim baseless.~
       ++ ~Someone paid them a hefty sum to exterminate us from Beregost.~ GOTO THAMUZ_4
       ++ ~They've been keeping tabs on our every move since you foundedthe Gorgon's Eye.~ GOTO THAMUZ_9
       ++ ~I want to know your intentions with the Kerykeion.~ GOTO THAMUZ_7
       ++ ~That concludes my report.~ GOTO THAMUZ_10
END

IF ~~ THEN BEGIN THAMUZ_7
   SAY ~Since we are openly at war with the Shadow Thieves, there is no need for further secrecy regarding my intentions.~ IF ~~ THEN GOTO THAMUZ_8
END

IF ~~ THEN BEGIN THAMUZ_8
   SAY ~I shall use the Kerykeion to satisfy my vendetta against the Shadow Thieves. I will eliminate their leaders and appropriate their entire organization.~ IF ~~ THEN GOTO THAMUZ_8.5
END

IF ~~ THEN BEGIN THAMUZ_8.5
   SAY ~We will thrive and prosper, while they bear the weight of my vengeful wrath.~
       ++ ~Someone paid them a hefty sum to exterminate us from Beregost.~ GOTO THAMUZ_4
       ++ ~He asserted that no mortal possesses the capacity to wield the Kerykeion. To attempt it would imperil us all.~ GOTO THAMUZ_5
       ++ ~They've been keeping tabs on our every move since you foundedthe Gorgon's Eye.~ GOTO THAMUZ_9
       ++ ~That concludes my report.~ GOTO THAMUZ_10
END

IF ~~ THEN BEGIN THAMUZ_9
   SAY ~I've long harbored such suspicions. I surmised it was their hand that beat us to the witch in the Gibberling Mountains, and were the figures I observed skulking about town prior to the assault.~
       ++ ~Someone paid them a hefty sum to exterminate us from Beregost.~ GOTO THAMUZ_4
       ++ ~He asserted that no mortal possesses the capacity to wield the Kerykeion. To attempt it would imperil us all.~ GOTO THAMUZ_5
       ++ ~I want to know your intentions with the Kerykeion.~ GOTO THAMUZ_7
       ++ ~That concludes my report.~ GOTO THAMUZ_10
END

IF ~~ THEN BEGIN THAMUZ_10
   SAY ~Be ready to receive summons for additional orders. Until then, return to your regular duties within the guild.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",8)
   SetGlobal("h_RigaldoQuest","GLOBAL",15)
   SetGlobal("h_LiedelQuest","GLOBAL",3)
   SetGlobal("h_SecondRiddle","GLOBAL",1)
   SetGlobal("h_MerediaQuest","GLOBAL",1)
   ActionOverride("h_ilenac",EscapeArea())
   AddJournalEntry(@217,QUEST_DONE)
   TakePartyItem("h_misc02")
   DestroyItem("h_misc02")
   AddExperienceParty(800)~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",8) NumItemsPartyLT("h_misc13",1)~ THEN BEGIN THAMUZ_11
   SAY ~Small talk won't serve you here. Attend to your duties and fulfill your role.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc14")~ THEN BEGIN BETRAY_0
   SAY ~Small talk won't serve you here. Attend to your duties and fulfill your role.~
       ++ ~I have found the last piece of the Kerykeion.~ GOTO BETRAY_1
END

IF ~~ THEN BEGIN BETRAY_1
   SAY ~You, what? How is that possible! Speak, quickly!~
       ++ ~I found it among the remains of some Shadow Thieves I killed on my last mission.~ GOTO BETRAY_2
       ++ ~It was hidden in a chest that I picked at the Nashkel carnival.~ GOTO BETRAY_2
       ++ ~I relieved it from the corpse of a powerful mage, who had the misfortune of crossing me.~ GOTO BETRAY_2
       ++ ~I purchased it from a smuggler near Baldur's Gate.~ GOTO BETRAY_2
END

IF ~~ THEN BEGIN BETRAY_2
   SAY ~Hand it over, let me have a closer look.~ IF ~~ THEN GOTO BETRAY_3
END

IF ~~ THEN BEGIN BETRAY_3
   SAY ~It is almost unbelievable, is it not? That fate would bring you here, into my den, and stay my hand from killing you.~ IF ~~ THEN GOTO BETRAY_4
END

IF ~~ THEN BEGIN BETRAY_4
   SAY ~You have done a tremendous service here, <CHARNAME>. I will see to it that you recieve a fitting reward.~ IF ~~ THEN GOTO BETRAY_5
END

IF ~~ THEN BEGIN BETRAY_5
   SAY ~There is still much work to be done, however. I need time to prepare the necessary incantations for the fusion process.~ IF ~~ THEN GOTO BETRAY_6
END

IF ~~ THEN BEGIN BETRAY_6
   SAY ~Tie up any loose ends you have around the guild and complete your missions, but don't stray too far. I'll need all hands on standy for the coming trials.~
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
   SAY ~Small talk won't serve you here. Attend to your duties and fulfill your role.~
       ++ ~I was given this missive by one the Snake Heads, before he succumbed to his injuries.~ GOTO GERARD_1
END

IF ~~ THEN BEGIN GERARD_1
   SAY ~Give it here, quickly!~ IF ~~ THEN GOTO GERARD_2
END

IF ~~ THEN BEGIN GERARD_2
   SAY ~...~ IF ~~ THEN GOTO GERARD_3
END

IF ~~ THEN BEGIN GERARD_3
   SAY ~What! Oh, he is a dead man!~  IF ~~ THEN GOTO GERARD_4
END

IF ~~ THEN BEGIN GERARD_4
   SAY ~Beregost, the city of cowards, and their Lord of Piss-all, Gerard Travenhurst, daring to defy me? Betraying us to the Shadow Thieves, and offering the final shard of the Kerykeion as recompense!~ IF ~~ THEN GOTO GERARD_5
END

IF ~~ THEN BEGIN GERARD_5
   SAY ~No honor, no loyalty. These are treacherous times, <CHARNAME>, and they demand a reckoning.~
       ++ ~It's clear Gerard has chosen his path. He'll face the consequences of his actions soon enough.~ GOTO GERARD_6
       ++ ~We shouldn't underestimate him. It's possible we're being led into a trap.~ GOTO GERARD_7
       ++ ~Regardless of Gerard's actions, we should prioritize retrieving the Kerykeion shard.~ GOTO GERARD_8
END

IF ~~ THEN BEGIN GERARD_6
   SAY ~Well said, <CHARNAME>. Justice will be swift, and Gerard shall pay the price for his betrayal.~ IF ~~ THEN GOTO GERARD_8
END

IF ~~ THEN BEGIN GERARD_7
   SAY ~Then I shall disarm it. The Kerykeion will be mine, and with it, I will obliterate all those who stand in my way.~ IF ~~ THEN GOTO GERARD_8
END

IF ~~ THEN BEGIN GERARD_8
   SAY ~Yes. The Kerykeion is our key to power and leverage, and with it, we shall impart a lesson they won't soon forget.~ IF ~~ THEN GOTO GERARD_9
END

IF ~~ THEN BEGIN GERARD_9
   SAY ~Come, let us depart for Gerard's manor at once. The grand finale awaits, and retribution will be served.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",9)
   SetGlobal("h_ShadowWar","GLOBAL",8)
   SetGlobal("h_SpawnBaldwin","GLOBAL",1)
   AddJournalEntry(@218,QUEST)
   EscapeArea()~ EXIT
END