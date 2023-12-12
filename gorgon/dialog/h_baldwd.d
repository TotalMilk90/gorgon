BEGIN h_baldwd

IF WEIGHT #-1 ~OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,NEUTRAL_GOOD)~ THEN BEGIN 0
   SAY ~I think you've stumbled into the wrong place, friend. I'm certain there's a cat ensnared in the branches outside, desperate for your gallant rescue. Now, begone from me. The stench of your sanctimonious bullshit disgusts me.~ IF ~~ THEN EXIT
END

IF ~Global("h_DidNotJoin","GLOBAL",0)~ THEN BEGIN 1
   SAY ~Only a fool would dare to tread so boldly into my lair. Tradition and prudence both dictate a swift end for such intrusion.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Your face, however... is not unknown to me. <CHARNAME>, if my sources serve me right?~
       ++ ~Another assassin then? You're not the first to threaten my life only to forfeit their own.~ GOTO 3
       ++ ~How did you come by my name? Who are you?~ GOTO 4
       ++ ~<CHARNAME>? Can't say it rings a bell. But now that pleasantries are out of the way, I think it's time I took my leave.~ GOTO 41
END

IF ~~ THEN BEGIN 3
   SAY ~Let's not resort to hostilities so quickly. Sheathe your weapons, you're not in the presence of your enemy. At least, not yet.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4
   SAY ~In my line of work, knowledge is as valuable as gold, and I ensure I am rich in both.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~I am Baldwin, master of the Gorgon's Eye, a name I trust you've heard whispered in shadowed corners.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Do not be deceived by the modesty of this setting, however. While it may lack grandeur, it is merely the facade of a far-reaching network.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~Our resources are vast, our influence pervasive, stretching across all quarters south of the gate.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Now, onto the matter at hand. Your head has a price, a rather hefty sum, I must say. Surrounded as you are by my most skilled hunters, it would be effortless to claim that bounty.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~I could have you killed at the lift of my finger, collect my reward, and think nothing of it. However, your particular set of skills are rare, and I dare say, more valuable to me alive than dead.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Rather than sealing your fate here and now, I present you with a rare opportunity. Consider this an invitation to join the Gorgon's Eye.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~Should your ambitions crave more than mere survival, and your pockets yearn for the weight of gold, then our paths may align most fortuitously.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~We value skills such as yours, and in return, offer rewards most others can only dream of.~
       ++ ~Considering Ravenscar's grip on the north and the Shadow Thieves presence in Amn, how do you manage to navigate your position amidst such hostile rivalries?~ GOTO 13
       ++ ~What's in it for me if I decide to align with your guild?~ GOTO 19
       ++ ~What would be the typical undertakings for someone in my position within the guild?~ GOTO 28
       ++ ~What about the City Watch? Does their presence here pose a threat to the Gorgon's Eye?~ GOTO 36
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO 50
       ++ ~While I'm not one to easily trust, I'm willing to take a chance on this alliance.~ GOTO 50
       ++ ~My pursuits lie beyond the realm of stealth and subterfuge. Petty thievery, even at its most sophisticated, doesn't align with my path.~ GOTO 44
END

IF ~~ THEN BEGIN 13
   SAY ~Oh my, quite a surprise that you would be so well-informed. A refreshing contrast to the usual drab I am forced to deal with, and I'll admit, it's a trait I admire.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~Ravenscar's influence does leave the walls, to be sure. Yet, his reach is not limitless, and his jurisdiction stays within.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~As for Linvail and his dogs, their gaze seldom wanders this far north. Here in Beregost, under the nose of such intrigue, I've carved out a domain for the Gorgon's Eye.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~Let me assure you, our position is not one of vulnerability but of strategic advantage. We operate in the blind spots of these behemoths, exploiting opportunities they overlook.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~In time, their oversight will be their undoing, and we shall be ready to capitalize. Aligning with us means being part of a vision that extends beyond mere survival, it's about ascendancy.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~We are not mere pawns in their game, we are players in our own right, set to turn the tides when they least expect it.~
       ++ ~What's in it for me if I decide to align with your guild?~ GOTO 19
       ++ ~What would be the typical undertakings for someone in my position within the guild?~ GOTO 28
       ++ ~What about the City Watch? Does their presence here pose a threat to the Gorgon's Eye?~ GOTO 36
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO 50
       ++ ~While I'm not one to easily trust, I'm willing to take a chance on this alliance.~ GOTO 50
       ++ ~My pursuits lie beyond the realm of stealth and subterfuge. Petty thievery, even at its most sophisticated, doesn't align with my path.~ GOTO 44
END

IF ~~ THEN BEGIN 19
   SAY ~The offer I lay before you is one veiled in shadows, a path tread by few. You shall not merely join us, you will transcend into the very essence of stealth and subterfuge.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~The masters of shadow within our fold are not just thieves or spies, they are artists of the unseen, sculptors of darkness.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~Under their guidance, you will learn secrets that lurk beneath the surface of Faerun, arts that manipulate the very fabric of secrecy and silence.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~Armed with knowledge that has been secreted through the ages, tools that whisper death, and magics that dance on the edge of darkness, you will become a phantom that the world barely perceives, yet fears.~ IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
   SAY ~And as for your share of our endeavors, they will surely extend beyond the mere acquisition of gold.~ IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY ~We delve into ancient mysteries, acquire artifacts shrouded in oblivion, and weave influence that extends like tendrils through the veins of power across the Sword Coast.~ IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~In the Gorgon's Eye, you will find not just allies, but shadows that stand with you in the darkest of times.~ IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
   SAY ~We are a brotherhood that moves in silence, bound by secrets and the unbreakable oath of the unseen.~ IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
   SAY ~Consider my offer as a passage into a world where the line between shadow and reality blurs, a realm where every whispered secret can be yours to wield.~
       ++ ~Considering Ravenscar's grip on the north and the Shadow Thieves presence in Amn, how do you manage to navigate your position amidst such hostile rivalries?~ GOTO 13
       ++ ~What would be the typical undertakings for someone in my position within the guild?~ GOTO 28
       ++ ~What about the City Watch? Does their presence here pose a threat to the Gorgon's Eye?~ GOTO 36
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO 50
       ++ ~While I'm not one to easily trust, I'm willing to take a chance on this alliance.~ GOTO 50
       ++ ~My pursuits lie beyond the realm of stealth and subterfuge. Petty thievery, even at its most sophisticated, doesn't align with my path.~ GOTO 44
END

IF ~~ THEN BEGIN 28
   SAY ~In the ranks of the Gorgon's Eye, you will be plunged into a world of multifaceted and intricate shadowplay, where your activities will span the full gamut of the covert arts.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~You'll engage in the classic trades of our craft; pickpocketing, lockpicking, intelligence gathering, and facilitating contracts in regards to more... permanent solutions.~ IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY ~But our aspirations go beyond mere burglary. You'll learn the delicate art of infiltration, slipping past guards like a whisper in the night, breaching vaults thought impregnable.~ IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY ~You will be the unseen agent in high-stakes heists, where the prize is not just wealth, but secrets and artifacts of immense power.~ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~Our missions may often require you to blend with the shadows, undetectable, as you navigate through labyrinths of danger and deception.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY ~Yet, at times, a bolder touch is called for. A rapid, decisive strike that leaves our targets reeling before they even realize what they've lost.~ IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
   SAY ~In our world, each stolen item holds a story, each pilfered secret can alter the course of destinies.~ IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
   SAY ~Here, thievery is not just a means to wealth, it's a conduit to power, a play in the grand game that unfolds in the unseen corners of the Sword Coast.~
       ++ ~Considering Ravenscar's grip on the north and the Shadow Thieves presence in Amn, how do you manage to navigate your position amidst such hostile rivalries?~ GOTO 13
       ++ ~What's in it for me if I decide to align with your guild?~ GOTO 19
       ++ ~What about the City Watch? Does their presence here pose a threat to the Gorgon's Eye?~ GOTO 36
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO 50
       ++ ~While I'm not one to easily trust, I'm willing to take a chance on this alliance.~ GOTO 50
       ++ ~My pursuits lie beyond the realm of stealth and subterfuge. Petty thievery, even at its most sophisticated, doesn't align with my path.~ GOTO 44
END

IF ~~ THEN BEGIN 36
   SAY ~Ah, the City Watch, yes, their shadows have grown longer on our streets. But fear not, for they are but a minor nuisance to our grander designs.~ IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
   SAY ~We've always thrived under the gaze of such obstacles. Their patrols, their attempts at law enforcement, they are predictable, and predictability can be exploited.~ IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY ~We've adapted our operations to be even more elusive, more subtle. They're looking for shadows in a town we've blanketed in darkness.~ IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
   SAY ~The Gorgon's Eye is not just a guild, it's an idea, a whisper that moves unseen and untouched. So, let them have their patrols. Let them believe they're regaining control.~ IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
   SAY ~It only makes our victories sweeter, our successes more poignant. In the end, they're but pieces in a game they scarcely understand, and we, my friend, are always two steps ahead.~
       ++ ~Considering Ravenscar's grip on the north and the Shadow Thieves presence in Amn, how do you manage to navigate your position amidst such hostile rivalries?~ GOTO 13
       ++ ~What's in it for me if I decide to align with your guild?~ GOTO 19
       ++ ~What would be the typical undertakings for someone in my position within the guild?~ GOTO 28
       ++ ~I accept your offer and look forward to the opportunities it will provide.~ GOTO 50
       ++ ~While I'm not one to easily trust, I'm willing to take a chance on this alliance.~ GOTO 50
       ++ ~My pursuits lie beyond the realm of stealth and subterfuge. Petty thievery, even at its most sophisticated, doesn't align with my path.~ GOTO 44
END

IF ~~ THEN BEGIN 41
   SAY ~Ah, the art of feigning ignorance. A classic move, yet transparent in this case. I admire the attempt at subterfuge, truly, but let's not play games that we both know the end of.~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
   SAY ~You're in the viper's nest, and while I can appreciate your cunning, I cannot vouch for your safety among my less discerning associates.~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
   SAY ~It would be wise to make your exit swiftly, lest you find out how unforgiving the Gorgon's Eye can be to uninvited guests.~
IF ~~ THEN DO ~
   SetGlobal("h_DidNotJoin","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 44
   SAY ~Our endeavors here stretch far beyond the bounds of what one might call 'petty thievery.'~ IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
   SAY ~So be it. We don't lack for capable hands, and I doubt you'll find many in Beregost with offers as generous as mine.~ IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
   SAY ~Just remember, when the streets turn cold and allies scarce, don't come looking for warmth in shadows you once scorned.~
IF ~~ THEN DO ~
   SetGlobal("h_DidNotJoin","GLOBAL",1)~ EXIT
END

IF ~Global("h_DidNotJoin","GLOBAL",1)~ THEN BEGIN 47
   SAY ~You tread dangerous ground returning here, after spurning the Gorgon's Eye. This is no sanctuary for the unaligned, and you, my friend, have just stripped yourself of our protection.~ IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
   SAY ~Be wise, make your next steps carefully, for you're in the heart of a den that no longer regards you as a friend. I suggest you leave, and quickly.~ IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
   SAY ~The goodwill of the Gorgon's Eye is not easily regained, and its wrath, even less so.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50
   SAY ~Excellent. Welcome to the shadows of the Gorgon's Eye, my friend. Familiarize yourself with our ways, but don't get too comfortable. Comfort breeds complacency, and that is someting we cannot afford.~ IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
   SAY ~Rigaldo will be your guide through the initial trials. He has a series of tasks designed to test your mettle, to see if you truly possess the cunning and skill that our guild demands.~ IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
   SAY ~Consider these tasks as your rite of passage, the crucible through which you must pass to be forged into one of us.~ IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
   SAY ~Remember, you stand on the threshold of a world where every whisper could be a dagger, every shadow a sanctuary.~ IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
   SAY ~Perform well, and you will earn your place among our ranks, a true member of the Gorgon's Eye, entrusted with secrets that many will never know.~ IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
   SAY ~I have pressing matters that demand my attention, so I'll leave you in Rigaldo's capable hands. Prove yourself, and let your actions reflect the stealth and guile that define us.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",1)
   SetGlobal("h_DidNotJoin","GLOBAL",2)
   SetGlobal("h_BaldwinQuest","GLOBAL",1)
   SetGlobal("h_FightingPits","GLOBAL",1)
   SetGlobal("h_FightersTalk","GLOBAL",1)
   AddJournalEntry(@202,USER)
   ReputationInc(-2)~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",1)~ THEN BEGIN 56
   SAY ~Small talk won't serve you here. Attend to your duties and fulfill your role.~ IF ~~ THEN EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",2)~ THEN BEGIN 57
   SAY ~Ah, <CHARNAME>. Just the person I wanted to see. Rigaldo speaks highly of your skills, and envisions a promising future for you within the guild.~ IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
   SAY ~You're an official member of the Gorgon's Eye now. There's a lot more work ahead, but I have full confidence in your abilities.~ IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
   SAY ~Now, for the task at hand. I'm entrusting you with highly classified guild business, so pay close attention.~ IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
   SAY ~Under my command, I have a black-ops unit of exceptionally skilled spies and shadows, referred to as my Snake Heads.~ IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61
   SAY ~They have been assigned the task of investigating the whereabouts of an extremely powerful and ancient artifact, the Kerykeion.~ IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
   SAY ~We believe it made its way to Faerun during the Time of Troubles, but was detroyed shortly after and seperated into three fragments.~ IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
   SAY ~Now, our objective is to collect these fragments and reconstruct the staff in working order, which our seasoned alchemists have already devised a method to accomplish.~ IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64
   SAY ~Our latest intel points to a dark socerer, perched high atop the Gibberling Mountains, to carry a shard in her possession. I want you to retrieve it.~ IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
   SAY ~This will be a demanding campaign, requiring considerable efforts on all fronts. I trust that you're up for the challenge.~
       ++ ~What can you tell me about the Kerykeion?~ GOTO 66
       ++ ~How does one become a Snake Head?~ GOTO 70
       ++ ~Where are the Gibberling Mountains located?~ GOTO 73
       ++ ~I'll return when I have the shard.~ GOTO 74
END

IF ~~ THEN BEGIN 66
   SAY ~The Kerykeion is a magical staff of unprecedented power, forged in the endless depths of the underworld by a team of serpentine demi-gods, the Gorgon Sisters.~ IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
   SAY ~The feeble minds of most historians have dismissed it as mere legend, their lack of curiosity a glaring testament to their ignorance.~ IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
   SAY ~Yet, within the echelons of our profession, we know better. We understand the dark allure that dwells within the heart of such mysteries.~ IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69
   SAY ~The artifact exists, each shard containing the essence of a different sister, silently waiting for their return.~
       ++ ~How does one become a Snake Head?~ GOTO 70
       ++ ~Where are the Gibberling Mountains located?~ GOTO 73
       ++ ~I'll return when I have the shard.~ GOTO 74
END

IF ~~ THEN BEGIN 70
   SAY ~Becoming a Snake Head requires more than just skill. You need to possess an instinct for the shadows, an innate ability to blend seamlessly into any environment.~ IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71
   SAY ~You must be able to think on your feet, adapt to unforeseen circumstances, and above all, maintain absolute discretion.~ IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
   SAY ~It's not a path for the faint of heart, but those who prove themselves earn the privilege.~
       ++ ~What can you tell me about the Kerykeion?~ GOTO 66
       ++ ~Where are the Gibberling Mountains located?~ GOTO 73
       ++ ~I'll return when I have the shard.~ GOTO 74
END

IF ~~ THEN BEGIN 73
   SAY ~You can find them far to the southeast, overlooking the entrance to the mines of Nashkel.~
       ++ ~What can you tell me about the Kerykeion?~ GOTO 66
       ++ ~How does one become a Snake Head?~ GOTO 70
       ++ ~I'll return when I have the shard.~ GOTO 74
END

IF ~~ THEN BEGIN 74
   SAY ~I knew I could count on you. Locate the dark witch and retrieve the artifact, whatever the cost.~ IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75
   SAY ~If you so desire, Saradin is a meticulous chronicler on matters of the Kerykeion, seek him out for further queries.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",3)
   SetGlobal("h_SpawnDeneb","GLOBAL",1)
   SetGlobal("h_Saradin","GLOBAL",1)
   AddJournalEntry(@210,QUEST)~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",3)~ THEN BEGIN 76
   SAY ~This mission carries significant weight, <CHARNAME>. Failure is not an option.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc01")~ THEN BEGIN 77
   SAY ~The shard of the Kerykeion, here, within our grasp. Even as you approach, the very air seems to thrum with its ancient aura. Hand it over, quickly now.~ IF ~~ THEN DO ~ TakePartyItem("h_misc01") DestroyItem("h_misc01")~ GOTO 78
END

IF ~~ THEN BEGIN 78
   SAY ~Ah, the moment I've dreamt of since I was but a boy listening to tales in the dark. Gaze upon it, <CHARNAME>. Can you feel the surge of its power, the persistent pull of its promise?~ IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79
   SAY ~Even in its fractured state, it speaks of dominion, of a power so vast, so intoxicating, it's almost unbearable.~ IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80
   SAY ~This is but a mere fragment of its full glory, a tantalizing glimpse into the vast supremacy that awaits us.~ IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81
   SAY ~I must know everything, every detail of your encounter. Spare no words, for this is a tale that will be etched into the very soul of the Gorgon's Eye.~ IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82
   SAY ~Your feat is not just a victory, it's a stepping stone to a future where we wield power the likes of which this world has never seen.~
       +~Global("h_MageReport1","GLOBAL",0)~+ ~The sorcerer appeared unstable, a shadow of herself, as if consumed by Kerykeion's influence.~ DO ~SetGlobal("h_MageReport1","GLOBAL",1)~ GOTO 83
       +~Global("h_MageReport2","GLOBAL",0)~+ ~She spoke of other rogues who assailed her for the Kerykeion, drawn to its power like moths to a flame.~ DO ~SetGlobal("h_MageReport2","GLOBAL",1)~ GOTO 88
       +~Global("h_MageReport3","GLOBAL",0)~+ ~As the conflict erupted, she wielded the artifact's power to conjure serpents from thin air, as if bending the very essence of the Kerykeion to her will.~ DO ~SetGlobal("h_MageReport3","GLOBAL",1)~ GOTO 93
       ++ ~While the details of my journey are many, perhaps we should focus on the immediate implications. The shard is ours, but it's clear we're not alone in this hunt.~ GOTO 99
END

IF ~~ THEN BEGIN 83
   SAY ~The Kerykeion is indeed a formidable artifact, not just in its power but in the immense mental resilience it demands from its wielder.~ IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84
   SAY ~It's a common folly to underestimate the toll such artifacts can exact on the psyche.~ IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85
   SAY ~To harness its full potential, one must possess not only magical proficiency but also an unyielding mental fortitude to safeguard against the encroaching shadows it can cast upon the mind.~ IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86
   SAY ~It seems, in this case, the mage lacked the inner strength necessary to withstand its influence, becoming a victim to its overwhelming force rather than its master.~ IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87
   SAY ~Such is the fate of those who seek power without understanding the price it demands.~
       +~Global("h_MageReport1","GLOBAL",1) Global("h_MageReport2","GLOBAL",1) Global("h_MageReport3","GLOBAL",1)~+ ~The mission's details have been fully disclosed, Baldwin. My report is concluded.~ GOTO 99
       +~Global("h_MageReport1","GLOBAL",0)~+ ~The sorcerer appeared unstable, a shadow of herself, as if consumed by Kerykeion's influence.~ DO ~SetGlobal("h_MageReport1","GLOBAL",1)~ GOTO 83
       +~Global("h_MageReport2","GLOBAL",0)~+ ~She spoke of other rogues who assailed her for the Kerykeion, drawn to its power like moths to a flame.~ DO ~SetGlobal("h_MageReport2","GLOBAL",1)~ GOTO 88
       +~Global("h_MageReport3","GLOBAL",0)~+ ~As the conflict erupted, she wielded the artifact's power to conjure serpents from thin air, as if bending the very essence of the Kerykeion to her will.~ DO ~SetGlobal("h_MageReport3","GLOBAL",1)~ GOTO 93
END

IF ~~ THEN BEGIN 88
   SAY ~This development is indeed most intriguing and concerning. The fact that other rogues were involved and aware of her possession of the Kerykeion suggests a breach in our information security.~ IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89
   SAY ~It raises several unsettling questions: Who else knows of our operations, and how did they come by this information? Moreover, the intent of these rogues remains unclear.~ IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90
   SAY ~Were they merely opportunists drawn by the lure of the Kerykeion, or is there a deeper, more organized scheme at play?~ IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91
   SAY ~This incident, I fear, is just the surface of a much larger and complex web we have yet to uncover.~ IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92
   SAY ~We must proceed with heightened vigilance and caution, for our path has become more treacherous with these unknown players in the shadows.~
       +~Global("h_MageReport1","GLOBAL",1) Global("h_MageReport2","GLOBAL",1) Global("h_MageReport3","GLOBAL",1)~+ ~The mission's details have been fully disclosed, Baldwin. My report is concluded.~ GOTO 99
       +~Global("h_MageReport1","GLOBAL",0)~+ ~The sorcerer appeared unstable, a shadow of herself, as if consumed by Kerykeion's influence.~ DO ~SetGlobal("h_MageReport1","GLOBAL",1)~ GOTO 83
       +~Global("h_MageReport2","GLOBAL",0)~+ ~She spoke of other rogues who assailed her for the Kerykeion, drawn to its power like moths to a flame.~ DO ~SetGlobal("h_MageReport2","GLOBAL",1)~ GOTO 88
       +~Global("h_MageReport3","GLOBAL",0)~+ ~As the conflict erupted, she wielded the artifact's power to conjure serpents from thin air, as if bending the very essence of the Kerykeion to her will.~ DO ~SetGlobal("h_MageReport3","GLOBAL",1)~ GOTO 93
END

IF ~~ THEN BEGIN 93
   SAY ~Indeed, that is a remarkable display of power. Your account aligns perfectly with the legends surrounding the Kerykeion.~ IF ~~ THEN GOTO 94
END

IF ~~ THEN BEGIN 94
   SAY ~The ability to command serpents is said to be a direct gift from the Gorgon Sisters, a manifestation of their will and essence.~ IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95
   SAY ~This 'Gorgon's offspring' ability, as it is known, is extremely rare and potent. It signifies a deep and intrinsic connection to the artifact and, by extension, to the Gorgon Sisters themselves.~ IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96
   SAY ~This mage, despite her instability, must have been in profound, albeit dangerous, communion with the Kerykeion to wield such extraordinary power.~ IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97
   SAY ~It's both a fascinating and ominous revelation; the Kerykeion's capabilities are far more extensive and mystical than we initially surmised.~ IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98
   SAY ~We must tread carefully, as we delve deeper into the realm of powers that are ancient and, by their very nature, unpredictable and perilous.~
       +~Global("h_MageReport1","GLOBAL",1) Global("h_MageReport2","GLOBAL",1) Global("h_MageReport3","GLOBAL",1)~+ ~The mission's details have been fully disclosed, Baldwin. My report is concluded.~ GOTO 99
       +~Global("h_MageReport1","GLOBAL",0)~+ ~The sorcerer appeared unstable, a shadow of herself, as if consumed by Kerykeion's influence.~ DO ~SetGlobal("h_MageReport1","GLOBAL",1)~ GOTO 83
       +~Global("h_MageReport2","GLOBAL",0)~+ ~She spoke of other rogues who assailed her for the Kerykeion, drawn to its power like moths to a flame.~ DO ~SetGlobal("h_MageReport2","GLOBAL",1)~ GOTO 88
       +~Global("h_MageReport3","GLOBAL",0)~+ ~As the conflict erupted, she wielded the artifact's power to conjure serpents from thin air, as if bending the very essence of the Kerykeion to her will.~ DO ~SetGlobal("h_MageReport3","GLOBAL",1)~ GOTO 93
END

IF ~~ THEN BEGIN 99
   SAY ~Listen carefully. I have sensed a presence here of late, a stirring in the shadows not of our making. Eyes in the city, alien and unwelcomed.~ IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100
   SAY ~It has become evident that we are under scrutiny. An attempt to uncover our knowledge of the Kerykeion, perhaps. I will have my spies investigate this matter more thoroughly.~ IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 101
   SAY ~Attend to your regular duties, but excerise caution in your movements, especially within the city. Eye every shadow, and question every face.~ IF ~~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102
   SAY ~That is all I need for now, you are dismissed. I will summon you if needed.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",4)
   SetGlobal("h_RigaldoQuest","GLOBAL",6)
   AddJournalEntry(@212,QUEST_DONE)
   AddExperienceParty(800)
   MoveToPoint([922.1052])
   Face(SW)~ EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",4)~ THEN BEGIN 103
   SAY ~Small talk won't serve you here. Attend to your duties and fulfill your role.~ IF ~~ THEN EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",5)~ THEN BEGIN 104
   SAY ~<CHARNAME>! Ascend to the surface and eliminate all the Shadow Thieves from the city.~
       +~NumDead("h_sthiec",5) NumDead("h_thiefc",18) PartyHasItem("h_misc08")~+ ~I've found these reports among the dead, but I'm unable to decipher their contents.~ DO ~TakePartyItem("h_misc08") DestroyItem("h_misc08")~ GOTO 105
       ++ ~Understood.~ EXIT
END

IF ~~ THEN BEGIN 105
   SAY ~Let me see those documents! Their code is like an old language to me.~ IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 106
   SAY ~...Incredible.~ IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107
   SAY ~Belay those orders! The attack was a feint! It was nothing but a diversion, a ploy to draw our eyes while they enact their true plan.~ IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 108
   SAY ~Their main force isn't lingering here, Thamuz is leading them north, destined for the Wood of Sharp Teeth.~ IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109
   SAY ~They plan negotiations with a cadre of smugglers for the acquisition of a Kerykeion piece! Damn those sons of bitches! They've been one step ahead of us at every turn!~ IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 110
   SAY ~<CHARNAME>, head north immediately. Avoid all confrontation. With haste, you might reach the smugglers before their main battalion arrives.~ IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111
   SAY ~If this report is to be believed, their contact, 'Nagate', will be stationed by some ancient elven ruins. That is where the exchange will take place.~
       ++ ~Ariosh mentioned Thamuz leads their offensive. Given your past with the Shadow Thieves, do you have any insight on him?~ GOTO 112
       ++ ~The Shadow Thieves are cunning, could this not be a trap designed to lure us in?~ GOTO 118
       ++ ~I'll head out now, swift and silent.~ GOTO 117
END

IF ~~ THEN BEGIN 112
   SAY ~Thamuz, a name drenched in shadows and blood from our past. Among the Shadow Thieves, he was a figure of dark renown, a mastermind of the night, skilled in the art of silent death.~ IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113
   SAY ~Yes, I remember him well. Cold, calculating, a strategist with a mind as sharp as the daggers he favored. His heists were works of complete deception, leaving no trace but fear in their wake.~ IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114
   SAY ~When I severed my ties with the Shadow Thieves, Thamuz saw it as the ultimate betrayal. To him, it was more than a departure, it was an open challenge, a defiance of the order he so rigidly enforced.~ IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 115
   SAY ~His leadership of their battalion now, is no mere coincidence. Thamuz is not just after the Kerykeion, he seeks to assert dominance, to redraw the lines of power.~ IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116
   SAY ~Make no mistake, <CHARNAME>, confronting Thamuz is to face one of the most formidable adversaries from the darkest corners of my past.~
       ++ ~The Shadow Thieves are cunning, could this not be a trap designed to lure us in?~ GOTO 118
       ++ ~I'll head out now, swift and silent.~ GOTO 117
END

IF ~~ THEN BEGIN 117
   SAY ~Make haste, time is of the essence.~
IF ~~ THEN DO ~
   SetGlobal("h_GuildMusic","GLOBAL",2)
   SetGlobal("h_BaldwinQuest","GLOBAL",6)
   SetGlobal("h_SpawnNagate","GLOBAL",1)
   SetGlobal("h_ShadowWar","GLOBAL",3)
   SetGlobal("h_HideWhitewood","GLOBAL",2)
   SetGlobal("h_IlenaLeaves","GLOBAL",1)
   ActionOverride("h_ilenac",EscapeArea())
   AddJournalEntry(@214,QUEST_DONE)
   AddJournalEntry(@215,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 118
   SAY ~Your caution is well-placed, <CHARNAME>, and underestimating Thamuz would be a fool's errand. The risk of a trap is as real as the shadows we blend into.~ IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119
   SAY ~However, the mere whisper of the Kerykeion, makes this a gambit we cannot ignore. We tread on a path of uncertainty, but also one that could lead us to untold power.~ IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 120
   SAY ~In our world, every shadow could be a trap, every ally a potential adversary. It's the price we pay for dealing in secrets and power.~ IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121
   SAY ~Go with the stealth of night and the cunning of the serpent. Let the shadows be your ally, and if it is a snare, let it spring. For in the heart of danger lies the seed of opportunity.~
       ++ ~Ariosh mentioned Thamuz leads their offensive. Given your past with the Shadow Thieves, do you have any insight on him?~ GOTO 112
       ++ ~I'll head out now, swift and silent.~ GOTO 117
END

IF ~Global("h_BaldwinQuest","GLOBAL",6)~ THEN BEGIN 122
   SAY ~You have your orders, now get to it.~ IF ~~ THEN EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",7)~ THEN BEGIN 123
   SAY ~Ah, <CHARNAME>, the winds whisper of your recent exploits. Thamuz bested, and the Kerykeion shard in your possession. Such accomplishments are noteworthy, even by our standards.~ IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 124
   SAY ~Present the shard to me. Its acquisition is a significant stride in our endeavors, yet the context of its capture, the interplay of wits and wills, that's where true insight lies.~ IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 125
   SAY ~I am compelled to inquire about the nuances of your encounter with Thamuz. He was a man known for veiling truths in shadows. What transpired in those decisive moments, I wonder.~
       ++ ~Thamuz shared a dire warning about the Kerykeion. He claimed it's a force of chaos, and that your ambition to unite it will bring calamity upon Faerun.~ GOTO 126
       +~Global("h_ThamuzHired","GLOBAL",1)~+ ~I learned the attack on Beregost wasn't just their initiative. Someone else, with deep pockets, hired them specifically to weaken our position.~ GOTO 131
       ++ ~The Kerykeion's power is clear, yet its purpose in your hands remains a mystery. What exactly do you intend to achieve?~ GOTO 135
       ++ ~Beyond the battle and obtaining the shard, there was nothing notable to report.~ GOTO 135
END

IF ~~ THEN BEGIN 126
   SAY ~Thamuz, always the puppet-master, weaving his webs of deceit. A formidable skill he has mastered over the years.~ IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 127
   SAY ~Consider the possibility that he aimed to sow seeds of distrust between us, especially if his attempt to eliminate you had failed.~ IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 128
   SAY ~As for the Kerykeion, my dedication to its study spans a lifetime. I am intimately aware of both its perils and its promise.~ IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129
   SAY ~My research, my understanding of its arcane intricacies, surpasses what most can fathom. The power it holds is not only controllable but can be wielded to achieve dominion.~ IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 130
   SAY ~Do not doubt, <CHARNAME>, the fate of the Kerykeion is safe in my hands. We stand on the cusp of realizing a vision that will redefine our existence.~
       +~Global("h_ThamuzHired","GLOBAL",1)~+ ~I learned the attack on Beregost wasn't just their initiative. Someone else, with deep pockets, hired them specifically to weaken our position.~ GOTO 131
       ++ ~The Kerykeion's power is clear, yet its purpose in your hands remains a mystery. What exactly do you intend to achieve?~ GOTO 135
END

IF ~~ THEN BEGIN 131
   SAY ~Intriguing, indeed. The revelation that an external entity has financed the Shadow Thieves against us suggests a deeper game at play.~ IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132
   SAY ~Who could harbor such animosity or fear towards our ascendancy? This warrants thorough investigation. We must unravel this web of intrigue and expose the architect of this covert aggression.~ IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 133
   SAY ~I will mobilize our network of spies to delve into the shadows, to extract information from the unseen corners of Beregost and beyond.~ IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134
   SAY ~We cannot allow such bold moves against the Gorgon's Eye to go unchecked. Whoever is behind this, they've made a critical error in underestimating the reach and resourcefulness of our guild.~
       ++ ~Thamuz shared a dire warning about the Kerykeion. He claimed it's a force of chaos, and that your ambition to unite it will bring calamity upon Faerun.~ GOTO 126
       ++ ~The Kerykeion's power is clear, yet its purpose in your hands remains a mystery. What exactly do you intend to achieve?~ GOTO 135
END

IF ~~ THEN BEGIN 135
   SAY ~In the light of our open conflict with the Shadow Thieves, subtlety in my intentions serves little purpose now.~ IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136
   SAY ~The Kerykeion, a relic I have coveted since youth, whispered to me through my brother Richard's tales, is more than a mere token of retribution.~ IF ~~ THEN GOTO 137
END

IF ~~ THEN BEGIN 137
   SAY ~It is the cornerstone of a grand design, one conceived in the shadows of a forsaken past.~ IF ~~ THEN GOTO 138
END

IF ~~ THEN BEGIN 138
   SAY ~My plan transcends a simple vendetta. It is about reshaping the very essence of power. To dismantle the Shadow Thieves, to eradicate their leadership, is only but the first step.~ IF ~~ THEN GOTO 139
END

IF ~~ THEN BEGIN 139
   SAY ~What follows is the consolidation of their remnants under our dominion, the Gorgon's Eye emerging not merely as victors but as sovereigns of the underworld.~ IF ~~ THEN GOTO 140
END

IF ~~ THEN BEGIN 140
   SAY ~The Kerykeion's power is not to be feared, but wielded with precision. My years within the Shadow Thieves has honed a meticulousness that will ensure our ascendancy.~ IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141
   SAY ~We stand on the brink of a new epoch, an era where shadows bend to our will, and the Gorgon's Eye casts its gaze upon a world ripe for our reign.~ IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 142
   SAY ~Your role in these grand schemes, however, does not pause here. Be prepared to receive further orders concerning the Kerykeion and our ongoing strife with the Shadow Thieves.~ IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143
   SAY ~Until such time, you are to return to your standard duties within the guild. In your absence, a surge of activity has unfolded.~ IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144
   SAY ~Bounties have been issued, contracts drawn, and fresh intelligence on the City Watch has emerged. It seems there's a rising tide of unrest, one that we must swiftly address.~ IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145
   SAY ~Moreover, a certain agitation has gripped our courtesans, stirring the undercurrents of our operations. I trust you to quell this commotion and manage the situation with your usual efficacy.~ IF ~~ THEN GOTO 146
END

IF ~~ THEN BEGIN 146
   SAY ~For now, you are dismissed. Attend to these matters, and await my summons. The path we tread is complex, but with your aid, our ascendancy is inevitable.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",8)
   SetGlobal("h_RigaldoQuest","GLOBAL",14)
   SetGlobal("h_SecondRiddle","GLOBAL",1)
   SetGlobal("h_MerediaQuest","GLOBAL",1)
   SetGlobal("h_LiedelQuest","GLOBAL",5)
   CreateCreature("h_liedec",[762.1342],NE)
   PlaySound("ACT_07")
   AddJournalEntry(@217,QUEST_DONE)
   TakePartyItem("h_misc02")
   DestroyItem("h_misc02")
   AddExperienceParty(800)~ EXIT
END

IF ~OR(2) NumItemsPartyLT("h_misc13",1) GlobalLT("h_RigaldoQuest","GLOBAL",17) Global("h_BaldwinQuest","GLOBAL",8)~ THEN BEGIN 147
   SAY ~Small talk won't serve you here. Attend to your duties and fulfill your role.~ IF ~~ THEN EXIT
END

IF ~Global("h_BaldwinQuest","GLOBAL",8) Global("h_RigaldoQuest","GLOBAL",17) PartyHasItem("h_misc13")~ THEN BEGIN 148
   SAY ~Small talk won't serve you here. Attend to your duties and fulfill your role.~
       ++ ~I was given this missive by one of your Snake Heads, before he succumbed to his injuries.~ GOTO 149
END

IF ~~ THEN BEGIN 149
   SAY ~Hand it over, immediately! The dying act of a Snake Head is never without significance.~ IF ~~ THEN GOTO 150
END

IF ~~ THEN BEGIN 150
   SAY ~Ah, this... this is treachery most foul!~ IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151
   SAY ~Beregost, the city of cowards, and their Lord of Piss-all, Gerard Travenhurst, daring to defy me?~ IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 152
   SAY ~Betraying us to the Shadow Thieves, and offering the final shard of the Kerykeion as recompense!~ IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 153
   SAY ~This man, who once groveled at our doorstep, seeking favors, now dares to challenge the might of the Gorgon's Eye.~ IF ~~ THEN GOTO 154
END

IF ~~ THEN BEGIN 154
   SAY ~No honor, no loyalty. These are treacherous times, <CHARNAME>, and they demand a reckoning.~ IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155
   SAY ~We must act swiftly. The time for subtlety has passed. We will confront this traitor in his own lair, his opulent manor, which will soon witness his downfall.~ IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 156
   SAY ~I shall personally see to it that Gerard Travenhurst answers for his betrayal. He will learn the cost of crossing paths with the Gorgon's Eye.~
       ++ ~It's clear Gerard has chosen his path. He'll face the consequences of his actions soon enough.~ GOTO 157
       ++ ~We shouldn't underestimate him. It's possible we're being led into a trap.~ GOTO 158
       ++ ~Regardless of Gerard's actions, we should prioritize retrieving the Kerykeion shard.~ GOTO 159
END

IF ~~ THEN BEGIN 157
   SAY ~Well said, <CHARNAME>. Justice will be swift, and Gerard shall pay the price for his betrayal.~ IF ~~ THEN GOTO 160
END

IF ~~ THEN BEGIN 158
   SAY ~Then I shall disarm it. The Kerykeion will be mine, and with it, I will obliterate all those who stand in my way.~ IF ~~ THEN GOTO 160
END

IF ~~ THEN BEGIN 159
   SAY ~Yes. The Kerykeion is our key to power and leverage, and with it, we shall impart a lesson they won't soon forget.~ IF ~~ THEN GOTO 160
END

IF ~~ THEN BEGIN 160
   SAY ~Prepare yourself, <CHARNAME>. This confrontation will be the culmination of all that we have strived for.~ IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 161
   SAY ~Gerard's folly will serve as a message to all who dare defy us. The Kerykeion will be ours, and with it, the dawn of a new era under our dominion.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinGuards","GLOBAL",1)
   SetGlobal("h_BaldwinQuest","GLOBAL",9)
   SetGlobal("h_ShadowWar","GLOBAL",8)
   SetGlobal("h_SpawnBaldwin","GLOBAL",1)
   AddJournalEntry(@218,QUEST)
   EscapeArea()~ EXIT
END


IF WEIGHT #-1 ~PartyHasItem("h_misc14")~ THEN BEGIN 162
   SAY ~Small talk won't serve you here. Attend to your duties and fulfill your role.~
       ++ ~You'll be pleased to hear that I've come across the last piece of the Kerykeion. Success is ours, Baldwin.~ GOTO 163
END

IF ~~ THEN BEGIN 163
   SAY ~You, what? How is that possible! Speak, quickly!~
       ++ ~I retrieved it from a black market auction in the Baldur's Gate Undercellars. It was being sold off as a mere historical artifact, but I recognized its true value.~ GOTO 164
       ++ ~I had a run-in with a Shadow Thief named Quass. The confrontation was unavoidable and ended with his demise. The shard was among his possessions.~ GOTO 164
       ++ ~In the depths of the Firewine Ruins, among ancient relics and spirits, I found the shard concealed within a forgotten chamber.~ GOTO 164
       ++ ~Deep in the Cloakwood Forest, hidden beneath an ancient tree, I discovered the artifact, likely left by the druids, fearful of its power.~ GOTO 164
END

IF ~~ THEN BEGIN 164
   SAY ~Present the shard to me. Let's see this fortuitous piece you've uncovered.~ IF ~~ THEN GOTO 165
END

IF ~~ THEN BEGIN 165
   SAY ~It's almost poetic, isn't it? How destiny weaves its intricate web, guiding you to my sanctuary, preventing my hand from striking down one who once might have been considered a foe.~ IF ~~ THEN GOTO 166
END

IF ~~ THEN BEGIN 166
   SAY ~You have rendered a service of inestimable value, <CHARNAME>. The significance of this moment is not lost on me, and I assure you, your efforts will be rewarded most generously.~ IF ~~ THEN GOTO 167
END

IF ~~ THEN BEGIN 167
   SAY ~However, our path does not end here. There is intricate work ahead. I must delve into the arcane intricacies necessary for the fusion process of the Kerykeion.~ IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168
   SAY ~Such rituals are delicate and require meticulous preparation, steeped in ancient magic and precise incantations.~ IF ~~ THEN GOTO 169
END

IF ~~ THEN BEGIN 169
   SAY ~In the meantime, ensure that all is in order within the guild. Complete your outstanding missions, maintain the equilibrium we've established.~ IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 170
   SAY ~But stay vigilant and within reach. Once the preparations are complete, we will need every able hand, every sharp mind for the trials that lie ahead.~ IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 171
   SAY ~The convergence of the Kerykeion's shards is not just an event, it is a cataclysmic shift waiting to unfold.~ IF ~~ THEN GOTO 172
END

IF ~~ THEN BEGIN 172
   SAY ~Our actions in the coming trials will not only reshape our fate but will also redefine the very essence of power and influence in this realm.~ IF ~~ THEN GOTO 173
END

IF ~~ THEN BEGIN 173
   SAY ~Prepare yourself, <CHARNAME>, for we stand on the threshold of a new era defined by our will.~
IF ~~ THEN DO ~
   SetGlobal("h_FakeKery","GLOBAL",1)
   TakePartyItem("h_misc14")
   DestroyItem("h_misc14")
   AddJournalEntry(@223,QUEST)~ EXIT
END

