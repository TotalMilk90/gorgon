BEGIN h_ariosd

IF ~GlobalLT("h_RigaldoQuest","GLOBAL",5)~ THEN BEGIN 0
   SAY @10000 /* Oi, look what the cat dragged in. You've got the look of trouble 'bout you, or maybe it's just the night playin' tricks. */ IF ~~ THEN EXIT
END

IF ~GlobalGT("h_RigaldoQuest","GLOBAL",4) GlobalLT("h_RigaldoQuest","GLOBAL",9) Global("h_ArioshQuest","GLOBAL",0)~ THEN BEGIN 1
   SAY @10001 /* Ah, you're not one of the usual faces I see around here. The name's Ariosh, and I'm the eyes and ears on the streets. */ IF ~~ THEN GOTO 3
END

IF ~GlobalGT("h_RigaldoQuest","GLOBAL",9) Global("h_ArioshQuest","GLOBAL",0)~ THEN BEGIN 2
   SAY @10001 /* Ah, you're not one of the usual faces I see around here. The name's Ariosh, and I'm the eyes and ears on the streets. */ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @10002 /* I'm the one who sniffs out the marks with something worth takin'. Be it in the heart of the city or someone passin' through with pockets jinglin', I'm the man who knows. */ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @10003 /* Now, if you're ready to dip your fingers into the grit and grime of the underworld, to snatch what's ours from the unsuspecting, I might just have some work for ya. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @10004 /* Make no mistake, this ain't a venture for the faint-hearted or those clutchin' onto their precious notions of virtue. */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @10005 /* We're talkin' about the kind of work that stains your hands, where the filth of the streets rubs off on you. */ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @10006 /* Of course, it ain't like it's for charity. You'll be well compensated for your efforts, assuming you're as capable as I've heard. */ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @10007 /* So, fancy yourself a sharp-eyed rogue? This could be the ticket. What's sayin', are you in? */
       ++ @10008 /* Let's get to work. */ GOTO 11
       ++ @10009 /* This isn't my kind of venture, I'll pass. */ GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @10010 /* Fair enough. No harm in knowing your limits. If you ever change your mind, you know where to find me. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",1)
   AddJournalEntry(@204,USER)~ EXIT
END

IF ~GlobalGT("h_RigaldoQuest","GLOBAL",4) GlobalLT("h_RigaldoQuest","GLOBAL",9) Global("h_ArioshQuest","GLOBAL",1)~ THEN BEGIN 10
 SAY @10011 /* Back for more, are ya? I've got a feeling you've had a change of heart. Ready to give it a go, or you still need some persuading? */
     ++ @10008 /* Let's get to work. */ GOTO 11
     ++ @10009 /* This isn't my kind of venture, I'll pass. */ EXIT
END

IF ~~ THEN BEGIN 11
   SAY @10012 /* Good choice, mate. You've just stepped into the real action. We'll make a fine team, mark my words. */ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY @10013 /* Right. Listen up then, here's your first gig. */ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY @10014 /* There's a pair of nobles passing through our town, loaded with coin and heading for the Nashkel Carnival. They're big spenders who are plannin' a little soiree outside the Jovial Juggler. */ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY @10015 /* Your job? Simple. Figure out the best way to separate them from their wealth, and make it happen. */ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY @10016 /* Employ your subtlety in gathering intel. It will be the linchpin to executing this mission with precision. */ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY @10017 /* Be mindful, however, they've got a keen-eyed bloke keepin' watch. Don't be using the ol' cut-an'-run while he's on duty. You'll need to outsmart and outmaneuver him for this job. */ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY @10018 /* Best not be makin' a mess on this venture, neither. These bigwigs have connections, and they'll be sendin' an army down if we start droppin' bodies. Got it? */
       ++ @10019 /* No mess, no complications. I'll keep it clean and quiet. */ GOTO 18
       ++ @10020 /* No bloodshed, and no stealing while the guard's watching. */ GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY @10021 /* Right. Assimilate and gather information, then make your move to claim each one of the nobles purses. */ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY @10022 /* They won't be kickin' off 'til the moon has her hold, so bide your time and strike when the night's embrace offers cover. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",2)
   SetGlobal("h_SpawnParty","GLOBAL",1)
   AddJournalEntry(@510,QUEST)~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",2)~ THEN BEGIN 20
   SAY @10023 /* Back from the streets, are ya? Did your wits and skills serve you well in the pursuit of our prize? */
       +~PartyHasItem("h_misc19") NumItemsPartyLT("h_misc20",1)~+ @10024 /* I only managed to swipe one purse. */ GOTO 21
       +~PartyHasItem("h_misc20") NumItemsPartyLT("h_misc19",1)~+ @10024 /* I only managed to swipe one purse. */ GOTO 21
       +~PartyHasItem("h_misc19") PartyHasItem("h_misc20")~+ @10025 /* Got both purses right here. */ GOTO 22
       +~Global("h_BouncerCaught","GLOBAL",1) NumItemsPartyLT("h_misc20",1) NumItemsPartyLT("h_misc19",1)~+ @10026 /* Seems I've returned emptyhanded. The bouncer caught wind of me, mid-pick, and called off the party. */ GOTO 23
       ++ @10027 /* I'll be heading down shortly. */ EXIT
END

IF ~~ THEN BEGIN 21
   SAY @10028 /* Alright, you've got one purse. It's a start, but we aim for precision in this game. Keep your wits sharp, keep practicing, and next time, we'll clean 'em out proper. Here's your share for what you've earned. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",3)
   SetGlobal("h_EndParty","GLOBAL",1)
   SetGlobal("h_DrunkBrawl","GLOBAL",3)
   AddJournalEntry(@514,QUEST_DONE)
   TakePartyItem("h_misc19")
   TakePartyItem("h_misc20")
   DestroyItem("h_misc19")
   DestroyItem("h_misc20")
   AddExperienceParty(400)
   GiveGoldForce(200)~ EXIT
END

IF ~~ THEN BEGIN 22
   SAY @10029 /* Hah! That's the spirit! You've got the touch, my friend. Those nobles won't know what hit 'em. Here's your cut of the loot, enjoy it and keep up the good work. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",3)
   SetGlobal("h_EndParty","GLOBAL",1)
   SetGlobal("h_DrunkBrawl","GLOBAL",3)
   AddJournalEntry(@515,QUEST_DONE)
   TakePartyItem("h_misc19")
   TakePartyItem("h_misc20")
   DestroyItem("h_misc19")
   DestroyItem("h_misc20")
   AddExperienceParty(600)
   GiveGoldForce(400)~ EXIT
END

IF ~~ THEN BEGIN 23
   SAY @10030 /* Blast it all! This ain't no nursery rhyme, <CHARNAME>. We're thieves, not clowns! You've got to up your game, or we'll be left with naught but pockets full of air. */ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY @10031 /* Next time, get out there and do it right, be slicker, and make sure you come back with somethin' worthwhile. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",3)
   SetGlobal("h_EndParty","GLOBAL",1)
   SetGlobal("h_DrunkBrawl","GLOBAL",3)
   AddJournalEntry(@509,QUEST_DONE)~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",3)~ THEN BEGIN 25
   SAY @10032 /* Ah, you've got that look about you, like you're itching for more action, eh? Well, it just so happens I've got another job that might stir your blood. */ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY @10033 /* We've got some freelancing rogues stirrin' up trouble in our turf, see? They're a nuisance we can't afford. */ IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY @10034 /* I need someone to teach 'em a lesson, but not just any lesson. We're gonna play a little game, you and me. */ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY @10035 /* You're gonna be the bait, lure 'em out, and then... well, let's just say you'll teach them the price of crossing us. */
       ++ @10036 /* Is there any more intel for me? Names, or how many we're dealing with? */ GOTO 29
       ++ @10037 /* Want me to gut 'em or just give a proper fright? */ GOTO 30
       ++ @10038 /* I'll deal with 'em proper. Just point me in the right direction. */ GOTO 31
       ++ @10039 /* I have some other things I need to do first. */ EXIT
END

IF ~~ THEN BEGIN 29
   SAY @10040 /* The leader goes by Blackthorn. Real thorn in my arse if ya ask me. He's got a small crew, just a few men with him, nothing substantial. */
       ++ @10041 /* Want me to gut 'em or just give 'em a right scare? */ GOTO 30
       ++ @10038 /* I'll deal with 'em proper. Just point me in the right direction. */ GOTO 31
END

IF ~~ THEN BEGIN 30
   SAY @10042 /* I'll trust your judgment. Just make certain they grasp the severity of the matter. If a proper scare won't suffice, consider offering a more... permanent solution. */
       ++ @10036 /* Is there any more intel for me? Names, or how many we're dealing with? */ GOTO 29
       ++ @10038 /* I'll deal with 'em proper. Just point me in the right direction. */ GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY @10043 /* Head to the north part of town, by the gardens. Wait until after sunset, and they'll be sure to strike. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",4)
   SetGlobal("h_SpawnBlackthorn","GLOBAL",1)
   AddJournalEntry(@516,QUEST)~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",4)~ THEN BEGIN 32
   SAY @10044 /* Swiftly, head to the northern gardens. That's where Blackthorn and his crew will strike, after the sun dips below the horizon. */ IF ~~ THEN EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",5)~ THEN BEGIN 33
   SAY @10045 /* Back from navigatin' the shadowy byways, are ya?  Let's have it then, how'd it play out with the mark? */
       +~Global("h_BlackFight","GLOBAL",1)~+ @10046 /*  The streets have swallowed 'em whole. They won't be causin' no more trouble for anyone. */ GOTO 34
       +~Global("h_BlackLeave","GLOBAL",1)~+ @10047 /* I convinced 'em to find new ground. They wont be coming back. */ GOTO 36
       +~Global("h_BlackJoin","GLOBAL",1)~+ @10048 /* Got 'em on board. They'll be workin' with us from now on. Expanding our reach, just like you wanted. */ GOTO 38
END

IF ~~ THEN BEGIN 34
   SAY @10049 /* You've shown 'em the cold, hard truth of the streets, mate. Sometimes, it's the only language they understand. */ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
   SAY @10050 /* The Gorgon's Eye's got your back, always remember that. Loyalty like yours is gold in these alleys. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",6)
   AddJournalEntry(@520,QUEST_DONE)
   AddExperienceParty(400)
   GiveGoldForce(300)~ EXIT
END

IF ~~ THEN BEGIN 36
   SAY @10051 /* Sharp work, that. No need for unnecessary blood spillin'. You've got a way with words, a way that makes 'em see the light. */ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
   SAY @10052 /* The streets will remember this, and our foes won't forget your finesse. You're makin' quite the name for yourself, I'll tell ya. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",6)
   AddJournalEntry(@520,QUEST_DONE)
   AddExperienceParty(600)
   GiveGoldForce(300)~ EXIT
END

IF ~~ THEN BEGIN 38
   SAY @10053 /* If I didn't see it with me own eyes, I wouldn't have believed it. You've got a way about ya, mate. */ IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
   SAY @10054 /* Bringin' others into the fold, expandin' our grip on these cobbled streets. That's how the Gorgon's Eye grows, that's how it thrives. */ IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
   SAY @10055 /* It's a feat not many could pull off. You're makin' history on these streets, you are. Well done, mate. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",6)
   AddJournalEntry(@520,QUEST_DONE)
   AddExperienceParty(600)
   GiveGoldForce(300)~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",6)~ THEN BEGIN 41
   SAY @10056 /* Right, next bit of business for ya, then. Got a job lined up that needs a swift step and a dance in the shadows. */ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
   SAY @10057 /* We've got some choice goods stashed away in various drop points across the city. You'll need to move like a shadow and retrieve them without catching the eye of the City Watch. */ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
   SAY @10058 /* Before you make your move, take a stroll, get the lay of the land, and see where them City Watch dogs are prowling. */ IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
   SAY @10059 /* You'll want to be as sly as a fox, slippin' past 'em without 'em even sniffin' you out. Once you've got their routines down, that's when you make your move. Smooth as silk, understand? */
        ++ @10060 /* What kind of loot are we looking at? */ GOTO 45
        ++ @10061 /* If things take a turn, how should I handle the City Watch? */ GOTO 48
        ++ @10062 /* Got it. Where can I find the drop points? */ GOTO 51
        ++ @10039 /* I have some other things I need to do first. */ EXIT
END

IF ~~ THEN BEGIN 45
   SAY @10063 /* Each of these spots holds a black sack, tied up nice and tight, containing a trove of illicit goods. */ IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
   SAY @10064 /* You'll find a mix of stolen valuables, artifacts, and contraband that will fetch quite a sum on the black market. */ IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
   SAY @10065 /* It's a good haul, no doubt about it. But remember, these goods ain't just valuable, they're symbols of our prowess. Treat 'em with care, and they'll repay you in kind. */
        ++ @10061 /* If things take a turn, how should I handle the City Watch? */ GOTO 48
        ++ @10062 /* Got it. Where can I find the drop points? */ GOTO 51
END

IF ~~ THEN BEGIN 48
   SAY @10066 /* If you find yourself in their sights, keep your wits about you. */ IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
   SAY @10067 /* A silver tongue might just charm 'em long enough for you to slip away. Quick feet, of course, are your best bet. Dodging 'round corners, vanishin' into the night. */ IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
   SAY @10068 /* Should push come to shove, don't hesitate to defend yourself. Better to come out on top than find yourself in their cells. */
        ++ @10060 /* What kind of loot are we looking at? */ GOTO 45
        ++ @10062 /* Got it. Where can I find the drop points? */ GOTO 51
END

IF ~~ THEN BEGIN 51
   SAY @10069 /* The stash spots are spread across the city, tucked away in nooks and crannies only the slyest can find. */ IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
   SAY @10070 /* One crate, nestled near the southern fountain, holds our first prize. */ IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
   SAY @10071 /* Watch for the play of moonlight on the water, it'll guide your way. And remember, patience is key. Let the city's rhythm be your ally. */ IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
   SAY @10072 /* Hidden beneath the northern gardens, you'll find a barrel with its secrets. */ IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
   SAY @10073 /* The shadows there are deep, and the air is thick with the scent of night-blooming flowers. Keep your senses sharp, and you'll be on your way in no time. */ IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
   SAY @10074 /* By the Smithy, there's a sack with our prize, waiting for its rightful owner. */ IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
   SAY @10075 /* The clink of hammer on anvil will be your backdrop. Watch for the Smithy's apprentice, he's an early riser. A quick hand will serve you well. */ IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
   SAY @10076 /* Just remember, our reputation rests on your shoulders. Make us proud, and get back here in one piece. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",7)
   SetGlobal("h_AddLoot","GLOBAL",1)
   SetGlobal("h_ReplaceCityWatch","GLOBAL",1)
   SetGlobal("h_NewCityWatch","GLOBAL",1)
   AddJournalEntry(@521,QUEST)~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",7)~ THEN BEGIN 59
   SAY @10077 /* The night's young, and those coffers ain't gonna collect themselves. Get back out there and finish the job. */ IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~NumItemsParty("h_misc21",3)~ THEN BEGIN 60
   SAY @10078 /* Back in one piece, I see. How'd the mission go? Any trouble slippin' past those City Watch dogs? */
       +~NumDeadLT("h_city2c",2) NumDeadGT("h_city2c",0)~+ @10079 /* The goods are retrieved, but I had to silence a guard. No other choice. */ GOTO 61
       +~NumDeadGT("h_city2c",1)~+ @10080 /* It got messy out there. Had to send a few of 'em to the other side. But I got the job done. */ GOTO 63
       +~NumDead("h_city2c",0) Global("h_BluffedWatch","GLOBAL",1)~+ @10081 /* A little smooth talking did the trick. The City Watch never knew what hit 'em. */ GOTO 65
       +~NumDead("h_city2c",0) Global("h_BluffedWatch","GLOBAL",0)~+ @10082 /* The mission went smoothly, flew past 'em like a shadow. */ GOTO 67
END

IF ~~ THEN BEGIN 61
   SAY @10083 /* Had to draw blood, did ya? It's a dangerous path we tread, but sometimes it can't be helped. */ IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
   SAY @10084 /* Just be wary of the repercussions. Word of a fallen guard spreads fast. Come morning, the town might be buzzing with talk. Here's your take. Good work. */
IF ~~ THEN DO ~
   SetGlobal("h_ReplaceCityWatch","GLOBAL",2)
   SetGlobal("h_ArioshQuest","GLOBAL",8)
   AddJournalEntry(@523,QUEST_DONE)
   TakePartyItemAll("h_misc21")
   DestroyItem("h_misc21")
   AddExperienceParty(400)
   GiveGoldForce(450)~ EXIT
END

IF ~~ THEN BEGIN 63
   SAY @10085 /* Multiple guards, eh? That's a heavier toll. We can't afford to make too much noise. The City Watch won't take kindly to a spree like that. */ IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64
   SAY @10086 /* Keep your wits about you, we don't want the whole town on our backs. Come dawn, there'll be no end to the chatter about this. Here's your take. Good work. */
IF ~~ THEN DO ~
   SetGlobal("h_ReplaceCityWatch","GLOBAL",2)
   SetGlobal("h_ArioshQuest","GLOBAL",8)
   AddJournalEntry(@523,QUEST_DONE)
   TakePartyItemAll("h_misc21")
   DestroyItem("h_misc21")
   AddExperienceParty(400)
   GiveGoldForce(450)~ EXIT
END

IF ~~ THEN BEGIN 65
   SAY @10087 /* Talked your way out of it, did you? Quick thinking, that's what I like to hear. But don't get too complacent. */ IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
   SAY @10088 /* The City Watch ain't known for their forgetfulness. Come sunrise, there might be more eyes on us. Here's your take. Good work. */
IF ~~ THEN DO ~
   SetGlobal("h_ReplaceCityWatch","GLOBAL",2)
   SetGlobal("h_ArioshQuest","GLOBAL",8)
   AddJournalEntry(@523,QUEST_DONE)
   TakePartyItemAll("h_misc21")
   DestroyItem("h_misc21")
   AddExperienceParty(600)
   GiveGoldForce(450)~ EXIT
END

IF ~~ THEN BEGIN 67
   SAY @10089 /* Gliding through the dark streets like a whispering breeze, leaving no trace of your passage. That's the mark of a true rogue. */ IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
   SAY @10090 /* Remember, in this line of work, the shadows are your closest confidants, and the night is your canvas. Here's your take. Good work. */
IF ~~ THEN DO ~
   SetGlobal("h_ReplaceCityWatch","GLOBAL",2)
   SetGlobal("h_ArioshQuest","GLOBAL",8)
   AddJournalEntry(@523,QUEST_DONE)
   TakePartyItemAll("h_misc21")
   DestroyItem("h_misc21")
   AddExperienceParty(900)
   GiveGoldForce(450)~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",8)~ THEN BEGIN 69
   SAY @10091 /* Alright, lean in close. This one's got more twists than a coil of serpents. We've got a snake in our midst, slipping secrets to the City Watch. */ IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
   SAY @10092 /* This ain't a matter to take lightly. If we don't cut the head off this viper soon, it could mean curtains for all of us. */ IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71
   SAY @10093 /* Now, here's where things get interesting. We've got our own bloke in the Watch, ears to the ground. */ IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
   SAY @10094 /* Word has it they've been utilizing a secret drop behind the Burning Wizard to exchange more than just pleasantries, if you catch my drift. */ IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73
   SAY @10095 /* Our man in the Watch penned up an official note, one that invites the turncoat to a rendezvous at the southern fountains. Only, it ain't the Watch who'll be showing up. */ IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74
   SAY @10096 /* Instead, it's gonna be you, blades drawn and ready for a little chat. I want this dealt with, and no half-measures. */
       ++ @10097 /* So, we've got an inside man? Alright, what's the play? */ GOTO 75
       ++ @10098 /* A traitor among us. Let's smoke them out before they do more damage. */ GOTO 75
       ++ @10039 /* I have some other things I need to do first. */ EXIT
END

IF ~~ THEN BEGIN 75
   SAY @10099 /* Your first move is dropping off that note in broad daylight when the town's alive and bustling. It'll be your ticket to blend in, making you seem like just another face in the crowd. */ IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76
   SAY @10100 /* Then, when the night blankets the town, head to the fountain. Stay sharp, and keep your guard up. This is where the traitor's tale reaches its final chapter. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",9)
   SetGlobal("h_BlackFight","GLOBAL",2)
   AddJournalEntry(@524,QUEST)
   GiveItemCreate("h_misc22",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",9)~ THEN BEGIN 77
   SAY @10101 /* Remember, <CHARNAME>, this mission is bound to get messy. Keep your wits about you, and don't hesitate to get your hands dirty. */ IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~Global("h_KilledValera","GLOBAL",1)~ THEN BEGIN 78
   SAY @10102 /* Aye, you're back, and I can see it in your eyes, <CHARNAME>. You've done what needed to be done. */
       ++ @10103 /* Valera's coin has been spent. The city won't hear her whispers again. */ DO ~SetGlobal("h_KilledValera","GLOBAL",2)~ GOTO 79
END

IF ~~ THEN BEGIN 79
   SAY @10104 /* Valera, bless her thieving heart. She had a nose for a glint of gold, that one. I'll pour one out for her, aye, a proper rogue she was. */ IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80
   SAY @10105 /* Nothin' left for her now but shadows and echoes. She danced with the devil, mate. Playin' both sides of the coin, and there's only one way that tale ends. */ IF ~~ THEN GOTO 83
END

IF WEIGHT #-2 ~Global("h_ValeraQuest","GLOBAL",2) Global("h_BlackJoin","GLOBAL",0)~ THEN BEGIN 81
   SAY @10105 /* Nothin' left for her now but shadows and echoes. She danced with the devil, mate. Playin' both sides of the coin, and there's only one way that tale ends. */ IF ~~ THEN GOTO 83
END

IF WEIGHT #-2 ~Global("h_ValeraQuest","GLOBAL",4) Global("h_BlackJoin","GLOBAL",1)~ THEN BEGIN 82
   SAY @10105 /* Nothin' left for her now but shadows and echoes. She danced with the devil, mate. Playin' both sides of the coin, and there's only one way that tale ends. */ IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83
   SAY @10106 /* Loose ends... they're dangerous, yeah? Can't have secrets whisperin' in the wrong ears, not in this game. */ IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84
   SAY @10107 /* It's a dark path, but it's the only path that keeps us all breathin'. Remember that, <CHARNAME>. Remember what it means to walk these streets. */
IF ~~ THEN DO ~
      SetGlobal("h_BlackLeave","GLOBAL",1)
      SetGlobal("h_ValeraQuest","GLOBAL",5)
      SetGlobal("h_ArioshQuest","GLOBAL",10)
      AddJournalEntry(@527,QUEST_DONE)
      AddExperienceParty(600)
      GiveGoldForce(200)~ EXIT
END

IF ~GlobalLT("h_BaldwinQuest","GLOBAL",8) Global("h_ArioshQuest","GLOBAL",10)~ THEN BEGIN 85
   SAY @10108 /* Aye, <CHARNAME>, the streets have grown quiet of late, but fret not. Patience is a blade in its own right, and in due time, opportunities will sprout like weeds in the cracks. */ IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86
   SAY @10109 /* Keep those ears to the ground, and before you know it, we'll have our hands full with mischief aplenty. */
IF ~~ THEN DO ~
   AddJournalEntry(@205,USER)~ EXIT
END

IF ~GlobalGT("h_BaldwinQuest","GLOBAL",7) Global("h_ArioshQuest","GLOBAL",10)~ THEN BEGIN 87
   SAY @10110 /* Alright, mate. I've got the low-down on some stirrings within the City Watch. But first, we've got some business to attend to. */ IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88
   SAY @10111 /* It's time to make our rounds and collect what's rightfully ours from the local establishments. */ IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89
   SAY @10112 /* Four inns and taverns in this fine town, each owing their safety to us. We make sure they stay open, and they pay us in return. */ IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90
   SAY @10113 /* It's the way of things, you see. These places thrive under our watchful eye, and it's high time they showed us their gratitude. */ IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91
   SAY @10114 /* Now, go forth, and ensure our coffers are well-lined. Report back when you've secured our dues. */
       ++ @10115 /* How much coin should I be collecting from each business? */ GOTO 92
       ++ @10116 /* What happens if they refuse to pay? */ GOTO 93
       ++ @10117 /* Is there any specific place I should start with? */ GOTO 94
       ++ @10118 /* Alright, I'll come back with the payments. */ GOTO 95
       ++ @10119 /* I'm not interested in this kind of work right now. */ EXIT
END

IF ~~ THEN BEGIN 92
   SAY @10120 /* A proper sack from each lad. You'll know it's all accounted for when you lay eyes on it, nothin' to fuss about. */
       ++ @10116 /* What happens if they refuse to pay? */ GOTO 93
       ++ @10117 /* Is there any specific place I should start with? */ GOTO 94
       ++ @10118 /* Alright, I'll come back with the payments. */ GOTO 95
       ++ @10119 /* I'm not interested in this kind of work right now. */ EXIT
END

IF ~~ THEN BEGIN 93
   SAY @10121 /* Refusal isn't an option, <CHARNAME>. If necessary, be ready to to use a sharp tongue, or an even sharper blade. We can't afford any shirkers. */
       ++ @10115 /* How much coin should I be collecting from each business? */ GOTO 92
       ++ @10117 /* Is there any specific place I should start with? */ GOTO 94
       ++ @10118 /* Alright, I'll come back with the payments. */ GOTO 95
       ++ @10119 /* I'm not interested in this kind of work right now. */ EXIT
END

IF ~~ THEN BEGIN 94
   SAY @10122 /* Doesn't make a lick of difference, mate. Just make sure to hit 'em all, Feldepost's, the Juggler, Burnin' Wizard, and the Red Sheaf. */
       ++ @10115 /* How much coin should I be collecting from each business? */ GOTO 92
       ++ @10116 /* What happens if they refuse to pay? */ GOTO 93
       ++ @10118 /* Alright, I'll come back with the payments. */ GOTO 95
       ++ @10119 /* I'm not interested in this kind of work right now. */ EXIT
END

IF ~~ THEN BEGIN 95
   SAY @10123 /* Good. Make sure you do, and make sure it's all there. We'll be watching, and those blokes better know what's good for 'em. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",11)
   AddJournalEntry(@528,QUEST)~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",11)~ THEN BEGIN 96
   SAY @10124 /* Well, <CHARNAME>, how's the coin flowin' in? Any trouble with them tavern-keepers? */
       +~NumItemsParty("h_misc23",3) Global("h_KilledBartender","GLOBAL",0)~+ @10125 /* Only the Red Sheaf couldn't pay. I thought it best to give them a warning instead of resorting to... drastic measures. */ GOTO 97
       +~NumItemsParty("h_misc23",3) Global("h_KilledBartender","GLOBAL",1)~+ @10126 /* Only the Red Sheaf couldn't pay. I chose to make an example out of him. He won't be causing any more trouble. */ GOTO 99
       +~NumItemsPartyLT("h_misc23",3)~+ @10127 /* Still makin' the rounds. Be back in a jiffy. */ EXIT
END

IF ~~ THEN BEGIN 97
   SAY @10128 /* A warning, eh? Sometimes, a lesson needs to be carved in blood for it to stick. */ IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98
   SAY @10129 /* I'll have a couple of the lads pay our friend another visit. He'll learn soon enough what happens when he crosses the Gorgon's Eye. */ IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 99
   SAY @10130 /* Good work, <CHARNAME>. You've got a strong hand. No room for weakness in this business. The Red Sheaf will remember this lesson. */ IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100
   SAY @10131 /* This is how we keep the wheels turning in Beregost. Every coin collected strengthens our grip, ensures our safety, and keeps the Gorgon's Eye thriving. Keep it up. */
IF ~~ THEN DO ~
      SetGlobal("h_ArioshQuest","GLOBAL",12)
      AddJournalEntry(@536,QUEST_DONE)
      ReputationInc(-1)
      TakePartyItemAll("h_misc23")
      DestroyItem("h_misc23")
      AddExperienceParty(800)
      GiveGoldForce(600)~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",12)~ THEN BEGIN 101
   SAY @10132 /* Listen close, <CHARNAME>, word's reached me from our mole in the Watch. They say we've got ourselves a proper high-hat Inspector who's crawled his way down from the Gate. */ IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102
   SAY @10133 /* This bloke's no pushover. Nah, he's got a sharp wit, and he ain't afraid to use it. Takes his job seriously, he does. Flaming Fist through and through. */ IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103
   SAY @10134 /* Except, he don't play by the usual rules, and he's none too happy 'bout the state of things 'ere. Rampant thievin', he says, and our little 'gang' gets the blame. */ IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104
   SAY @10135 /* Here's where you come in, mate. We need this Inspector gone, sharpish. No room for niceties, no room for second-guessin'. Just sharp steel and a quick exit. */ IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 105
   SAY @10136 /* You make it look like the Watch's got itself a leaky roof, and we get to breathe easy. */
       ++ @10137 /* What's so dangerous about this guy? */ GOTO 106
       ++ @10138 /* Consider it done. Where can I find this Inspector? */ GOTO 111
END

IF ~~ THEN BEGIN 106
   SAY @10139 /* He's got a knack for reading between the lines, see? Knows how to play the game better than most of those Flaming Fist types. */ IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107
   SAY @10140 /* He's not just a musclehead, but a thinker. A master of craft and guile, not brawn and badges. */ IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 108
   SAY @10141 /* This Inspector's got a reputation for getting things done, no matter the cost. And he's got a particular taste for rooting out trouble. */ IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109
   SAY @10142 /* If he's sniffing around, you can bet he's after something big. We've got to be extra careful with this one, mate. He's a different breed entirely. */
       ++ @10138 /* Consider it done. Where can I find this Inspector? */ GOTO 111
END

IF ~~ THEN BEGIN 110
   SAY @10143 /* Aye, so she did. Valera had her ear to the ground after all. Guess she was spouting the truth. */
       ++ @10137 /* What's so dangerous about this guy? */ GOTO 106
       ++ @10138 /* Consider it done. Where can I find this Inspector? */ GOTO 111
END

IF ~~ THEN BEGIN 111
   SAY @10144 /* Ah, now that's the tricky bit. Our mole in the Watch has given us a bit of a lead. The Inspector is holding a meeting tonight in Beregost's eastside. */ IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112
   SAY @10145 /* They're trying to coordinate efforts to deal with the likes of us. It's your job to make sure they don't get too cozy with the locals, if you catch my drift. */ IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113
   SAY @10146 /* You'll need to be a shadow, <CHARNAME>. Slip into that meeting like a ghost. And when the moment's ripe, snuff him out. Make it swift, and leave no trace behind. */
IF ~~ THEN DO ~
      SetGlobal("h_ArioshQuest","GLOBAL",13)
      SetGlobal("h_SpawnDecoy","GLOBAL",1)
      AddJournalEntry(@537,QUEST)~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",13)~ THEN BEGIN 114
   SAY @10147 /* Make it clean and make it count. You've got one chance at this, don't squander it. */
       +~Dead("h_decoyc")~+ @10148 /* The Inspector ran a clever game on us. The meeting was a ploy to smoke out our mole, and it worked. */ GOTO 115
       +~NumDeadLT("h_decoyc",1)~+ @10149 /* I'll take him out, don't you worry. */ EXIT
END

IF ~~ THEN BEGIN 115
   SAY @10150 /* That Inspector's got more tricks up his sleeve than I gave him credit for. Damn it! We need to regroup and plan our next move. */ IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116
   SAY @10151 /* He'll get our man, the poor bastard, and he's gonna be in for a world of pain. I don't doubt his loyalty, but the Inspector won't hold back, and I dread to think what he'll do to get his answers. */ IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117
   SAY @10152 /* He's surely no ordinary copper. He's sharp, and he's got a plan. We must be ready, <CHARNAME>. This game just got deadlier, and we can't afford any missteps. */ IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118
   SAY @10153 /* We'll need to be one step ahead if we're going to make it out of this mess. */
IF ~~ THEN DO ~
      SetGlobal("h_ArioshQuest","GLOBAL",14)
      AddJournalEntry(@539,QUEST_DONE)
      AddExperienceParty(800)
      GiveGoldForce(400)~ EXIT
END

IF WEIGHT #-1 ~Global("h_ArioshQuest","GLOBAL",14) Dead("blacklily")~ THEN BEGIN 119
   SAY @10154 /* Aye, it seems we've underestimated this Inspector. We need to get inside his head, find his weaknesses, and turn the tables in our favor. */ IF ~~ THEN EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",14)~ THEN BEGIN 120
   SAY @10154 /* Aye, it seems we've underestimated this Inspector. We need to get inside his head, find his weaknesses, and turn the tables in our favor. */ IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121
   SAY @10155 /* We need to take this fight to the heart of his throne, Baldur's Gate, where there's no better contact for gatherin' intel than Black Lily. */ IF ~~ THEN GOTO 122
END

IF ~~ THEN BEGIN 122
   SAY @10156 /* She's a shrewd operator, knows the ins and outs of the city better than anyone. I've known her for some time, and I'll admit, there's a certain admiration there. */ IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 123
   SAY @10157 /* Clever, resourceful, and as sharp as a stiletto. Mind yourself with her, she's got a knack for sussing out any hidden agenda. */ IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 124
   SAY @10158 /* Head to Baldur's Gate, find Black Lily, and see what she knows about this Inspector. Bring back whatever you find, and we'll use it to cut this snake down to size. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",15)
   SetGlobal("h_BlackLilyQuest","GLOBAL",1)
   AddJournalEntry(@540,QUEST)~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",15)~ THEN BEGIN 125
   SAY @10159 /* You'll be findin' Black Lily at the Baldur's Gate thieves guild. Remember, we may dance on different streets, but we ain't at each other's throats. You'll be stepping onto neutral ground. */
IF ~~ THEN EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",16)~ THEN BEGIN 126
   SAY @10160 /* This Inspector, he's been a thorn in our side for far too long, and when you were up at the Gate, he hit us hard. */ IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 127
   SAY @10161 /* Swept our drop spots, nabbed a dozen of our blokes, and even sent a few of 'em to meet the Reaper. He needs to pay, and we need to make sure of it. */ IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 128
   SAY @10162 /* So, listen close, mate. In case this plan don't dance the way we'd like, I've got an insurance policy for ya. */ IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129
   SAY @10163 /* This 'ere's an incendiary device, specially made to set things ablaze quick as a flash. I want ya to tuck it away in the Jovial Juggler's kitchen, amidst all them liquor barrels and cookin' oils. */ IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 130
   SAY @10164 /* Then, you let the bartender know that unless he follows your lead, that place'll be reduced to cinders. */ IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 131
   SAY @10165 /* And if that Inspector tries to pull a fast one, don't hesitate to light the fuse and give him a fiery send-off. */ IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132
   SAY @10166 /* But remember, it's a last resort, understand? If things can be resolved without the extra fuss, then by all means, we'll take that route. */
       ++ @10167 /* What's the range on this thing? How far do I need to be before I set it off? */ GOTO 133
       ++ @10168 /* What's the likelihood of collateral damage with this plan? */ GOTO 135
       ++ @10169 /* Understood, Ariosh. I'm prepared for whatever comes our way. */ GOTO 137
END

IF ~~ THEN BEGIN 133
   SAY @10170 /* Aye, you'll need to be within a reasonable distance to set it off. Any spot on the ground level should work. But don't worry, I've got a potion that'll offer you some protection from the flames. */ IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134
   SAY @10171 /* It won't make you fireproof, mind you, but it'll help keep you from being scorched too badly. */
       ++ @10168 /* What's the likelihood of collateral damage with this plan? */ GOTO 135
       ++ @10169 /* Understood, Ariosh. I'm prepared for whatever comes our way. */ GOTO 137
END

IF ~~ THEN BEGIN 135
   SAY @10172 /* Collateral damage will be high, no doubt about it. Anyone in the vicinity when that thing goes off is likely to meet a fiery end. */ IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136
   SAY @10173 /* That includes the Inspector, but it also means anyone else in the way. It's a last resort, lad. We're not taking this lightly. */
       ++ @10167 /* What's the range on this thing? How far do I need to be before I set it off? */ GOTO 133
       ++ @10169 /* Understood, Ariosh. I'm prepared for whatever comes our way. */ GOTO 137
END

IF ~~ THEN BEGIN 137
   SAY @10174 /* Good. Remember, we're counting on you. Don't let us down, mate. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",17)
   SetGlobal("h_DecoyAttack","GLOBAL",2)
   SetGlobal("h_BarWatchAttack","GLOBAL",2)
   SetGlobal("h_ReplaceCityWatch","GLOBAL",1)
   AddJournalEntry(@546,QUEST)
   GiveItemCreate("h_misc26",LastTalkedToBy,0,0,0)
   GiveItemCreate("POTN02",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",17)~ THEN BEGIN 138
   SAY @10175 /* Set that device up in the kitchen, yeah? And try to be sneaky about it. Force the barkeep to play his part, sit back, and watch the final of act of the Inspector's play. */ IF ~~ THEN EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",18)~ THEN BEGIN 139
   SAY @10176 /* Word's already gettin' 'round about something big going down at the Juggler. Let's get a formal report, yeah? */
       +~Global("h_PoisonInspector","GLOBAL",1)~+ @10177 /* The plan was smooth sailing. Ishani played it off well and the Inspector went down without a fuss. */ GOTO 140
       +~Global("h_PoisonFailInspector","GLOBAL",1) Global("h_FireInspector","GLOBAL",0)~+ @10178 /* The Inspector saw through the ruse, forcing my hand to take action. */ GOTO 141
       +~Global("h_FightInspector","GLOBAL",1) Global("h_PoisonFailInspector","GLOBAL",0)~+ @10179 /* I didn't want to risk the plan failing, so I took matters into my own hands. */ GOTO 142
       +~Global("h_FireInspector","GLOBAL",1)~+ @10180 /* Had no choice but to blow the joint. The Inspector was burned alive. */ GOTO 143
END

IF ~~ THEN BEGIN 140
   SAY @10181 /* Ishani's charms and that tainted chalice did the trick, eh? Well played. */ IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 141
   SAY @10182 /* A twist in the plot, it seems. The Inspector wasn't an easy mark, and he smelt a rat. Your intervention was the only way to secure our hides, well done. */ IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 142
   SAY @10183 /* Alright, mate. You didn't stick to the original script, but you got the job done, and that's what matters. */ IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 143
   SAY @10184 /* Damn it, things got messier than I'd have liked. It was a tough call, no doubt about it. But you did what you had to do to get the job done. */ IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144
   SAY @10185 /* The Inspector's out of the picture, and the Watch, who thought they had us cornered, are starting to question where their loyalties lie. */ IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145
   SAY @10186 /* Word's spreading about our mettle, and the whispers of dissent are growing louder. Soon, it'll just be Commander Whitewood left standing, and the Gorgon's Eye will rise. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",19)
   AddJournalEntry(@551,QUEST_DONE)
   AddExperienceParty(800)
   GiveGoldForce(400)~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",19)~ THEN BEGIN 146
   SAY @10187 /* <CHARNAME>, we are on the cusp of victory. Whitewood is the last hurdle standing between us and absolute control of Beregost. But she's not standing alone. */ IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 147
   SAY @10188 /* She commands her most ardent Valkyries, Clare and Theresa Gallant. A pair of dangerous and deadly sisters of divine heritage, forever steadfast in their sacred duty. */ IF ~~ THEN GOTO 148
END

IF ~~ THEN BEGIN 148
   SAY @10189 /* These lieutenants, they're the cogs keeping her contraption in motion, and we've got to yank 'em out. */ IF ~~ THEN GOTO 149
END

IF ~~ THEN BEGIN 149
   SAY @10190 /* Clare's a creature of habit, you see. Each dawn, like clockwork, she takes a stroll down the temple byway to the southeast. A soft spot for nature, that one. */ IF ~~ THEN GOTO 150
END

IF ~~ THEN BEGIN 150
   SAY @10191 /* It's our bit of good fortune that this locale's a bit off the beaten path, away from prying eyes. No witnesses, no curious onlookers. It's the perfect moment to make our move. */ IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151
   SAY @10192 /* Now, Theresa, she's a different sort altogether. She's as battle-hardened as they come, wears her scars like a badge of honor. */ IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 152
   SAY @10193 /* She's not one to frequent the finer establishments. No, she prefers the after hours rough-and-tumble of the Burning Wizard. */ IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 153
   SAY @10194 /* You'll find her there, more often than not, nursin' a tankard of ale, or sharin' a bed with whatever 'lucky' bloke catches her eye. */ IF ~~ THEN GOTO 154
END

IF ~~ THEN BEGIN 154
   SAY @10195 /* Listen up, mate. This ain't a game of brawn, it's a dance of finesse. Timing is key, and you'll need to be as quiet as a whisper in a silent room. We don't want a whiff of our scent near 'em. */ IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155
   SAY @10196 /* Slide through the shadows, stay low, and make sure they never even catch a glimpse of you. When you're close, strike fast, one lethal blow from behind, swift as a serpent's bite. */ IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 156
   SAY @10197 /* This is true assassination work, reserved for the masters of stealth and precision. One strike, one life extinguished. */ IF ~~ THEN GOTO 157
END

IF ~~ THEN BEGIN 157
   SAY @10198 /* It's a dance, my friend, and you're about to lead. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",20)
   SetGlobal("h_SpawnTheresa","GLOBAL",1)
   SetGlobal("h_SpawnClare","GLOBAL",1)
   SetGlobal("h_BarWatchAttack","GLOBAL",1)
   SetGlobal("h_ReplaceCityWatch","GLOBAL",1)
   AddJournalEntry(@552,QUEST)~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",20) NumDeadLT("h_clarec",1) NumDeadLT("h_therec",1)~ THEN BEGIN 158
   SAY @10199 /* Stealth, surprise, that's your ticket. They won't see you comin' if you play your cards right. */ IF ~~ THEN EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",20) NumDeadGT("h_clarec",0) NumDeadGT("h_therec",0)~ THEN BEGIN 159
   SAY @10200 /* Aye, I've heard the whispers already. Word's spread like wildfire about those Valkyrie twins meetin' their untimely end. Good work, mate. */
       +~Global("h_ClareTalk","GLOBAL",0) Global("h_TheresaTalk","GLOBAL",0)~+ @10201 /* Sleeker than a shadow, they never knew what hit 'em. */ DO ~AddExperienceParty(1200)~ GOTO 160
       +~Global("h_ClareTalk","GLOBAL",2) Global("h_TheresaTalk","GLOBAL",0)~+ @10202 /* Clare caught a glimpse, but it was too late for her. */ GOTO 161
       +~Global("h_ClareTalk","GLOBAL",0) Global("h_TheresaTalk","GLOBAL",2)~+ @10203 /* Theresa had a moment, but it didn't save her. */ GOTO 161
       +~Global("h_ClareTalk","GLOBAL",2) Global("h_TheresaTalk","GLOBAL",2)~+ @10204 /* They both looked me in the eye before the end. */ GOTO 161
END

IF ~~ THEN BEGIN 160
   SAY @10205 /* You've got the touch, mate. Snuffing 'em out without leaving a trace. You're a true master of the craft, you are. */ IF ~~ THEN GOTO 162
END

IF ~~ THEN BEGIN 161
   SAY @10206 /* You managed to get the job done, but remember, true masters of stealth leave no room for doubt. Keep honing those skills. */ IF ~~ THEN GOTO 162
END

IF ~~ THEN BEGIN 162
   SAY @10207 /* Alright, listen up, <CHARNAME>. You've proven yourself today. With the twins out of the picture, Whitewood's grip on the City Watch will start slippin'. */ IF ~~ THEN GOTO 163
END

IF ~~ THEN BEGIN 163
   SAY @10208 /* Now, we'll need to make our move and secure our position. Gather the lads, we're going to have a little chat with the good Commander. */ IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 164
   SAY @10209 /* This is where the real game begins, and you've earned your place at the table. Remember, we're not just thieves anymore. We're the shadowy hand that guides Beregost. Let's make it count. */
IF ~~ THEN DO ~
   AddJournalEntry(@555,QUEST_DONE)
   SetGlobal("h_ArioshQuest","GLOBAL",21)
   SetGlobal("h_ReplaceCityWatch","GLOBAL",3)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_citcut")~ EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",21)~ THEN BEGIN 165
   SAY @10210 /* Remember, <CHARNAME>, this is our chance to tip the scales in our favor. Make it count. The fate of the Gorgon's Eye and the future of Beregost hang in the balance. */ IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~Global("h_ArioshQuest","GLOBAL",21) Dead("h_whit2c")~ THEN BEGIN 166
   SAY @10211 /* Well now, <CHARNAME>, that look of yours tells quite the tale. Did you cross paths with Commander Whitewood, or did she cross yours? */
       ++ @10212 /* It was a heated dance, but in the end, her resolve crumbled. Beregost is primed for the taking. */ GOTO 167
       ++ @10213 /* She met her end, Ariosh. The Temple is a graveyard now, and the city will soon bend to our will. */ GOTO 167
END

IF ~~ THEN BEGIN 167
   SAY @10214 /* Aye, <CHARNAME>, this is it. With Whitewood out of the picture, the title of Commander will pass to one of our own. The Gorgon's Eye's sway will echo across the realm. */ IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168
   SAY @10215 /* This town will kneel, and Beregost will be ours. From this point on, we will dictate the destiny of this city, and our power shall only grow. */ IF ~~ THEN GOTO 169
END

IF ~~ THEN BEGIN 169
   SAY @10216 /* You're cut from the cloth of shadows, <CHARNAME>, a master thief, through and through. */ IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 170
   SAY @10217 /* You belong to the gritty underbelly now, the murky cobbled alleys, where deals are sealed with a blade and secrets are whispered in the dark. */ IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 171
   SAY @10218 /* Keep those ears sharp and your wits sharper, and there's no tellin' what heights you'll scale in these shadows. You were born for this life, you were. */
IF ~~ THEN DO ~
   SetGlobal("h_ArioshQuest","GLOBAL",22)
   SetGlobal("h_SpawnGorgonWatch","GLOBAL",1)
   AddJournalEntry(@558,QUEST_DONE)
   AddExperienceParty(1200)~ EXIT
END
   
IF ~Global("h_ArioshQuest","GLOBAL",22)~ THEN BEGIN 172
   SAY @10219 /* Aye, <CHARNAME>, we've got the City Watch dancing to our tune now. We've got work ahead, and it won't be easy, but together, we'll leave our mark on this town. */ IF ~~ THEN EXIT
END

IF ~Global("h_ArioshQuest","GLOBAL",23)~ THEN BEGIN END_0
   SAY @10220 /* Well, if it ain't the new Guildmaster. What's the plan then, eh? Just give the word, and I'm at your service. */
IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN 173
   SAY @10221 /* Aye, <CHARNAME>. We're on orders to await your signal. Ready to roll when you give the word. */
       +~NumItemsParty("h_misc18",8)~+ @10222 /* Weapons secured, boys. Divy 'em up and prep for action. */ GOTO 177
       +~Gender(Player1,FEMALE) NumItemsPartyLT("h_misc18",8)~+ @10223 /* Just reporting in before we kick off. Stay on your toes. */ GOTO 174
       +~Gender(Player1,MALE) NumItemsPartyLT("h_misc18",8)~+ @10223 /* Just reporting in before we kick off. Stay on your toes. */ GOTO 175
       +~NumItemsPartyLT("h_misc18",8)~+ @10224 /* Err. What's the plan again? */ GOTO 176
END

IF ~~ THEN BEGIN 174
   SAY @10225 /* Copy that. Alright you men. You heard the lass. Stand fast 'til she brings back the weapons. */ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 175
   SAY @10226 /* Copy that. Alright you men. You heard the lad. Stand fast 'til he brings back the weapons. */ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 176
   SAY @10227 /* Get in those tents and swipe the weapons off every gamesman inside. Get back here, quick as you can, and dish out them darts. We'll handle the rest. */ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 177
   SAY @10228 /* Aye! Listen up you men! Grab your gear and move out! Let's teach these southern boys a right lesson about the Gorgon's Eye! */
IF ~~ THEN DO ~
   SetGlobal("h_GuildThieves","GLOBAL",4)
   SetGlobal("h_RigaldoQuest","GLOBAL",10)
   AddJournalEntry(@322,QUEST)
   TakePartyItemAll("h_misc18")
   DestroyItem("h_misc18")~ EXIT
END

CHAIN
   IF WEIGHT #-1 ~Global("h_SpawnAriosh","GLOBAL",2)~ THEN h_ariosd 0
@10229 /* Baldwin! The Shadow Thieves have infiltrated the city! A dozen of their rank fight above us as we speak! */
   =
@10230 /* Scores remain outside Beregost with Thamuz at its helm! They will be here by daybreak! */
   == h_baldwd
@10231 /* So, they've finally decided to make their move, have they? Guildmates! Clear for action and steady yourselves for battle! */
   =
@10232 /* Rhade! Spread our supplies throughout the guild. Dispatch word to any cutthroats and sell-swords looking for a payday. */
   =
@10233 /* Ariosh! I need those eyes of yours in the field. Scout the vanguard's movements, mark their numbers, and track their lieutenants. */
   =
@10234 /* Find their weakest link and report back before dawn. */
   == h_ariosd
@10235 /* Aye! */
   == h_baldwd
@10236 /* Liedel! Activate the traps at the city's edge. Get them ready, every snare, every tripwire, ensure they're set to strike with deadly precision. */
   =
@10237 /* Rigaldo! Recall our numbers back from duty and get them blades for the grindstone. We need every edge razor-sharp and ready to slice through shadow and flesh. */
   == h_rigald
@10238 /* Sir! */
   == h_baldwd
@10239 /* <CHARNAME>, our immediate priority is to cleanse the city of these rats while we prepare for the incoming siege. */
   =
@10240 /* Grab your guild armaments from Rhade and then embark on your mission. Report back when the city is purged of these treacherous vermin, and be swift! */
   DO ~
      SetGlobal("h_BaldwinQuest","GLOBAL",5)
      SetGlobal("h_SpawnAriosh","GLOBAL",3)
      SetGlobal("h_GuildItems","GLOBAL",1)
      SetGlobal("h_ShadowWar","GLOBAL",1)
      SetGlobal("h_HideWhitewood","GLOBAL",1)
      ActionOverride("h_liedec",EscapeArea())
      AddJournalEntry(@213,QUEST)~
EXIT
