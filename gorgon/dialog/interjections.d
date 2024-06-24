INTERJECT_COPY_TRANS h_whited 5 ajatowhi5
  == %AJANTIS_JOINED% IF ~IsValidForPartyDialogue("Ajantis")~ THEN
@3500 /* Greetings, Lady Whitewood. I am Ajantis Ilvastarr, a paladin in the service of the Most Noble Order of the Radiant Heart. Your dedication to the safety and security of Beregost is truly commendable. */
  == %AJANTIS_JOINED% IF ~IsValidForPartyDialogue("Ajantis")~ THEN
@3501 /* In these troubled times, it is the light of such commitment that keeps the darkness at bay. Know that you have my respect and support in your noble endeavor. */
  == %AJANTIS_JOINED% IF ~IsValidForPartyDialogue("Ajantis")~ THEN
@3502 /* Should you require assistance, I am at your service, for the protection of the innocent and the upholding of justice are causes close to my heart. */
  == h_whited IF ~IsValidForPartyDialogue("Ajantis")~ THEN
@3503 /* Your words honor me, Sir Ajantis, and I am grateful for your offer of assistance. The path of duty is often fraught with peril, and never more so than now. */
  == %KHALID_JOINED% IF ~IsValidForPartyDialogue("Khalid") IsValidForPartyDialogue("Ajantis")~ THEN
@3504 /* Lady Whitewood, I t-too, wish to offer my support. I stand ready to assist in defending Beregost and its people. In t-times such as these, every s-sword and every willing heart can make a difference. */
  == h_whited IF ~IsValidForPartyDialogue("Ajantis") IsValidForPartyDialogue("Khalid")~ THEN
@3505 /* Your offer of aid is both appreciated and much needed. It's heartening to know that such capable and honorable individuals stand with us during these turbulent days. */
END

INTERJECT_COPY_TRANS h_whited 13 gartowhi13
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3506 /* Ah, Lady Whitewood, your vigilance is as admirable as the stars in the night sky. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3507 /* Just as you protect Beregost with your unwavering resolve, know that my heart, too, stands ready to serve you in any way it can. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3508 /* Your beauty and strength inspire me to offer my humble aid in this noble cause. */
  == h_whited IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3509 /* Garrick, your poetic words are, as always, appreciated, but let's keep our focus on the task at hand. */
  == h_whited IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3510 /* Beregost is in a time of need, and it's the strength of arm and steadfastness of purpose that will see us through. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3511 /* Of course, Lady Whitewood, my apologies. My readiness is as certain as the dawn, with lute and sword, to aid in our town's defense. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3512 /* And perhaps, in quieter times, to serenade you with songs of valor and devotion. */
  == h_whited IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3513 /* Garrick... Must we really go through this again? I've made my stance clear on numerous occasions, my focus is solely on the safety of this town. */
  == h_whited IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3514 /* Now, let us turn our attention to the broader picture. Your willingness to help is admirable. But for the moment, the best course of action is to stay vigilant. */
END

INTERJECT_COPY_TRANS h_yumild 1 imotoyum1
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3515 /* Nope. Huh-uh. I'm all up for adventures, <CHARNAME>... but I prefer my company to be, ya know, among the living. */
END

INTERJECT_COPY_TRANS h_aishad 5 gartoais5
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3516 /* Aisha, my radiant star in this oft-dim world. I had not realized you were here, else I would have hastened to your side sooner. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3517 /* Your distress wounds my heart deeply. What clouds dare cast their shadow over your light? Just say the word, and I will stand as your unwavering shield against all the world's ills. */
  == h_aishad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3518 /* Garrick, your words are as sweet as ever, and your offer is... touching, but really, I'm managing as best I can. I don't need a shield, just a bit of space and time to think. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3519 /* But how can I, in good conscience, stand aside while a damsel such as yourself faces shadows alone? It is against the very nature of a bard and a gentleman! */
  == h_aishad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3520 /* Garrick, I'm hardly a damsel in distress. Being overprotective isn't going to help me right now. Just be a friend, that's all I ask. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3521 /* A friend, yes, of course. But should you ever desire a champion, or a verse to lift your spirits, you need only ask. */
END

INTERJECT_COPY_TRANS h_aishad 8 imotoais8
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3522 /* Yeah, I don't blame you for needing a break from... courtesan-ing? Is that even a word? I mean, I've never been one, not that it's a bad thing! */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3523 /* Courtesans are like, uh, artists, right? With conversations and... other... um, comforts. I guess I'm just more the sneaky, lock-picking type than the... um, romantic type. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3524 /* I wonder what it's like, you know, to be so... I guess it's... well, kinda intimate, right? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3525 /* Gosh, is it hot in here or is it just me babbling? Ha! Just forget I said anything... or everything. */
  == h_aishad IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3526 /* Um, well, it's... quite a unique experience, I suppose. But, honestly, that's the least of my worries right now. */
END

INTERJECT_COPY_TRANS h_baldwd 7 ajatobal7
  == %AJANTIS_JOINED% IF ~IsValidForPartyDialogue("Ajantis")~ THEN
@3527 /* Helm turns his eye from this dark and vile place. Let us depart at once, for this is not within the bounds of righteousness. */
  == h_baldwd IF ~IsValidForPartyDialogue("Ajantis")~ THEN
@3528 /* Ah, a knight clad in the armor of moral absolutism graces our den. Your kind always has such a flair for dramatic declarations, seeing the world in stark black and white. */
  == h_baldwd IF ~IsValidForPartyDialogue("Ajantis")~ THEN
@3529 /* Yet here, in the Gorgon's Eye, we embrace the greys, the nuances of shadow and light. Such righteousness as yours is but a fleeting illusion in our world of whispers and unseen truths. */
  == h_baldwd IF ~IsValidForPartyDialogue("Ajantis")~ THEN
@3530 /* Perhaps, outside these walls, there's a stage more suited for your grandiose valor, possibly a stray cat stuck in a tree, desperately awaiting your gallant rescue. */
END

INTERJECT_COPY_TRANS h_baldwd 8 jahtobal8
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3531 /* It might not be as effortless as you may think, sir. You'll not find us so easily cowed by your threats. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3532 /* The natural order has its way of exacting retribution on those who defy it for petty gains. */
  == h_baldwd IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3533 /* I'll admit, your bravado is amusing. But let's not pretend you're in any position to lecture me about balance or threats. */
END

INTERJECT_COPY_TRANS h_baldwd 17 kagtobal7
  == %KAGAIN_JOINED% IF ~IsValidForPartyDialogue("Kagain")~ THEN
@3534 /* Baldwin speaks the truth. My own ventures in Beregost have seen more than a fair share of profit, thanks in no small part to my collaboration with the Gorgon's Eye. */
  == %KAGAIN_JOINED% IF ~IsValidForPartyDialogue("Kagain")~ THEN
@3535 /* They're not just another ragtag band of thieves, they're a guild with vision and, more importantly, results. */
  == %KAGAIN_JOINED% IF ~IsValidForPartyDialogue("Kagain")~ THEN
@3536 /* Aligning with them isn't just about taking a stand in some thieves' squabble. It's about seizing opportunities that others are too blind or too scared to touch. */
  == %KAGAIN_JOINED% IF ~IsValidForPartyDialogue("Kagain")~ THEN
@3537 /* And in this world, it's the ones who grab such chances who end up on top. If you're looking to make a mark, or rather, a profit, casting your lot with the Gorgon's Eye is a smart move. */
  == h_baldwd IF ~IsValidForPartyDialogue("Kagain")~ THEN
@3538 /* Your success alongside us is a testament to the foresight and agility of the Gorgon's Eye. We are'nt just another group lurking in the shadows of greater powers. Our actions are calculated, our movements precise. */
END

INTERJECT_COPY_TRANS h_baldwd 22 nertobal22
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3539 /* Masters of shadow, artists of the unseen? It all sounds so... theatrically sinister. But let's not forget, not all secrets are worth uncovering, and not all powers are worth wielding. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3540 /* I've seen magic that dances on the edge of darkness, and trust me, sometimes it's on the edge for a very good reason. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3541 /* Walking a path veiled in shadows can lead to unexpected places, sure, but not all those places are pleasant. */
  == h_baldwd IF ~IsValidForPartyDialogue("Neera")~ THEN
@3542 /* Your skepticism is understandable, yet, in this instance, misplaced. */
  == h_baldwd IF ~IsValidForPartyDialogue("Neera")~ THEN
@3543 /* The Gorgon's Eye does not shy away from the darker arts or the realities of our trade. The path we tread is not for the faint of heart, but for those who dare, the rewards are substantial. */
END

INTERJECT_COPY_TRANS h_baldwd 34 imotobal34
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3544 /* What do you think, <CHARNAME>? All that sneaking around, learning the tricks of the trade... it's kind of exciting, isn't it? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3545 /* We're talking about serious stuff here though... I mean, it's a big step from picking a few locks for fun. Are we sure we want to get mixed up in this? */
  == h_baldwd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3546 /* Ah, young one, it's natural to feel trepidation at the cusp of such a transformative journey. But let me assure you, what we offer is far more than mere child's play. */
END

INTERJECT_COPY_TRANS h_baldwd 39 ajatobal39
  == %AJANTIS_JOINED% IF ~IsValidForPartyDialogue("Ajantis")~ THEN
@3547 /* I can stand this no longer! Draw your sword, fiend! Your words are an affront to all that is just and right. */
  == %AJANTIS_JOINED% IF ~IsValidForPartyDialogue("Ajantis")~ THEN
@3548 /* You mock the law and those who serve it, reveling in shadows and deceit. As a paladin of Helm, I cannot allow such villainy to go unchallenged. */
  == %AJANTIS_JOINED% IF ~IsValidForPartyDialogue("Ajantis")~ THEN
@3549 /* In the name of truth and order, I will put an end to your nefarious scheming. Face me, thief. I challenge you! */
  == h_baldwd IF ~IsValidForPartyDialogue("Ajantis")~ THEN
@3550 /* Oh, settle down, Sir Knight. Your theatrics are amusing, but this is no stage for a child's play of heroes and villains. */
  == h_baldwd IF ~IsValidForPartyDialogue("Ajantis")~ THEN
@3551 /* I'd offer you a lollipop to soothe your temper, but I fear you'd take it as another challenge. */
  == h_baldwd IF ~IsValidForPartyDialogue("Ajantis")~ THEN
@3552 /* And as for those City Watch dogs you defend so gallantly, I'll be sure to leave them to their scurrying. */
END

INTERJECT_COPY_TRANS h_rigald 8 imotorig8
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3553 /* Hey, wait a sec, <CHARNAME>. This place gives me the creeps. This whole talk about labyrinths and shadows... are we really considering this? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3554 /* It's one thing to sneak around for a bit of fun, but this... this is serious. I mean, just look around, this place isn't exactly the Friendly Arm Inn. */
  == h_rigald IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3555 /* Ah, the voice of trepidation speaks. Such wariness is wise, young one, but know that danger and opportunity are but two sides of the same coin in our world. */
END

INTERJECT_COPY_TRANS h_rigald 48 montorig48
  == %MONTARON_JOINED% IF ~IsValidForPartyDialogue("Montaron")~ THEN
@3556 /* We could just as easily slit their throats and be done with it. No half measures, no fancy footwork. Just quick and clean, and the path is clear. */
  == h_rigald IF ~IsValidForPartyDialogue("Montaron")~ THEN
@3557 /* A straightforward approach, but hasty and crude. We play a more refined game here. It's not about brute force, it's about finesse, about being unseen, and unheard. */
END

INTERJECT_COPY_TRANS h_rigald 87 khatorig87
  == %KHALID_JOINED% IF ~IsValidForPartyDialogue("Khalid")~ THEN
@3558 /* I-I can't help but feel this is wrong. Using thievery and blackmail... It's not just dishonest, it's... it's cruel. Surely, there must be a more honorable way to resolve this. */
  == h_rigald IF ~IsValidForPartyDialogue("Khalid")~ THEN
@3559 /* Ah, the moral quandary of the righteous. But this is the harsh reality of our world, my friend. Not everything is black and white. Sometimes, the shadows offer the only path forward. */
  == h_rigald IF ~IsValidForPartyDialogue("Khalid")~ THEN
@3560 /* It's a game of power and survival. We do what we must to ensure our place, our security. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("Khalid")~ THEN
@3561 /* I understand the need for survival, and hoarding wealth as Gerard does is no virtue either. Yet, I cannot condone these methods. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("Khalid")~ THEN
@3562 /* There must be a balance, a way to assert our strength without resorting to such... ignoble means. */
  == h_rigald IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("Khalid")~ THEN
@3563 /* The balance you seek is a delicate one, and sometimes, the scales must tip in our favor. */
END

INTERJECT_COPY_TRANS h_ariosd 6 khatoari6
  == %KHALID_JOINED% IF ~IsValidForPartyDialogue("Khalid")~ THEN
@3564 /* Oh d-dear, I'm really not sure about this. Taking from others, it's... it's not right. We should be striving t-to help, not harm. */
  == h_ariosd IF ~IsValidForPartyDialogue("Khalid")~ THEN
@3565 /* Your words are as fluffy as your bleedin' heart, ain't they? But this 'ere world, it don't give two ticks for your ideals, does it? */
  == h_ariosd IF ~IsValidForPartyDialogue("Khalid")~ THEN
@3566 /* We do what we have to make our way, even if it means rollin' in the muck a bit. */
END

INTERJECT_COPY_TRANS h_ariosd 16 imotoari16
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3567 /* It's kinda exciting to think about sneaking around, swiping shiny trinkets while they're all busy with their fancy party. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3568 /* I mean, these folks probably won't even miss a few coins, right? But then again, it does seem a bit... I dunno, unfair? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3569 /* Targeting them just because they're here to have a good time and spend their gold. Makes you wonder if we're crossing a line from fun and mischief into something a bit less... noble. */
  == h_ariosd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3570 /* Ah, lass, I get where you're comin' from, but in our line of work, it's all about takin' opportunities. */
  == h_ariosd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3571 /* These nobles, they won't miss what they don't know they've lost. It's all smooth and subtle, like a shadow at midnight. */
  == h_ariosd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3572 /* Just remember, discretion is the name of the game. You'll have to use your sharp wits and blend in like you're part of the scenery. */
END

INTERJECT_COPY_TRANS h_blackd 4 imotobla4
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3573 /* But think about it... being part of something bigger, it's not just about following orders. It's about being part of a team, where everyone's got each other's backs. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3574 /* And I mean, I get it, Blackthorn. Taking orders isn't exactly fun, especially when you're used to being your own boss. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3575 /* But this is a chance to learn new tricks, see new places, maybe even make a real difference. It's an adventure, and isn't that what we're all here for? */
  == h_blackd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3576 /* Well, ain't you a pretty little thing. If workin' with the Eye means gettin' to partner up with the likes of you, maybe it's worth considerin'. But don't get your hopes up, love. */
END

INTERJECT_COPY_TRANS h_valerd 1 saftoval1
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3577 /* Valera, as I live and breathe. Never thought I'd catch your shadow in a place like this. Last I heard, you were still cutting purses on the shores of the Sword Coast. */
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3578 /* The pirate's life must have grown dull for you to join this little dance in the dark. I have to say, I'm surprised to see you working this side of the fence. */
  == h_valerd IF ~IsValidForPartyDialogue("Safana")~ THEN
@3579 /* Safana, always the siren. I see you've managed to land on your feet as well. Seems we've both strayed far from our salty roots. */
  == h_valerd IF ~IsValidForPartyDialogue("Safana")~ THEN
@3580 /* I never pictured you as one to align with the likes of the Gorgon's Eye. They must truly be scraping the bottom of the barrel to take in an old, washed-up pirate like yourself. */
  == h_valerd IF ~IsValidForPartyDialogue("Safana")~ THEN
@3581 /* Besides, I always took you for one more interested in batting your lashes to lighten a man's purse, rather than getting your hands dirty with any real thievery. */
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3582 /* Old? Coming from you, that's rich. And as for my methods, I've always believed in using all the tools at my disposal, something you might understand if you ever ventured beyond your one-note routine. */
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3583 /* In fact, I recall a certain incident involving you, a barrel of rum, and a very revealing dance on the deck. How's that for scraping the bottom of the barrel? */
  == h_valerd IF ~IsValidForPartyDialogue("Safana")~ THEN
@3584 /* You witch! How dare you bring up that night. But coming from someone who was always more interested in spreading rumors than spreading her sails, I'm not surprised. */
  == h_valerd IF ~IsValidForPartyDialogue("Safana")~ THEN
@3585 /* At least I had the entire crew's attention, which is more than I can say for your desperate attempts to be noticed. */
  == h_valerd IF ~IsValidForPartyDialogue("Safana")~ THEN
@3586 /* It's no wonder you've ended up here. I guess some people just can't leave their glory days behind, especially when they've had so few to begin with. */
  == h_valerd IF ~IsValidForPartyDialogue("Safana")~ THEN
@3587 /* Well, this has been a delightful stroll down memory lane, but I've got more important things to do than trade barbs with has-beens. */
END

INTERJECT_COPY_TRANS h_lieded 34 imotolie34
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") Gender(Player1,MALE)~ THEN
@3588 /* Hey, I'm from Candlekeep too, you know. It wasn't all dusty books and quiet lessons. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") Gender(Player1,MALE)~ THEN
@3589 /* There were plenty of pranks and adventures, even if someone here was too busy with their nose stuck in a tome to notice. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") Gender(Player1,MALE)~ THEN
@3590 /* And don't let <CHARNAME> fool you, Candlekeep might be a citadel of knowledge, but it's also where some of us learned our first tricks... and not all of them were from books. */
  == h_lieded IF ~IsValidForPartyDialogue("%IMOEN_DV%") Gender(Player1,MALE)~ THEN
@3591 /* And who might this young sprite be, <CHARNAME>? Your little girlfriend, perhaps, trailing in your shadow? Quite adorable to have such... devoted company. */
  == h_lieded IF ~IsValidForPartyDialogue("%IMOEN_DV%") Gender(Player1,MALE)~ THEN
@3592 /* But remember, darling, you're in my world now. Here, it's my show, and I don't share the spotlight easily. */
  == h_lieded IF ~IsValidForPartyDialogue("%IMOEN_DV%") Gender(Player1,MALE)~ THEN
@3593 /* So, while I appreciate the added commentary, let's keep our attention where it belongs, shall we? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") Gender(Player1,MALE)~ THEN
@3594 /* Girlfriend? <CHARNAME>'s practically my brother. We grew up together, dodging chores and librarians, fighting to survive the perils of Candlekeep's most dangerous weapon... boredom. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") Gender(Player1,MALE)~ THEN
@3595 /* But don't worry, I get it. It's easy to mix-up our bickering for flirting when you're not used to genuine friendship. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") Gender(Player1,MALE)~ THEN
@3596 /* It's a cute mistake, really. Stick around, you might learn a thing or two about what real loyalty looks like. */
  == h_lieded IF ~IsValidForPartyDialogue("%IMOEN_DV%") Gender(Player1,MALE)~ THEN
@3597 /* Well, aren't you full of surprises, my dear? I must say, I do admire someone who can hold their own with words as sharp as daggers. */
  == h_lieded IF ~IsValidForPartyDialogue("%IMOEN_DV%") Gender(Player1,MALE)~ THEN
@3598 /* It's refreshing to meet someone who isn't easily caught in the webs I weave. Consider my respect earned, little fox. */
  == h_lieded IF ~IsValidForPartyDialogue("%IMOEN_DV%") Gender(Player1,MALE)~ THEN
@3599 /* But let's not forget, in this dance of shadows, it's always wise to keep an eye on the other players. */
  == h_lieded IF ~IsValidForPartyDialogue("%IMOEN_DV%") Gender(Player1,MALE)~ THEN
@3600 /* Well, <CHARNAME>, your fiery companion here certainly knows how to make an impression. It's always a pleasure to see someone who can dance with words as deftly as with shadows. */
  == h_lieded IF ~IsValidForPartyDialogue("%IMOEN_DV%") Gender(Player1,MALE)~ THEN
@3601 /* It speaks volumes about the company you keep. But as for you, my dear, you've been quite the enigma, letting actions and choices speak where words do not. */
END

INTERJECT_COPY_TRANS h_lieded 74 montolie74
  == %MONTARON_JOINED% IF ~IsValidForPartyDialogue("Montaron")~ THEN
@3602 /* The sweet stench of treachery and debts unpaid. Crossing them that you shouldn't, that's a fool's game, a death warrant, that is. */
  == %XZAR_JOINED% IF ~IsValidForPartyDialogue("Xzar") IsValidForPartyDialogue("Montaron")~ THEN
@3603 /* Oh, delightful! A chance to delve into the consequences of broken promises and shattered agreements. Perhaps this Carth holds more than just gold. Secrets, screams, the delightful shiver of fear. */
  == %XZAR_JOINED% IF ~IsValidForPartyDialogue("Xzar") IsValidForPartyDialogue("Montaron")~ THEN
@3604 /* The shadows are whispering, beckoning us to partake in this delightful drama. Let us not dally! */
END

INTERJECT_COPY_TRANS h_lieded 78 nertolie78
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3605 /* From sneaky rogue to penitent pilgrim. Talk about a career change! What next? Is he going for a sainthood? Now, that would be a resume booster. */
END

INTERJECT_COPY_TRANS h_lieded 80 gartolie80
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3606 /* The very thought of her in distress is like a dagger to my heart! She's more than just a familiar face, she's the epitome of beauty, a radiant jewel in our humble town. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3607 /* It's hard to believe she would be at the center of such turmoil. I can't help but feel there's more to this story, something hidden beneath the surface. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3608 /* We must uncover the truth, for Aisha's sake. Her beauty and charm speak of a soul too pure to be mired in scandal. */
  == h_lieded IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3609 /* Even I can appreciate a passion for romance and the thrills it brings, but in our line of work, this is a job, plain and simple. We're not here to play hero or solve mysteries of the heart. */
  == h_lieded IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3610 /* Digging too deep into personal affairs can be a dangerous distraction. We have a task at hand, and it's best done without unnecessary questions. */
END

INTERJECT_COPY_TRANS h_lieded 98 victolie98
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3611 /* The mere thought is revolting. To flee into the arms of such sickening, blinding light. It's the coward's way, seeking false hope in empty promises of renewal. */
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3612 /* Redemption and rebirth? Mere illusions for the weak-minded who cannot accept the comforting embrace of darkness. */
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3613 /* Shar shows us the truth in shadows, where we are not blinded by false dawns. */
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3614 /* This Vapula trades one folly for another, abandoning the night's wisdom for the delusion of the morning's light. */
  == h_lieded IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3615 /* It's amusing, really, how quickly the desperate cling to such... radiant fantasies. */
  == h_lieded IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3616 /* They turn to these gods of light and renewal, hoping for a clean slate, as if all their misdeeds could simply be washed away by piety and prayers. */
  == h_lieded IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3617 /* But we know better, don't we? The shadows we cast can never be fully erased, not by anyone. */
END

INTERJECT_COPY_TRANS h_carthd 6 imotocar6
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3618 /* The depths of gluttony you surface dwellers possess truly astounds me. How utterly repulsive. */
END

INTERJECT_COPY_TRANS h_vapuld 4 edwtovap4
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3619 /* Why subject us to this insipid drivel? Dispatch the man and let us proceed. Ravenscar will claim his quarry, regardless of this theatre. */
END

INTERJECT_COPY_TRANS h_aishad 17 shatoais17
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@3620 /* Typical of a man to resort to violence when his fragile ego is wounded. You did well to defend yourself. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@3621 /* Men like him deserve far worse than mere humiliation and a mangled face. It's a pity you didn't have a blade at hand to carve a more permanent reminder of his failure. */
  == h_aishad IF ~IsValidForPartyDialogue("Sharteel")~ THEN 
@3622 /* I wish I had the strength and means to defend myself better. The thought of fighting back harder did cross my mind, but fear and panic took over. I never wanted things to get so... violent. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@3623 /* Fear is a weapon as much as any blade. Use it, don't let it use you. Remember, in this life, it's kill or be killed, especially for women like us. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@3624 /* The world isn't kind to those who show weakness. Strength is the only currency these curs understand. Next time, make sure he regrets ever laying eyes on you. */
  == h_aishad IF ~IsValidForPartyDialogue("Sharteel")~ THEN 
@3625 /* You're right, I need to be stronger. I can't let fear control me. But after that night, I just didn't know what to do. */
END

INTERJECT_COPY_TRANS h_aishad 18 gartoais18
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3626 /* To think, fair Aisha, that you faced such peril at the hands of a beast like Amrius. That man's always been a thorn in the side of decency. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3627 /* I've crossed paths with that brute before. He is a man who parades arrogance as if it were nobility, and my disdain for him has only grown. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3628 /* If I had been there, Aisha, with your beauty shining like the moon in a starless sky, I assure you, his clumsy advances would have met a different end! */
  == h_aishad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3629 /* Oh, Garrick, ever the gallant. It's comforting to know chivalry isn't dead, even in these dark times. */
  == h_aishad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3630 /* It's endearing, really, how you're always so ready to leap to my defense. Though between us, I fear Amrius might have been too much even for your brave heart. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3631 /* Perhaps, Aisha, but for you, I would face down a legion of Amriuses! */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3632 /* No foe is too daunting when it comes to protecting your radiance. It's the duty of every true bard to stand against such injustices. */
  == h_aishad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3633 /* Thank you, Garrick, for always being there. Your words are like a soothing balm to a weary soul. */
END

INTERJECT_COPY_TRANS h_aishad 23 nertoais23
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3634 /* Hey, no, Aisha, that's not on you. You can't blame yourself for someone else's twisted thinking. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3635 /* You were doing your job, and there's a world of difference between professional courtesy and personal consent. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3636 /* Amrius crossed a line, and that's on him, not you. Don't let his actions make you question your own. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3637 /* Absolutely, Neera's right. Aisha, it's not your fault, not one bit. You can't control how others take things, especially someone like Amrius. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3638 /* You were clear about your work, and if he read more into it, that's his mistake. You're not responsible for his delusions or his actions. */
  == h_aishad IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3639 /* I guess I've always known how to handle the attention, but with Amrius, it's different. It's like he's seen a different version of me, one that only exists in his head. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3640 /* That's the thing, isn't it? Some people, they get this idea of you and just won't let it go. But you're not responsible for their fantasies. You're you, and that's all you should be. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3641 /* Exactly! And don't forget, we've got your back, Aisha. No one should have to deal with this kind of stuff alone. Amrius or no Amrius, you're not in this by yourself. */
  == h_aishad IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3642 /* Thank you, girls. It means a lot to have support like this. */
END

INTERJECT_COPY_TRANS h_amriud 9 gartoamr9
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3643 /* Your tale rings as false as a bard without a voice, Amrius. To paint Aisha as a villain? A clumsy play, even for a man of your lowly stature. */
  == h_amriud IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3644 /* Oh, spare the theatrics, Garrick. Aisha ain't no angel, and you'd be daft to believe otherwise. Maybe you're just too blind and wrapped up in your fairy tales to sniff out the real world. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3645 /* If being blinded means seeing the good in people, then I'll happily walk in darkness. But what of you? Stumbling through life, fueled by ego and ale? */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3646 /* In your clouded judgment, did you not become the very caricature of dishonor? A man undone by his own belligerence and the bottom of a bottle, perhaps? */
  == h_amriud IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3647 /* Listen up, Garrick, you're no knight in shining armor, let's get that straight. You think you know it all, but you ain't got a clue about what really went down that night. */
END

INTERJECT_COPY_TRANS h_amriud 14 nertoamr14
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3648 /* Oh, of course, because a woman showing any sort of emotion must mean she's got a screw loose, right? How silly of us to think that feelings could be anything but a sign of madness. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3649 /* Next, you'll be telling us that the sun rises in the west because Aisha looked at it the wrong way. Really, Amrius, your insight is as enlightening as a cave at midnight. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3650 /* Neera's got a point. Aisha, losing her cool like that? It doesn't add up. She seems more like the 'keep calm and carry on' type, than someone who would just go berserk out of nowhere. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3651 /* C'mon, Amrius, even my imagination isn't that wild, and I've dreamed up some pretty strange stuff. */
  == h_amriud IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3652 /* You two are as naive as newborns if you think that's the whole story. Listen, Aisha ain't the saint you're making her out to be. */
END

INTERJECT_COPY_TRANS h_aishad 41 nertoais41
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3653 /* Psst, Imoen, is this the part where we pretend we've just walked into the wrong play? Because I didn't get the script for 'Aisha Unleashed: The Rant Chronicles.' */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3654 /* I'm half expecting a director to jump out and yell 'cut!' any second now. This whole thing with Ilena... it's making me think Aisha's not just upset. She might be... well, a bit... you know. */
  == h_aishad IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3655 /* Don't you dare suggest I'm crazy! I'm the only one seeing things clearly here! Everyone else might be blind to Ilena's manipulations, but not me. I see the truth behind her facade. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3656 /* I don't know, Aisha... I'm trying to follow you, but that's quite a sharp turn into catty territory. We're here worrying about bounties, and you're firing shots at Ilena's eyelashes? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3657 /* I mean, c'mon. We shared a heart-to-heart earlier, or at least, I thought we did. You said you were being controlled by Amrius, about wanting freedom from his influence. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3658 /* But now, hearing you like this, it's as if all that was just... I don't know, a performance, an act. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3659 /* I want to believe in you, Aisha, I really do. But it's hard when it feels like you've been playing us all along. */
  == h_aishad IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3660 /* You... you don't understand! Amrius, he's a snake, a venomous serpent, and Ilena... she's a spider, weaving her web of deceit. */
  == h_aishad IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3661 /* They're the ones who want to destroy me, to erase me from this wretched play! But I won't let them, no, not me... */
END

INTERJECT_COPY_TRANS h_amriud 54 imotoamr54
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3662 /* Okay, Amrius, so Aisha's a bit of a firecracker, we got that loud and clear. But going from zero to bounty? That's jumping a few steps, don't you think? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3663 /* There's a big leap from being a bit dramatic to being a real threat, and a rant about jealousy doesn't exactly scream 'danger to the public.' */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3664 /* Exactly! What Imoen said. Aisha's more like a surprise firework than a full-blown inferno. A bit startling, maybe, but hardly a reason to call in the cavalry. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3665 /* I mean, if everyone who had a dramatic streak had a bounty on their head, we'd be in a constant game of hide-and-seek with half the realm! */
  == h_amriud IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3666 /* You two might make light of it, but it's not just about being dramatic. She's volatile, unpredictable. And in my world, that's a risk I can't afford. */
END

INTERJECT_COPY_TRANS h_ilenad 19 gartoile19
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3667 /* Forgive my interruption, Ilena, but even in the midst of such a tumultuous tale, one cannot overlook the radiance you bring into the room. It's as if your beauty is a calm amidst this storm. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3668 /* That night at the tavern must have been quite unsettling for you. Surrounded by all that chaos, I hope you were unharmed. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3669 /* Oh, and where are my manners? I am Garrick, a humble bard, delighted to be at your service. */
  == h_ilenad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3670 /* Well, thank you for the kind words, Garrick. It was indeed a hectic night, but I managed to stay out of harm's way. And, um, yes, it's a pleasure to meet you too. */
  == h_ilenad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3671 /* Now, returning to the matter of Aisha and Amrius. It's crucial that we address their predicament with the seriousness it deserves. */
  == h_ilenad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3672 /* Their situation is very troubling, and it's something I'd rather not relive too often. Such events can leave a lasting impression, and not always for the better. */
END

INTERJECT_COPY_TRANS h_ilenad 23 nertoile23
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3673 /* And here I thought my wild surges were unpredictable, but these two? They're like walking, talking chaos theory examples. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3674 /* Maybe I should take notes for a new spell - 'Summon Relationship Turmoil.' */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3675 /* Yeah, that's not just a rough patch, it's a whole landscape of emotional landmines. No wonder things are so messed up between them. */
  == h_ilenad IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3676 /* You know, you're right in a way. Amrius and Aisha, they're like two storms colliding over and over again. It's a spectacle of emotion and conflict that's hard to look away from. */
END

INTERJECT_COPY_TRANS h_aishad 62 nertoais62
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3677 /* I... I'm at a loss here. A bounty as a sign of twisted affection? Really, Aisha? That's not just over the top, it's over the mountains and into another realm of crazy. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3678 /* I thought we already reached peak drama with your last outburst, but you're really outdoing yourself now. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3679 /* Yeah... You took the words right out of my mouth, Neera. A bounty as a love token? That's like saying getting struck by lightning is a sunny day's greeting. */
  == h_aishad IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3680 /* You think this is funny? You think my pain is just another joke for your amusement? No, this is my life, my reality, and I won't be brushed off as just some lunatic! */
END

INTERJECT_COPY_TRANS h_aishad 70 gartoais70
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3681 /* Aisha, my heart aches to see you in such a storm. Once a beacon of calm reason, now adrift in a sea of mistrust and shadows. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3682 /* We've seen you bear the weight of this bounty, a heavy cloud over your head. But now, even in its lifting, there's no light in your eyes. Surely there's something deeper, isn't there? */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3683 /* Why this web of suspicion, Aisha? What's truly stirring in the depths of your heart? I want to understand, to help you find your way back. */
  == h_aishad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3684 /* Enough, Garrick! This isn't about flowery speech or deep heart-searching. It's about her! Ilena! She's the mastermind in all of this. */
  == h_aishad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3685 /* While everyone's been watching me, she's been quietly pulling the strings. */
END

INTERJECT_COPY_TRANS h_aishad 71 imotoais71
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3686 /* Wait, what? One second we're celebrating the lifting of the bounty, and the next, we're in the middle of a conspiracy thriller? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3687 /* Aisha, are you suggesting Ilena's some sort of mastermind behind... well, everything? */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3688 /* Yeah, I'm with Imoen on this one. I'm all for a good mystery, but this is a wild leap. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3689 /* We go from 'hooray, no more bounty' to 'Ilena's pulling all the strings'? It's like we missed a few chapters in this story. */
  == h_aishad IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3690 /* You think I'm making this up, weaving tales out of thin air? No, there's more to this than meets the eye. */
  == h_aishad IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3691 /* And Ilena, oh, don't get me started on her. She struts around like she owns the place, batting her eyelashes, thinking she's the town's darling. */
  == h_aishad IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3692 /* It's all an act, I tell you. A performance to fool everyone into thinking she's this innocent little flower. But I see through it, I do. */
  == h_aishad IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3693 /* They're both as bad as each other, him with his delusions of grandeur, and her with her little miss perfect act. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3694 /* Okay, Aisha... I'm trying to follow, but you lost me at 'innocent little flower'. That's quite a sharp turn into catty territory. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3695 /* We're here worrying about bounties, and you're firing shots at Ilena's eyelashes? Is it just me, or did this just go off the rails? */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3696 /* Totally off the rails, Imoen. I thought we were dealing with danger, not first-year wizard academy drama. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3697 /* This whole thing with Ilena... it's making me think Aisha's not just upset. She might be... well, a bit... you know. */
  == h_aishad IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@3655 /* Don't you dare suggest I'm crazy! I'm the only one seeing things clearly here! Everyone else might be blind to Ilena's manipulations, but not me. I see the truth behind her facade. */
END

INTERJECT_COPY_TRANS h_baldwd 62 edwtobal62
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3698 /* Ah, yes, the Kerykeion, a conduit of raw magical energies that could amplify a spellcaster's abilities beyond imagination. I am well acquainted with its legend and the immense arcane potential it conceals. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3699 /* A relic of formidable power, steeped in ancient magics and enshrouded in the mysteries of the past. To think that it was fragmented and lost... a tragic squandering of such potent magic. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3700 /* If these fragments indeed exist within the realms of Faerun, their recovery could be a pursuit worthy of my talents. */
  == h_baldwd IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3701 /* Edwin Odesseiron, a Red Wizard of Thay, known as much for your impressive command of magic as for your... less than subtle political maneuverings within your order. */
  == h_baldwd IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3702 /* It's not every day one meets a wizard who's managed to both impress and intimidate his peers to such a degree. */
  == h_baldwd IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3703 /* Your exploits, particularly those shadowy affairs you've so skillfully navigated, have not gone unnoticed by those who value such talents. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3704 /* I see my reputation as a master of the arcane and a strategist has traveled far and wide. It is only fitting, considering my unparalleled capabilities. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3705 /* It's clear you understand the magnitude of having someone of my intellect and expertise involved in your endeavors. */
  == h_baldwd IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3706 /* I'll admit, your involvement elevates our chances of success considerably. With your vast knowledge and experience, we stand a much better chance of achieving our goal. */
END

INTERJECT_COPY_TRANS h_baldwd 68 edwtobal68
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3707 /* Yes, yes, a sentiment I too share. These 'scholars', and their simple-minded perspectives, forever blind to the brilliance right before their eyes! */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3708 /* They grovel in the dirt of mundane facts, too fearful to gaze into the abyss of true knowledge. Such ignorance is not just lamentable, it's a tragic squandering of potential. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3709 /* They fail to grasp the vast, untapped depths of arcane mysteries, preferring the safety of their insipid tomes and tedious theories. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3710 /* It is left to those of us with superior intellect and unbounded curiosity to unearth and wield the true power hidden in the shadows of history. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("Edwin")~ THEN
@3711 /* Enough, Edwin. Your ceaseless prattle is as tiring as it is unimpressive. True wisdom does not need to be constantly announced to every ear that will listen. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("Edwin")~ THEN
@3712 /* We are well aware of your capabilities, your constant need to assert them betrays a deep-seated insecurity. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("Edwin")~ THEN
@3713 /* Let us focus on the task at hand, rather than endure another tedious monologue on your perceived brilliance. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Jaheira")~ THEN
@3714 /* Your lack of appreciation for intellectual discourse is as predictable as it is disappointing, Harper. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Jaheira")~ THEN
@3715 /* It is because of my unparalleled intellect that I find it necessary to educate those less gifted. Your disdain for my insights is merely a reflection of your own limitations. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Jaheira")~ THEN
@3716 /* It is a thankless job, enlightening the willfully obtuse, but someone of my exceptional abilities must bear this burden. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Jaheira")~ THEN
@3717 /* If my words are too lofty for your comprehension, that is a shortcoming I am willing to overlook in the interest of our shared objectives. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("Edwin")~ THEN
@3718 /* Why you insolent little... Your arrogance spreads like vines in a rich forest, choking out all semblance of balance and reason! */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("Edwin")~ THEN
@3719 /* I have my doubts if this Kerykeion is anything more than a mere fable, a story conjured up to send fools on wild chases. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("Edwin")~ THEN
@3720 /* The idea of an artifact imbued with the essence of mythical beings sounds like the stuff of children's tales, not a pursuit for serious minds. */
END

INTERJECT_COPY_TRANS h_rigald 146 shatorig148
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
    @3721 /* So, the woman's got some spirit, eh? Ha! The clueless husband. Can't say I blame her for not trusting him with her spoils. Men can be more of a burden than they're worth, sometimes. */
END

INTERJECT_COPY_TRANS karp 9 jahtokar9
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3722 /* Fleeing from this abusive partner is a brave and necessary step. No one should endure such tyranny in silence. However, I must caution you about your intended destination. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3723 /* Athkatla, while a city of many opportunities, is also a place fraught with its own perils. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3724 /* It is a city where corruption festers like a hidden wound, where the powerful prey on the weak, and where the innocent often find themselves entangled in the intricate and dangerous webs of those seeking control and dominance. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3725 /* Perhaps it would be wiser to consider a destination more conducive to peace and safety, away from the shadows that loom over such a city. */
  == karp IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3726 /* I understand your concerns, and I'm grateful for your advice. It's true, Athkatla may have its dangers, but for me and my son, it represents our only chance at a new life. */
  == karp IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3727 /* We're simple folk, and the threat here is known and immediate. We have nowhere else to turn. For now, we will still look ahead, and wait for aid in finding a safe passage. */
END

INTERJECT_COPY_TRANS karp 30 jahtokar30
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3722 /* Fleeing from this abusive partner is a brave and necessary step. No one should endure such tyranny in silence. However, I must caution you about your intended destination. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3723 /* Athkatla, while a city of many opportunities, is also a place fraught with its own perils. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3724 /* It is a city where corruption festers like a hidden wound, where the powerful prey on the weak, and where the innocent often find themselves entangled in the intricate and dangerous webs of those seeking control and dominance. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3725 /* Perhaps it would be wiser to consider a destination more conducive to peace and safety, away from the shadows that loom over such a city. */
  == karp IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3726 /* I understand your concerns, and I'm grateful for your advice. It's true, Athkatla may have its dangers, but for me and my son, it represents our only chance at a new life. */
  == karp IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3728 /* We're simple folk, and the threat here is known and immediate. We have nowhere else to turn. For now, we will still look ahead, and wait for your aid in finding a safe passage. */
END

INTERJECT_COPY_TRANS h_rigald 165 imotorig165
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3729 /* I'm all for a bit of mischief, but swiping from the folks running the games? They're just trying to spread a bit of joy and have some innocent fun. I'm not so sure about this one. */
  == h_rigald IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3730 /* Begging your pardon, miss. But, these chaps we're targeting aren't your average joy-spreaders. They're in league with the Shadow Thieves, a nasty bunch, I assure you. */
  == h_rigald IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3731 /* There's nothing innocent or joyous about their dealings. They use these games and the carnival as a front for their darker activities. */
  == h_rigald IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3732 /* We're not just swiping loot and causing a bit of mischief here, we're disrupting a cog in a much more sinister machine. Trust me, this lot deserves what's coming to them, and we're just the ones to serve it up. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3733 /* Well, when you put it that way, I guess it changes the picture a bit. It's just hard to imagine folks looking to have fun being mixed up in something dark. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3734 /* But if these Shadow Thieves are using the carnival for no good, then I suppose we can't just turn a blind eye. I just hope we're really hitting the right targets and not just stirring trouble where it doesn't belong. */
  == h_rigald IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3735 /* I respect your concerns. But in this world, sometimes the lines between right and wrong get a bit blurry. We do what we must to keep the balance, and sometimes that means playing in the grey areas. */
END

INTERJECT_COPY_TRANS h_rigald 170 kagtorig170
  == %KAGAIN_JOINED% IF ~IsValidForPartyDialogue("Kagain")~ THEN
@3736 /* I've gotta hand it to you, this is clever. Using legal fronts to cover the dirty work, expanding influence while the law turns a blind eye. That's sharp thinking. */
  == %KAGAIN_JOINED% IF ~IsValidForPartyDialogue("Kagain")~ THEN
@3737 /* Working with the guild always pays off, you folks know how to mix business with, well, more business. It's all about profit, and this plan? It's gold. */
  == h_rigald IF ~IsValidForPartyDialogue("Kagain")~ THEN
@3738 /* Precisely. It's about leveraging every opportunity, turning the system to our advantage while maintaining a facade of legitimacy. */
  == h_rigald IF ~IsValidForPartyDialogue("Kagain")~ THEN
@3739 /* You understand the value of subtlety in business, and that's exactly what we're exploiting here. */
END

INTERJECT_COPY_TRANS h_lieded 220 jahtolie220
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3740 /* Wait, just a moment. You're speaking of displacing a dryad, a guardian of the woods, for the sake of a hunting compound? */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3741 /* Dryads are deeply connected to their forests, harming them or their homes can have dire consequences for the surrounding nature. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3742 /* Katreda is not merely 'a thorn in their side'... she is fulfilling her natural role as a protector of the forest. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3743 /* We should be aiding her, not plotting against her for the benefit of hunters who care little for the balance and sanctity of nature. */
  == h_lieded IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3744 /* Listen, darling, I understand your concern for the natural order, but let's not forget the nature of our business. */
  == h_lieded IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3745 /* We are not arbiters of moral dilemmas, we are professionals who take on jobs, execute them efficiently, and move on. Delving too deeply into the 'rights' and 'wrongs' of each contract only muddies the waters. */
  == h_lieded IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3746 /* Our role is to navigate the shadows, not to bask in the light of ethical scrutiny. This job, like any other, is an opportunity, a means to an end. */
  == h_lieded IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3747 /* That's how it is in our line of work, love. We take the task, we do it well, and we reap the rewards. Anything more is a distraction. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3748 /* No, Liedel. I cannot and will not accept that line of reasoning. Our actions, regardless of our profession, have consequences, and we must bear responsibility for them. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3749 /* To dismiss the impact we have on the world, on nature, and on creatures like this dryad, is to turn a blind eye to the very essence of life. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3750 /* We are not mere tools to be used without thought or conscience. We have the power to choose, to decide if a job aligns with the greater good or if it perpetuates harm and imbalance. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3751 /* To reduce ourselves to mindless agents of someone else's will is a betrayal of our own humanity. I stand firmly against this task. We must seek a path that honors both our duties and the natural world. */
  == h_lieded IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3752 /* Stand by your principles, by all means. But remember, at the end of the day, while you're busy fussing over moral dilemmas, someone else will gladly cash in on that bounty. */
  == h_lieded IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3753 /* And me? I'll get my cut for facilitating the deal, just as I always do. It's the way of our world... while one hesitates, another acts. Let's move on then, shall we? */
END

INTERJECT_COPY_TRANS h_lieded 226 victolie226
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3754 /* Don't overestimate the capabilities of those self-righteous buffoons. My history with them has shown me enough to know they are more bark than bite, more concerned with parading their authority than actual competence. */
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3755 /* They strut around like peacocks, pretending to uphold order while truly understanding very little of the forces they deal with. */
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3756 /* Relying on them to handle a situation with any delicacy is like expecting an ogre to perform surgery. Let's not delude ourselves into thinking they are a threat to our operations. */
END

INTERJECT_COPY_TRANS h_lieded 237 shatolie237
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@3757 /* Let's not mince words about this 'noble'. If you don't get to him first, I will. And when I do, his end will be neither quick nor merciful. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@3758 /* I'll ensure that his last moments are filled with the kind of agony and terror that will make him wish for death long before it comes. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@3759 /* There's an art to pain, a beauty in the fear of a man's eyes when he realizes that death is not the worst thing that can happen to him. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@3760 /* Using a child for his vile purposes... he deserves to experience every gruesome and torturous technique I've perfected over the years. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@3761 /* It will be a message to any man who dares cross the line we've drawn today. */
  == h_lieded IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@3762 /* Well, your... enthusiasm is noted, albeit in your uniquely chilling manner. Rest assured, the noble will receive his due, one way or another. */
  == h_lieded IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@3763 /* I appreciate your readiness to step in, but let's allow subtlety and discretion to guide our actions. */
  == h_lieded IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@3764 /* We operate in the shadows for a reason, and there's an elegance to handling such matters without resorting to overt barbarism. */
  == h_lieded IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@3765 /* Our message will be clear, our retribution just, without the need for unnecessary spectacle. */
END

INTERJECT_COPY_TRANS h_lieded 257 xzatolie257
  == %XZAR_JOINED% IF ~IsValidForPartyDialogue("Xzar")~ THEN
@3766 /* Oh, dear, you wound me with your harsh words. To dabble in the art of life and death is not a sign of insanity, no, no, no... it's a sublime exploration of the ultimate power! */
  == %XZAR_JOINED% IF ~IsValidForPartyDialogue("Xzar")~ THEN
@3767 /* The mundane world, oh, they label us, but what do they know? They're trapped in their narrow view of reality, too frightened to peek beyond the veil where true knowledge lies. */
  == %XZAR_JOINED% IF ~IsValidForPartyDialogue("Xzar")~ THEN
@3768 /* They know nothing of the ecstasy of speaking to a skull, and hearing the secrets of the universe whispered back! The rush of animating the lifeless, the power to defy the very laws of nature. */
  == %XZAR_JOINED% IF ~IsValidForPartyDialogue("Xzar")~ THEN
@3769 /* Don't you see? It's a grand, grand dance with bones and spirits! We are the enlightened ones, basking in the glorious, chaotic knowledge of life, death, and all the delicious shades in between! */
  == h_lieded IF ~IsValidForPartyDialogue("Xzar")~ THEN
@3770 /* Well, now, that was... enlightening. Your... passionate defense has indeed proven my point more eloquently than I ever could, it seems. */
END

INTERJECT_COPY_TRANS h_tuztdd 0 mintotuz0
  == %MINSC_JOINED% IF ~IsValidForPartyDialogue("Minsc")~ THEN
@3771 /* What foul treachery unfolds before us, Boo? These black-hearted villains dare to ensnare an innocent child in their vile clutches! */
  == %MINSC_JOINED% IF ~IsValidForPartyDialogue("Minsc")~ THEN
@3772 /* Fear not, little one, for Minsc and Boo stand as bastions of justice! We shall liberate you from these dastardly knaves and teach them the true meaning of justice! */
  == h_tuztdd IF ~IsValidForPartyDialogue("Minsc")~ THEN
@3773 /* Ha! Big words from a half-witted oaf! Think you and your rat can take on all of us, do you? You're out of your league. */
  == h_tuztdd IF ~IsValidForPartyDialogue("Minsc")~ THEN
@3774 /* This girl is our ticket to a hefty sum, and we ain't lettin' some deluded buffoon and his merry bunch of soft-handed dandies ruin our payday. */
  == %MINSC_JOINED% IF ~IsValidForPartyDialogue("Minsc")~ THEN
@3775 /* Boo is no mere rat, but a miniature giant space hamster with the courage of a lion! Together, we have faced evils far greater than you, foul miscreant! */
  == %MINSC_JOINED% IF ~IsValidForPartyDialogue("Minsc")~ THEN
@3776 /* Minsc and Boo stand for all that is good and right in this world, and we will not allow villains such as yourselves to prey upon the weak and innocent! */
  == %MINSC_JOINED% IF ~IsValidForPartyDialogue("Minsc")~ THEN
@3777 /* Prepare yourselves, for justice's fist is swift and unyielding! We must protect the small and defenseless! Swords for freedom, hearts for love, and butts for kicking! */
  == h_tuztdd IF ~IsValidForPartyDialogue("Minsc")~ THEN
@3778 /* You think you can just barge in here and meddle in our business? I've dealt with your kind before, all talk, no spine. You're in over your heads. */
END

INTERJECT_COPY_TRANS h_katred 2 jahtokat2
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3779 /* By the balance, this cannot stand. These woods are not just trees and soil, they are a living, breathing part of nature, a sanctuary for life in all its forms. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3780 /* To ravage this land for mere sport is a crime against the very essence of nature itself. We cannot allow these desecrators to continue. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3781 /* Katreda, as a druid and a guardian of the natural order, I stand with you. We must protect these ancient woods and all the creatures that call them home. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3782 /* These men must be driven out, and the sanctity of your forest preserved. Nature's balance demands it, and we shall heed its call. */
  == h_katred IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3783 /* Your words give me hope, Druid, and your understanding of nature's delicate balance warms my heart. It is rare to find kindred spirits who truly appreciate the sanctity of the wild. */
  == h_katred IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3784 /* These woods have been my home for centuries, and the thought of them being destroyed for such frivolous pursuits is a pain sharper than any blade. */
  == h_katred IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@3785 /* I have used all my power to hold back these invaders, to protect the trees that are my family, my friends. But my strength is waning, and their determination is relentless. */
END

INTERJECT_COPY_TRANS h_zhontd 4 xzatozho4
  == %XZAR_JOINED% IF ~IsValidForPartyDialogue("Xzar")~ THEN
@3786 /* Oh, dear comrade of the crypts! How splendid it is to meet a fellow connoisseur of the morose arts! */
  == h_zhontd IF ~IsValidForPartyDialogue("Xzar")~ THEN
@3787 /* Indeed! The dance of death calls to us, and we are but eager participants! */
  == %XZAR_JOINED% IF ~IsValidForPartyDialogue("Xzar")~ THEN
@3788 /* A macabre ballet, it is! Together, we shall pirouette through the mists of mortality! */
  == h_zhontd IF ~IsValidForPartyDialogue("Xzar")~ THEN
@3789 /* And with each twirl, the world shall shiver in terror and awe at our macabre masterpiece! */
  == %XZAR_JOINED% IF ~IsValidForPartyDialogue("Xzar")~ THEN
@3790 /* Ah, what a wicked waltz it shall be! Let us paint the world in shades of darkness! */
  == h_zhontd IF ~IsValidForPartyDialogue("Xzar")~ THEN
@3791 /* To the grand finale of life and the raucous applause of the afterlife! */
END

INTERJECT_COPY_TRANS h_magnud 7 xantomag7
  == %XAN_JOINED% IF ~IsValidForPartyDialogue("Xan")~ THEN
    @3792 /* Ah, the cycle of life and death, orchestrated by a necromancer no less. How perfectly mundane. Perhaps I should compose an ode to this melancholic affair, though I doubt anyone would care to listen. */
END

INTERJECT_COPY_TRANS h_procud 34 saftopro34
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3793 /* Even in the distant waters I sailed, whispers of her so-called legendary feats found their way to us. But let's not be too quick to swallow such tall tales hook, line, and sinker. */
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3794 /* The seas have a way of turning even a minor scuffle into a mythical battle. Outsmarting a fleet, you say? More like a fortunate gust of wind and an overeager storyteller, if you ask me. */
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3795 /* True cunning on the high seas is about more than just luck and grandiose schemes. It's a fine dance of wit and skill, something not every flamboyant captain understands. */
  == h_procud IF ~IsValidForPartyDialogue("Safana")~ THEN
@3796 /* I've had the pleasure of seeing Selena work her magic firsthand, and let me tell you, maritime legends aside, she's got the skills to back up her reputation. */
  == h_procud IF ~IsValidForPartyDialogue("Safana")~ THEN
@3797 /* Whether those tales of her outsmarting a fleet are stretched or not, she's proven herself more than capable on land. */
END

INTERJECT_COPY_TRANS h_vitiad 1 imotovit1
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3798 /* Hey, that was pretty slick! You've got some nimble fingers there. But, you know, since we're all friends here now, maybe you could consider giving back that 'trifle' of a hundred gold? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3799 /* It's all in good fun, of course. Plus, it'd be a nice gesture of... let's call it professional courtesy among fellow adventurers. */
  == h_vitiad IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3800 /* Well, well, what do we have here? A vision as lovely as you, certainly makes a man reconsider his choices. Perhaps my little act of thievery was fate, bringing me before such beauty. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3801 /* Fate or not, you still owe us a hundred gold. Your smooth talk isn't going to distract me from that. How about you hand it over and we call it even? */
  == h_vitiad IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3802 /* Ah, a lass with wit as keen as her eye. Very well, you've made your point. */
END

INTERJECT_COPY_TRANS h_selend 6 saftosel6
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3803 /* Selena Stardancer, the so-called scourge of the Sea of Fallen Stars. I've heard the stories, the songs sung in your name. But looking at you now, I have to wonder, do those tales paint the whole picture? */
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3804 /* Somehow, you're not as... impressive as I expected. You don't quite strike me as the fearsome pirate queen they make you out to be. */
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3805 /* Where's the imposing figure that outwitted fleets and sent shivers down the spines of sea captains? Makes you wonder how much of that reputation is just sea foam and how much is actually steel. */
  == h_selend IF ~IsValidForPartyDialogue("Safana")~ THEN
@3806 /* And who might ye be, yappin' like a barnacle-encrusted parrot? Ye think ye can just swagger up and question the likes of Selena Stardancer? Every tale they spin 'bout me is true as the north wind. */
  == h_selend IF ~IsValidForPartyDialogue("Safana")~ THEN
@3807 /* I've sailed through storms that'd turn yer knees to jelly, and clashed with terrors that'd send ye scurrying back to yer mother. */
  == h_selend IF ~IsValidForPartyDialogue("Safana")~ THEN
@3808 /* I don't need to be defendin' me name to some landlubber with a tongue sharper than her wit. So, before ye start flappin' yer gums about legends and lies, remember who ye're squawkin' at. */
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3809 /* Landlubber? You clearly don't know who you're speaking to. I cut my teeth aboard the Exzesus, a vessel feared along the Sword Coast for its menacing grandeur and the ruthlessness of its crew. */
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3810 /* We carved a path of terror and respect across the seas, exploits that would make your dainty skiff look like a pleasure cruise. */
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3811 /* So don't you dare dismiss me as some shore-bound waif. I'm every bit the pirate you claim to be, and I don't take lightly to being belittled by anyone. */
  == h_selend IF ~IsValidForPartyDialogue("Safana")~ THEN
@3812 /* The Exzesus? Ne'er heard o' such a vessel in all me years on the high seas, an' that's sayin' somethin'. Might be a fearsome shark in yer small pond, but it's no leviathan of the vast ocean. */
  == h_selend IF ~IsValidForPartyDialogue("Safana")~ THEN
@3813 /* Now, ye be wantin' a show o' me skills? That I can do. A pirate's honor is her bond. But mark me words, I'll be needin' t' see the cut o' yer jib first. */
  == h_selend IF ~IsValidForPartyDialogue("Safana")~ THEN
@3814 /* Prove t' me that ye an' yer Gorgon's Eye be more than just bilge-suckin' braggarts. Let's see if ye have the salt to match yer swagger. */
END

INTERJECT_COPY_TRANS h_game2d 10 kagtogam10
  == %KAGAIN_JOINED% IF ~IsValidForPartyDialogue("Kagain")~ THEN
@3815 /* Typical dwarf, eh? And what's that supposed to mean? We all look the same under the beard and armor, or perhaps you think we've all got a penchant for ale and axes? */
  == %KAGAIN_JOINED% IF ~IsValidForPartyDialogue("Kagain")~ THEN
@3816 /* As for this Hugo fella, I know of him. A fellow mercenary, more fond of tricks and antics than an honest day's work. */
  == %KAGAIN_JOINED% IF ~IsValidForPartyDialogue("Kagain")~ THEN
@3817 /* But don't go tarnishing his name over some dice. He's got his faults, but cheating at games? That's not his style. */
  == %KAGAIN_JOINED% IF ~IsValidForPartyDialogue("Kagain")~ THEN
@3818 /* More likely to talk your ear off about some battle or other than to swindle you at the tables. */
END

INTERJECT_COPY_TRANS h_meredd 81 gartomer81
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3819 /* Fear not, Madam Meredia, for Garrick of Beregost stands ready to aid a fair maiden in distress. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3820 /* I am well-acquainted with the streets of our town, and the name Xevec is known even to a humble bard like myself. A solitary soul, often seen lingering in the shadows, his story yet untold. */
  == h_meredd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3821 /* Your words are as grand as your gestures, young sparrow. But Xevec is more shadow than substance, a beggar who wanders our streets, his past a mystery even to us. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3822 /* Ah, but every shadow has a source, and every beggar a tale to tell. It is the duty of a bard to seek out such stories, to shed light where there is darkness. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3823 /* And in your luminous presence, even the dimmest tale shines bright. */
  == h_meredd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3824 /* Your flattery is as bountiful as your curiosity. While I appreciate your poetic insights, practicality might serve you better in this case. */
END

INTERJECT_COPY_TRANS h_xevecd 0 victoxev0
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3825 /* By the Spider Queen, this man's stench is a foul assault upon the senses! His breath reeks like the rotting depths of the Underdark... it's unbearable. */
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3826 /* How can one let themselves be reduced to such a pitiful state? I can hardly stand to be near him. Let us be swift in our dealings with this wretch, his very presence offends me. */
  == h_xevecd IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3827 /* Don'tcha be sneerin' at me, elf! I know what you're thinkin', but I ain't some helpless rat to be scorned! I've seen things, been places that'd turn yer hair white! */
  == h_xevecd IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3828 /* So what if I stink? This life, it's hard and dirty, it is! But I ain't less than ye, no, not by a long shot! Keep yer nose up if ye like, but don't ye forget, I've survived worse than foul air and sneers! */
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3829 /* Your surface struggles pale in comparison to the darkness and treachery of the places I've called home, so do not presume to lecture me on suffering and survival. */
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3830 /* And as for turning my hair white, you are far too late. I was born with such a mark of distinction. */
END

INTERJECT_COPY_TRANS h_baldwd 110 victobal110
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3831 /* I despise those accursed woods and the relentless pursuit I endured within. It was there the Flaming Fist hunted me like a common beast, driven by their blind prejudice against my kin. */
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3832 /* But no longer shall I cower or flee. I will return to those wretched woods, not as the hunted, but as the hunter. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel") IsValidForPartyDialogue("Viconia")~ THEN
@3833 /* The Flaming Fist, those spineless curs... They wield their power with cruelty and cowardice. I have not forgotten their torment, the scars they left on me, both seen and unseen. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel") IsValidForPartyDialogue("Viconia")~ THEN
@3834 /* Each night, the darkness whispers to me of retribution, a sweet, lingering promise of vengeance. Their deeds shall not go unpunished. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel") IsValidForPartyDialogue("Viconia")~ THEN
@3835 /* Viconia, in you I find a kindred spirit, wronged by the same hands. Together, we are more than mere survivors, we are avengers waiting in the shadows. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel") IsValidForPartyDialogue("Viconia")~ THEN
@3836 /* Our day of reckoning will come, and I will stand beside you, a united front against those who wronged us. Let the Flaming Fist tremble at the thought of our vengeance. */
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia") IsValidForPartyDialogue("Sharteel")~ THEN
@3837 /* Yes, when that day comes, I will stand with you, shoulder to shoulder. Together, our retribution will be as inevitable as the nightfall, as relentless as the tide. */
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia") IsValidForPartyDialogue("Sharteel")~ THEN
@3838 /* They sought to extinguish our spirits, but instead, they have ignited a fire that will consume them. */
END

INTERJECT_COPY_TRANS h_baldwd 115 alotobal115
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora")~ THEN
@3839 /* Gee, this fellow sounds like he's forgotten how to smile! All this shadowy business and no fun... no wonder he's so grumpy! */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora")~ THEN
@3840 /* Maybe what he really needs is a day out in the sun, picking daisies or chasing butterflies. I bet he's never had a proper giggle or shared a sweetroll with a friend. */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora")~ THEN
@3841 /* Sometimes, a little bit of joy and a hearty laugh can do wonders, even for the coldest of hearts. Maybe we could invite him for a picnic! What do you think? */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3842 /* By the Red Wizards, Alora, your naivete never ceases to astound me! A picnic? With Thamuz, a master of the shadowy arts and a dealer of death? */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3843 /* Your suggestion defies not only logic but the very nature of reality itself. It's as if you inhabit a different world, one brimming with relentless cheer and unfathomable innocence. */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora") IsValidForPartyDialogue("Edwin")~ THEN
@3844 /* Oh, Edwin, I know it might sound silly to you, but sometimes, even the darkest hearts can find a little light with the right company! */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora") IsValidForPartyDialogue("Edwin")~ THEN
@3845 /* I mean, who wouldn't want to swap a dark, gloomy cave for a sunny day and yummy treats? Maybe all that Thamuz needs is a bit of fun and friendship to brighten his day! */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora") IsValidForPartyDialogue("Edwin")~ THEN
@3846 /* And who knows, even you smile sometimes, don't you, Edwin? In our own little world, anything's possible! */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3847 /* Alora, your ability to conjure such utterly fantastical ideas is nothing short of mind-bending. It is so preposterously optimistic that it verges on the realm of madness! */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3848 /* Yet, in some peculiar way, they serve as a... curious diversion from the mundane rationality of our endeavors. (It's a mystery how such innocence survives in a world as harsh as ours.) */
END

INTERJECT_COPY_TRANS h_baldwd 119 nertobal119
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3849 /* Wait, let me get this straight. We're actually considering walking into what could very well be a trap, just because there's a chance of snagging this Kerykeion thing? */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3850 /* Is it just me, or does that sound like the kind of idea that gets people turned into toadstools in fairy tales? I mean, I'm all for a good adventure, but I also like not being ambushed and possibly obliterated. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@3851 /* Maybe we should, I don't know, think this through a bit more? Or at least pack some extra healing potions... or maybe a nice, sturdy shield... or three. */
END

INTERJECT_COPY_TRANS h_thamud 17 edwtotha17
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3852 /* Such alarmist rhetoric seems a touch overblown, even for the likes of the Shadow Thieves. The Kerykeion, while undoubtedly powerful, is an artifact, not a cataclysm. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3853 /* As an accomplished practitioner of the arcane arts, I find it hard to believe that Baldwin, or anyone for that matter, could wield it to such apocalyptic effect without significant knowledge and preparation. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3854 /* You're either underestimating the complexity of such magic, or you're overstating your case to justify your own meddling. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3855 /* Either way, I suggest a more measured approach to this 'imminent disaster' you're so concerned about. (Though, if there's even a grain of truth to its power, it would be a mistake not to seize such an opportunity for myself.) */
  == h_thamud IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3856 /* Ah, Edwin Odesseiron, if I'm not mistaken, a Red Wizard of Thay. It's surprising to see you entangled with the likes of the Gorgon's Eye. I would have thought your ambitions lay beyond such... mundane alliances. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3857 /* Of course, the Shadow Thieves would be privy to my illustrious background. It's only fitting for a wizard of my supreme talents to be recognized. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3858 /* As for my current association with the Gorgon's Eye, consider it a temporary alignment of interests. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3859 /* They are but a vessel through which I shall access greater powers. (The Kerykeion being a particularly enticing prospect.) */
  == h_thamud IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3860 /* This is not about mere mastery of magic. It's about the raw, untamed force that even the most skilled might struggle to contain. Do not be so quick to dismiss the potential dangers. */
END

INTERJECT_COPY_TRANS h_thamud 23 imototha23
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3861 /* Paltry? That's a funny way to describe the group that just sent your Shadow Thieves packing in Beregost. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3862 /* If that was you assessing our defenses, I hate to break it to you, but you might need to recalibrate your scales. We handled your 'demonstration of force' pretty easily, didn't we? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3863 /* It's almost flattering, though, to think we're worth such attention. Makes you wonder who's really playing who in this shadowy game of yours. */
  == h_thamud IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3864 /* Ah, little one, your bravado is as amusing as it is misplaced. A skirmish in the streets is hardly a measure of true strength. */
  == h_thamud IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3865 /* We Shadow Thieves play a long game, one of subtlety and cunning. What you perceived as defeat was but a ripple on the surface of a much deeper current. */
  == h_thamud IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3866 /* Rest assured, our interests and plans extend far beyond a mere street brawl. Underestimating us based on that alone would be... unwise. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3867 /* Yeah, well, we'll see about that. Don't think for a moment that your words scare us, Thamuz. We've faced more than our share of tough opponents and have come out stronger for it. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3868 /* Your shadow games might work on others, but we're a different story. Keep underestimating us, and you'll find yourselves outplayed at your own game. Just wait and see. */
  == h_thamud IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3869 /* Your confidence is commendable, but in the world we operate in, confidence alone is not enough. Let me offer you a piece of wisdom from someone well-versed in the art of shadows. */
  == h_thamud IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3870 /* In the dance of intrigue and deception that we Shadow Thieves excel in, the most direct approach is often a diversion, a misdirection to mask the true play. */
END

INTERJECT_COPY_TRANS h_baldwd 141 edwtobal141
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3871 /* (Guild ascendancy, a trivial pursuit for such monumental power. He prattles on about shadows and underworld dominion, but he fails to grasp the true potential of the Kerykeion.) */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3872 /* (To squander such a relic on mere thieves' quarrels is an affront to its capabilities. Imagine the possibilities if that power were harnessed by a mind of true genius and vision.) */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3873 /* Edwin, what's that you're mumbling about over there? You always have the most interesting things to say, even when you think no one's listening. */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3874 /* Come on, share with the rest of us! I'm sure whatever it is, it's awfully clever! */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3875 /* My musings are of a strategic nature, far beyond the simple pleasantries you so enjoy. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3876 /* Suffice it to say, I was contemplating the vast potential of the Kerykeion, beyond the mundane ambitions of mere guild supremacy. */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3877 /* Well... But think about it! Power isn't just about control and bending reality. It's about what you can do for others, too. */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3878 /* Making people happy is a pretty good use of power, if you ask me. And who knows, you might even find it fun! */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3879 /* I do not engage in these endeavors for 'fun', Alora. My goals are far more significant. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3880 /* However... I suppose there is some merit in ensuring the contentment of those around me. (Reluctantly, I admit, a content populace can be... useful.) */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3881 /* See, I knew there was a soft spot in there somewhere, Edwin! You're not just all doom and gloom. You've got ideas for making things better, in your own way. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3882 /* Do not mistake my reasoning for weakness. It is a logical deduction, nothing more. However, I must concede, Alora, your relentless cheer is not as grating as I once presumed. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3883 /* In small doses, it can be... marginally bearable, a brief respite from the usual tedium and incompetence that surrounds us. */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3884 /* Oh, Edwin, that's the nicest thing you've ever said to me! Don't worry, I won't tell anyone your secret, that deep down, you're a big ol' softie. Your grumpy mage reputation is safe with me. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3885 /* Softie? I assure you, there is nothing 'soft' about me. I am as formidable as ever. But... I suppose your company is not as vexing as most. Just... don't make a habit of this sentimental nonsense. */
END

INTERJECT_COPY_TRANS h_baldwd 145 gartomer145
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3886 /* Trouble with the fair Meredia and her bevy of beauties? Say no more, Baldwin, for Garrick is here to lend his aid! */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3887 /* A bard's duty is not only to sing of heroics but to partake in them, especially when it involves such enchanting company. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3888 /* Fear not, for I shall lead the charge in this noblest of tasks, with all the charm and grace befitting a troubadour of my standing. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3889 /* After all, what kind of bard would I be if I didn't rush to the aid of damsels in distress? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Garrick")~ THEN
@3890 /* Oh, Garrick, always ready to play the dashing hero, especially when there's a pretty face involved! */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Garrick")~ THEN
@3891 /* Don't get too swept up in your gallant fantasies. We've got serious work to do, and it's not all about serenading and wooing. */
END

INTERJECT_COPY_TRANS h_rigald 220 edwtorig220
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3892 /* Oh, this is preposterous! Engaging in such pedestrian pursuits is beneath my capabilities. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3893 /* I am a practitioner of the arcane arts, not some common thug or negotiator for trifling substances. Why must I be bothered with such mundane tasks? */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3894 /* But Edwin, think about it! If we dismantle this Borland's operation, we're doing something good, right? */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3895 /* Stopping someone who's spreading bad stuff like black lotus, that's a big deal. We could really help people by shutting it down. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3896 /* Your naivety is almost charming, but you fail to grasp the bigger picture. Whether we partner with Borland or dismantle him, the guild will control the flow of the lotus. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3897 /* The substance will remain, perhaps even proliferate under the guild's efficient management. */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3898 /* Oh... Yeah, I see what you mean. That's kinda disappointing, isn't it? But, well, even if the lotus stays, maybe we can make sure it doesn't hurt too many people? */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3899 /* There's always some good we can do, right? Even in a situation like this, we've got to find the little bits of light where we can. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3900 /* Your optimism is as misplaced as it is futile. Whether we mitigate harm or not, the fact remains that we are embroiled in this pitiful charade. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@3901 /* It's a waste of my talents and time. We should be engaging in grander schemes, not policing the dealings of petty drug peddlers! */
END

INTERJECT_COPY_TRANS h_rigald 237 imotorig237
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3902 /* You know, I'm from Candlekeep too. Grew up there, just like <CHARNAME>. It's hard to believe that those monks, with all their rules and their wisdom, would turn to a thieves' guild for help. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3903 /* It's funny, in a way. I spent so much of my life within those walls, surrounded by endless books and ancient knowledge, always dreaming of the world outside. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3904 /* And now, here I am, part of that outside world, and it's Candlekeep that's reaching out to me. Well, us, I guess. It's like everything's come full circle. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3905 /* Those monks, they always seemed so untouchable, so above everything else. To think they're entangled in the same shadowy world as the Gorgon's Eye... it's a strange feeling. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3906 /* Brings back a lot of memories, some good, some... not so much. But hey, if they need our help, who better than someone who knows Candlekeep inside and out, right? */
  == h_rigald IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3907 /* It's a small world now, isn't it? But don't think it too strange. Even a place as sacred as Candlekeep can't always keep its secrets locked away. */
  == h_rigald IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3908 /* And when it comes to missing tomes, especially those of... sensitive nature, it's not uncommon for them to seek out covert help. */
  == h_rigald IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3909 /* They might be scholars and monks, but they're not naive. They know the underworld has its uses, especially a guild as resourceful as the Gorgon's Eye. */
  == h_rigald IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3910 /* Your familiarity with the place could be a blessing in disguise for this task. We'll be counting on that knowledge of yours. */
END

INTERJECT_COPY_TRANS h_rigald 241 edwtorig241
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3911 /* The Netherese were masters of the arcane, their knowledge far surpassing the paltry spells we toy with today. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3912 /* To think that such a volume has resurfaced, and within our reach... The insights, the power it could bestow upon one who truly understands its value. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3913 /* This is not just another trinket to be returned for a quick coin. No, no... it demands a more... discerning handler. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@3914 /* Someone like myself, naturally. The things I could learn, the spells I could unlock... the possibilities are limitless. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Edwin")~ THEN
@3915 /* Edwin, this isn't about boosting your power or filling our pockets. This is Candlekeep we're talking about, my home, where I grew up. It's more than just a place, it's family. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Edwin")~ THEN
@3916 /* Those monks, they were like guardians to me and <CHARNAME>. Returning that tome isn't just a job, it's about doing right by the place that shaped us. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Edwin")~ THEN
@3917 /* Candlekeep holds a special place in my heart, and I'll be darned if we turn this into another one of your power grabs. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Edwin")~ THEN
@3918 /* We're going to find that book and get it back where it belongs, for the right reasons. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3919 /* Your attachment to that dusty library and its cloistered inhabitants clouds your judgment. (Honestly, why must I continually suffer the company of such... sentimentally burdened fools?) */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3920 /* We stand on the precipice of acquiring knowledge that could elevate us beyond the mundane squabbles of this world. And yet, you cling to these naive notions of honor and home. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3921 /* Understand this, in the pursuit of true power, there is no room for such childish attachments. */
  == h_rigald IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3922 /* Alright, enough bickering. Whether it's for power, coin, or sentimental reasons, the job's the job. We've got a rare and valuable tome out there that needs finding. */
END

INTERJECT_COPY_TRANS h_thalid 14 imototha14
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3923 /* The black markets? Oh, that sounds like a thief's paradise! I can't believe there's this whole secret world right under our noses, and I haven't seen it yet. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3924 /* Imagine all the hidden treasures and secrets just waiting to be discovered. It's like a secret club for thieves, and I want in. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3925 /* You've got to take me with you. I'm as much of a rogue as the next, and I can be super sneaky when I need to be. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3926 /* Please, can I come along? I promise I'll be good... well, as good as a thief can be in a place like that! */
  == h_thalid IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3927 /* I can see the spark of a true practitioner of the thieving arts in your eyes. Your enthusiasm speaks volumes, and it's clear you belong among our kind. */
  == h_thalid IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3928 /* Yes, you are welcome to come along. But know, the black markets aren't just a collection of stalls and shadows, they're a community of like-minded individuals. */
END

INTERJECT_COPY_TRANS h_rigald 261 imotorig261
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3929 /* It's kind of bittersweet, isn't it? I mean, we've done Candlekeep a huge favor, and they don't even know it's us. It's our old home, and here we are, working in the shadows, helping them from afar. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3930 /* I can't help but feel a bit... I don't know, melancholy about it all. It's like we're so close to where we started, yet so far away. It's funny, in a way, how life turns out. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3931 /* I miss the old place, the simplicity of it, the safety. It makes me wonder about the path we've chosen, about where we're heading. Doing them proud, but in secret, like ghosts of our past selves. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3932 /* (The company I find myself in... An incessant stream of sentimentality and amateurish antics. Their lack of vision, their trivial concerns... It's an affront to my intellectual prowess.) */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3933 /* Spare us your sentimental musings, Imoen. The real tragedy here is not your bittersweet nostalgia, but the fact that such a tome of arcane knowledge will now be wasted, locked away in the dusty halls of Candlekeep. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3934 /* In the hands of those cloistered scribes, its true potential will never be realized. Imagine the arcane secrets, the powerful spells that could have been uncovered and harnessed by a mind capable of appreciating them. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3935 /* It's a lamentable waste, entrusting such power to those who will do naught but hoard it away from the world. A grievous misstep, indeed. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Edwin")~ THEN
@3936 /* Edwin, I think you've spent so much time with your nose in those books that you've forgotten there's a world outside of them. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Edwin")~ THEN
@3937 /* Sure, the tome's got magic and mysteries, but there's more to life than just hoarding knowledge. And hey, if dealing with us 'amateurs' is such a burden, remember, nobody's forcing you to stick around. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Edwin")~ THEN
@3938 /* Maybe you'd be happier with a bunch of stuffy old mages who don't challenge your grandiose view of yourself. But then, who would put up with your charming personality? */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3939 /* It is not a matter of preference but a simple fact that my intellectual capabilities are vastly superior to those around me. You and the others benefit far more from my presence than I from yours. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3940 /* It's a tiresome ordeal, tolerating this incessant banality, but one must make sacrifices for the greater pursuit of knowledge. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3941 /* And if that means enduring the company of those less enlightened, so be it. (Just know, my patience has its limits.) */
  == h_rigald IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3942 /* Enough of this quarreling! We have successfully completed an impressive heist, yet here you are, bickering like children over trifles. */
  == h_rigald IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3943 /* Edwin, your intellect is invaluable, but I expect you to recognize the importance of unity in our endeavors. */
  == h_rigald IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3944 /* And Imoen, while your spirit is commendable, let's try not to exacerbate tensions with our wizardly companion, shall we? */
  == h_rigald IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3945 /* We are all part of this operation, for better or worse. It's time to set aside these petty disputes and focus on our collective goal. We have a guild to manage, and such discord serves us no good. */
  == h_rigald IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3946 /* Let's instead acknowledge our recent accomplishment, a feat many deemed impossible. */
   == h_rigald IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3947 /* With brilliance like yours, Edwin, and your resourcefulness, Imoen, along with the diverse skills of our team, there's no limit to what we can achieve together. */
END

INTERJECT_COPY_TRANS h_ariosd 89 imotoari89
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3948 /* Wait a second, this isn't what I thought we were getting into. We're talking about extorting these people, aren't we? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3949 /* This isn't the sneaky, clever kind of thieving I signed up for. It's just... it's just bullying, really. Street-level thug work. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3950 /* We're supposed to be better than this, aren't we? I thought we were about the art of the steal, not strong-arming innocent folks just trying to run their businesses. */
  == h_ariosd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3951 /* Look, I get it, it's not the most glamorous part of our line of work, but it's necessary. These establishments, they pay for protection, and we provide it. Keeps things running smoothly, if you know what I mean. */
  == h_ariosd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3952 /* Normally, I've got a few lads who handle collections, and yeah, they can be a bit... enthusiastic in their methods. */
  == h_ariosd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3953 /* But maybe with a pretty face like yours, we can keep things nice and civil. A bit of charm can go a long way in avoiding messy situations. */
END

INTERJECT_COPY_TRANS h_barthd 2 gartobar2
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3954 /* Well, well, if it isn't old Robert Stabilo! Last I saw you, we were both running errands for Silke, remember? The theatrics, the charm, the danger! Those were some days, weren't they? */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3955 /* I never thought I'd see you dipping your toes in such murky waters as this. Times must be tough if you're resorting to playing pretend with the city's most dangerous guild. */
  == h_barthd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3956 /* Garrick! Blimey, mate, it's been ages! When I saw you lot, I thought I was a goner for sure. It's a relief to see a familiar face, especially one that ain't lookin' to slit my throat. */
  == h_barthd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3957 /* Yeah, Silke's antics were quite the adventure, weren't they? I've been tryin' to keep afloat since that gig went belly up. Guess I've gotten a bit desperate, pullin' stunts like this. */
  == h_barthd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3958 /* Never thought I'd end up crossin' paths with the Gorgon's Eye, though. You always did have a way of poppin' up when least expected. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3959 /* I've been running with <CHARNAME> here, and we've found ourselves in with the guild, yeah. But don't think I've turned a blind eye to the kind of things they get up to. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3960 /* I know there's a shade of darkness in their dealings. Yet, I like to think that with me around, I can nudge them towards a bit of light now and then. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3961 /* I can't change everything, but maybe I can sway some decisions, make a few wrongs right. Just because we're in the thick of it with them doesn't mean we have to lose ourselves. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3962 /* We're trying to make the best of a tricky situation, and I'm doing what I can to steer things towards the better. */
  == h_barthd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3963 /* Ah, Garrick, always the dreamer, trying to find a bit of good in everything, eh? I always admired that about you. Sounds like you've got your hands full with this lot. */
  == h_barthd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3964 /* If anyone can bring a bit of sunshine to the Gorgon's Eye, it'd be you. You always had a way of making the best out of a bad situation. */
  == h_barthd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@3965 /* Listen, I didn't mean no real harm with this little stunt, just trying to scrape by, you know? */
END

INTERJECT_COPY_TRANS h_ariosd 103 victoari103
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3966 /* These wretched Flaming Fist are becoming a tiresome thorn. Everywhere I turn, their self-righteous posturing rears its tedious head. */
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3967 /* Their pretense of order and justice is as weak as it is predictable. They strut about, puffing their chests, believing themselves to be the guardians of morality. It's almost laughable. */
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3968 /* Let them come with their so-called sharp wit and dedication. They will find no easy prey here, only shadows that slip beyond their clumsy grasp. */
  == h_ariosd IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3969 /* Your weariness of the Fist is noted, but this Inspector, he's cut from a different cloth. He's not your run-of-the-mill enforcer. He's sharp, cunning, and he's got his eyes fixed on us. */
  == h_ariosd IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3970 /* Already, he's stirring the pot more than we're used to. And he's not just after the petty thieves, he's gunning for the big fish. He's digging into our operations, asking questions that are a bit too close for comfort. */
  == h_ariosd IF ~IsValidForPartyDialogue("Viconia")~ THEN
@3971 /* He's got an eye for detail that's got even our most cunning looking over their shoulders. They've sent their best, a real hard-hitter. This Inspector, he's a top dog in the Flaming Fist. */
END

INTERJECT_COPY_TRANS h_ariosd 123 imotoari123
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3972 /* Ooh, Ariosh, is that a hint of a blush I see when you talk about this Black Lily? Sounds like someone's got a bit of a crush! */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3973 /* 'Admiration'... is that what the thieves are calling it these days? She must be quite the lady if she's got you singing her praises like this. */
  == h_ariosd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3974 /* Alright, alright, enough with your jesting. There's no 'crush' here, just professional respect, I assure you. Black Lily is one of the best in the business, and I've learned a thing or two from her. */
  == h_ariosd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3975 /* But don't let my admiration mislead you, she's not one to be taken lightly. */
END

INTERJECT_COPY_TRANS blackl 7 imotobla7
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3976 /* Aha! I knew it! There's definitely more than just 'professional respect' going on between you two. Oh, this is too good! */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3977 /* Ariosh was all business and discretion when he talked about you, but I could tell there was something he wasn't saying. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3978 /* Come on, Black Lily, you've got to give us the juicy details! What's the story between you and our mysterious friend Ariosh? */
  == blackl IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3979 /* Well, aren't ye the eager little sparrow, peckin' around for gossip? */
  == blackl IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3980 /* As for Ariosh and me, let's just say we've shared more than a few shadows in our time. */
  == blackl IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3981 /* But don't go thinkin' it's some sappy love story. It's more like two foxes circlin' the same henhouse, never quite sure if they're partners or competitors. */
  == blackl IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3982 /* He's got his charms, I'll give him that, but I'm not one to be tied down. Too much business to attend to, and sentiment's bad for trade. */
  == blackl IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3983 /* As for juicy details, sorry, lass, but Black Lily doesn't kiss and tell. Business first, pleasure... well, that's my own affair. */
END

INTERJECT_COPY_TRANS h_ishand 4 saftoish4
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3984 /* The art of captivating hearts, and more enticingly... pockets, it's a dance I know all too well. There's a certain thrill in weaving a web of charm, drawing in the unsuspecting with a look, a touch, a whisper. */
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3985 /* To see them mesmerized, hanging on every word, while you deftly relieve them of their... excess wealth. It's not just theft, it's an art form, a seductive ballet played out in the taverns and streets. */
  == %SAFANA_JOINED% IF ~IsValidForPartyDialogue("Safana")~ THEN
@3986 /* We're not just stealing valuables, we're giving them memories that will last a lifetime. And really, isn't that the most precious gift of all? */
  == h_ishand IF ~IsValidForPartyDialogue("Safana")~ THEN
@3987 /* Ah, a woman after my own heart. Your words paint the picture of a true mistress of the art. */
  == h_ishand IF ~IsValidForPartyDialogue("Safana")~ THEN
@3988 /* It's always a pleasure to meet another who appreciates the finer nuances of our craft, blending seduction with a touch of larceny. */
  == h_ishand IF ~IsValidForPartyDialogue("Safana")~ THEN
@3989 /* It's like a delicate dance, isn't it? Each step, each word, a calculated move in our beguiling ballet. But enough about our shared talents. I'm curious about your presence here. */
END

INTERJECT_COPY_TRANS h_eudikd 0 skitoeud0
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@3990 /* Yes, the estate is quite something, isn't it, Lady Eudika? Mother always did have a flair for the... extravagant. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@3991 /* Welcome to our home, though I must confess, the constant admiration it receives does grow a bit wearisome at times. */
  == h_eudikd IF ~IsValidForPartyDialogue("Skie")~ THEN
@3992 /* Oh, my dear Skie, you mustn't take such beauty for granted! It's a privilege to reside in such splendor. */
  == h_eudikd IF ~IsValidForPartyDialogue("Skie")~ THEN
@3993 /* In Trademeet, we have elegance, yes, but nothing quite on this scale. You're truly fortunate, even if it feels commonplace to you. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@3994 /* Fortunate, perhaps. But one does long for something a bit more... thrilling than endless rooms and gilded decor. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@3995 /* It's all so predictable after a while. But I suppose guests like yourself find it all quite fascinating. */
  == h_eudikd IF ~IsValidForPartyDialogue("Skie")~ THEN
@3996 /* Indeed, I do. It's refreshing to see how the other half lives. */
END

INTERJECT_COPY_TRANS h_ariosd 131 imotoari131
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3997 /* Wait, hold on a second, Ariosh! Blow up the Jovial Juggler? That's crazy talk! We can't just go around setting fires and risking innocent lives. There's got to be another way to handle this Inspector. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3998 /* I mean, I know we've done some shady stuff, but this... this is way over the line. There are people in there, just trying to enjoy a drink or earn a living. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@3999 /* We can't just... we can't be those kinds of people who'd do something so terrible. There's always another way, a better way. */
  == h_ariosd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4000 /* Imoen, I understand your concerns, truly I do. But you've got to see the bigger picture here. This isn't about liking what we do, it's about survival, about sending a message that we're not to be trifled with. */
  == h_ariosd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4001 /* The Jovial Juggler is just a means to an end. If we show weakness, more of our people will end up in chains or worse. */
  == h_ariosd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4002 /* It's a harsh world, and sometimes, harsh actions are the only language these law types understand. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4003 /* But there's always a line, Ariosh! I didn't sign up to be part of a guild that terrorizes innocents. There's got to be another solution, one that doesn't involve threatening lives. */
  == h_ariosd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4004 /* Look, nobody's keen on walking down this dark path, but consider the stakes. */
  == h_ariosd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4005 /* We're not just talking about one tavern, we're talking about the survival of our entire operation. Sometimes, you've got to pick the lesser of two evils. */
END

INTERJECT_COPY_TRANS h_ariosd 148 gartoari148
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4006 /* Oh, heavens no, not the Valkyrie twins. They are goddesses among men, paragons of beauty and grace! How can we even entertain the thought of bringing harm to such divine creatures? */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4007 /* Their very existence is a testament to the sublime beauty of this world. I cannot, I will not stand by and allow such desecration! */
  == h_ariosd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4008 /* This isn't a theater, lad, and those 'goddesses' are obstacles to our goals. We don't have the luxury to be swayed by beauty or idealism. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4009 /* But Ariosh, surely there's a line we must not cross! To reduce such magnificent beings to mere pawns in our schemes... It's unthinkable! I refuse to be a part of such villainy! */
  == h_ariosd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4010 /* This is not a debate! It's strategy, plain and simple. They stand in our way, and we must act accordingly. */
  == h_ariosd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4011 /* The world isn't a stage for your romantic fantasies. It's a chessboard, and every piece has its role. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4012 /* To think that we would stoop so low, to snuff out such radiant lights... It's monstrous! I cannot be a part of this. I must stand for what is right, for beauty, for honor! */
  == h_ariosd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4013 /* Enough of your dramatics! This is war, not a ballad for your lute. We do what must be done. Now, back to the matter at hand. */
  == %ELDOTH_JOINED% IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4014 /* Hold on a minute, Ariosh. You can't just gloss over the part about twin beauties without catching my interest. */
  == %ELDOTH_JOINED% IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4015 /* So, Garrick, despite our usual disagreements, do enlighten me about these divine creatures. A pair of lovely twins, you say? Now that sounds like a sight worth beholding. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4016 /* Eldoth, you cad! This is not some tavern tale for you to leer over. These are women of grace and valor, not objects for your crude fantasies! Show some respect. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4017 /* Really, Eldoth? Even here, you can't stop yourself, can you? It's always the same with you. You'd think a pair of military officers would be safe from your lecherous comments. */
  == %ELDOTH_JOINED% IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4018 /* Oh, come now, Skie, don't be such a spoil-sport. I'm merely appreciating the finer details of our mission. Besides, a little beauty can be a pleasant distraction in our line of work, wouldn't you agree? */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4019 /* Distraction? This is exactly why I detest your attitude, Eldoth. There's more to life than your shallow pursuits. These women are skilled and formidable, not playthings for your amusement. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4020 /* Garrick's right, Eldoth. Maybe if you spent more time respecting others and less time ogling, you'd be a more tolerable person. */
  == %ELDOTH_JOINED% IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4021 /* Oh, Skie, always so quick to judge. You know, a man has his needs, and an appreciation for beauty is one of them. Maybe if you weren't so uptight, you'd understand. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4022 /* I'm not uptight, I'm disgusted. Your 'needs' are no excuse for being disrespectful. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4023 /* That's enough, Eldoth! Your words are not only disrespectful but downright abhorrent. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4024 /* Skie deserves better than your constant belittlement. How you fail to see the treasure you have in her, I'll never understand. */
  == %ELDOTH_JOINED% IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4025 /* Always the knight in shining armor. Do you ever tire of playing the hero? She's with me, remember? Or are you just envious? */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4026 /* This isn't about envy, Eldoth; it's about decency, something you're sorely lacking. Skie isn't some prize to be won; she's a person, deserving of respect and kindness. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4027 /* Thank you, Garrick. And you, Eldoth, if you can't treat me with respect, then maybe you should reconsider why you're with me in the first place. */
  == h_ariosd IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4028 /* Enough! This isn't a tavern where you can squabble and banter endlessly. We're here to discuss serious business, not indulge in your petty arguments and lecherous fantasies. */
  == h_ariosd IF ~IsValidForPartyDialogue("Eldoth") IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Skie")~ THEN
@4029 /* Our mission requires focus and precision, not this childish bickering. Now, let's get back to what matters. */
END

INTERJECT_COPY_TRANS h_ariosd 155 alotoari155
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora")~ THEN
@4030 /* Oh my, that sounds really scary. Are we sure this is the only way? I mean, isn't there a chance to maybe talk things out, or find a less... deadly solution? It just feels so final, and well, kind of sad. */
  == h_ariosd IF ~IsValidForPartyDialogue("Alora")~ THEN
@4031 /* This is the nature of our work. We have to be resolute and do what's necessary for the greater good of our mission. It's not about cruelty; it's about survival and strategy. */
END

INTERJECT_COPY_TRANS h_lieded 335 imotolie335
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") Global("h_LiedelKiss","GLOBAL",1)~ THEN
@4032 /* Hey now, let's not forget who else was there, fighting off those Shadow Thieves. It wasn't just <CHARNAME> doing all the heroic stuff, you know. I was right there in the thick of it too! */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4033 /* And, come on, <CHARNAME>, really? You and Liedel? I never pegged you for someone who'd go for the whole 'danger-is-sexy' thing. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4034 /* I mean, sure, a bit of excitement is fun, but there's gotta be more to it than just... you know, thrill-seeking. You're not just falling for all that fluttery eyelash stuff, are you? */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4035 /* Imoen, dear, is that a hint of jealousy I detect in your voice? It is unlike you to begrudge <CHARNAME>'s choices in companionship. Remember, the heart has its reasons, which reason knows not. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4036 /* And <CHARNAME>, you are well within your right to explore the connections that life presents to you, be they forged in battle or in the quieter moments. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4037 /* Imoen, it's important to learn that not all affections revolve around the same axis as yours. We are all free to seek our own paths, and sometimes those paths involve delving into the unexpected. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4038 /* Oh, come on, Jaheira, jealous? I'm just looking out for <CHARNAME>, making sure he doesn't get too swept up in all the swooning and hero-worship, that's all. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4039 /* Besides, someone's got to keep things lively around here, right? If <CHARNAME> wants to play the dashing hero to all the damsels, or whatever, that's his business. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4040 /* I'm just here for the adventure, and to make sure he doesn't get too big-headed about it! */
  == h_lieded IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4041 /* Oh, my little sprite, I assure you, there's no need for concern. <CHARNAME> seems more than capable of navigating the adoration and challenges that come his way. */
  == h_lieded IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4042 /* And as for being swept up, isn't a bit of excitement what makes life interesting? */
END

INTERJECT_COPY_TRANS h_lieded 369 jahtolie369
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4043 /* Liedel, your suggestion weighs heavily on the side of profit, but what of the moral cost? This alchemist, Alaric, has developed something that could save countless lives. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4044 /* To sell it to the highest bidder, especially merchants who seek only to line their pockets, would be a disservice to those in dire need. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4045 /* Should we not consider the greater good? The welfare of the people, especially in times of crisis, must take precedence over the lure of gold. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4046 /* We have the power to make a difference, to bring healing to those afflicted. Let us not squander it for mere coin. */
  == h_lieded IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4047 /* In a world rife with danger and uncertainty, resources are as vital as a sharp sword. */
  == h_lieded IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4048 /* Yes, the cure could aid many, but consider this... By selling it to the merchants, we secure not just coin, but powerful allies and a network of influence. Such connections could prove invaluable in our future endeavors. */
  == h_lieded IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4049 /* It's not merely about profit, it's about positioning ourselves advantageously in a realm where alliances can mean the difference between life and death. We must think strategically. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4050 /* Liedel, your strategic foresight is not without merit, but consider the implications. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4051 /* Selling the cure to merchants turns a life-saving remedy into a luxury for the wealthy. What of those who are in dire need but lack the coin? Are their lives to be weighed and measured by their wealth? */
  == h_lieded IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4052 /* By aligning with the merchants, we're not condemning the poor, we're simply playing the hand we've been dealt. The world is an uneven place, and we can't right every wrong. */
  == h_lieded IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4053 /* Reality often demands tough choices, and our immediate goal is to strengthen our position, ensuring our survival and effectiveness. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4054 /* Survival should not come at the cost of our principles. If we have the power to direct such a potent force for good, we must consider the wider impact of our actions. To whom much is given, much is expected. */
  == h_lieded IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4055 /* And yet, Jaheira, we must also be realistic. We operate in a realm where power and wealth often dictate the course of events. */
  == h_lieded IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4056 /* Our influence can grow with this decision, allowing us to enact greater changes in the future. Sometimes, the path to greater good requires walking through the shadows. */
  == h_lieded IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4057 /* Nevertheless, this is a debate for another time. For now, let's focus on the task at hand. */
END

INTERJECT_COPY_TRANS h_lieded 373 skitolie373
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@4058 /* Oh, Liedel, I think you might have Lord Varlind all wrong. I've met him at several functions, you know, being around my father and all. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@4059 /* He's not the sort to lounge around in velvet and sip expensive wine. Varlind's a bit... well, dull, if I'm being honest. Always talking about city policies, budgets, and whatnot. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@4060 /* He's like a walking ledger, always concerned about Baldur's Gate and its people. I mean, he's not exactly the life of the party, but he really does put the city first. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@4061 /* It's all work and politics for him, he hardly ever takes a break. I think there's more to him than just being a 'shadow behind the throne'. */
  == h_lieded IF ~IsValidForPartyDialogue("Skie")~ THEN
@4062 /* And who might you be, darling, sharing such intimate knowledge of Baldur's Gate's high society? */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@4063 /* Well, I'm Skie... Skie Silvershield. Yes, that Silvershield. I know it might not be wise to share this here, but I've been around those circles long enough to know a thing or two. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@4064 /* Lord Varlind isn't the type you're making him out to be. He really does care for the city and its people. He's dedicated to his work, not to luxury and leisure. */
  == h_lieded IF ~IsValidForPartyDialogue("Skie")~ THEN
@4065 /* Skie Silvershield, you say? My, my, that's quite the revelation. It was daring of you to reveal such a detail, especially here. */
  == h_lieded IF ~IsValidForPartyDialogue("Skie")~ THEN
@4066 /* You're lucky to have <CHARNAME> by your side, without such protection, who knows what trouble you might find yourself in. */
  == h_lieded IF ~IsValidForPartyDialogue("Skie")~ THEN
@4067 /* But don't mistake my words. I never doubted Lord Varlind's work ethic. It's the layers beneath the surface we're interested in, the complexities that make a man more than just his public persona. */
  == h_lieded IF ~IsValidForPartyDialogue("Skie")~ THEN
@4068 /* Whether he's a diligent worker or a man of leisure, there's always more to uncover. */
END

INTERJECT_COPY_TRANS h_lieded 378 shatolie378
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4069 /* A former champion of the fighting pits turned ruthless assassin? Now that's a woman after my own heart. The thrill of the arena, the rush of battle... Isla Darkcloak sounds like she knows what it means to truly live. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4070 /* I'm not one to shy away from a good fight, and facing off against someone of her caliber would be... exhilarating. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4071 /* To face a legend in combat, to match skills with someone who's seen the heat of countless duels... that's not an opportunity that comes every day. This is one confrontation I'm eager to have. */
END

INTERJECT_COPY_TRANS h_lieded 389 alotolie389
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora")~ THEN
@4072 /* Those poor creatures... they didn't ask to be a part of his weird alchemy stuff. Maybe we can help them too, while we're snooping around for this workshop. */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora")~ THEN
@4073 /* They need someone to look out for them. It's not right to let them suffer, it's just...awful, and we can't ignore that! */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Alora")~ THEN
@4074 /* Alora's right, you know. It's just horrible, thinking about those animals being used for experiments. We can't just turn a blind eye to that. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Alora")~ THEN
@4075 /* They deserve to be safe and happy, not stuck in some creepy alchemist's lab. We've got to do what we can to help them. It's just the right thing to do. */
END

INTERJECT_COPY_TRANS h_lieded 393 jahtolie393
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4076 /* Your choice to aid the healers and the afflicted shows a commendable spirit, <CHARNAME>. It is heartening to see such selflessness in action. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4077 /* You have chosen wisely, standing on the side of the people and their well-being. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4078 /* This decision not only aids those suffering from featherlung but also honors the balance of life, something we should all strive to protect. Well done. */
END

INTERJECT_COPY_TRANS h_lieded 395 jahtolie395
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4079 /* To place such a vital cure in the hands of those who see it merely as a means for profit... it goes against the very essence of what it means to heal and protect. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4080 /* This serum could have been a beacon of hope for all, regardless of wealth. Instead, you have chosen a path that favors the few while the many continue to suffer. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4081 /* It is a disappointing and shortsighted choice, one that disregards the balance and fairness we should strive to uphold. I had hoped for a more compassionate and equitable decision from you. */
END

INTERJECT_COPY_TRANS h_lieded 407 skitolie407
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@4082 /* Varlind... No... He was a good man, involved in the city's politics, always with Baldur's Gate's best interests at heart. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@4083 /* We can't let them get away with this. Whoever did this, they need to be brought to justice, to pay for what they've done. Baldur's Gate deserves better. */
  == h_lieded IF ~IsValidForPartyDialogue("Skie")~ THEN
@4084 /* Ah, my lady... such fiery words from one often seen as so delicate. It's always the quiet waters that run deep, isn't it? */
  == h_lieded IF ~IsValidForPartyDialogue("Skie")~ THEN
@4085 /* But let's not be too hasty in seeking vengeance. In our line of work, emotions can be a dangerous luxury. */
  == h_lieded IF ~IsValidForPartyDialogue("Skie")~ THEN
@4086 /* Remember, the streets of Baldur's Gate are a treacherous playground. While your thirst for justice is admirable, we must tread carefully. */
END

INTERJECT_COPY_TRANS h_lieded 413 shatolie413
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4087 /* The way you speak of Isla, it awakens something... untamed within me, a fiery passion smoldering deep inside. Her quickness, her brutality, these are not just traits I respect in a warrior, but quite frankly, in a woman. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4088 /* There's an irresistible allure in the thought of someone who can not only meet, but challenge my own ferocity. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4089 /* The mere idea of crossing paths with her, of testing our strengths in a dance of combat, sends a thrilling shiver through me. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4090 /* A woman of her caliber is worth seeking out, in more ways than one. It's a yearning, a hunger to stand face to face with her, to feel the intensity of her presence. */
  == h_lieded IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4091 /* It's rare to hear such unbridled passion and admiration. But be wary, my dear, for Isla Darkcloak is more than just an object of desire. She's a viper, cloaked in allure yet brimming with lethal venom. */
  == h_lieded IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4092 /* Your eagerness to meet her is enticing, but in the dance of blades, desire can quickly turn to despair. */
  == h_lieded IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4093 /* We seek her not for pleasure, but for purpose. So temper your fiery heart with a dose of caution. */
  == h_lieded IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4094 /* After all, the most captivating flames are often the most dangerous to touch. */
END

INTERJECT_COPY_TRANS h_alarid 7 alotoali7
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora")~ THEN
@4095 /* But what about the chickens, Alaric? They sound like they're having a really hard time with all these experiments. Aren't you worried about what's happening to them? */
  == h_alarid IF ~IsValidForPartyDialogue("Alora")~ THEN
@4096 /* Worry about my chickens? My dear, naive girl, you fail to grasp the magnitude of my work. These chickens are not pets, they are the keys to a greater knowledge, mere cogs in the machine of my brilliance! */
  == h_alarid IF ~IsValidForPartyDialogue("Alora")~ THEN
@4097 /* It's audacious for a child like you to question my methods. They are my property, my creations, to be used as I deem necessary for my grand designs. Your foolish, simplistic concerns are irrelevant here. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@4098 /* Hold your tongue, Alaric! To address Alora in such a manner is unacceptable. She may possess a perspective you find naive, but that is no excuse to demean her genuine concern. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@4099 /* The lady has shown nothing but goodwill, a quality you would do well to learn. And as for your 'grand designs', let us not inflate your endeavors beyond their true merit. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@4100 /* Conjuring potions for poultry hardly constitutes the pinnacle of arcane achievement. Perhaps, when you ascend to the realms of a truly significant discovery, your arrogance might be more palatable, though I doubt it. */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora") IsValidForPartyDialogue("Edwin")~ THEN
@4101 /* Edwin... You actually stood up for me. I can't believe it! You're always so, y'know, Edwin-y, but just now, you were like my very own champion! */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora") IsValidForPartyDialogue("Edwin")~ THEN
@4102 /* I always knew, that deep down, behind that grumpy exterior and those frowny brows, there was a heart waiting to show itself. And see? I was right! */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora") IsValidForPartyDialogue("Edwin")~ THEN
@4103 /* You've got this kindness in you... a warmth, hidden away. It's not often you let it out, but when you do, it's so special and wonderful to see. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@4104 /* Alright, alright, it was merely a logical response to an illogical situation. Alaric's insolence needed addressing, and I, being the most intellectually equipped, naturally stepped in. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@4105 /* It was not about defense or any such sentimental nonsense. It was simply a matter of maintaining a semblance of order and rational discourse. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@4106 /* Now, let us move forward with our task and leave such trivialities behind. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@4107 /* (What in the Nine Hells was that? Defending her like some gallant fool, as if it were the most natural thing in the world!) */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Alora")~ THEN
@4108 /* (I must keep a tighter rein on such... impulses. They're unbecoming of a man of my intellect and standing.) */
END

INTERJECT_COPY_TRANS h_varlid 7 skitovar7
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@4109 /* Lord Varlind, I've heard whispers of these tensions, but to hear it spoken so plainly... it's alarming. My father, he's been... different of late, more distant and preoccupied. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@4110 /* I fear he, too, may be under the influence of these dark players you speak of. What can be done to expose this conspiracy and protect Baldur's Gate from spiraling into chaos? */
  == h_varlid IF ~IsValidForPartyDialogue("Skie")~ THEN
@4111 /* Lady Silvershield, I must confess, I'm somewhat taken aback to see you here, and engaged in such grave matters. I had the impression... well, that your interests lay more in... lighter concerns. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@4112 /* Lord Varlind, I know what people think of me. But that's not all there is to me. I care about what's happening to my city, to my father. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@4113 /* I'm not just some vapid noble's daughter. I can be serious when the situation calls for it, and right now, it really does. */
  == h_varlid IF ~IsValidForPartyDialogue("Skie")~ THEN
@4114 /* Apologies, my lady. It's heartening to see you taking such an active interest in these troubling affairs. */
  == h_varlid IF ~IsValidForPartyDialogue("Skie")~ THEN
@4115 /* Regarding the tensions you mentioned, the situation is indeed dire. There are forces at work within Baldur's Gate that seek to manipulate the city's leadership for their own gain. */
  == h_varlid IF ~IsValidForPartyDialogue("Skie")~ THEN
@4116 /* They cloak their true intentions under the guise of political maneuvering, creating false narratives and sowing discord. */
  == h_varlid IF ~IsValidForPartyDialogue("Skie")~ THEN
@4117 /* Sarevok is a name that continues to surface in my investigations. His rise to power has been meteoric and suspicious, and it would not surprise me if he were involved. */
  == h_varlid IF ~IsValidForPartyDialogue("Skie")~ THEN
@4118 /* We must tread carefully, however. He has many supporters, and his influence grows by the day. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@4119 /* I see. This is more serious than I thought. I'll try to find out what I can from my father, discreetly. We need to get to the bottom of this before it's too late. */
  == h_varlid IF ~IsValidForPartyDialogue("Skie")~ THEN
@4120 /* Lady Silvershield, while your willingness to help is commendable, I must advise against it. This matter is fraught with danger. */
  == h_varlid IF ~IsValidForPartyDialogue("Skie")~ THEN
@4121 /* These players are powerful and ruthless, and I fear they would not hesitate to target you as well, especially given your father's position. */
  == %SKIE_JOINED% IF ~IsValidForPartyDialogue("Skie")~ THEN
@4122 /* But I can't just sit back and do nothing. If there's something wrong, something affecting my father and Baldur's Gate, I want to help. I need to. */
  == h_varlid IF ~IsValidForPartyDialogue("Skie")~ THEN
@4123 /* This is not simply a matter of political rivalry or ambition. There is a darker force at play here, one that I am still trying to fully understand. */
END

INTERJECT_COPY_TRANS h_isla2d 3 shatois3
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4124 /* Hold it right there, Isla. I've heard tales of your prowess in the pits and your lethal skills as an assassin. It's not often I get the chance to test my blade against a legend like you. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4125 /* This isn't just about a bounty or a fight, it's about seeing who's truly the best. You and I, we're cut from the same cloth, warriors born for the thrill of battle. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4126 /* Let's see if you live up to your fearsome reputation. I'm eager to find out if your combat skills are as impressive as your... physical form. */
  == h_isla2d IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4127 /* It's not often someone praises my looks and my fighting skills in the same breath. I can see you're not one to shy away from speaking your mind or challenging a worthy opponent. */
END

INTERJECT_COPY_TRANS h_meredd 53 gartomer53
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4128 /* Madam Meredia, your worry shall be ours. I shall make it my personal quest to find Ilena and ensure her safety. Nothing is too daunting when it comes to aiding you and your establishment. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4129 /* Ilena's wellbeing is important, of course, but it also pains me to see you so distressed. Fear not, for I shall leave no stone unturned in this endeavor, all to bring a measure of peace to your heart. */
  == h_meredd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4130 /* Err... thank you, Garrick. Your... dedication is certainly commendable. It's heartening to see such fervor in aiding a friend in need. Please do focus on finding Ilena, her safety is what truly matters right now. */
END

INTERJECT_COPY_TRANS h_meredd 59 mintomer59
  == %MINSC_JOINED% IF ~IsValidForPartyDialogue("Minsc")~ THEN
@4131 /* Fear not! Minsc and Boo recognize these stitches and this style! These are from the uniforms of Amnian soldiers in Nashkel. We have seen their kind before, sturdy and ready for battle. */
  == %MINSC_JOINED% IF ~IsValidForPartyDialogue("Minsc")~ THEN
@4132 /* Ah, Nashkel, a place of many memories for Minsc and Boo. It looks like our path now leads us back, to uncover the truth and bring back Ilena to safety. */
  == %MINSC_JOINED% IF ~IsValidForPartyDialogue("Minsc")~ THEN
@4133 /* We will stride into Nashkel with heads held high and hearts brave! Justice will be our guide, and Boo, the smallest of warriors, will lead the way! */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Minsc")~ THEN
@4134 /* Minsc, you're a genius! Who would have thought? Your keen eye for military fashion has set us on the right path. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick") IsValidForPartyDialogue("Minsc")~ THEN
@4135 /* And don't worry, Madam Meredia, with Minsc's unexpected brilliance and our combined efforts, we'll surely find Ilena safe and sound. We won't rest until she's back under your caring wing. */
  == %MINSC_JOINED% IF ~IsValidForPartyDialogue("Minsc") IsValidForPartyDialogue("Garrick")~ THEN
@4136 /* Genius? Ha! Boo says that's just another word for having a good memory and a strong sense of justice! But if genius means knowing what Boo whispers to me, then yes, Minsc is the smartest! Right, Boo? He agrees! */
  == %MINSC_JOINED% IF ~IsValidForPartyDialogue("Minsc") IsValidForPartyDialogue("Garrick")~ THEN
@4137 /* We will find this Ilena and bring her back, because that is what heroes do! And because Boo is very good at finding things, especially when they are small and hiding. */
END

INTERJECT_COPY_TRANS h_ilenad 35 gartoile35
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4138 /* Oh, fair Ilena, like a radiant dawn breaking through the darkest night, your safety warms my very soul! */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4139 /* To think of such a delicate flower caught in the clutches of peril, it's too much for a heart like mine to bear! Your rescue is a tale of heroism and passion fit for the grandest of ballads. */
  == h_ilenad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4140 /* Thank you, Garrick, for your... colorful words. It seems my adventures have become the stuff of your lyrical fantasies. */
  == h_ilenad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4141 /* But let's just say I'm more relieved to be safe than to be the subject of a bard's overly dramatic ballad. Your concern is... touching, in its own unique way. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4142 /* But of course, dear Ilena! Your ordeal, a harrowing escapade, a damsel in distress, it's the very essence of poetic inspiration! */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4143 /* Ah, if only I could compose a sonnet worthy of your bravery and beauty. The world should know of your plight and your courage! */
  == h_ilenad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4144 /* Garrick, while I appreciate your enthusiasm, I think I've had enough drama to last a lifetime. Maybe we could just... keep my 'bravery' between us? */
  == h_ilenad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4145 /* I'd rather not be the subject of tavern tales and melodramatic verses, if it's all the same to you. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4146 /* Ah, but to suppress such a tale would be a disservice to art itself! Fear not, for I shall handle your story with all the grace and sensitivity it deserves. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4147 /* The ballad of Ilena, a tale of strength, a testament to the indomitable spirit! */
  == h_ilenad IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4148 /* Well, if you must, at least promise me it'll be more about the strength and less about the damsel part? And maybe keep it to a minimum on the lute strumming. */
END

INTERJECT_COPY_TRANS h_meredd 66 gartomer66
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4149 /* Madam Meredia, your words... they're as beautiful as they are heart-wrenching. You've painted a picture of Ilena that captures not just her essence, but the very soul of her being. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4150 /* It's a tragic loss, one that words can hardly do justice. Please know, my heart aches with yours, and I'm here for you, to offer comfort in this time of sorrow. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4151 /* Ilena's memory will live on in our hearts, and in the stories and songs that celebrate her life. She may have left this world, but she will never be forgotten. */
  == h_meredd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4152 /* Garrick, thank you for your kind words. It's a small comfort to know that Ilena touched so many lives with her light. */
  == h_meredd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4153 /* Your empathy in this dark hour is a balm to the soul. We shall all miss her dearly, but it's heartening to have such support in our grief. */
END

INTERJECT_COPY_TRANS h_meredd 70 gartomer70
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4154 /* Oh, Madam Meredia, please, there's no need for gold. The real reward was in helping you, seeing the joy return to your face, and knowing Ilena is safe. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4155 /* Just being here, spending time in your company, and witnessing your happiness is more than enough for me. To accept gold for such a deed would be like tarnishing a beautiful song with a discordant note. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4156 /* The memory of this moment, the relief and joy in your eyes, that's a treasure far beyond any coin. */
  == h_meredd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4157 /* Garrick, you've been full of surprises, haven't you? I've always taken your words for charming banter, nothing more. But today, there's something different about you. */
  == h_meredd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4158 /* There's a depth that I hadn't noticed before. Your selflessness and the poetry in your words... it's quite endearing. */
  == h_meredd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4159 /* Why don't you come by later tonight? I might just have a special thank you in mind. Let's say it's a little something for catching my eye in a way you haven't before. */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4160 /* Oh, um, well, I... that is to say, later tonight? I, uh... Yes, I mean, no! I mean, yes, I'd be, uh, honored, but, um, also, you know, nervous, and... */
  == %GARRICK_JOINED% IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4161 /* Oh gosh, what I mean is, uh, thank you, Madam Meredia. I'll, uh, come back. Later. Tonight. Yes. Right. I'll do that. */
  == h_meredd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4162 /* Oh, Garrick, you're absolutely adorable when you're all flustered like that. It's quite endearing, really. Don't worry, sweetheart, we'll keep it light and easy. */
  == h_meredd IF ~IsValidForPartyDialogue("Garrick")~ THEN
@4163 /* Now, off you go, gather your wits about you for later. As for you, <CHARNAME>, thank you again for everything you've done. */
END

INTERJECT_COPY_TRANS h_rigald 264 kagtorig264
  == %KAGAIN_JOINED% IF ~IsValidForPartyDialogue("Kagain")~ THEN
@4164 /* Now that's what I call good business! Cutting out Borland and taking control of the lotus supply directly? That's exactly the sort of move I respect. Direct, efficient, no messing around. */
END

INTERJECT_COPY_TRANS h_rigald 291 jahtorig291
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4165 /* This task sits easier on my conscience, I must say. Black lotus, gifted by nature herself, should never be abused. It is a precious resource, not to be squandered on folly and vice. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Jaheira")~ THEN
@4166 /* Ah, yes, how wonderfully noble of us. Here we are, poised for grand adventure, and instead we're to play nursemaid to some lotus-addled fool. Perish the thought that we might engage in endeavors befitting our talents. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Jaheira")~ THEN
@4167 /* Jaheira, your heart bleeds so liberally for the plight of a single, insignificant man, yet the world is brimming with them. Must we really squander our time on such a trifling matter? */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin") IsValidForPartyDialogue("Jaheira")~ THEN
@4168 /* (I had imagined our quest to be one of power and arcane mysteries, not playing savior to every misguided soul.) */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("Edwin")~ THEN
@4169 /* Your shortsightedness never ceases to astound me, Edwin. The abuse of black lotus, a gift of nature perverted into a tool of escape and vice, is a symptom of greater ills in our society. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("Edwin")~ THEN
@4170 /* We may not cure all the world's woes, but in helping one, we plant the seeds of change. Dismiss it as folly if you must, but I see value in healing the world one soul at a time. */
END

INTERJECT_COPY_TRANS h_flam2d 3 shatofla3
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4171 /* Perhaps it's you who should be cautious, meddling with those who despise your very presence. I for one would relish the chance to make the Flaming Fist pay for their abuses, their cowardly acts. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4172 /* You wear your uniforms as if they grant you dominion over all, but to me, they're just targets. Keep your condescending warnings to yourself. We fear neither bandits nor your pretentious ilk. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4173 /* In fact, I'm aching for a reason, any reason, to unleash my fury upon you, to show the world just how powerless and insignificant your so-called authority truly is. */
END

INTERJECT_COPY_TRANS h_prufld 6 imotopru6
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4174 /* Wait, wait, wait... let me get this straight. This guy wants us to help him reach 'nirvana' by feeding him lotus? He's looking for the sweet spot between bliss and, well, the big sleep? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4175 /* Is this a quest or have we stumbled into some bizarre alchemist's cookbook? */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4176 /* Exactly, Imoen! It's more like a psychedelic adventure. You know, 'Follow the white rabbit,' but in this case, it's 'Follow the lotus-eating gentleman.' */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4177 /* And what's this about perfect equilibrium? I mean, I've dabbled in the arcane, but this sounds more like... culinary arts gone wild! Maybe he's trying to bake the perfect lotus pie? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4178 /* A lotus pie? Now there's an idea! We could open a bakery, 'Imoen and Neera's Nirvanic Nibbles!' Our first specialty: Lotus Loaf with a side of existential clarity. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4179 /* That's brilliant, Imoen! And for every loaf, we could add a little pamphlet: 'Instructions for your metaphysical journey - Do not consume if you plan to operate siege weapons or cast complex spells.' */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4180 /* And for an extra gold piece, we'll throw in a fortune cookie that tells you the meaning of life! Spoiler: it's '42. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4181 /* Absolutely! We'll need a disclaimer: 'Side effects may include but are not limited to: transcendental experiences, excessive giggling, and an insatiable craving for more pastries.' */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4182 /* We'll be the talk of the Sword Coast! */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4183 /* But wait, what if we give him too much and he, I don't know, transcends to another plane of existence? Do we get to keep his stuff? */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4184 /* Only if we find his astral address to send him the bill for our 'nirvana' services! Now, let's go make sure our friend here doesn't accidentally levitate into the astral plane. */
  == h_prufld IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4185 /* Jest if you must, ladies, but you trivialize a pursuit most sacred. */
  == h_prufld IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4186 /* The lotus is not merely a means for frivolous escapades, it is a gateway to enlightenment, to understanding realms beyond this mundane existence. */
END

INTERJECT_COPY_TRANS h_prufld 26 imotopru26
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4187 /* Oh no, no, no! This isn't good! He's toppling like a tree! Do you think he's... going to another plane of existence or just, you know, passing out? */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4188 /* Imoen, this is serious! We might've overdone it with the lotus! But let's not jump to astral conclusions just yet. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4189 /* Quick, maybe we can counteract it with some strong coffee or a really loud shout? I read somewhere that shock can snap someone out of... well, I'm not sure it was about a lotus overdose, but it's worth a try! */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4190 /* Right, because when I think of medical emergencies, strong coffee and shouting are definitely at the top of the list. Hang on, Pruflas! We're... uh, sort of trying to figure out how to save you! */
END

INTERJECT_COPY_TRANS h_prufld 30 imotopru30
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4191 /* Whoa, did that just... actually work? I'm not sure if I should be amazed or completely baffled. One minute he's all addle-brained, and the next, he's spouting wisdom like a sage! */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4192 /* Did we witness a miracle or is this just lotus talk? Maybe... we should try a bit, see if it helps with our lockpicking skills or spellcasting. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4193 /* Imoen, I'm not sure the lotus is the key to better thievery or magic. But it's fascinating to see Pruflas transformed from a lotus-seeker to a truth-seeker. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4194 /* Though, I must admit, I was half-expecting him to start levitating or turn into a ball of light! */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4195 /* Yeah, or at least spout some more riddles! But hey, if he's found what he's looking for and it means he's heading home, I call that a win. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4196 /* Plus, no accidental astral travel, that's always a good thing in my book. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4197 /* Definitely a win, especially on the astral travel part. Now let's see what wisdom Pruflas is going to share with us. Maybe it's the secret to never losing a sock in the laundry. */
END

INTERJECT_COPY_TRANS h_quassd 12 edwtoqua12
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@4198 /* Impressive, very impressive. Now, that's a stratagem worthy of note, an underhanded cleverness even I can appreciate. Baldwin's downfall orchestrated by his own hands. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@4199 /* Of course, such a ruse would be child's play to detect for a wizard of my caliber. But Baldwin, lacking the finer points of arcane knowledge, will undoubtedly fall right into it. */
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
@4200 /* A masterstroke, albeit one that only works on the less... intellectually endowed. */
END

INTERJECT_COPY_TRANS h_lieded 512 imotolie512
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4201 /* Oh, c'mon, you two. Really? Right here, right now? Yuck! Get a room or something. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4202 /* I mean, it's sweet and all, in a 'let's dance on the edge of a volcano' kind of way, but can we focus on not getting caught for a moment? Baldwin is literally right there. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4203 /* We might as well send him an invitation to our secret betrayal party. Let's keep the declarations of wild, reckless passion to a minimum until we're not standing in the lion's den, okay? */
END

INTERJECT_COPY_TRANS h_deaded 9 shatodio9
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4204 /* Sounds like my kind of place. A dance of iron and skill is just what I crave. But you're telling me there are no deathmatches? That's a shame. */
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4205 /* It's the threat of death that sharpens the edge of battle, makes it more... exhilarating. Still, honing my abilities and pushing limits does have its appeal. */
  == h_deaded IF ~IsValidForPartyDialogue("Sharteel")~ THEN
@4206 /* Once, we did allow deathmatches in the pits. It was a time of brutal spectacle, but we soon realized it a waste losing promising fighters from a moment's misstep or a fleeting lapse in judgment. */
END

INTERJECT_COPY_TRANS h_deaded 6 imotodio6
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4207 /* Oh my gosh, that's the sweetest thing! A rugged warrior with a soft spot for a little kitty? Shadow's one lucky cat. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4208 /* Rescuing a cat and nursing it back to health? That's hero material right there. It's not every day you meet a strong warrior with such a kind heart. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4209 /* And did I mention I'm quite the cat lover myself? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4210 /* Well, I adore them too! I've been known to rescue a stray or two myself. Cats and I, we have a special bond. Isn't that right, Shadow? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4211 /* I bet Dio here appreciates someone who shares his love for felines. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4212 /* Oh, please, Imoen. Everyone knows that mages have a special connection with animals. Cats, especially, are drawn to the arcane. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4213 /* It's like we understand each other on a mystical level. Dio, I'm sure you can see the value in that. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4214 /* Mystical level? Ha! A cat doesn't need spells to know who its friends are. They need playfulness, a gentle touch, and someone who can be just as stealthy and cunning as they are. Right, Dio? */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4215 /* Stealthy and cunning? Cats appreciate intelligence and wisdom, qualities befitting a mage. They're discerning creatures, after all. I bet Shadow here can sense the magical aura that surrounds me. */
  == h_deaded IF ~IsValidForPartyDialogue("Neera") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4216 /* Now, now, let's not turn this into a competition. Shadow here, she's got a liking for everyone, especially those with good hearts. And I can see she's taken a shine to both of you already. */
END

INTERJECT_COPY_TRANS h_pits1d 6 rasto1pf6
  == %RASAAD_JOINED% IF ~IsValidForPartyDialogue("Rasaad")~ THEN
@4217 /* Your words resonate with truth, Khalid. The path of the Sun Soul Monk, which I follow, also teaches us to harness such energy. */
  == %RASAAD_JOINED% IF ~IsValidForPartyDialogue("Rasaad")~ THEN
@4218 /* We call it the light of Selune, a divine glow that illuminates our inner strength. Like you, we seek balance and harmony within, to channel this power for good. */
  == h_pits1d IF ~IsValidForPartyDialogue("Rasaad")~ THEN
@4219 /* Ah, a fellow traveler on the path of enlightenment. The light of Selune, you say? It is fascinating how different traditions interpret and channel this life force. */
  == h_pits1d IF ~IsValidForPartyDialogue("Rasaad")~ THEN
@4220 /* In the Monastery of the Yellow Rose, we focus on the harmony between the physical and the spiritual, finding peace even in the heat of battle. */
  == %RASAAD_JOINED% IF ~IsValidForPartyDialogue("Rasaad")~ THEN
@4221 /* Indeed, Khalid. The teachings of Selune emphasize the balance between light and darkness, guiding us to use our abilities to protect and heal. */
  == %RASAAD_JOINED% IF ~IsValidForPartyDialogue("Rasaad")~ THEN
@4222 /* It is a constant journey, seeking not only to refine our martial skills but also to cultivate compassion and understanding. */
  == h_pits1d IF ~IsValidForPartyDialogue("Rasaad")~ THEN
@4223 /* A noble pursuit. In every strike and block, we seek not just to best our opponents, but to better ourselves. It is through combat that we test our limits and through meditation that we understand them. */
  == h_pits1d IF ~IsValidForPartyDialogue("Rasaad")~ THEN
@4224 /* Tell me, how does your training in the Sun Soul Order shape your view of the world? */
  == %RASAAD_JOINED% IF ~IsValidForPartyDialogue("Rasaad")~ THEN
@4225 /* It teaches me to see the world as an interplay of shadow and light. We strive to be a beacon in the darkness, a force for good. */
  == %RASAAD_JOINED% IF ~IsValidForPartyDialogue("Rasaad")~ THEN
@4226 /* The challenges we face are not just physical adversaries but also the inner struggles against doubt and fear. */
  == h_pits1d IF ~IsValidForPartyDialogue("Rasaad")~ THEN
@4227 /* Wise words. In embracing our inner strength and facing our fears, we indeed become more than just fighters, we become guardians of a greater truth. */
  == h_pits1d IF ~IsValidForPartyDialogue("Rasaad")~ THEN
@4228 /* Your journey under Selune's light mirrors our own pursuit at the Monastery of the Yellow Rose. In each discipline, there lies a universal truth about our existence. */
END

INTERJECT_COPY_TRANS h_pits2d 5 dorto2pf5
  == %DORN_JOINED% IF ~IsValidForPartyDialogue("Dorn")~ THEN
@4229 /* The Spine of the World... I know it well, Grom. The bitter cold, the relentless winds, it's a land that forges strong warriors. */
  == %DORN_JOINED% IF ~IsValidForPartyDialogue("Dorn")~ THEN
@4230 /* I too hail from the harsh north, where every day is a fight for survival. It shapes you, gives you a strength that few can match. */
  == %DORN_JOINED% IF ~IsValidForPartyDialogue("Dorn")~ THEN
@4231 /* The Uthgardt are renowned for their resilience. I respect that. */
  == h_pits2d IF ~IsValidForPartyDialogue("Dorn")~ THEN
@4232 /* Dorn, a fellow warrior of the north. Your respect honors me. We are both products of a land that tolerates no weakness. */
END

INTERJECT_COPY_TRANS h_pits2d 10 aloto2pf10
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora")~ THEN
@4233 /* Gosh, Grom, that sounds... intense! I mean, I'm all for a good tussle, but I always thought fighting could be like a dance, you know? Quick feet, fancy moves, and maybe a little bit of flair! */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora")~ THEN
@4234 /* Using anger, though, that's a whole different kind of fire. I guess in the pits, it's less about twirling and more about, um, bashing? But hey, as long as everyone's having fun and no one gets too hurt, right? */
  == h_pits2d IF ~IsValidForPartyDialogue("Alora")~ THEN
@4235 /* Little one, in the pits, anger isn't just a spark, it's a necessity. It gives you the edge, the power to overwhelm your opponent. */
  == h_pits2d IF ~IsValidForPartyDialogue("Alora")~ THEN
@4236 /* When you step into that arena, it's a battle, a fight for supremacy. It's not about fun, it's about domination. You need that fire, that rage, to come out on top. */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora")~ THEN
@4237 /* But, what about love and joy? I always thought they were pretty powerful too. Maybe if you fight with love in your heart, you could be even stronger! */
  == %ALORA_JOINED% IF ~IsValidForPartyDialogue("Alora")~ THEN
@4238 /* Like, loving the fight, loving the challenge, and loving the chance to show what you're made of! It's not just about hitting hard, but about loving every moment you're in there! */
  == h_pits2d IF ~IsValidForPartyDialogue("Alora")~ THEN
@4239 /* Love and joy in a fight? Ha! In the pits, those feelings won't save you. It's a place for warriors, not dreamers. Remember that if you ever step into the ring. */
END

INTERJECT_COPY_TRANS h_pits3d 11 imoto3pf11
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4240 /* Thanks for the tips, Lyria, that's some solid advice. But hey, let's switch gears for a sec. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4241 /* You must know a thing or two about Diomedes, right? What's his story? Got any hobbies or... favorite foods? */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4242 /* Really, Imoen? We're here to learn about fighting in the pits, and you're busy trying to dig up dirt on Dio? I thought you were above those childish tricks. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4243 /* And besides, if anyone's going to catch his eye, it's going to be a spellcaster with a bit more... finesse. You know, someone who can dazzle with more than just witty banter. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4244 /* Finesse? Ha! Like Dio's going to be impressed by a few sparkly spells. He's a fighter, Neera. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4245 /* He appreciates someone who knows her way around a dagger. And maybe someone who's a bit more down-to-earth, you know? */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4246 /* Down-to-earth? Please. Dio's a leader, he values smarts and skill. Qualities that a certain talented mage happens to possess in abundance, I might add. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4247 /* You make it sound like he's picking a new spellbook, not a person! Diomedes strikes me as the type who'd enjoy a good laugh and a daring adventure. That's where I come in. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4248 /* Oh, I'm sure he'd enjoy a good laugh, especially when he finds out about how you snore like an ogre! */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4249 /* The way you saw logs at night, it's a wonder how you ever sneak up on anyone. I bet Diomedes would find that hilarious, don't you think? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4250 /* Neera! That's so not fair! You know I can't help it! */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4251 /* If you even whisper a word of that to Diomedes, I swear, I'll... I'll fill your boots with itching powder! And trust me, I know where to find the good stuff. */
  == h_pits3d IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4252 /* Ladies, ladies, as amusing as this is, let's not forget where we are. We're here to discuss strategy and combat, not to dredge up embarrassing stories or plot matchmaking schemes. */
  == h_pits3d IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4253 /* Diomedes, like any warrior in the pits, values strength, courage, and integrity. Now, let's stay focused on the matter at hand. */
END

INTERJECT_COPY_TRANS h_pits4d 6 jahto4pf6
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4254 /* Ah, Silverymoon, the Gem of the North. I've walked its streets and wandered its surrounding wilds. You paint a true picture, Serra. It's a place where the pulse of nature beats in sync with arcane rhythms. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4255 /* The harmony you describe, between the living world and the mystical, it's a rare thing. I've seen it myself in the Moonwood and the Vault of the Sages. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4256 /* Your journey from such a place of learning to the pits is an interesting path. Tell me, what brought you from the groves of Silverymoon to the heat of battle here? */
  == h_pits4d IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4257 /* Your familiarity with Silverymoon, brings warmth to my heart. Indeed, the city and its surrounding nature were my sanctuary, my place of learning and growth. */
END

INTERJECT_COPY_TRANS h_zedadd 38 nertozed38
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
@4258 /* Great, vampires. Because dealing with normal, non-undead, non-bloodsucking beings was just too boring, right? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4259 /* Oh, come on, Neera. Vampires aren't all bad. They do a have a certain... allure about them, don't they? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4260 /* I remember reading these old tales in Candlekeep about mysterious, charming vampires. They always had a way with words and an air of elegance. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4261 /* Imoen, they're bloodthirsty undead! All that charm and mystery is just a front to lure in their next meal. There's nothing appealing about being someone's snack. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4262 /* But think about it! The eternal life, the power, the history they've seen. And they're always depicted as so sophisticated and, well, captivating. */
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4263 /* Captivating? More like manipulative and dangerous. They're predators, Imoen. And let's not forget the whole living in the shadows, sleeping in coffins, and oh, the blood-drinking part. */
  == h_zedadd IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Neera")~ THEN
@4264 /* Your fascination with the tales of vampires is understandable, but let's not forget the reality. These creatures are far more sinister than any storybook. */
END

INTERJECT_COPY_TRANS h_zedadd 52 imotozed52
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4265 /* Oh, <CHARNAME>, can we play? Please, please, please? Come on, it's only 100 gold a riddle, and who knows what amazing things could be inside that bag! */
  == h_zedadd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4266 /* I can see the spark of excitement in your eyes, young one. You've got the spirit of a true gambler. */
END

INTERJECT_COPY_TRANS h_zedadd 59 imotozed59
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4267 /* Come on, <CHARNAME>, even I knew that one! You've got to focus, get your head in the game! We can't let Zeda have all the fun... and our gold. Shake it off and let's nail the next one. */
END

INTERJECT_COPY_TRANS h_zedadd 61 imotozed61
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4268 /* This... This is our prize? I've seen better finds in Winthrop's dustbin! Are we sure we're not being pranked here? */
  == h_zedadd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4269 /* Ah, but even the simplest objects can hold stories and mysteries. It's not about the item itself, but the tale it weaves and the challenge it represents. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4270 /* Priceless? Well, if you say so... but I'm starting to think our real prize is just figuring out these riddles. Let's hope the next one's got something a bit more... well, real. */
  == h_zedadd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4271 /* Patience, young seeker. In the game of riddles, each answer and prize brings a new understanding. Perhaps your next challenge will unveil greater rewards. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4272 /* Alright, alright, I can't deny it's been a good laugh. Let's see what else you've got. Hit us with the next riddle! */
END

INTERJECT_COPY_TRANS h_zedadd 79 imotozed79
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4273 /* Oh, this is going to be fun! The riddles, the surprises, it's like a little adventure all on its own! And who knows what cool stuff Zeda's got in her bag this time! */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4274 /* Imoen, are you so easily swayed by the lure of riddles and trinkets? Have you forgotten that the last prizes from this 'Bag of Mysteries' were little more than trumpery? */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira") IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4275 /* Useless baubles that served no purpose other than to encumber our purses. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4276 /* Oh, hush, Jaheira! It's not always about usefulness. Sometimes it's just about the fun of the challenge, the thrill of the guess! */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4277 /* And who knows, maybe there's something in that bag this time that's a real treasure. One rogue's rubbish is another rogue's relic, right? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4278 /* Plus, a little bit of mystery and laughter is worth a few gold coins in my book. Let's just enjoy the game! */
END

INTERJECT_COPY_TRANS h_zedadd 88 imotozed88
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4279 /* Oh, come on, <CHARNAME>! Even I knew that one... it's 'footsteps'! How could you miss that? It's one of the oldest riddles in the book! */ 
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4280 /* You've got to keep up! We can't afford to lose gold on easy ones like that, so let's keep our eyes on the prize, alright? */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4281 /* Shake it off and focus. We've got more riddles to conquer, and I'm not about to let Zeda's Bag of Mysteries beat us. Time to bring our A-game! */
END

INTERJECT_COPY_TRANS h_zedadd 93 imotozed93
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4282 /* Yes! That's it... 'leaves'! Ha! Take that, Zeda! We're not just pretty faces and sharp swords around here, we've got brains too! */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4283 /* Did you see that? <CHARNAME> nailed it! We're gonna clean out your Bag of Mysteries in no time. Who's the riddle master now, huh? We are unstoppable! */
  == h_zedadd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4284 /* Alright, alright, calm down there, Imoen. It's just a game, remember? Though I must admit, that was a clever answer. */
  == h_zedadd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4285 /* But don't get too confident just yet. Let's see how you fare with this next one. Pay close attention, because I won't be going easy on you. */
END

INTERJECT_COPY_TRANS h_zedadd 102 jahtozed102
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
@4286 /* This is foolishness! Wasting time and gold on child's play while greater dangers loom over us. There are far more important tasks at hand than indulging in these trivial games. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4287 /* Oh, lighten up, Jaheira! Not everything's about looming dangers and dire threats. A little fun never hurt anyone. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4288 /* Besides, who knows? Maybe you'll learn to enjoy the thrill of a good riddle. Or is it too much for your serious brain? */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4289 /* This is not a matter to be taken lightly, Imoen. Your naiveté and childish whims could put us all in jeopardy. It's high time you grew up and started acting like the adult you claim to be. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4290 /* I'm not a child. Just because I don't frown all day and see doom in every shadow doesn't mean I don't understand what's at stake. I can have fun and still take things seriously. */
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4291 /* Your actions speak otherwise. This incessant need for amusement could blind you to the dangers we face. You must learn discipline and focus, or you risk more than just your own well-being. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4292 /* You're not my mother, Jaheira. You don't get to lecture me about every choice I make. I'm part of this team too, and I deserve some respect! */
  == h_zedadd IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4293 /* The oak and the reed, each strong in its own way. The oak stands rigid, resisting the storm, while the reed bends with the wind. */
  == h_zedadd IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4294 /* Yet, too much rigidity can snap under pressure, and too much flexibility can fail to hold ground. In the end, it's the balance that survives the tempest. */
  == h_zedadd IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4295 /* Perhaps there are lessons for both in the heart of the storm. Remember, the greatest challenges often lie within, not without. */
  == h_zedadd IF ~IsValidForPartyDialogue("%IMOEN_DV%") IsValidForPartyDialogue("Jaheira")~ THEN
@4296 /* Now, let us return to the game at hand. The world outside will wait for just a moment longer. */
END

INTERJECT_COPY_TRANS h_zedadd 108 imotozed108
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4297 /* Fire? Again? Oh, come on, that's not fair. You can't just use the same answer twice in a row... it's like breaking the unwritten rules of riddle-telling. */
  == h_zedadd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4298 /* Ah, but sometimes the simplest solutions are the most elusive. It's not just about the answer, but how you approach the question. Think of it as a lesson in expecting the unexpected. */
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4299 /* Alright, Zeda, but if the next answer is fire too, I'll start to think you might just be obsessed with it. Let's have the next riddle then. We'll be ready for any tricks this time. */
  == h_zedadd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4300 /* Your vigilance is admirable. But remember, the essence of a riddle lies in its ability to surprise and challenge the mind. */
  == h_zedadd IF ~IsValidForPartyDialogue("%IMOEN_DV%")~ THEN
@4301 /* Now, brace yourselves, for the next enigma may lead you down an unexpected path. */
END

INTERJECT_COPY_TRANS bart4 5 ishtobar7
  == h_jcookd IF ~~ THEN
    @4302 /* Wait...I saw 'em, boss! Messin' about in the kitchens. They might be tellin' the truth! */
END

INTERJECT_COPY_TRANS h_insped 7 ishtoins7
  == h_ishand IF ~~ THEN
    @4303 /* Inspector Branic, it is I who called for you. I am Ishani, and I have very... sensitive information I would like to discuss with you about the Gorgon's Eye. */
  == h_ishand IF ~~ THEN
     @4304 /* Please, do join me. I believe you'll find our conversation to be quite enlightening. */
END

INTERJECT_COPY_TRANS h_insped 8 ishtoins8
  == h_ishand IF ~~ THEN
    @4305 /* Oh, Inspector, you'd be surprised at what can be uncovered with the right... persuasions. */
  == h_ishand IF ~~ THEN
    @4306 /* Here, let us have a drink, and my lips will unfurl with the many secrets they possess. */
  == bart4 IF ~~ THEN
    @4307 /* It is the rarest g-gem in our collection, all the way from the Moonshae Isles. */
END

INTERJECT_COPY_TRANS h_insped 11 ishtoins11
  == h_ishand IF ~~ THEN
    @4308 /* You're right, Inspector. Action is key. And that's precisely what I'm offering you today. */
  == h_ishand IF ~~ THEN
     @4309 /* A toast then, to secrets. May they soon see the light of day and bring about the justice we both seek. */
END

INTERJECT_COPY_TRANS h_insped 18 ishtoins18
  == h_ishand IF ~~ THEN
    @4310 /* I...I... */
END