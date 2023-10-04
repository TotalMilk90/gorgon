BEGIN h_nagadd

IF ~Global("h_ThiefBook","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Care to make a donation to the Lord of Shadows?~
       ++ ~No thanks.~ EXIT
       ++ ~I'd like to see what services you have available.~ GOTO TEMPLE_0
       +~Class([PC],THIEF_ALL)~+ ~What would I get in return?~ GOTO 1
END

IF ~~ THEN BEGIN TEMPLE_0
   SAY ~Then allow me to share with you a glimpse of Mask's divinity.~
IF ~~ THEN DO ~
   StartStore("h_nagsto",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 1
   SAY ~You would get a great many things, as I can see you walk a similar path as our own.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~I am Naga, a friend of the shadows, yet I am not pledged to the Gorgon's Eye.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I am a demarchess of Mask, the Lord of Shadows. I offer advice and strategy, among other things.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Any donation given will be met with considerable reward. A series of texts meant to increase the efficiency of any rogue lies in my possession, and I will offer it to you for study.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~'The Thief's Compendium', it contains a total of 17 books with various instructions and techniques to better enhance a rogue's abilities.~
       ++ ~How much would I have to donate?~ GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~20,000 gold for each of the first 5 volumes. If you are able to obtain them all, then you may move onto the next series of texts.~
       ++ ~How am I supposed to raise that much coin?~ GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~By doing what we do best, of course.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Think on it, and then return to me if you are willing.~
IF ~~ THEN DO ~
   SetGlobal("h_ThiefBook","GLOBAL",1)~ EXIT
END


IF ~Global("h_ThiefBook","GLOBAL",1)~ THEN BEGIN 10
   SAY ~What is it you seek?~
       ++ ~I'd like to see what services you have available.~ GOTO TEMPLE_0
       ++ ~Can you tell me more about, 'The Thief's Compendium'.~ GOTO INFO_0
       +~GlobalLT("h_BookNumber","GLOBAL",5)~+ ~I would like to make a donation.~ GOTO DONATE_1
       +~GlobalGT("h_BookNumber","GLOBAL",4) GlobalLT("h_BookNumber","GLOBAL",11)~+ ~I would like to make a donation.~ GOTO DONATE_2
       +~GlobalGT("h_BookNumber","GLOBAL",10) GlobalLT("h_BookNumber","GLOBAL",17)~+ ~I would like to make a donation.~ GOTO DONATE_3
       ++ ~Nothing at the moment.~ EXIT
END


/////////////////////////////////
///////// FIRST SERIES //////////
/////////////////////////////////


IF ~~ THEN BEGIN DONATE_1
   SAY ~You currently have access to the first tier of volumes. For 20,000 gold I will allow you to choose one for your personal study. Here are the books I have to offer, if you have the coin.~
       +~Global("h_Book13","GLOBAL",0) PartyGoldGT(19999)~+ ~The Art of Lockpicking.~ GOTO BOOK13_0
       +~Global("h_Book14","GLOBAL",0) PartyGoldGT(19999)~+ ~Setting, Locating and Disarming Traps.~ GOTO BOOK14_0
       +~Global("h_Book15","GLOBAL",0) PartyGoldGT(19999)~+ ~Sleight of Hand Techniques and Excerises.~ GOTO BOOK15_0
       +~Global("h_Book16","GLOBAL",0) PartyGoldGT(19999)~+ ~Silence and Shadows.~ GOTO BOOK16_0
       +~Global("h_Book17","GLOBAL",0) PartyGoldGT(19999)~+ ~Seeing Through Illusions.~ GOTO BOOK17_0
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK13_0
   SAY ~This text will increase your lockpicking skill by 10%. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(20000)~ GOTO BOOK13_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_1
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK13_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book13","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book13",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK14_0
   SAY ~This text will increase your Find Traps and Set Traps skills by 10% each. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(20000)~ GOTO BOOK14_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_1
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK14_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book14","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book14",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK15_0
   SAY ~This text will increase your pickpocket skill by 10%. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(20000)~ GOTO BOOK15_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_1
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK15_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book15","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book15",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK16_0
   SAY ~This text will increase your Move Silently and Hide In Shadows skills by 10% each. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(20000)~ GOTO BOOK16_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_1
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK16_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book16","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book16",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK17_0
   SAY ~This text will increase your Detect Illusion skill by 10%. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(20000)~ GOTO BOOK17_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_1
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK17_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
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
   SAY ~You currently have access to the second tier of volumes. For 50,000 gold I will allow you to choose one for your personal study. Here are the books I have to offer, if you have the coin.~
       +~Global("h_Book07","GLOBAL",0) PartyGoldGT(49999)~+ ~Art of the Dodge.~ GOTO BOOK07_0
       +~Global("h_Book08","GLOBAL",0) PartyGoldGT(49999)~+ ~Weapon Techniques.~ GOTO BOOK08_0
       +~Global("h_Book09","GLOBAL",0) PartyGoldGT(49999)~+ ~Resisting Spells.~ GOTO BOOK09_0
       +~Global("h_Book10","GLOBAL",0) PartyGoldGT(49999)~+ ~Mind over Matter.~ GOTO BOOK10_0
       +~Global("h_Book11","GLOBAL",0) PartyGoldGT(49999)~+ ~Protection from the Elements.~ GOTO BOOK11_0
       +~Global("h_Book12","GLOBAL",0) PartyGoldGT(49999)~+ ~The Art of the Backstab.~ GOTO BOOK12_0
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK07_0
   SAY ~This text will decrease your Armor Class and Saving Throws by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(50000)~ GOTO BOOK07_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_2
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK07_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book07","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book07",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK08_0
   SAY ~This text will decrease your THAC0 by 1 and increase your damage by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(50000)~ GOTO BOOK08_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_2
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK08_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book08","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book08",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK09_0
   SAY ~This text will increase your Magic Resistance by 5%. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(50000)~ GOTO BOOK09_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_2
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK09_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book09","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book09",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK10_0
   SAY ~This text will increase your Crushing, Slashing, Piercing and Missile Resistance by 5% each. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(50000)~ GOTO BOOK10_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_2
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK10_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book10","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book10",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK11_0
   SAY ~This text will increase your Cold, Fire, Electricity, Acid and Poison Resistance by 5% each. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(50000)~ GOTO BOOK11_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_2
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK11_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book11","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book11",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK12_0
   SAY ~This text will increase your Backstab Multiplier by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(50000)~ GOTO BOOK12_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_2
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK12_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
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
   SAY ~You currently have access to the third and final tier of volumes. For 100,000 gold I will allow you to choose one for your personal study. Here are the books I have to offer, if you have the coin.~
       +~Global("h_Book01","GLOBAL",0) PartyGoldGT(99999)~+ ~Immunity Building and Health~ GOTO BOOK01_0
       +~Global("h_Book02","GLOBAL",0) PartyGoldGT(99999)~+ ~Muscle Endurance Training.~ GOTO BOOK02_0
       +~Global("h_Book03","GLOBAL",0) PartyGoldGT(99999)~+ ~The Art of Movement.~ GOTO BOOK03_0
       +~Global("h_Book04","GLOBAL",0) PartyGoldGT(99999)~+ ~Common Topics of Discussion.~ GOTO BOOK04_0
       +~Global("h_Book05","GLOBAL",0) PartyGoldGT(99999)~+ ~The Confidence Man.~ GOTO BOOK05_0
       +~Global("h_Book06","GLOBAL",0) PartyGoldGT(99999)~+ ~A History of Thieves.~ GOTO BOOK06_0
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK01_0
   SAY ~This text will increase your Constitution by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(100000)~ GOTO BOOK01_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_3
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK01_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book01","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book01",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK02_0
   SAY ~This text will increase your Strength by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(100000)~ GOTO BOOK02_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_3
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK02_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book02","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book02",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK03_0
   SAY ~This text will increase your Dexterity by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(100000)~ GOTO BOOK03_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_3
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK03_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book03","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book03",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK04_0
   SAY ~This text will increase your Intelligence by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(100000)~ GOTO BOOK04_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_3
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK04_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book04","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book04",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK05_0
   SAY ~This text will increase your Charisma by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(100000)~ GOTO BOOK05_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_3
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK05_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book05","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book05",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK06_0
   SAY ~This text will increase your Wisdom by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(100000)~ GOTO BOOK06_1
       ++ ~Let me see the list of texts again.~ GOTO DONATE_3
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK06_1
   SAY ~Mask thanks you for your service and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book06","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book06",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN INFO_0
   SAY ~It is a series of texts developed by the followers of Mask that offer the reader unique knowledge of the thieving arts.~ IF ~~ THEN GOTO INFO_1
END

IF ~~ THEN BEGIN INFO_1
   SAY ~The first section contains 5 volumes with information regarding a basic set of skills every thief should know. Each volume will require a donation of 20,000 gold.~ IF ~~ THEN GOTO INFO_2
END

IF ~~ THEN BEGIN INFO_2
   SAY ~The second section contains 6 volumes that cover more advanced skills and lessons on resisting physical and magical dangers. Each volume will require a donation of 50,000 gold.~ IF ~~ THEN GOTO INFO_3
END

IF ~~ THEN BEGIN INFO_3
   SAY ~The third section contains 6 volumes with in depth information on a variety of topics meant to increase all of your natural abilities. Each volume will require a donation of 100,000 gold.~ IF ~~ THEN GOTO INFO_4
END

IF ~~ THEN BEGIN INFO_4
   SAY ~Completing the entire compendium will cost a total of one million gold.~
       ++ ~I'd like to ask you something else.~ GOTO 10
       ++ ~I'll come back another time.~ EXIT
END

IF WEIGHT #-1 ~Global("h_BookNumber","GLOBAL",17) Gender(Player1,MALE)~ THEN BEGIN ENDMALE_0
   SAY ~You have certainly proven yourself as a faithful servant of Mask.~ IF ~~ THEN GOTO ENDMALE_1
END

IF ~~ THEN BEGIN ENDMALE_1
   SAY ~As a parting gift for your success, I shall bestow upon you a fragment of one of Mask's personal weapons.~ IF ~~ THEN GOTO ENDMALE_2
END

IF ~~ THEN BEGIN ENDMALE_2
   SAY ~You have done well, Brother Shadow.~
IF ~~ THEN DO ~
   SetGlobal("h_BookNumber","GLOBAL",18)
   GiveItemCreate("h_sw1h03",LastTalkedToBy,0,0,0)~ EXIT
END

IF WEIGHT #-1 ~Global("h_BookNumber","GLOBAL",17) Gender(Player1,FEMALE)~ THEN BEGIN ENDFEMALE_0
   SAY ~You have certainly proven yourself as a faithful servant of Mask.~ IF ~~ THEN GOTO ENDFEMALE_1
END

IF ~~ THEN BEGIN ENDFEMALE_1
   SAY ~As a parting gift for your success, I shall bestow upon you a fragment of one of Mask's personal weapons.~ IF ~~ THEN GOTO ENDFEMALE_2
END

IF ~~ THEN BEGIN ENDFEMALE_2
   SAY ~You have done well, Sister Shadow.~
IF ~~ THEN DO ~
   SetGlobal("h_BookNumber","GLOBAL",17)
   GiveItemCreate("h_sw1h03",LastTalkedToBy,0,0,0)~ EXIT
END








