BEGIN h_rigald

IF ~Global("h_RigaldoQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Mind yourself now, or see you'll leave with less than you came.~ IF ~~ THEN EXIT
END

          ///////////////////////////////////////
          ////////// The Taveler's Gem //////////
          ///////////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",1)~ THEN BEGIN GEM_1
   SAY ~You must be one of Baldwin's new recuits then, aye? My name's Rigaldo and I'm the head pickpocket around here. I'll be your superior officer and I expect you to address me as such.~ IF ~~ THEN GOTO GEM_2
END

IF ~~ THEN BEGIN GEM_2
   SAY ~You will be reporting to me for all of your guild assignments as they become available. My expectations are high and I trust all my rogues to deliver. Do you have any questions before we begin?~
       ++ ~Why do you and Baldwin look like Shadow Thieves?~ GOTO GEM_3
       ++ ~What if I am tasked with doing something that I do not agree with?~ GOTO GEM_5
       ++ ~None, I eagerly await my first mission.~ GOTO GEM_6
END

IF ~~ THEN BEGIN GEM_3
   SAY ~And how would you know what a Shadow Thief looks like, eh?~
       ++ ~Only from books and tales of their exploits. I grew up studying in Candlekeep.~ GOTO GEM_4
END

IF ~~ THEN BEGIN GEM_4
   SAY ~I doubt any book would have reliable words on such a secretive organization, but I can't deny your perception. Indeed, Baldwin and I were once members of the Shadow Thieves, but we no longer share that affiliation.~
       ++ ~What if I am tasked with doing something that I do not agree with?~ GOTO GEM_5
       ++ ~I am ready to recieve my first mission.~ GOTO GEM_6
END

IF ~~ THEN BEGIN GEM_5
   SAY ~Any unwillingness to follow orders will result in the immediate conclusion of your enlistment.~
       ++ ~Why do you and Baldwin look like Shadow Thieves?~ GOTO GEM_3
       ++ ~I am ready to recieve my first mission.~ GOTO GEM_6
END

IF ~~ THEN BEGIN GEM_6
   SAY ~Excellent. I will be sending you on a trial run of sorts so that I can properly gauge your abilities.~
       ++ ~I can handle any test of yours. What is it you would have me do?~ GOTO GEM_7
       ++ ~On second thought, I don't really have time for this right now.~ EXIT
END

IF ~~ THEN BEGIN GEM_7
   SAY ~There is a dealer of gems and other various trinkets who is currently vacating a room at Feldpost's Inn. He is on his way to the Nashkel Carnival to present his wares, so he won't be staying here for much longer.~ IF ~~ THEN GOTO GEM_8
END

IF ~~ THEN BEGIN GEM_8
   SAY ~Our intel suggests he likes to keep his most prized item on his person at all times. Your task is to go and relieve him of whatever that may be.~
       ++ ~Sounds simple enough. Is there anything else that I should know?~ GOTO GEM_9
END

IF ~~ THEN BEGIN GEM_9
   SAY ~He enjoys his privacy above all else and won't have his guards accompanying him during his stay. This should be an easy in-and-out for any thief.~ IF ~~ THEN GOTO GEM_10
END

IF ~~ THEN BEGIN GEM_10
   SAY ~It won't be long before he leaves for the carnival, so best not to delay your efforts.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",2)
   AddJournalEntry(@310,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",2)~ THEN BEGIN GEM_11
   SAY ~Welcome back my little friends. How did you fair on your first deed?~
       +~PartyHasItem("h_misc04")~+ ~Well enough I'd say for such an easy task. I was able to procure this quite expensive looking diamond.~ GOTO GEM_12
       ++ ~I have a few other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN GEM_12
   SAY ~Yes, well, better to acquaint your feet to the water before diving in. Congratulations on completing your first mission! There's no better thrill than the rush of cutting a purse now is there?~ IF ~~ THEN GOTO GEM_13
END

IF ~~ THEN BEGIN GEM_13
   SAY ~You have proven to possess the skills necessary to succeed on your own merits, and without these instincts, a thief is nothing.~ IF ~~ THEN GOTO GEM_14
END

IF ~~ THEN BEGIN GEM_14
   SAY ~However, we do have certain tools we can use to enhance our capabilities. We don't depend on them, but instead use them to compliment our existing skills.~ IF ~~ THEN GOTO GEM_15
END

IF ~~ THEN BEGIN GEM_15
   SAY ~With that being said, I shall reward you with this ring. It is from a series that I have crafted myself. When used properly, it can sharpen your sleight of hand and make easy work of your marks while out in the field.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",3)
   AddJournalEntry(@311,QUEST_DONE)
   TakePartyItem("h_misc04")
   DestroyItem("h_misc04")
   GiveItemCreate("h_ring03",LastTalkedToBy,0,0,0)
   AddExperienceParty(300)~ EXIT
END


          /////////////////////////////////////
          /////// Mugging in the Manor ////////
          /////////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",3)~ THEN BEGIN GERARD_1
   SAY ~If you are ready to begin, I have another assignment for you.~
       ++ ~I am ready for my next mission.~ GOTO GERARD_2
       ++ ~I have a few other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN GERARD_2
   SAY ~I am sure you're aware of the large manor here in northern Beregost, yes? Well its proprietor, Gerard Travenhurst, pays us to ensure that his house remains safe and... unburgled.~ IF ~~ THEN GOTO GERARD_3
END

IF ~~ THEN BEGIN GERARD_3
   SAY ~However, in a rather rash act of rebellion, Mr. Travenhurst has not only failed to pay us but has hired extra security at his premises.~ IF ~~ THEN GOTO GERARD_4
END

IF ~~ THEN BEGIN GERARD_4
   SAY ~I would have you go down and straighten this man out. Demand he hand over his family pendant and resume his usual payments. Only then will we forgive his discourtesy.~
       ++ ~Why just his pendant, is it that expensive of a piece?~ GOTO GERARD_5
       ++ ~I dislike the task, but I understand you have a reputation to maintain.~ GOTO GERARD_6
       ++ ~What should I do if he refuses to hand it over?~ GOTO GERARD_7
       ++ ~Good as done. I'll return when I have the pendant in my possession.~ GOTO GERARD_7
END

IF ~~ THEN BEGIN GERARD_5
   SAY ~The pendant's worth is measured in sentiment, as opposed to coin. This is his most prized family heirloom and is an obvious way to get our message across.~
       ++ ~I dislike the task, but I understand you have a reputation to maintain.~ GOTO GERARD_6
       ++ ~What should I do if he refuses to hand it over?~ GOTO GERARD_7
       ++ ~I'll return when I have the pendant in my possession.~ GOTO GERARD_7
END

IF ~~ THEN BEGIN GERARD_6
   SAY ~*We* have a reputation to maintain. Or did you forget you are among our ranks? Off with you now, and don't return empty-handed.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",4)
   AddJournalEntry(@312,QUEST)~ EXIT
END

IF ~~ THEN BEGIN GERARD_7
   SAY ~For a helpless noble, he does have quite the spirit. If he doesn't respond to threats, then violence may be the only answer.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",4)
   AddJournalEntry(@312,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",4)~ THEN BEGIN GERARD_8
   SAY ~Well? What did good ol' Gerard have to say for himself? Were you able to acquire his pendant?~
       +~PartyHasItem("h_misc05")~+ ~Here it is. Gerard will be resuming his payments and his guards will no longer be an issue.~ GOTO GERARD_9
       ++ ~I have a few other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN GERARD_9
   SAY ~I must admit, upon first glance I didn't take you for the ruffian sort, but you've certainly demonstrated otherwise. Here is your payment for the task.~ IF ~~ THEN GOTO GERARD_10
END

IF ~~ THEN BEGIN GERARD_10
   SAY ~Congratulations, <CHARNAME>. Your trial phase has concluded and you have been promoted to a full-fledged member of the Gorgon's Eye.~ IF ~~ THEN GOTO GERARD_11
END

IF ~~ THEN BEGIN GERARD_11
   SAY ~You may now speak with Liedel for a current list of all our active bounties. Other guild members may have odd jobs for you to pick up as well.~ IF ~~ THEN GOTO GERARD_12
END

IF ~~ THEN BEGIN GERARD_12
   SAY ~Also, before you depart, Baldwin wishes a word with you. I wouldn't keep him waiting.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",5)
   SetGlobal("h_BaldwinQuest","GLOBAL",2)
   SetGlobal("h_LiedelQuest","GLOBAL",1)
   SetGlobal("h_GilbaldQuest","GLOBAL",1)
   SetGlobal("h_ZedaRiddle","GLOBAL",1)
   AddJournalEntry(@314,QUEST_DONE)
   TakePartyItem("h_misc05")
   DestroyItem("h_misc05")
   GiveGoldForce(200)
   AddExperienceParty(300)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",5)~ THEN BEGIN GERARD_13
   SAY ~Baldwin wishes a word with you. Finish your business with him and then return to me for your next assignment.~ IF ~~ THEN EXIT
END

          /////////////////////////////////////
          ////////// Buried Treasure //////////
          /////////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",6)~ THEN BEGIN KARP_1
   SAY ~Ah, my friends! Back for another venture in the pursuit of coin, are we? Well, a strange report from Nashkel just reached my ear and I'll be sending you down to investigate.~ IF ~~ THEN GOTO KARP_2
END

IF ~~ THEN BEGIN KARP_2
   SAY ~A lass by the name of Karp, has mysteriously found several magical items buried on her farmland this past season.~ IF ~~ THEN GOTO KARP_3
END

IF ~~ THEN BEGIN KARP_3
   SAY ~Her latest find was a pair of rings that are to be sold to a man from Ulgoth's Beard, who is traveling down now as we speak.~ IF ~~ THEN GOTO KARP_4
END

IF ~~ THEN BEGIN KARP_4
   SAY ~Our intelligence has reported back two things of note. First, she has been auctioning these items off through fences and smugglers, instead of selling them to storefronts on the up and up.~ IF ~~ THEN GOTO KARP_5
END

IF ~~ THEN BEGIN KARP_5
   SAY ~Second, and giving probable cause for her secretive deals, she is withholding all of her findings from her husband, the poor sod.~ IF ~~ THEN GOTO KARP_6
END

IF ~~ THEN BEGIN KARP_6
   SAY ~I will have you travel south and obtain these rings in a manner that is fitting to your judgement.~ IF ~~ THEN GOTO KARP_7
END

IF ~~ THEN BEGIN KARP_7
   SAY ~You could extort the woman with threat of reveal to her husband, or you could put on a ruse, feigning as the man from Ulgoth's Beard. You could also just intimidate her into giving them up, if you've the brawn for it.~ IF ~~ THEN GOTO KARP_8
END

IF ~~ THEN BEGIN KARP_8
   SAY ~If you wish to skip all the drudgery, then you could simply pick the rings off her as well.~
       ++ ~I'm not against using blackmail. If she's willing to engage in shady dealings behind her husband's back, then she may not be so innocent herself.~ GOTO KARP_9
       ++ ~Acting as the buyer sounds like good fun and a chance for me to use my charm and charisma.~ GOTO KARP_9
       ++ ~I think I'll just practice my thieving skills and steal the rings off her when she's not looking.~ GOTO KARP_9
       ++ ~I'm not sure what I will do yet until I speak with this Karp first.~ GOTO KARP_9
END

IF ~~ THEN BEGIN KARP_9
   SAY ~Yes, well, if you manage to procure both of theses rings before their eventual sale, then I will allow you to keep one as compensation for your efforts.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",7)
   AddJournalEntry(@315,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",7)~ THEN BEGIN KARP_10
   SAY ~If you're speaking to me then I assume you are ready to make your report and have the requested items in your possession.~
       +~PartyHasItem("h_ring05")~+ ~I do. I was able to procure both of her rings.~ GOTO KARP_11
       ++ ~I have a few other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN KARP_11
   SAY ~Excellent! You have certainly earned your reward. As we agreed, you may keep one of them to do with as you wish.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",8)
   AddJournalEntry(@317,QUEST_DONE)
   TakePartyItem("h_ring05")
   DestroyItem("h_ring05")
   AddExperienceParty(600)~ EXIT
END

          ////////////////////////////////////////////
          ////////// It's All Fun and Games //////////
          ////////////////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",8)~ THEN BEGIN CARNIVAL_1
   SAY ~We are planning an extensive operation at the Naskel Carnival and I want you in charge of some preparatory work. I will be assigning you several different targets, so prepare yourself accordingly.~ IF ~~ THEN GOTO CARNIVAL_2
END

IF ~~ THEN BEGIN CARNIVAL_2
   SAY ~There are two large tents where all their gambling winnings and licenses are stored. Your targets are the gamesmen inside who will all be armed with stun darts. Your task is to sneak in quietly and disarm them of their weapons.~ IF ~~ THEN GOTO CARNIVAL_3
END

IF ~~ THEN BEGIN CARNIVAL_3
   SAY ~Ariosh and his rogues will be stationed behind the westernmost tent, awaiting your arrival. After you've retrieved the weapons, head to the rendezvous point and distribute the darts among them.~ IF ~~ THEN GOTO CARNIVAL_4
END

IF ~~ THEN BEGIN CARNIVAL_4
   SAY ~We will use their own weapons against them.~ IF ~~ THEN GOTO CARNIVAL_5
END

IF ~~ THEN BEGIN CARNIVAL_5
   SAY ~They will grab the licenses and as much coin as they can carry, while you report back to me for further instruction. If everything goes accordingly, then we'll all be a lot richer by days end.~
       ++ ~What exactly do we need the gambling licenses for?~ GOTO CARNIVAL_6
       ++ ~Isn't that Shadow Thief territoy? What if they find out about what we are doing?~ GOTO CARNIVAL_7
       ++ ~Understood. I'll be back shortly.~ GOTO CARNIVAL_8
END

IF ~~ THEN BEGIN CARNIVAL_6
   SAY ~They will be used to expand and legitimize some of our operations in Amn, making their appropriation our prime objective.~
       ++ ~Isn't that in Shadow Thief territoy? What if they find out about what we are doing?~ GOTO CARNIVAL_7
       ++ ~Understood. I'll be back shortly.~ GOTO CARNIVAL_8
END

IF ~~ THEN BEGIN CARNIVAL_7
   SAY ~They most certainly will, you can be sure of that. It is unnerving, I'll admit, but these orders come directly from Baldwin.~ IF ~~ THEN GOTO CARNIVAL_7.5
END

IF ~~ THEN BEGIN CARNIVAL_7.5
   SAY ~Don't worry yourself too much, though. The Shadow Thieves have surprisingly little stake in the gambling trade and the bulk of their forces tend to remain below the Cloud Peaks.~
       ++ ~What exactly do we need the gambling licenses for?~ GOTO CARNIVAL_6
       ++ ~Understood. I'll be back shortly.~ GOTO CARNIVAL_8
END

IF ~~ THEN BEGIN CARNIVAL_8
   SAY ~As you can see we are entrusting you with more responsibility in this mission. This will certainly test your skills as a pickpocket and if successful, will increase your standing within the guild.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",9)
   SetGlobal("h_GuildThieves","GLOBAL",2)
   AddJournalEntry(@321,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN CARNIVAL_9
   SAY ~This is a sizable operation and there is no room for error. Relieve every gamesman of their weapons before informing the men. They will take it from there.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",10)~ THEN BEGIN CARNIVAL_10
   SAY ~I am already aware of your deed and the outcome could not have been more favorable. With the gamesmen unarmed, the mission was a complete success.~ IF ~~ THEN GOTO CARNIVAL_11
END

IF ~~ THEN BEGIN CARNIVAL_11
   SAY ~With the licenses in our possession, we can now begin preparations for our expansion further south. Your reward is well earned.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",11)
   AddJournalEntry(@323,QUEST_DONE)
   GiveGoldForce(800)
   AddExperienceParty(600)~ EXIT
END


          ////////////////////////////////////////////
          ////////// Borland's Spicy Secret //////////
          ////////////////////////////////////////////


IF ~GlobalLT("CHAPTER","GLOBAL",3)
   Global("h_RigaldoQuest","GLOBAL",11)~ THEN BEGIN CHAPTER_1
   SAY ~No new leads as of yet. Ask around the guild, someone may have some work for you in the meantime.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("CHAPTER","GLOBAL",2)
   Global("h_RigaldoQuest","GLOBAL",11)
   Global("h_LiedelQuest","GLOBAL",1)~ THEN BEGIN CHAPTER_2
   SAY ~No new leads as of yet. Ask around the guild, someone may have some work for you in the meantime.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("CHAPTER","GLOBAL",2)
   Global("h_RigaldoQuest","GLOBAL",11)
   GlobalGT("h_LiedelQuest","GLOBAL",1)~ THEN BEGIN SPICE_0
   SAY ~I have a small task lined up that I wish you to perform.~ IF ~~ THEN GOTO SPICE_1
END

IF ~~ THEN BEGIN SPICE_1
   SAY ~There is a bit of a local legend around here who goes by the name, Borland of Beregost. He's known for opening his door to travelers seeking shelter and offering them a free place to rest.~ IF ~~ THEN GOTO SPICE_2
END

IF ~~ THEN BEGIN SPICE_2
   SAY ~However, he is not as innocent as he may seem. He is using his home and hospitality as a front to sell black lotus and other spices to his guests.~ IF ~~ THEN GOTO SPICE_3
END

IF ~~ THEN BEGIN SPICE_3
   SAY ~Your task is a simple one. If Borland wishes to continue his dealings then he has to pay us a cut of his profits.~ IF ~~ THEN GOTO SPICE_4
END

IF ~~ THEN BEGIN SPICE_4
   SAY ~If he refuses... well then take him for all he has got. Clear out his inventory of spice and relieve him of all his current coin.~
       ++ ~I've stayed at Borland's plenty of times and he's never offered me any spice.~ GOTO SPICE_4.5
       ++ ~Understood. I will get him to pay his dues.~ GOTO SPICE_5
END

IF ~~ THEN BEGIN SPICE_4.5
   SAY ~Is that so? Well, perhaps you had rasied his suspicion in some way. If you meant to imply that my intel was questionable, however, know that I do not deal with uncertainties.~
       ++ ~Understood. I will get him to pay his dues.~ GOTO SPICE_5
END

IF ~~ THEN BEGIN SPICE_5
   SAY ~Get to it then. His residence is on the east side of the city, across from the Red Sheaf.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",12)
   AddJournalEntry(@324,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",12)~ THEN BEGIN SPICE_6
   SAY ~Was Mr. Borland agreeable to our offer?~
       +~Global("h_BorlandQuest","GLOBAL",1) NumItemsPartyLT("h_misc07",1)~+ ~Yes, he will be making his payments forthwith.~ GOTO SPICE_7
       +~Global("h_BorlandQuest","GLOBAL",1) PartyHasItem("h_misc07")~+ ~Yes, and he was so enthusiastic about our new arrangement that he gave me all of his black lotus.~ GOTO SPICE_8
       +~Global("h_BorlandQuest","GLOBAL",2) PartyHasItem("h_misc07")~+ ~Unfortunately, he was not. I have procured the rest of his inventory and he will not be selling spice here any longer.~ GOTO SPICE_9
       ++ ~I have a few other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN SPICE_7
   SAY ~I knew I could count on you. Here is your reward for the deed.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",13)
   SetGlobal("h_SpawnAriosh","GLOBAL",1)
   AddJournalEntry(@326,QUEST_DONE)
   AddExperienceParty(600)
   GiveGoldForce(400)~ EXIT
END

IF ~~ THEN BEGIN SPICE_8
   SAY ~I knew I could count on you. Here is your reward for the deed and I'll even throw in a little extra for the lotus.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",13)
   SetGlobal("h_SpawnAriosh","GLOBAL",1)
   AddJournalEntry(@326,QUEST_DONE)
   TakePartyItem("h_misc07")
   DestroyItem("h_misc07")
   AddExperienceParty(600)
   GiveGoldForce(800)~ EXIT
END

IF ~~ THEN BEGIN SPICE_9
   SAY ~Not the most ideal outcome but at least you didn't come back empty handed. Here is your reward for the lotus.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",13)
   SetGlobal("h_SpawnAriosh","GLOBAL",1)
   AddJournalEntry(@326,QUEST_DONE)
   TakePartyItem("h_misc07")
   DestroyItem("h_misc07")
   AddExperienceParty(600)
   GiveGoldForce(400)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",13)~ THEN BEGIN SPICE_10
   SAY ~I knew going after their casinos was a careless idea. Grab your weapons from Rhade and prepare yourselves. This will be a bloody night.~ IF ~~ THEN EXIT
END


          /////////////////////////////////
          ////////// Black Lotus //////////
          /////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",14)~ THEN BEGIN LOTUS_0
   SAY ~Nice work taking care of those Shadow Thieves. I know first hand how troublesome they can be.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",15)~ THEN BEGIN LOTUS_1
   SAY ~I have a new mission for you that will involve smuggling some goods into Amn.~ IF ~~ THEN GOTO LOTUS_2
END

IF ~~ THEN BEGIN LOTUS_2
   SAY ~I made contact with Borland's spice supplier and we were able to come to terms on a very profitable arrangement.~ IF ~~ THEN GOTO LOTUS_3
END

IF ~~ THEN BEGIN LOTUS_3
   SAY ~He will be making regular shipments to our warehouses of the finest black lotus petals on the market.~ IF ~~ THEN GOTO LOTUS_4
END

IF ~~ THEN BEGIN LOTUS_4
   SAY ~I am sending you to the Nashkel Carnival to deliver the first batch to our buyer. He will be awaiting you in the eastern-most tent.~
       ++ ~Is it safe to go back into Amn while we are at war with the Shadow Thieves?~ GOTO LOTUS_5
       ++ ~How much coin should I expect to recieve from the buyer?~ GOTO LOTUS_6
       ++ ~Is there anything else I should know before departing?~ GOTO LOTUS_7
END

IF ~~ THEN BEGIN LOTUS_5
   SAY ~Absolutely not. But, risk is a requisite of ambition and without it even the most experienced of thieves can become careless and complacent.~
       ++ ~How much coin should I expect to recieve from the buyer?~ GOTO LOTUS_6
       ++ ~Is there anything else I should know before departing?~ GOTO LOTUS_7
END

IF ~~ THEN BEGIN LOTUS_6
   SAY ~You will be transporting five pounds of black lotus at 600 gold pieces per pound. I will award you with a 20% cut upon your success.~
       ++ ~Is it safe to go back into Amn while we are at war with the Shadow Thieves?~ GOTO LOTUS_5
       ++ ~Is there anything else I should know before departing?~ GOTO LOTUS_7
END

IF ~~ THEN BEGIN LOTUS_7
   SAY ~Try to stay off the main roads in case the Flaming Fist have their patrols out.~ IF ~~ THEN GOTO LOTUS_8
END

IF ~~ THEN BEGIN LOTUS_8
   SAY ~You should also make use of your stealth after entering Amn, lest the Shadow Thieves become aware of your arrival.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",16)
   SetGlobal("h_FlamingFist","GLOBAL",1)
   AddJournalEntry(@327,QUEST)
   GiveItemCreate("h_misc07",LastTalkedToBy,5,0,0)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",16)~ THEN BEGIN LOTUS_9
   SAY ~Welcome back, <CHARNAME>. Were you able to successfully transport all of the black lotus?~
       +~Global("h_LotusQuest","GLOBAL",1) PartyGoldGT(2999)~+ ~I was beset by both the Flaming Fist and the Shadow Thieves but I was still able to manage. Here is the coin.~ GOTO LOTUS_10
       +~Global("h_LotusQuest","GLOBAL",2) PartyGoldGT(2399)~+ ~I ran into some trouble on the road and was forced to bribe the Flaming Fist with a pound of the lotus.~ GOTO LOTUS_11
       ++ ~I have a few other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN LOTUS_10
   SAY ~Very impressive work, <CHARNAME>. I'll take the 3000 gold and return your 20%, with an extra 5% for your trouble, totalling 750 gold.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@331,QUEST_DONE)
   TakePartyItemAll("h_misc07")
   TakePartyGold(3000)
   GiveGoldForce(750)~ EXIT
END

IF ~~ THEN BEGIN LOTUS_11
   SAY ~Damn those corrupt bastards! Yet, either way, I applaud your quick thinking. At our price point we still made out fairly well. I'll take the 2400 gold and return your 20%, totalling 480 gold.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@331,QUEST_DONE)
   TakePartyItemAll("h_misc07")
   TakePartyGold(2400)
   GiveGoldForce(480)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",17)~ THEN BEGIN LOTUS_12
   SAY ~No new leads as of yet. Ask around the guild, someone may have some work for you in the meantime.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",18)~ THEN BEGIN END_0
   SAY ~So, you'll be our new leader then? Things were going pretty good until Baldwin's mania took over. Keep a level head and things will go just fine.~ IF ~~ THEN EXIT
END

