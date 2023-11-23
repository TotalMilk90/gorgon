BEGIN h_rigald

IF ~Global("h_RigaldoQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~You've just stumbled into the Gorgon's Eye, mate. This guild's got secrets darker than the night, and we don't take kindly to prying eyes.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Best turn 'round and be on your way before things get complicated.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",1)~ THEN BEGIN 2
   SAY ~You must be the fresh blood everyone's been harpin' about. I was expecting someone with a touch more flair, but I'm trusting you're up for the job.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Name's Rigaldo, head pickpocket in this den. Been a top dog in this field longer than most, and I know the ins-and-outs of these streets down to their finest detail.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~I'll be your main point of contact for guild work as it gets assigned. So, get to used to reporting to me.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~I've got high expectations and I trust my rogues to deliver, got it? When the mark gets picked, you get the job done. No questions.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Any questions?~
       ++ ~None.~ GOTO 7
       ++ ~Why do you and Baldwin have the appearance of Shadow Thieves?~ GOTO 8
       ++ ~Since we'll be working together, I'd like to know more about you. What's your story within the guild?~ GOTO 11
       ++ ~Can you tell me more about the other members of the guild I might be working with?~ GOTO 13
END

IF ~~ THEN BEGIN 7
   SAY ~Smart.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 8
   SAY ~And how, pray tell, have you become privy to the visage of a Shadow Thief?~
       ++ ~Only from books and tales of their exploits. I grew up studying in Candlekeep.~ GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~I've my doubts if any book could yield reliable information of such a secretive organization, yet, I can't deny your perception.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Aye, Baldwin and I once bore the mantle of the Shadow Thieves, but our affiliations have long since diverged.~
       ++ ~Since we'll be working together, I'd like to know more about you. What's your story within the guild?~ GOTO 11
       ++ ~Can you tell me more about the other members of the guild I might be working with?~ GOTO 13
       ++ ~I'm ready to receive my first mission.~ GOTO 19
END

IF ~~ THEN BEGIN 11
   SAY ~My story? Oh, it's a right page-turner it is. Started off nickin' apples, now I'm babysittin' fresh recruits like you. Let's skip the pleasantries, yeah?~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~This ain't the hour to get chummy. We've got bigger fish to fry, and I ain't got all day to chit-chat. We need to focus on getting you up to snuff, and quickly.~
       ++ ~Why do you and Baldwin have the appearance of Shadow Thieves?~ GOTO 8
       ++ ~Can you tell me more about the other members of the guild I might be working with?~ GOTO 13
       ++ ~I'm ready to receive my first mission.~ GOTO 19
END

IF ~~ THEN BEGIN 13
   SAY ~Well, you've got Ariosh, the master of the alley. He's our eyes and ears in Beregost, deals with any issues the City Watch stirs up. If it's happening in the streets, he knows about it.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~Then there's Rhade, our resident blacksmith and alchemist. He's the fence you'll want for offloading any... 'acquired' goods. Got a whole network for the trade, he does.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~You'll be crossing paths with Liedel too. She's a real firecracker, our master tracker. Head of all the bounty and assassination contracts that make their way through the guild.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~Zeda oversees our smuggling ops. She's got a knack for slipping goods past prying eyes and has a sharp nose for trouble.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~And of course, there's Baldwin, our fearless leader. Dedicated to the cause, and a force to be reckoned with. Cross him, and well... let's just say you don't want to find out.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~So there you have it. A motley crew, but the best at what they do. You'll fit right in, long as you can keep up.~
       ++ ~Why do you and Baldwin have the appearance of Shadow Thieves?~ GOTO 8
       ++ ~Since we'll be working together, I'd like to know more about you. What's your story within the guild?~ GOTO 11
       ++ ~I'm ready to receive my first mission.~ GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~Alright, I've got a small job lined up for ya. Nothin' too fancy, mind you. A little scutwork to test your basics.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~There's a fence passing through our town, goes by the name, 'Zieke'. Got a real nice sparkler on em', a diamond from Waterdeep, and it's your job to make it ours.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~Zieke's headin' south to meet a buyer at the carnival, so he ain't stickin' around for too long.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~For now, he's holed up at Feldpost's Inn. Real zealot for privacy this one, won't even let his own guards in the room. Use that to your advantage.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~Speakin' of those guards, they're like rats, scurryin' all over the place.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~Seen 'em at the bar, whispering over their ales. Outside, keepin' tight watch on the door. They're patrolling the halls too, thick as thieves, only less subtle.~ IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~You'll have to sneak by 'em, stealthy like. If they pin you actin' shifty, the jigs up.~ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY ~Might be worth gettin' a jack from Rhade, I'm thinkin'. A right whack with that and it's lights out.~
       ++ ~A fence then, eh? Sounds like my kind of challenge.~ GOTO 28
       ++ ~Seems like an easy target. I'll make quick work of it.~ GOTO 28
       ++ ~If the guards get in my way, I'll just have to kill them.~ GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY ~Settle down, rookie. Better to avoid makin' a scene for this one.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY ~Keep a light foot and a quick pace. Watch for the guards and scram when you've filched the jewel.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~This ain't child's play, mate. Prove you've got the stones to run with the big dogs.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",2)
   SetGlobal("h_SpawnZieke","GLOBAL",1)
   SetGlobal("h_SpawnZiekeDay","GLOBAL",1)
   SetGlobal("h_SpawnZiekeNight","GLOBAL",1)
   AddJournalEntry(@310,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",2)~ THEN BEGIN 30
   SAY ~Hurry up and snatch the jewel! If we delay, we'll lose our shot.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc04") Global("h_TalkedToZieke","GLOBAL",1)~ THEN BEGIN 31
   SAY ~Are you daft, mate? What in blue blazes possessed you to stroll up to the mark like that? I warned ya, he's got a thing for privacy! What, did you expect him to hand over his purse and invite you to tea?~ IF ~~ THEN DO ~AddJournalEntry(@311,QUEST_DONE)~ GOTO 36
END

IF WEIGHT #-1 ~PartyHasItem("h_misc04") Global("h_TalkedToZieke","GLOBAL",0)~ THEN BEGIN 32
   SAY ~Had my men tail ya in case things got shifty. Let's get to business first. You've still got the goods in hand? Let's give it a proper once over.~
       +~PartyHasItem("h_misc04") Global("h_CaughtByDay","GLOBAL",0) Global("h_CaughtByGuards","GLOBAL",0) NumDead("h_ziekec",0)~+ ~Got the gem right here.~ DO ~AddJournalEntry(@311,QUEST_DONE) AddExperienceParty(900)~ GOTO 33
       +~PartyHasItem("h_misc04") Global("h_CaughtByDay","GLOBAL",1) Global("h_CaughtByGuards","GLOBAL",1) NumDeadGT("h_ziekec",0)~+ ~Got the gem right here.~ DO ~AddJournalEntry(@311,QUEST_DONE) AddExperienceParty(400)~ GOTO 34
       +~PartyHasItem("h_misc04") Global("h_CaughtByDay","GLOBAL",0) Global("h_CaughtByGuards","GLOBAL",0) NumDeadGT("h_ziekec",0)~+ ~Got the gem right here.~ DO ~AddJournalEntry(@311,QUEST_DONE) AddExperienceParty(400)~ GOTO 35
END

IF ~~ THEN BEGIN 33
   SAY ~Bloody brilliant work, mate, Real professional stuff there. Stuck to the shadows like a true rogue and not a soul the wiser for it! Couldn't have done it better myself.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 34
   SAY ~Got side-eyed by the guards, did ya? Patience is key when weaving through the shadows. Keep at it and you'll be a true ghost in no time.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 35
   SAY ~Nip the theatrics next time and employ a bit of stealth. Would have served you better in this setting. This job ain't always about killin'. Too many bodies'll get the Fist all riled up.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 36
   SAY ~You didn't spill the goods on your way back too, did ya?~
       ++ ~Got the gem right here.~ GOTO 37
END

IF ~~ THEN BEGIN 37
   SAY ~I'll swap ya for the diamond, then. A little trinket I knocked up myself. You'll be findin' it useful in your future endeavors of larceny.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",3)
   TakePartyItem("h_misc04")
   DestroyItem("h_misc04")
   GiveItemCreate("h_ring03",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",3)~ THEN BEGIN 38
   SAY ~Listen up, I've got a new job for ya. This one ain't gonna be your typical pinch work. It's got a bit more bite to it, if you catch my drift.~
       ++ ~I'm listening.~ GOTO 39
       ++ ~I have some other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN 39
   SAY ~I assume you're somewhat acquanted with the grand manor here in northern Beregost?~ IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
   SAY ~Well, Gerard Travenhurst, the bloke who considers himself a lord, has been greasin' our palms to ward off any... unwanted intruders.~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
   SAY ~As of late, Gerard's been skippin' his dues. Even had the stones to hire his own muscle, to boot.~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
   SAY ~I'll lay it out for ya nice and simple. We've got secrets on Gerard, the unsavory sort. If he doesn't straighten up, we'll let 'em slip.~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
   SAY ~This is where you come in. You'll pay a little visit to Mr. Gerard and give him a proper talking to.~ IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
   SAY ~Remind him of his accruing debt, and make it clear his precious family pendant is now part of the bargain.~ IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
   SAY ~Let him know we don't play games, and crossing us comes at a steep price. He'll do well to remember it.~
       ++ ~Is there anything else I should know before I depart?~ GOTO 47
       ++ ~Extorting a noble for protection money? No way, this isn't what I signed up for.~ GOTO 46
END

IF ~~ THEN BEGIN 46
   SAY ~Quiet now, and listen up.~ IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
   SAY ~The Travenhurst's wealth was built on the backs of suffering and wickedness, straight from the darkest depths of the slave pits.~ IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
   SAY ~And Gerard himself? Got caught red-handed abusin' those poor souls, even the children. Bribed himself out of trouble and got off scot-free.~ IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
   SAY ~That pendant he's clingin' to, it's a symbol of wickedness, a token of his filthy past. Remember that, and don't let his fancy airs fool ya.~ IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
   SAY ~So, what say you? Ready to make Gerard Travenhurst pay for his past?~
       ++ ~Consider it done. I'll have that necklace by days end.~ GOTO 51
       ++ ~I'll see that he's brought to some justice.~ GOTO 51
END

IF ~~ THEN BEGIN 51
   SAY ~Handle him good, but make sure he's still suckin' air, will ya? We need him toein' the line, not pushin' up daisies.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",4)
   AddJournalEntry(@312,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",4)~ THEN BEGIN 52
   SAY ~Off you go now, make your way to Gerard's and give 'em a little chat. Come back once he's got the memo and you've got his pendant in your mitts.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc05")~ THEN BEGIN 53
   SAY ~Had you followed of course, still in your probationary period and all that. We'll still keep to formalities, however. Report in.~
       +~Global("h_GerardStrength","GLOBAL",1)~+ ~Gerard will resume his payments, and his guards are no longer an issue.~ DO ~TakePartyItem("h_misc04") DestroyItem("h_misc04")~ GOTO 54
       +~Global("h_GerardCharisma","GLOBAL",1)~+ ~Gerard will resume his payments, and his guards are no longer an issue.~ DO ~TakePartyItem("h_misc04") DestroyItem("h_misc04")~ GOTO 55
       +~Global("h_GerardStrength","GLOBAL",0) Global("h_GerardCharisma","GLOBAL",0)~+ ~Gerard will resume his payments, and his guards are no longer an issue.~ DO ~TakePartyItem("h_misc04") DestroyItem("h_misc04")~ GOTO 56
END

IF ~~ THEN BEGIN 54
   SAY ~By the sounds of it, you didn't need to do much convincing beyond a show of strength. Sometimes a well-placed word can be mightier than the sword.~  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 55
   SAY ~That silver tongue of yours worked wonders, didn't it? Sometimes a well-placed word can be mightier than the sword.~  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 56
   SAY ~The way you dealt with those guards, top-notch work, mate. Shows that sometimes, a bit of muscle does the talking better than a whole load of gab.~ IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
   SAY ~Splendid work, <CHARNAME>. Your trial phase is over and done, and now, you're a right proper member of the Gorgon's Eye.~ IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
   SAY ~It's more than just a badge though, yeah? You'll soon discover a heap of responsibilities and work to be done, enough to line your pockets with some serious coin, at that.~ IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
   SAY ~Liedel's the one to see for a list of open bounties, and Ariosh's got a catalog of marks in town. Might be a few other odd-jobs floatin' around the guild as well.~ IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
   SAY ~Go ahead and make your rounds, but before you slip away, Baldwin's fixin' a word with ya. Best not to keep him waiting.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",5)
   SetGlobal("h_BaldwinQuest","GLOBAL",2)
   SetGlobal("h_LiedelQuest","GLOBAL",1)
   SetGlobal("h_ZedaRiddle","GLOBAL",1)
   AddJournalEntry(@314,QUEST_DONE)
   TakePartyItem("h_misc05")
   DestroyItem("h_misc05")
   GiveGoldForce(200)
   AddExperienceParty(400)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",5)~ THEN BEGIN 61
   SAY ~Settle your affairs with Baldwin, then we'll discuss the other jobs on the table.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",6)~ THEN BEGIN 62
   SAY ~Back for another venture in the pursuit of coin, are we? Well, I got wind of a right curious tale from Nashkel, and I'll be sending you down to investigate.~ IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
   SAY ~There's a lass by the name of Karp, been findin' all sorts of magical trinkets buried in her farmland this past season.~ IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64
   SAY ~Her latest find? A pair of rings, meant to be sold to a bloke from Ulgoth's Beard, who's headin' down now as we speak.~ IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
   SAY ~Our sources say two things of interest. First, she's been flogging these items to fences and smugglers, rather than going to the proper shops.~ IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
   SAY ~Second, and giving probable cause for her secretive deals, she is withholding all of her findings from her husband, the poor sod.~ IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
   SAY ~I will have you travel south and obtain these rings in a manner that is fitting to your judgement.~ IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
   SAY ~You could extort the woman with threat of reveal to her husband, or you could put on a ruse, feigning as the man from Ulgoth's Beard.~ IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69
   SAY ~If all else fails, maybe a right scare of violence will soften her up.~ IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
   SAY ~If you wish to skip all the drudgery, however, you could always just pick the rings off her if you can.~
       ++ ~I'm not against using blackmail. If she's willing to engage in shady dealings, she may not be so innocent herself.~ GOTO 71
       ++ ~Acting as the buyer sounds like good fun and a chance for me to use my charm and charisma.~ GOTO 71
       ++ ~I think I'll just practice my thieving skills and steal the rings off her when she's not looking.~ GOTO 71
       ++ ~I'm not sure what I will do yet until I speak with this Karp first.~ GOTO 71
END

IF ~~ THEN BEGIN 71
   SAY ~If you can lay your mitts on both these rings before they hit the market, I'll let you have one as a little somethin' for your troubles.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",7)
   AddJournalEntry(@315,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",7)~ THEN BEGIN 72
   SAY ~If you're jawing at me, I reckon you've got your report and the bits I asked for.~
       +~PartyHasItem("h_misc17") Global("h_KarpWorkGood","GLOBAL",0) Global("h_KarpWork","GLOBAL",0)~+ ~Got the rings right here.~ GOTO 73
       +~PartyHasItem("h_misc17") Global("h_KarpWorkGood","GLOBAL",2) Global("h_KarpWork","GLOBAL",0)~+ ~Got the rings right here.~ GOTO 73
       +~PartyHasItem("h_misc17") Global("h_KarpWorkGood","GLOBAL",0) Global("h_KarpWork","GLOBAL",1)~+ ~Got the rings right here.~ GOTO 74
       ++ ~I have some other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN 73
   SAY ~Nice work. You've earned it, mate. As agreed, one of 'em's yours to do with as you fancy.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",8)
   AddJournalEntry(@317,QUEST_DONE)
   TakePartyItem("h_misc17")
   DestroyItem("h_misc17")
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN 74
   SAY ~Nice work. You've earned it, mate. As agreed, one of 'em's yours to do with as you fancy.~
IF ~~ THEN DO ~
   SetGlobal("h_KarpWork","GLOBAL",2)
   SetGlobal("h_RigaldoQuest","GLOBAL",8)
   AddJournalEntry(@317,QUEST)
   TakePartyItem("h_misc17")
   DestroyItem("h_misc17")
   AddExperienceParty(600)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",8) GlobalLT("h_ArioshQuest","GLOBAL",10)~ THEN BEGIN 75
   SAY ~Wrap things up with Ariosh, will ya? I've got a job that needs both your eyes on it, sharp as razors.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",8) Global("h_ArioshQuest","GLOBAL",10)~ THEN BEGIN 76
   SAY ~Alright, mate, we've got a big job at the Nashkel Carnival and I'm puttin' you in charge of the prep-work.~ IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77
   SAY ~There's a couple of hefty tents, near the backside of the layout, where they stash all their winnings and gambling licenses.~ IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78
   SAY ~Your marks are the gamesmen inside, packing stun darts. Your job is to slip in quiet-like and nick their weapons.~ IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79
   SAY ~Ariosh and his lot will be holed up behind the tent out west, awaiting your signal. Once you've got the gear, make your way to the meet-up spot and divy up the darts.~ IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80
   SAY ~We'll turn their own kit against 'em, savvy?~ IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81
   SAY ~Ariosh'll grab the licenses and whatever coin his men can heft, while you loop me in for the next move. If everything goes smoothly, we'll all be a lot richer by days end.~
       ++ ~What do we need the gambling licenses for?~ GOTO 82
       ++ ~Isn't that Shadow Thief territoy? What if they find out what we are doing?~ GOTO 83
       ++ ~Understood. I'll head down shortly.~ GOTO 85
END

IF ~~ THEN BEGIN 82
   SAY ~Them licenses are the key to broadening our reach and keeping things above board in Amn. That's our main prize, understand?~
       ++ ~Isn't that Shadow Thief territoy? What if they find out what we are doing?~ GOTO 83
       ++ ~Understood. I'll head down shortly.~ GOTO 85
END

IF ~~ THEN BEGIN 83
   SAY ~Aye, it's their turf alright, and they'll get word for sure. These orders come straight from Baldwin, however, so no use frettin'.~ IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84
   SAY ~Truth be told, the Shadow Thieves don't have much stake in the gambling trade, and most of their muscle tends to stick below the Cloud Peaks. So, don't get too riled up now, yeah?~
       ++ ~What do we need the gambling licenses for?~ GOTO 82
       ++ ~Understood. I'll head down shortly.~ GOTO 85
END

IF ~~ THEN BEGIN 85
   SAY ~You're steppin' up on this job, mate. This'll really put your skills to the test, and if it pans out, your stock in the guild'll shoot up.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",9)
   SetGlobal("h_GuildThieves","GLOBAL",2)
   AddJournalEntry(@321,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN 86
   SAY ~Remember, this is a proper big operation, no room for slip-ups. Take every gamesman's gear before tipping off the lads. Ariosh'll take it from there.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",10)~ THEN BEGIN 87
   SAY ~I've already heard the tale, and the result couldn't have been sweeter. Bloody great work, <CHARNAME>. With them gamesmen disarmed, the job was a right success.~ IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88
   SAY ~Now that we've got them licenses, we can start laying the groundwork for our push down south. You've earned every bit of your cut.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",11)
   AddJournalEntry(@323,QUEST_DONE)
   GiveGoldForce(800)
   AddExperienceParty(600)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",11) Global("h_ProcusQuest","GLOBAL",0) GlobalLT("h_BountyNumber","GLOBAL",3)~ THEN BEGIN 89
   SAY ~Aye, it's gonna be a right tick 'n a half before we get things ready for our push into Amn. In the meantime, best you scurry off and tie up any loose ends you have here in the guild.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",11) Global("h_ProcusQuest","GLOBAL",0) Global("h_BountyNumber","GLOBAL",3) Global("h_LiedelQuest","GLOBAL",2)~ THEN BEGIN 90
   SAY ~Alright, <CHARNAME>, listen up. You've proven yourself a shrewd operator, but Nashkel, you see, it's a whole different kind of beast.~ IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91
   SAY ~It's a place where the Flaming Fist don't hold sway, but instead, they've got a proper army, organized and disciplined. We'll need to move like shadows in a well-lit room, subtle and sly.~ IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92
   SAY ~The Shadow Thieves, they barely cast a shadow down there, mostly keeping to their territory on the other side of the Peaks. But still, we must be cautious.~ IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93
   SAY ~Now, you'll need to seek out our guild contact, Procus. He'll be waitin' for ya at the carnival, stationed by the jousting lists.~ IF ~~ THEN GOTO 94
END

IF ~~ THEN BEGIN 94
   SAY ~He's the key to getting us established. It'll be your job to help him set up a base of operations amidst the revelry.~ IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95
   SAY ~The carnival's the perfect cover, a sea of faces and distractions. Blend in, set up shop, and watch your back. Cunning and subtlety will be our greatest assets in making our mark here.~ IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96
   SAY ~Before you dash off down south, however, swing by Gilbald's for a quick once-over, will ya? Something's got me feeling a tad uneasy about one of his dealers. Can't be too careful, yeah?~ IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97
   SAY ~Also, Liedel's got a batch of new bounties, and she won't let me hear the end of it. Frankly, I'd rather face a manticore than endure her prattlin'.~ IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98
   SAY ~I need you to keep her occupied for a spell, eh? Just listen to her blabber about her marks. Maybe even show a tad of interest if you're up for it.~ IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99
   SAY ~Once she's had her fill, we can all get back to business, savvy?~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnProcus","GLOBAL",1)
   SetGlobal("h_GilbaldQuest","GLOBAL",1)
   SetGlobal("h_LiedelQuest","GLOBAL",3)
   AddJournalEntry(@338,QUEST)~ EXIT
END

IF ~OR(2) Global("h_ProcusQuest","GLOBAL",0) GlobalGT("h_ProcusQuest","GLOBAL",0) Global("h_RigaldoQuest","GLOBAL",11) GlobalLT("h_ProcusQuest","GLOBAL",7)~ THEN BEGIN 100
   SAY ~Keep your ear to the ground, <CHARNAME>. Nashkel's a fickle mistress, and we're just getting started.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",11) Global("h_ProcusQuest","GLOBAL",7)~ THEN BEGIN 101
   SAY ~Back 'ere, sharp as a blade, ain't ya? Word's been blowin' through the shadows about your doin's down in Nashkel. Good work, mate.~ IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102
   SAY ~This little venture of ours is takin' off, and it's all thanks to you. That gold, them connections, it's all comin' together, just as we planned.~ IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103
   SAY ~The Gorgon's Eye's makin' its mark, and you're right in the thick of it. Well done, indeed.~
IF ~~ THEN DO ~
   SetGlobal("h_ProcusQuest","GLOBAL",8)
   AddJournalEntry(@349,QUEST_DONE)
   GiveGoldForce(800)
   AddExperienceParty(600)~ EXIT
END

IF ~OR(2) GlobalLT("h_BountyNumber","GLOBAL",6) GlobalLT("h_GilbaldQuest","GLOBAL",6) Global("h_RigaldoQuest","GLOBAL",11) Global("h_ProcusQuest","GLOBAL",8)~ THEN BEGIN 104
   SAY ~No fresh leads at the moment. Have a word with the mates around the guild, they might have a bit of graft for ya.~ IF ~~ THEN EXIT
END

IF ~Global("h_BountyNumber","GLOBAL",6) Global("h_GilbaldQuest","GLOBAL",6) Global("h_RigaldoQuest","GLOBAL",11) Global("h_ProcusQuest","GLOBAL",8)~ THEN BEGIN 105
   SAY ~Ready for your next bit of business? Got a small job lined up, and I'm eyein' you to handle it.~ IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 106
   SAY ~There's a local legend 'round here. Goes by the name, Borland of Beregost. Offers travelers a free place to rest instead of dropping coin at the inns.~ IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107
   SAY ~Thing is, he's not as innocent as he looks. Turns out, he's usin' the place to peddle black lotus to his guests.~ IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 108
   SAY ~Your job's a simple one. If Borland wants to keep his little operation goin', he'll be payin' us a cut.~ IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109
   SAY ~If he puts up a fuss... well, then you can help him part with all he's got. Clear out his spice stash and take his coin.~
       ++ ~I've stayed at Borland's myself, and he's never offered me any spice.~ GOTO 110
       ++ ~Got it. I'll see he pays up.~ GOTO 111
       ++ ~I'll go have a word with him.~ GOTO 111
END

IF ~~ THEN BEGIN 110
   SAY ~You suggestin' my info ain't on the mark? You must've given him reason for raised suspicion, is my guess.~
       ++ ~Got it. I'll see he pays up.~ GOTO 111
       ++ ~I'll go have a word with him.~ GOTO 111
END

IF ~~ THEN BEGIN 111
   SAY ~He resides on the east part of town, across from the Red Sheaf.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",12)
   AddJournalEntry(@324,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",12)~ THEN BEGIN 112
   SAY ~Was Mr. Borland agreeable to our offer?~
       +~Global("h_BorlandGood","GLOBAL",0) PartyHasItem("h_misc07")~+ ~Yes, and he was so enthusiastic about our new arrangement that he gave me all of his black lotus.~ GOTO 113
       +~Global("h_BorlandGood","GLOBAL",1) PartyHasItem("h_misc07")~+ ~Unfortunately, he wasn't up for it. I've gathered up his stash and he won't be selling spice here anymore.~ GOTO 113
       ++ ~I have some other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN 113
   SAY ~Well, that settles it then. Here's your pay for the job, and a little extra for the lotus.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",13)
   SetGlobal("h_SpawnAriosh","GLOBAL",1)
   SetGlobal("h_SpawnZylark","GLOBAL",6)
   TakePartyItemAll("h_misc07")
   DestroyItem("h_misc07")
   AddJournalEntry(@326,QUEST_DONE)
   AddExperienceParty(800)
   GiveGoldForce(800)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",13)~ THEN BEGIN 114
   SAY ~I knew takin' on their casinos was a reckless move.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",14)~ THEN BEGIN 115
   SAY ~Listen close, my nimble-fingered friend. I've got a job that's got your name written all over it.~ IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116
   SAY ~The Avowed, those monks from Candlekeep, sent word through the shadows. Seems they've lost something precious. A tome, brimming with knowledge, snatched from under their scholarly noses.~ IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117
   SAY ~It was en route to the keep when it went missing, right on the road, no less. They've caught wind of our particular talents, and figure we're just the ones to retrieve it.~ IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118
   SAY ~Of course, they want it handled with the utmost discretion. You know how them monks are, don't you?~ IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119
   SAY ~'Those who destroy knowledge, with ink, fire, or sword, are themselves destroyed.' Aye, that's their creed.~ IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 120
   SAY ~Now, here's the kicker. I've heard whispers that you're no stranger to Candlekeep's hallowed halls. That true, eh? Well, you'll understand their ways better than most.~ IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121
   SAY ~So, I'm sending you to Baldur's Gate to meet with Ravenscar, leader of the thieves guild there. They've got their ear to the ground, and might just know something about this pilfered tome.~ IF ~~ THEN GOTO 122
END

IF ~~ THEN BEGIN 122
   SAY ~Get there, have a parley, and see what they know. But remember, discreet as a whisper in the night, that's how we play this one.~
       ++ ~Do we have any specifics on the stolen tome?~ GOTO 123
       +~!Dead("Alatos")~+ ~What can you tell me about Ravenscar and the thieves guild in Baldur's Gate?~ GOTO 126
       +~!Dead("Alatos")~+ ~Alright, I'll head to the city and speak with Ravenscar.~ GOTO 130
       +~Dead("Alatos")~+ ~Ravenscar is dead. He thought he could pull a fast one on me, but I showed him otherwise.~ GOTO 131
END

IF ~~ THEN BEGIN 123
   SAY ~They call it, 'Netheril's Grimoire of Lost Arcana'. Fancy title, eh? Sounds like a real doozy.~ IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 124
   SAY ~As for the guts of it, well, that's where the real treasure hunt begins. We're talkin' arcane tricks, forgotten spells, and maybe even a pinch of Netherese know-how.~ IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 125
   SAY ~Them monks are sweatin' bullets just thinkin' about it, and for good reason.~
       +~!Dead("Alatos")~+ ~What can you tell me about Ravenscar and the thieves guild in Baldur's Gate?~ GOTO 126
       +~!Dead("Alatos")~+ ~Alright, I'll head to the city and speak with Ravenscar.~ GOTO 130
       +~Dead("Alatos")~+ ~Ravenscar is dead. He thought he could pull a fast one on me, but I showed him otherwise.~ GOTO 131
END

IF ~~ THEN BEGIN 126
   SAY ~They're a savvy bunch. Known for their business sense and sharp wits. They've got their fingers in many a pie, if you catch my drift.~ IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 127
   SAY ~The guild's been around the block a few times, and they've earned their stripes. Word is, they've got quite the network in the city, keepin' a sharp eye for opportunities just like this one.~ IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 128
   SAY ~And don't fret about guild rivalries, mate. When you're on Ravenscar's turf, it's neutral ground. They know the value of cooperation in our line of work.~ IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129
   SAY ~So, no need for steel to be drawn, if you follow me. Just keep it civil, and you'll come away with the info we need.~
       ++ ~Do we have any specifics on the stolen tome?~ GOTO 123
       +~!Dead("Alatos")~+ ~Alright, I'll head to the city and speak with Ravenscar.~ GOTO 130
END

IF ~~ THEN BEGIN 130
   SAY ~Remember, keep your wits about you and play it cool. Ravenscar's got a nose for sincerity, and he'll respect a straight shooter.~
IF ~~ THEN DO ~
   SetGlobal("h_BookQuest","GLOBAL",1)
   SetGlobal("h_Ravenscar","GLOBAL",1)
   AddJournalEntry(@350,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 131
   SAY ~You blundering fool! Did you think this was a game? Killing Ravenscar like that... do you have any inkling of the chaos you might have set in motion?~ IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132
   SAY ~We walk a fine line in the shadows, and now you've gone and cast a bloody spotlight on us!~ IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 133
   SAY ~A war between our guilds could rip us apart, and for what? Your impulsive vengeance? Think, damn you!~ IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134
   SAY ~Bloody hells... every... every last one of 'em? Are you tellin' me <CHARNAME> single-handedly dismantled Ravenscar's entire operation?~ IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 135
   SAY ~Maker's mercy... We're treadin' on dangerous ground, Baldwin. We've got a force of nature on our hands, and I fear we're standin' too close to the storm.~ IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136
   SAY ~Despite the... circumstances, we can't afford to sit idle. Head to the Gate as planned. See if you can get yourself into the black markets and dig up the whereabouts of that book.~ IF ~~ THEN GOTO 137
END

IF ~~ THEN BEGIN 137
   SAY ~But be cautious, more than ever. This... power you possess, it's a double-edged dagger, and it can cut both ways.~
IF ~~ THEN DO ~
   SetGlobal("h_KilledRavenscar","GLOBAL",1)
   SetGlobal("h_Ravenscar","GLOBAL",2)
   AddJournalEntry(@351,QUEST)~ EXIT
END

IF WEIGHT #-1 ~Global("h_BookQuest","GLOBAL",1)~ THEN BEGIN 138
   SAY ~Get to Baldur's Gate, meet with Ravenscar, and see what those wily thieves have heard about the 'Netheril's Grimoire of Lost Arcana'.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_KilledRavenscar","GLOBAL",1)~ THEN BEGIN 139
   SAY ~Get to Baldur's Gate, and get inside the black markets. See what you can find out about the 'Netheril's Grimoire of Lost Arcana'.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc29")~ THEN BEGIN 140
   SAY ~Alright, back from the shadows, are ya? Got your mitts on that slippery tome or are we still playin' hide and seek?~
       ++ ~Aye, got it right here. 'Netheril's Grimoire of Lost Arcana', just as you asked.~ DO ~TakePartyItem("h_misc29") DestroyItem("h_misc29")~ GOTO 141
END

IF ~~ THEN BEGIN 141
   SAY ~Bloody good work, mate. You've done us proud. Those scribes in Candlekeep will be delighted to have it back, after they cough up a hefty finders-fee, of course.~ IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 142
   SAY ~They've got more coin than sense, if you ask me. Promised a small fortune for this venture. Our coffers will be considerably heavier, thanks to your efforts.~ IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143
   SAY ~You've proven yourself as a valuable asset to this guild, and this reward is a testament to that. Take it, use it wisely, and know that you've earned every last bit.~ IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144
   SAY ~Our future endeavors together look brighter than ever.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",15)
   AddJournalEntry(@359,QUEST_DONE)
   AddExperienceParty(1200)
   GiveGoldForce(1000)~ EXIT
END

                                         //GlobalLT("h_ArioshQuest","GLOBAL",22)
IF ~OR(2) GlobalLT("h_MerediaQuest","GLOBAL",5) GlobalLT("h_BountyNumber","GLOBAL",9) Global("h_RigaldoQuest","GLOBAL",15)~ THEN BEGIN 145
   SAY ~No fresh leads at the moment. Have a word with the mates around the guild, they might have a bit of graft for ya.~ IF ~~ THEN EXIT
END
                                         //Global("h_ArioshQuest","GLOBAL",22)
IF ~Global("h_MerediaQuest","GLOBAL",5) Global("h_BountyNumber","GLOBAL",9) Global("h_RigaldoQuest","GLOBAL",15)~ THEN BEGIN 146
   SAY ~I've got a new job for ya. We're gonna be moving some gear into Amn.~ IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 147
   SAY ~I've struck a deal with Borland's spice source, and it's gonna make us a pretty penny, I reckon.~ IF ~~ THEN GOTO 148
END

IF ~~ THEN BEGIN 148
   SAY ~He'll be making regular deliveries to our warehouses, with the finest black lotus petals on the market, and I'll be sending you to hand off the first batch.~
       ++ ~Where will I be meeting the buyer?~ GOTO 158
       ++ ~Peddling lotus ain't for me. Got anything else?~ GOTO 149
END

IF ~~ THEN BEGIN 149
   SAY ~Funny, I don't recall making it a suggestion.~ IF ~~ THEN GOTO 150
END

IF ~~ THEN BEGIN 150
   SAY ~But, alright, not everyone's cut out for the lotus game, I get that. So, considering your sway in the guild, your skills, I'll extend some leniency this time 'round.~ IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151
   SAY ~But make no mistake, <CHARNAME>, don't make a habit of turning down assignments. Flexibility's a rare luxury in our line of work, got it?~ IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 152
   SAY ~Alright, how about this, then? The buyers got a client, Pruflas. He's been cooped up in that blasted lotus tent, fogging his senses day in and day out.~ IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 153
   SAY ~The missus is near frantic, dishing out a hefty sum to get him back home. This is where you come in.~ IF ~~ THEN GOTO 154
END

IF ~~ THEN BEGIN 154
   SAY ~Head on down, talk some sense into him, and ensure he returns to his worried wife.~ IF ~~ THEN GOTO 154.5
END

IF ~~ THEN BEGIN 154.5
   SAY ~Do this, and you'll be looking at a nice share of the prize, savvy?~
       ++ ~I appreciate the alternative. I owe you one.~ GOTO 155
END

IF ~~ THEN BEGIN 155
   SAY ~I'll keep your word on that, mate.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",16)
   SetGlobal("h_PruflasQuest","GLOBAL",1)
   SetGlobal("h_SpawnQuass","GLOBAL",1)
   AddJournalEntry(@332,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 156
   SAY ~Nicely done. You've got a silver tongue, no doubt. Here's your cut for the job.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@336,QUEST_DONE)
   AddExperienceParty(800)
   GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 157
   SAY ~We need precision, not recklessness. There's no room for slip-ups in this line of work. Keep your wits about you next time, or we'll both be in hot water.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@337,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 158
   SAY ~The buyer will be waitin' for ya in the eastern-most tent, at the Nashkel Carnival.~
       ++ ~Is it safe going to Amn while we are at war with the Shadow Thieves?~ GOTO 159
       ++ ~How much gold should I be expecting from the buyer?~ GOTO 161
       ++ ~Anything else I should know?~ GOTO 162
END

IF ~~ THEN BEGIN 159
   SAY ~We've still got Procus holdin' down the fort, and things have been fairly quiet on that front.~ IF ~~ THEN GOTO 160
END

IF ~~ THEN BEGIN 160
   SAY ~Still, takin' risks is the name of the game. Without it, even the sharpest of thieves can grow soft.~
       ++ ~How much gold should I be expecting from the buyer?~ GOTO 161
       ++ ~Anything else I should know?~ GOTO 162
END

IF ~~ THEN BEGIN 161
   SAY ~You'll be movin' five pounds of black lotus at 600 gold pieces per pound. I'll cut ya in for a twenty-percent slice upon a successful run.~
       ++ ~Is it safe going to Amn while we are at war with the Shadow Thieves?~ GOTO 159
       ++ ~Anything else I should know?~ GOTO 162
END

IF ~~ THEN BEGIN 162
   SAY ~Best be stickin' to the side streets. The Flaming Fist might have their eyes peeled on the main drags.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",16)
   SetGlobal("h_FlamingFist","GLOBAL",1)
   SetGlobal("h_ExtraQuest","GLOBAL",1)
   AddJournalEntry(@327,QUEST)
   GiveItemCreate("h_misc07",LastTalkedToBy,5,0,0)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",16)~ THEN BEGIN 163
   SAY ~Welcome back. What news do you bring?~
       +~Global("h_LotusQuest","GLOBAL",1) PartyGoldGT(2999)~+ ~Had a run in with the Flaming Fist and the Shadow Thieves, but I pulled through. Here's the loot.~ GOTO 164
       +~Global("h_LotusQuest","GLOBAL",2) PartyGoldGT(2399)~+ ~The Flaming Fist got me on the road, had to give up a pound to see them off.~  GOTO 165
       +~Global("h_PruflasQuest","GLOBAL",3) Global("h_ExtraQuest","GLOBAL",0) NumDead("h_pruflc",0)~+ ~I was able to get Pruflas to return home to his wife.~ GOTO 156
       +~Global("h_PruflasQuest","GLOBAL",3) Global("h_ExtraQuest","GLOBAL",0) NumDead("h_pruflc",1)~+ ~Well, I kind of killed Pruflas by giving him too much black lotus.~ GOTO 157
       ++ ~Nothing new to report yet.~ EXIT
END

IF ~~ THEN BEGIN 164
   SAY ~I'll pocket the 3000 gold and kick back your twenty-percent, plus an extra five for your troubles, totalling 750 gold. Nice work out there, <CHARNAME>.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@331,QUEST_DONE)
   TakePartyItemAll("h_misc07")
   AddExperienceParty(800)
   TakePartyGold(3000)
   GiveGoldForce(750)~ EXIT
END

IF ~~ THEN BEGIN 165
   SAY ~Curse those bent coppers! But, either way, I tip me hat to your quick thinkin'. I'll take the 2400 gold and return your twenty-percent, which come to 480 gold.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@331,QUEST_DONE)
   TakePartyItemAll("h_misc07")
   AddExperienceParty(800)
   TakePartyGold(2400)
   GiveGoldForce(480)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",17)~ THEN BEGIN 166
   SAY ~No fresh leads at the moment. Have a word with the mates around the guild, they might have a bit of graft for ya.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",18)~ THEN BEGIN 167
   SAY ~So, you'll be leadin' us now, eh? Things were goin' rather smoothly 'til Baldwin went off his nut. Keep a steady hand, and we'll be right as rain.~ IF ~~ THEN EXIT
END

