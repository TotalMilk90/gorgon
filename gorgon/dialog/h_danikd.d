BEGIN h_danikd

IF ~Global("h_ThiefBook","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Care to make a donation to the Lord of Shadows?~
       ++ ~No thanks.~ EXIT
       +~Class([PC],THIEF_ALL)~+ ~What would I get in return?~ GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~You would get a great many things, as I can see you walk a similar path as our own.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~I am Danika, a fellow rogue, yet I am not pledged to the Gorgon's Eye.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I am a demarchess of Mask, the Lord of Shadows, and I offer my services here through council and strategy.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Any donation given I will meet with considerable reward. A series of texts meant to increase the efficiency of any rogue lies in my possession and I will offer it to you for study.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~It is called "The Thief's Compendium", and it contains a total of 17 books with various instructions and techniques to better enhance a rogue's abilities.~
       ++ ~How much would I have to donate?~ GOTO 7
END

IF ~~ THEN BEGIN 6
   SAY ~As you were then.~
IF ~~ THEN DO ~
   SetGlobal("h_ThiefBook","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY ~20,000 gold for each of the first 5 volumes. If you are able to obtain them all, then you may move onto the next set.~
       ++ ~How am I supposed to raise that much coin?~ GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~*smirks* By doing what we do best, of course.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Think on it, and then return to me if you are willing.~
IF ~~ THEN DO ~
   SetGlobal("h_ThiefBook","GLOBAL",1)~ EXIT
END


IF ~Global("h_ThiefBook","GLOBAL",1)~ THEN BEGIN 10
   SAY ~What is it you seek?~
       ++ ~Nothing at the moment.~ EXIT
       +~GlobalLT("h_BookNumber","GLOBAL",5)~+ ~I have come to make a donation.~ GOTO DONATE_1
       +~GlobalGT("h_BookNumber","GLOBAL",4) GlobalLT("h_BookNumber","GLOBAL",11)~+ ~I have come to make a donation.~ GOTO DONATE_2
       +~GlobalGT("h_BookNumber","GLOBAL",10) GlobalLT("h_BookNumber","GLOBAL",16)~+ ~I have come to make a donation.~ GOTO DONATE_3
END


/////////////////////////////////
///////// FIRST SERIES //////////
/////////////////////////////////


IF ~~ THEN BEGIN DONATE_1
   SAY ~You currently have access to the first tier of volumes. For 20,000 gold I will allow you to choose one for personal study. Here are the books I have to offer, if you have the coin.~
       +~Global("h_Book13","GLOBAL",0) PartyGoldGT(19999)~+ ~The Art Of Lockpicking.~ GOTO BOOK13_0
       +~Global("h_Book14","GLOBAL",0) PartyGoldGT(19999)~+ ~Setting, Locating And Disarming Traps.~ GOTO BOOK14_0
       +~Global("h_Book15","GLOBAL",0) PartyGoldGT(19999)~+ ~Sleight Of Hand Techniques And Excerises.~ GOTO BOOK15_0
       +~Global("h_Book16","GLOBAL",0) PartyGoldGT(19999)~+ ~Silence And Shadows.~ GOTO BOOK16_0
       +~Global("h_Book17","GLOBAL",0) PartyGoldGT(19999)~+ ~Seeing Through Illusions.~ GOTO BOOK17_0
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK13_0
   SAY ~This text will increase your lockpicking skill by 10%. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(20000)~ GOTO BOOK13_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_1
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK13_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book13","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book13",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK14_0
   SAY ~This text will increase your Find Traps and Set Traps skills by 10% each. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(20000)~ GOTO BOOK14_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_1
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK14_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book14","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book14",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK15_0
   SAY ~This text will increase your pickpocket skill by 10%. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(20000)~ GOTO BOOK15_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_1
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK15_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book15","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book15",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK16_0
   SAY ~This text will increase your Move Silently and Hide In Shadows skills by 10% each. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(20000)~ GOTO BOOK16_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_1
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK16_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book16","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(20000)
   GiveItemCreate("h_book16",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK17_0
   SAY ~This text will increase your Detect Illusion skill by 10%. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(20000)~ GOTO BOOK17_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_1
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK17_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
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
   SAY ~You currently have access to the second tier of volumes. For 50,000 gold I will allow you to choose one for personal study. Here are the books I have to offer, if you have the coin.~
       +~Global("h_Book07","GLOBAL",0) PartyGoldGT(49999)~+ ~Art Of The Dodge.~ GOTO BOOK07_0
       +~Global("h_Book08","GLOBAL",0) PartyGoldGT(49999)~+ ~Weapon Techniques.~ GOTO BOOK08_0
       +~Global("h_Book09","GLOBAL",0) PartyGoldGT(49999)~+ ~Resisting Spells.~ GOTO BOOK09_0
       +~Global("h_Book10","GLOBAL",0) PartyGoldGT(49999)~+ ~Mind Over Matter.~ GOTO BOOK10_0
       +~Global("h_Book11","GLOBAL",0) PartyGoldGT(49999)~+ ~Protection From The Elements.~ GOTO BOOK11_0
       +~Global("h_Book12","GLOBAL",0) PartyGoldGT(49999)~+ ~The Art Of The Backstab.~ GOTO BOOK12_0
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK07_0
   SAY ~This text will decrease your Armor Class and Saving Throws by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(50000)~ GOTO BOOK07_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_2
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK07_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book07","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book07",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK08_0
   SAY ~This text will decrease your THAC0 by 1 and increase your damage by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(50000)~ GOTO BOOK08_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_2
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK08_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book08","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book08",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK09_0
   SAY ~This text will increase your Magic Resistance by 5%. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(50000)~ GOTO BOOK09_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_2
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK09_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book09","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book09",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK10_0
   SAY ~This text will increase your Crushing, Slashing, Piercing and Missile Resistance by 5% each. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(50000)~ GOTO BOOK10_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_2
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK10_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book10","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book10",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK11_0
   SAY ~This text will increase your Cold, Fire, Electricity, Acid and Poison Resistance by 5% each. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(50000)~ GOTO BOOK11_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_2
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK11_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book11","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(50000)
   GiveItemCreate("h_book11",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK12_0
   SAY ~This text will increase your Backstab Multiplier by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(50000)~ GOTO BOOK12_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_2
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK12_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
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
   SAY ~You currently have access to the third and final tier of volumes. For 100,000 gold I will allow you to choose one for personal study. Here are the books I have to offer, if you have the coin.~
       +~Global("h_Book01","GLOBAL",0) PartyGoldGT(99999)~+ ~Immunity Building And Health~ GOTO BOOK01_0
       +~Global("h_Book02","GLOBAL",0) PartyGoldGT(99999)~+ ~Muscle Endurance Training.~ GOTO BOOK02_0
       +~Global("h_Book03","GLOBAL",0) PartyGoldGT(99999)~+ ~The Art Of Movement.~ GOTO BOOK03_0
       +~Global("h_Book04","GLOBAL",0) PartyGoldGT(99999)~+ ~Common Topics Of Discussion.~ GOTO BOOK04_0
       +~Global("h_Book05","GLOBAL",0) PartyGoldGT(99999)~+ ~The Confidence Man.~ GOTO BOOK05_0
       +~Global("h_Book06","GLOBAL",0) PartyGoldGT(99999)~+ ~A History Of Thieves.~ GOTO BOOK06_0
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK01_0
   SAY ~This text will increase your Constitution by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(100000)~ GOTO BOOK01_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_3
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK01_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book01","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book01",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK02_0
   SAY ~This text will increase your Strength by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(100000)~ GOTO BOOK02_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_3
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK02_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book02","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book02",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK03_0
   SAY ~This text will increase your Dexterity by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(100000)~ GOTO BOOK03_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_3
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK03_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book03","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book03",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK04_0
   SAY ~This text will increase your Intelligence by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(100000)~ GOTO BOOK04_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_3
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK04_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book04","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book04",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK05_0
   SAY ~This text will increase your Charisma by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(100000)~ GOTO BOOK05_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_3
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK05_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book05","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book05",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN BOOK06_0
   SAY ~This text will increase your Constitution by 1. Are you sure this is the book you would like?~
       ++ ~Yes, I am sure.~ DO ~TakePartyGold(100000)~ GOTO BOOK01_1
       ++ ~Let me see the list of books again.~ GOTO DONATE_3
       ++ ~I'll come back another time.~ EXIT
END

IF ~~ THEN BEGIN BOOK06_1
   SAY ~Mask thanks for you for your donation and will share with you his favor.~
IF ~~ THEN DO ~
   SetGlobal("h_Book06","GLOBAL",1)
   IncrementGlobal("h_BookNumber","GLOBAL",1)
   DestroyGold(100000)
   GiveItemCreate("h_book06",LastTalkedToBy,0,0,0)~ EXIT
END

IF WEIGHT #-1 ~Global("h_BookNumber","GLOBAL",17) Gender(Player1,MALE)~ THEN BEGIN ENDMALE_0
   SAY ~You have certainly proven yourself as a faithful servant of Mask.~ IF ~~ THEN GOTO ENDMALE_1
END

IF ~~ THEN BEGIN ENDMALE_1
   SAY ~As a parting gift for your success, I shall bestow upon you a fragment of one of his personal weapons.~ IF ~~ THEN GOTO ENDMALE_2
END

IF ~~ THEN BEGIN ENDMALE_2
   SAY ~I must depart now, as my services are needed elsewhere. Farewell, Brother Shadow.~
IF ~~ THEN DO ~
   GiveItemCreate("h_sw1h03",LastTalkedToBy,0,0,0)
   EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~Global("h_BookNumber","GLOBAL",17) Gender(Player1,FEMALE)~ THEN BEGIN ENDFEMALE_0
   SAY ~You have certainly proven yourself as a faithful servant of Mask.~ IF ~~ THEN GOTO ENDFEMALE_1
END

IF ~~ THEN BEGIN ENDFEMALE_1
   SAY ~As a parting gift for your success, I shall bestow upon you a fragment of one of his personal weapons.~ IF ~~ THEN GOTO ENDFEMALE_2
END

IF ~~ THEN BEGIN ENDFEMALE_2
   SAY ~I must depart now, as my services are needed elsewhere. Farewell, Sister Shadow.~
IF ~~ THEN DO ~
   GiveItemCreate("h_sw1h03",LastTalkedToBy,0,0,0)
   EscapeArea()~ EXIT
END








