BEGIN h_procud

IF ~Global("h_ProcusQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Aye, you must be <CHARNAME>. You've got some reputation in the guild, I'll give ya that. Welcome to Nashkel.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~The name's Procus. I'll be overseein' matters here in Nashkel for the expansion of the Gorgon's Eye.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Now, you might be wonderin' why we've set our sights on this little hamlet. Well, you see, Nashkel's a quiet sort of place, nestled on the edge of Amn. But it's got potential, it does.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~A carnival, a bustling trade route, and a distinct lack of those meddling Flaming Fist types. This is where we make our move, and expand our reach.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Now, peak that tent just a stone's throw away. Our future base of operations, ripe for the taking. However, there's a certain merchant in there who's proving rather... resistant to our advances.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~You've got options. Smooth-talk him out, give him a little scare, or if you're feeling bold, well... you know what to do.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Once that's sorted, we'll have a proper foothold in this place. Now then, any questions before you set off?~
       ++ ~What's the overall plan for expanding our influence here in Nashkel?~ GOTO 7
       ++ ~What's the current situation with the Shadow Thieves in this area? Should we be concerned about them?~ GOTO 11
       ++ ~Can you provide any additional information about Nashkel, its locals, or the carnival?~ GOTO 15
       ++ ~I'll get to work on securing that base.~ GOTO 18
END

IF ~~ THEN BEGIN 7
   SAY ~Well, the plan is to establish a firm foothold in this strategic location. Nashkel sits at a crossroads of trade routes and is known for its valuable gem mines.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Our aim is to capitalize on these resources and establish a network of operations.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~We'll be targeting key figures, manipulating local markets, and ensuring our presence goes unnoticed by those who might meddle in our affairs.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~The end goal is to make Nashkel a profitable hub for our endeavors.~
       ++ ~What's the current situation with the Shadow Thieves in this area? Should we be concerned about them?~ GOTO 11
       ++ ~Can you provide any additional information about Nashkel, its locals, or the carnival?~ GOTO 15
       ++ ~I'll get to work on securing that base.~ GOTO 18
END

IF ~~ THEN BEGIN 11
   SAY ~The Shadow Thieves have their claws deep in Athkatla, but up here in Nashkel, they're less of a concern.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~This town, on the outskirts of Amn and separated by the Cloud Peaks, is not their primary stomping ground. However, we must remain vigilant.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~Their reach can be long, and it wouldn't surprise me if they took an interest in our activities.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~Either way, we will operate under the assumption that they are aware of our presence. It's best to prepare for any eventuality.~
       ++ ~What's the overall plan for expanding our influence here in Nashkel?~ GOTO 7
       ++ ~Can you provide any additional information about Nashkel, its locals, or the carnival?~ GOTO 15
       ++ ~I'll get to work on securing that base.~ GOTO 18
END

IF ~~ THEN BEGIN 15
   SAY ~Nashkel is a quiet mining town known for its rich gem deposits. The locals tend to keep to themselves, focused on their work.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~The carnival, on the other hand, is a curious affair. It draws in folks from all around, creating a perfect cover for our operations.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~Keep an eye out for interesting characters. You never know who might be a useful ally... or a potential target. Just remember to blend in, and don't draw undue attention to yourself.~
       ++ ~What's the overall plan for expanding our influence here in Nashkel?~ GOTO 7
       ++ ~What's the current situation with the Shadow Thieves in this area? Should we be concerned about them?~ GOTO 11
       ++ ~I'll get to work on securing that base.~ GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~Good. Remember, a swift and quiet operation is what we aim for. Get that tent under our control, and we'll have a solid foundation to build on. Go on now, make your mark.~
IF ~~ THEN DO ~
   SetGlobal("h_ProcusQuest","GLOBAL",1)
   SetGlobal("h_GuildThieves","GLOBAL",5)
   AddJournalEntry(@339,QUEST)~ EXIT
END

IF ~Global("h_ProcusQuest","GLOBAL",1)~ THEN BEGIN 19
   SAY ~It's this tent, you see, the one with the armor merchant plying his wares inside.~ IF ~~ THEN EXIT
END

IF ~Global("h_ProcusQuest","GLOBAL",2)~ THEN BEGIN 20
   SAY ~Well, <CHARNAME>, I see you've returned. What news do you bring from the carnival? Has our plan to secure the tent come to fruition?~
       ++ ~The deed is done, Procus. The tent is ours now, clear and ready for our operations.~ GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~Excellent work. You've proven yourself a capable asset to our cause. Now, let's ensure everything is in order.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~Meet me in the tent, and we'll discuss the next steps. There's much to be done, and your skills will be invaluable in the days ahead.~
IF ~~ THEN DO ~
   SetGlobal("h_ProcusQuest","GLOBAL",3)
   SetGlobal("h_SpawnProcus","GLOBAL",3)
   SetGlobal("h_SpawnMerchant","GLOBAL",1)
   CreateCreature("h_tguarc",[3197.2699],S)
   AddJournalEntry(@342,QUEST)
   AddExperienceParty(600)
   EscapeArea()~ EXIT
END

IF ~Global("h_ProcusQuest","GLOBAL",3)~ THEN BEGIN SEC_0
   SAY ~Aye, <CHARNAME>, this here's a proper spot for us, it is. A sweet bit of real estate. Plenty of eyes on it, but none the wiser about our doings, see?~ IF ~~ THEN GOTO SEC_1
END

IF ~~ THEN BEGIN SEC_1
   SAY ~Take a gander around. We've established ourselves quite nicely, I reckon.~ IF ~~ THEN GOTO SEC_2
END

IF ~~ THEN BEGIN SEC_2
   SAY ~There's a keen-eyed lad stationed at the door, in case any unwanted guests get curious. And see that one over there? A right skilled fence, ready to help us peddle our goods.~ IF ~~ THEN GOTO SEC_3
END

IF ~~ THEN BEGIN SEC_3
   SAY ~Now, as for our next bit of business, there's some lads about the area, freelancin' their way through life. Good with their hands, but lackin' direction, if you catch my drift.~ IF ~~ THEN GOTO SEC_4
END

IF ~~ THEN BEGIN SEC_4
   SAY ~Footpads, we call 'em. Petty crimes, bit of this, bit of that. They're ripe for the takin', they just don't know it yet.~ IF ~~ THEN GOTO SEC_5
END

IF ~~ THEN BEGIN SEC_5
   SAY ~We need 'em, <CHARNAME>. Could be right handy in expandin' our reach. You'll need to find 'em, talk their language, and let 'em see the light, so to speak.~ IF ~~ THEN GOTO SEC_6
END

IF ~~ THEN BEGIN SEC_6
   SAY ~The leader of the crew answers to the name Selena Stardancer, a clever one she is. Remember that, might come in handy.~
       ++ ~What should I do if negotiations turn sideways?~ GOTO SEC_7
       ++ ~Anything else you can tell me about Selena?~ GOTO SEC_8
       ++ ~Consider it done. Where can I find Selena and her crew?~ GOTO SEC_14
END

IF ~~ THEN BEGIN SEC_7
   SAY ~If it comes to that, and they won't see reason, well... take whatever measures necessary to ensure they won't be a problem for us in the future.~
       ++ ~Anything else you can tell me about Selena?~ GOTO SEC_8
       ++ ~Consider it done. Where can I find Selena and her crew?~ GOTO SEC_14
END

IF ~~ THEN BEGIN SEC_8
   SAY ~Selena Stardancer, a name that carries quite the weight in certain circles. She hails from the Pirate Isles, a place known for producing the finest swashbucklers.~ IF ~~ THEN GOTO SEC_9
END

IF ~~ THEN BEGIN SEC_9
   SAY ~Legend has it, she once single-handedly outsmarted a whole fleet of naval vessels sent by a rival pirate lord.~ IF ~~ THEN GOTO SEC_10
END

IF ~~ THEN BEGIN SEC_10
   SAY ~With a clever ruse and a touch of daring, she lured them into treacherous waters, causing a spectacular chain reaction of collisions and chaos.~ IF ~~ THEN GOTO SEC_11
END

IF ~~ THEN BEGIN SEC_11
   SAY ~It was said to be a sight to behold, leaving her reputation firmly etched in the annals of maritime infamy.~ IF ~~ THEN GOTO SEC_12
END

IF ~~ THEN BEGIN SEC_12
   SAY ~Selena's a cunning one, <CHARNAME>, with a wit as sharp as her blade. She knows how to handle herself in any situation, and she's got an uncanny knack for sniffing out profitable opportunities.~ IF ~~ THEN GOTO SEC_13
END
                   
IF ~~ THEN BEGIN SEC_13
   SAY ~Earning her respect won't be easy, but once you do, we'll have one of the shrewdest rogues in the realms on our side.~
       ++ ~What should I do if negotiations turn sideways?~ GOTO SEC_7
       ++ ~Consider it done. Where can I find Selena and her crew?~ GOTO SEC_14
END

IF ~~ THEN BEGIN SEC_14
   SAY ~From what I gather, they're partial to loitering behind the lotus tents. That's where you're likely to catch them in their element.~ IF ~~ THEN GOTO SEC_15
END

IF ~~ THEN BEGIN SEC_15
   SAY ~Off you go, then. Find our potential recruits, and let 'em know we've got a proper venture for folks like them.~
IF ~~ THEN DO ~
   SetGlobal("h_ProcusQuest","GLOBAL",4)
   SetGlobal("h_SpawnSelena","GLOBAL",1)
   SetGlobal("h_SpawnVitiare","GLOBAL",1)
   AddJournalEntry(@343,QUEST)~ EXIT
END

IF ~Global("h_ProcusQuest","GLOBAL",4)~ THEN BEGIN SEC_16
   SAY ~Remember, persuasion's the key. Show 'em the path to a more profitable venture. If all else fails, trust your instincts. They've led you this far, after all.~ IF ~~ THEN EXIT
END

IF ~Global("h_FightSelena","GLOBAL",0) Global("h_ProcusQuest","GLOBAL",5)~ THEN BEGIN THIRD_0
   SAY ~You've made an impact, <CHARNAME>. With Selena and her crew on our side, we're set to thrive here, all while keeping under the radar. No grandiose attention, just the slow and steady acquisition of power.~ IF ~~ THEN GOTO THIRD_1
END

IF ~Global("h_FightSelena","GLOBAL",1) Global("h_ProcusQuest","GLOBAL",5)~ THEN BEGIN THIRD_01
   SAY ~Seems like talkin' didn't do the trick, eh? A shame, really. Would've been a tidy partnership.~ IF ~~ THEN GOTO THIRD_02
END

IF ~~ THEN BEGIN THIRD_02
   SAY ~But hey, with them out of the picture, we'll have a bit more breathing room in these parts. Could work in our favor, in the end.~ IF ~~ THEN GOTO THIRD_03
END

IF ~~ THEN BEGIN THIRD_03
   SAY ~You've made an impact, <CHARNAME>. With Selena and her crew no longer a threat, we're set to thrive here, all while keeping under the radar. No grandiose attention, just the slow and steady acquisition of power.~ IF ~~ THEN GOTO THIRD_1
END

IF ~~ THEN BEGIN THIRD_1
   SAY ~But every venture needs a bit of gold to grease the wheels, you know, and I've got a few marks in mind. All ripe for the taking.~ IF ~~ THEN GOTO THIRD_2
END

IF ~~ THEN BEGIN THIRD_2
   SAY ~There is an alchemist here, a potion merchant, setup in one of the tents. He's been reaping hefty profits from the carnival's visitors.~ IF ~~ THEN GOTO THIRD_3
END

IF ~~ THEN BEGIN THIRD_3
   SAY ~He's become a bit careless with his earnings, leaving a substantial sum of gold in a locked chest within his tent.~ IF ~~ THEN GOTO THIRD_4
END

IF ~~ THEN BEGIN THIRD_4
   SAY ~Next on the list is the large manor in the heart of Nashkel. Word is, their youngest daughter's been squirreling away coins for an elopement.~ IF ~~ THEN GOTO THIRD_5
END

IF ~~ THEN BEGIN THIRD_5
   SAY ~Find her room on the second floor, past a hall adorned with chandeliers. The stash is waiting for ya, within an ornate chest.~ IF ~~ THEN GOTO THIRD_6
END

IF ~~ THEN BEGIN THIRD_6
   SAY ~Lastly, the Nashkel Inn. It's known for its discreet ambiance, perfect for our endeavors.~ IF ~~ THEN GOTO THIRD_7
END

IF ~~ THEN BEGIN THIRD_7
   SAY ~Access the bartender's quarters through a concealed door at the back. The coins are hidden in a false bottom of a wine crate.~ IF ~~ THEN GOTO THIRD_8
END

IF ~~ THEN BEGIN THIRD_8
   SAY ~Stealth and shadows, <CHARNAME>, you know the drill.~
       ++ ~These marks won't know what hit 'em.~ GOTO THIRD_9
       ++ ~Got it. I'll return when I've secured the loot.~ GOTO THIRD_9
END

IF ~~ THEN BEGIN THIRD_9
   SAY ~Keep a low profile, and return here when you've got the spoils. We're relying on your expertise, my friend.~
IF ~~ THEN DO ~
   SetGlobal("h_ProcusQuest","GLOBAL",6)
   SetGlobal("h_AddCoinPotion","GLOBAL",1)
   SetGlobal("h_AddCoinManor","GLOBAL",1)
   SetGlobal("h_AddCoinInn","GLOBAL",1)
   AddJournalEntry(@347,QUEST)~ EXIT
END

IF ~Global("h_ProcusQuest","GLOBAL",6)~ THEN BEGIN THIRD_10
   SAY ~Keep a low profile, and return here when you've got the spoils. We're relying on your expertise, my friend.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~NumItemsParty("h_misc28",3)~ THEN BEGIN THIRD_11
   SAY ~Impressive haul, those bags. You've got a knack for this, no doubt.~ IF ~~ THEN GOTO THIRD_12
END

IF ~~ THEN BEGIN THIRD_12
   SAY ~This gold, it ain't just shiny coins, you know, it's the foundation of our little empire.~ IF ~~ THEN GOTO THIRD_13
END

IF ~~ THEN BEGIN THIRD_13
   SAY ~We've got a solid base of operations now, a crew that can hold its own, and a tidy sum of gold to kick things off. Thanks to your efforts, we're poised for success.~ IF ~~ THEN GOTO THIRD_14
END

IF ~~ THEN BEGIN THIRD_14
   SAY ~Rigaldo will be itchin' to hear about our success, so make your way back and give him the news. We're on the edge of something big, my friend.~
IF ~~ THEN DO ~
   SetGlobal("h_ProcusQuest","GLOBAL",7)
   TakePartyItemAll("h_misc28")
   DestroyItem("h_misc28")
   AddJournalEntry(@348,QUEST)
   AddExperienceParty(600)~ EXIT
END
IF ~Global("h_ProcusQuest","GLOBAL",7)~ THEN BEGIN THIRD_10
   SAY ~Rigaldo will be itchin' to hear about our success, so make your way back and give him the news. We're on the edge of something big, my friend.~ IF ~~ THEN EXIT
END

IF ~Global("h_ProcusQuest","GLOBAL",8)~ THEN BEGIN THIRD_11
   SAY ~Things are going steady down here. The crew is settling in, and our operations are gaining traction. We're making strides in Nashkel, thanks to your efforts.~ IF ~~ THEN EXIT
END


