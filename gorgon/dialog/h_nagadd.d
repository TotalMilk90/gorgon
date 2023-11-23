BEGIN h_nagadd

IF ~!Class([PC],THIEF_ALL)~ THEN BEGIN 0.1
   SAY ~~ IF ~~ THEN EXIT
END


IF ~Global("h_ThiefBook","GLOBAL",0) Class([PC],THIEF_ALL)~ THEN BEGIN 0
   SAY ~Ah, I see you, shadow-walker, cloaked in the guise of the ordinary. Come closer and bask in the umbral embrace of Mask's sanctum, where light dare not reveal what thrives in the dark.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~You possess a certain... finesse, a kinship with the shadows that belies your mundane appearance. It is a talent, an affinity that the Lord of Shadows, appreciates and rewards.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~He watches over us, his chosen, and in his boundless enigma, he offers a conduit for greater power.~ IF ~~ THEN GOTO 2.5
END

IF ~~ THEN BEGIN 2.5
   SAY ~A power that you, a fellow purveyor of stealth and subtlety, could wield with the right... encouragement.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Behold, 'The Thief's Compendium', a collection most sacred, penned by the devout and shadow-kissed followers of our deity.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Within the pages of these 17 volumes lies knowledge, secrets that the uninitiated could scarcely dream of. Methods to beguile, techniques to vanish, and skills to dominate the very essence of thievery.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~But such knowledge does not come without its price, for devotion is measured in more than just faith. Mask asks for tribute, a tithe to further his causes in this realm.~ IF ~~ THEN GOTO 5.5
END

IF ~~ THEN BEGIN 5.5
   SAY ~In return, his blessings shall rain down upon you, granting you the privilege to delve into this forbidden lore.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Will you make this pact? Will you donate to the shadow's trove and in turn, accept the dark gifts Mask offers?~
       ++ ~I am willing to make an offering. What is the cost to uncover the wisdom within these forbidden tomes?~ GOTO 7
       ++ ~I walk my own path in the shadows, priestess. I need no tomes to enhance my skills.~ GOTO 6.5
END

IF ~~ THEN BEGIN 6.5
   SAY ~You spurn the gift of collective wisdom, walking alone without the whispered secrets of those who came before. But be wary, for the solitary shadow often finds itself ensnared by lights it cannot extinguish.~
IF ~~ THEN DO ~
   SetGlobal("h_ThiefBook","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY ~Your willingness to embrace the shadows is commendable. The wisdom of "The Thief's Compendium" is not merely handed out; it is earned, both in gold and in dedication to Mask's clandestine cause.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~The first tier, accessible to those with a foundational respect for the thieving arts, contains five tomes.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Each is priced at 20,000 gold, a modest sum for the secrets within. These volumes will enhance your basic skills, the very essence of a thief's craft.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Once you have proven your commitment by acquiring all five, the second tier awaits you.~ IF ~~ THEN GOTO 10.5
END

IF ~~ THEN BEGIN 10.5
   SAY ~Here, six tomes delve into the arts of evasion, and the sharpening of one's mental and physical acuity.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~Each tome in this tier is a key to unlocking potentials you never knew you had, at the cost of 50,000 gold per volume.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~The final tier, the pinnacle of thievery wisdom, is reserved for those who have fully immersed themselves in the preceding teachings.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~These last six tomes are the embodiment of mastery, offering to elevate all of your natural abilities beyond the ken of ordinary men. The price for such transcendence is 100,000 gold for each tome.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~You must journey through the Compendium in order, tier upon tier, for the knowledge contained builds upon itself like layers of shadow.~ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY ~Only by mastering the foundation can one hope to understand the subtleties of the advanced techniques, and only by mastering these can one be prepared to embrace the ultimate secrets of our craft.~
       ++ ~The price for knowledge is steep. How am I supposed to come up with that much coin?~ GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~Ah, shadow-walker, you ask as though the answer is not already dancing in the darkness before you. We serve the Lord of Shadows, the patron of all who prosper by their wits and the silence of their steps.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~Acquire the gold as only a disciple of Mask could, through the very arts these tomes will refine. Honor him by practicing what you seek to perfect.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~After all, to the followers of Mask, the world's riches are but a shadow's breadth away. Prove your cunning, your daring, and your allegiance to our Lord by doing what we do best.~ IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
   SAY ~Now, go forth, acolyte of the unseen. Embrace the night. Fulfill your duty to Mask with each silent step, each careful heist. Let the shadows be your cloak, and the whispers of the world your guide.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~Perform your duty, and return when the weight of gold matches the weight of your resolve. Mask watches, and he rewards those who prove worthy in his eyes.~
IF ~~ THEN DO ~
   SetGlobal("h_ThiefBook","GLOBAL",1)
   AddJournalEntry(@206,USER)~ EXIT
END

IF ~Global("h_ThiefBook","GLOBAL",1)~ THEN BEGIN 21
   SAY ~Welcome back, shadow-walker. Are you ready to offer your tribute and delve deeper into the mysteries of the Compendium?~
       +~GlobalLT("h_BookNumber","GLOBAL",5)~+ ~I have acquired the necessary gold, priestess. Let us proceed with the exchange for Mask's hidden knowledge.~ GOTO DONATE_1
       +~GlobalGT("h_BookNumber","GLOBAL",4) GlobalLT("h_BookNumber","GLOBAL",11)~+ ~I have acquired the necessary gold, priestess. Let us proceed with the exchange for Mask's hidden knowledge.~ GOTO DONATE_2
       +~GlobalGT("h_BookNumber","GLOBAL",10) GlobalLT("h_BookNumber","GLOBAL",17)~+ ~I have acquired the necessary gold, priestess. Let us proceed with the exchange for Mask's hidden knowledge.~ GOTO DONATE_3
       ++ ~Nothing at the moment.~ EXIT
END


/////////////////////////////////
///////// FIRST SERIES //////////
/////////////////////////////////


IF ~~ THEN BEGIN DONATE_1
   SAY ~The first tier of the Compendium awaits, ready to lay the foundation of your craft. For 20,000 gold, the initial secrets can be yours.~ IF ~~ THEN GOTO DONATE_1.1
END

IF ~~ THEN BEGIN DONATE_1.1
   SAY ~Each tome within the Compendium holds its own dark marvels. Tell me, shadow-walker, which volume calls to you? Which secrets do you seek to unravel in the name of Mask?~
       +~Global("h_Book13","GLOBAL",0) PartyGoldGT(19999)~+ ~The Art of Lockpicking.~ GOTO BOOK13_0
       +~Global("h_Book14","GLOBAL",0) PartyGoldGT(19999)~+ ~Setting, Locating and Disarming Traps.~ GOTO BOOK14_0
       +~Global("h_Book15","GLOBAL",0) PartyGoldGT(19999)~+ ~Sleight of Hand Techniques and Excerises.~ GOTO BOOK15_0
       +~Global("h_Book16","GLOBAL",0) PartyGoldGT(19999)~+ ~Silence and Shadows.~ GOTO BOOK16_0
       +~Global("h_Book17","GLOBAL",0) PartyGoldGT(19999)~+ ~Seeing Through Illusions.~ GOTO BOOK17_0
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK13_0
   SAY ~This text will increase your lockpicking skill by 10%. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(20000)~ GOTO BOOK13_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_1
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK13_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book13","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book13",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK14_0
   SAY ~This text will increase your Find Traps and Set Traps skills by 10% each. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(20000)~ GOTO BOOK14_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_1
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK14_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book14","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book14",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK15_0
   SAY ~This text will increase your pickpocket skill by 10%. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(20000)~ GOTO BOOK15_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_1
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK15_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book15","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book15",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK16_0
   SAY ~This text will increase your Move Silently and Hide In Shadows skills by 10% each. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(20000)~ GOTO BOOK16_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_1
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK16_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book16","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book16",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK17_0
   SAY ~This text will increase your Detect Illusion skill by 10%. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(20000)~ GOTO BOOK17_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_1
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK17_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book17","GLOBAL",0)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book17",LastTalkedToBy,0,0,0)~ EXIT
END


/////////////////////////////////
///////// SECOND SERIES /////////
/////////////////////////////////


IF ~~ THEN BEGIN DONATE_2
   SAY ~The second tier, more advanced and elusive, is now within your reach. With 50,000 gold per tome, you will learn to dance with shadows, to evade where others would stumble.~ IF ~~ THEN GOTO DONATE_2.1
END

IF ~~ THEN BEGIN DONATE_2.1
   SAY ~Each tome within the Compendium holds its own dark marvels. Tell me, shadow-walker, which volume calls to you? Which secrets do you seek to unravel in the name of Mask?~
       +~Global("h_Book07","GLOBAL",0) PartyGoldGT(49999)~+ ~Art of the Dodge.~ GOTO BOOK07_0
       +~Global("h_Book08","GLOBAL",0) PartyGoldGT(49999)~+ ~Weapon Techniques.~ GOTO BOOK08_0
       +~Global("h_Book09","GLOBAL",0) PartyGoldGT(49999)~+ ~Resisting Spells.~ GOTO BOOK09_0
       +~Global("h_Book10","GLOBAL",0) PartyGoldGT(49999)~+ ~Mind over Matter.~ GOTO BOOK10_0
       +~Global("h_Book11","GLOBAL",0) PartyGoldGT(49999)~+ ~Protection from the Elements.~ GOTO BOOK11_0
       +~Global("h_Book12","GLOBAL",0) PartyGoldGT(49999)~+ ~The Art of the Backstab.~ GOTO BOOK12_0
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK07_0
   SAY ~This text will decrease your Armor Class and Saving Throws by 1. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(50000)~ GOTO BOOK07_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_2
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK07_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book07","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book07",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK08_0
   SAY ~This text will decrease your THAC0 by 1 and increase your damage by 1. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(50000)~ GOTO BOOK08_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_2
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK08_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book08","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book08",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK09_0
   SAY ~This text will increase your Magic Resistance by 5%. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(50000)~ GOTO BOOK09_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_2
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK09_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book09","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book09",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK10_0
   SAY ~This text will increase your Crushing, Slashing, Piercing and Missile Resistance by 5% each. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(50000)~ GOTO BOOK10_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_2
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK10_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book10","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book10",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK11_0
   SAY ~This text will increase your Cold, Fire, Electricity, Acid and Poison Resistance by 5% each. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(50000)~ GOTO BOOK11_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_2
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK11_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book11","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book11",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK12_0
   SAY ~This text will increase your Backstab Multiplier by 1. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(50000)~ GOTO BOOK12_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_2
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK12_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book12","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book12",LastTalkedToBy,0,0,0)~ EXIT
END


/////////////////////////////////
///////// THIRD SERIES //////////
/////////////////////////////////


IF ~~ THEN BEGIN DONATE_3
   SAY ~Behold, the threshold to mastery lies before you. The final tier is not for the faint of heart nor light of purse. Each tome, at 100,000 gold, holds the power to elevate your very essence.~ IF ~~ THEN GOTO DONATE_3.1
END

IF ~~ THEN BEGIN DONATE_3.1
   SAY ~Each tome within the Compendium holds its own dark marvels. Tell me, shadow-walker, which volume calls to you? Which secrets do you seek to unravel in the name of Mask?~
       +~Global("h_Book01","GLOBAL",0) PartyGoldGT(99999)~+ ~Immunity Building and Health~ GOTO BOOK01_0
       +~Global("h_Book02","GLOBAL",0) PartyGoldGT(99999)~+ ~Muscle Endurance Training.~ GOTO BOOK02_0
       +~Global("h_Book03","GLOBAL",0) PartyGoldGT(99999)~+ ~The Art of Movement.~ GOTO BOOK03_0
       +~Global("h_Book04","GLOBAL",0) PartyGoldGT(99999)~+ ~Common Topics of Discussion.~ GOTO BOOK04_0
       +~Global("h_Book05","GLOBAL",0) PartyGoldGT(99999)~+ ~The Confidence Man.~ GOTO BOOK05_0
       +~Global("h_Book06","GLOBAL",0) PartyGoldGT(99999)~+ ~A History of Thieves.~ GOTO BOOK06_0
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK01_0
   SAY ~This text will increase your Constitution by 1. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(100000)~ GOTO BOOK01_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_3
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK01_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book01","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book01",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK02_0
   SAY ~This text will increase your Strength by 1. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(100000)~ GOTO BOOK02_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_3
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK02_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book02","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book02",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK03_0
   SAY ~This text will increase your Dexterity by 1. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(100000)~ GOTO BOOK03_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_3
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK03_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book03","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book03",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK04_0
   SAY ~This text will increase your Intelligence by 1. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(100000)~ GOTO BOOK04_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_3
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK04_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book04","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book04",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK05_0
   SAY ~This text will increase your Charisma by 1. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(100000)~ GOTO BOOK05_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_3
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK05_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book05","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book05",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK06_0
   SAY ~This text will increase your Wisdom by 1. Are you prepared to delve into its darkness and embrace the path it reveals?~
       ++ ~I am ready. The deeper the shadow, the clearer my purpose. Let the darkness guide me.~ DO ~TakePartyGold(100000)~ GOTO BOOK06_1
       ++ ~Reveal to me again the other tomes at your disposal before I make my choice.~ GOTO DONATE_3
       ++ ~The shadows can be patient, and so shall I. I will return when the time is right to claim what is destined for me.~ EXIT
END

IF ~~ THEN BEGIN BOOK06_1
   SAY ~Your offering resonates through the shadows, and Mask's gaze turns favorably upon you. Accept this tome as a whisper of his dark blessings.~
IF ~~ THEN DO ~
   SetGlobal("h_Book06","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book06",LastTalkedToBy,0,0,0)~ EXIT
END


IF WEIGHT #-1 ~Global("h_BookNumber","GLOBAL",17) Gender(Player1,MALE)~ THEN BEGIN END_0
   SAY ~Your dedication to the Lord of Shadows, to the sublime art of thievery, is unparalleled. Few dare to dream of such an accomplishment, and even fewer achieve it.~ IF ~~ THEN GOTO END_1
END

IF ~~ THEN BEGIN END_1
   SAY ~You have shown a devotion that transcends mere loyalty, it is the embodiment of Mask's own tenacity.~ IF ~~ THEN GOTO END_2
END

IF ~~ THEN BEGIN END_2
   SAY ~By your actions, you have honored the Lord of Shadows, and in turn, he bestows upon you a token of his divine favor.~ IF ~~ THEN GOTO END_3
END

IF ~~ THEN BEGIN END_3
   SAY ~This is a fragment of a legendary weapon, once wielded by Mask Himself. With this, your actions will carry the whispers of the deity, and your path will be one with the very essence of stealth and secrecy.~ IF ~~ THEN GOTO END_4
END

IF ~~ THEN BEGIN END_4
   SAY ~Guard it well, for it is not only a tool but a symbol, a testament to what one can achieve under the auspices of our enigmatic patron.~ IF ~~ THEN GOTO END_5
END

IF ~~ THEN BEGIN END_5
   SAY ~Go forth, bearer of Mask's legacy. May your journey through the shadows never end, and may your legend grow with every whisper in the dark.~
IF ~~ THEN DO ~
   SetGlobal("h_BookNumber","GLOBAL",18)
   GiveItemCreate("h_sw1h03",LastTalkedToBy,0,0,0)~ EXIT
END

IF WEIGHT #-1 ~Global("h_BookNumber","GLOBAL",18) Gender(Player1,FEMALE)~ THEN BEGIN END_6
   SAY ~Shadow-walker, your presence graces this humble market. The whispers of your deeds echo even in the silence.~ IF ~~ THEN GOTO END_7
END

IF ~~ THEN BEGIN END_7
   SAY ~Continue to carry the legacy of Mask in every shadow you cast, in every secret you keep. Our Lord watches, ever pleased, ever present.~ IF ~~ THEN EXIT
END







