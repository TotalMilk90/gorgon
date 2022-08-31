BEGIN h_ariosd

IF ~GlobalLT("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN 1
   SAY ~We used to run these streets alone until Baldwin showed up. Got us set up with his guild and straightened us out real quick. Now we're taking twice the coin with half the risk!~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",9) Global("h_TalkedToAriosh","GLOBAL",0)~ THEN BEGIN CARNIVAL_0
   SAY ~Aye, <CHARNAME>, there you are. We're on orders to await your signal. Are we ready to make our move?~
       +~NumItemsParty("h_dart03",16)~+ ~Yes, I've secured all their weapons. Divy them up and ready yourselves for action.~ GOTO CARNIVAL_5
       +~Gender(Player1,FEMALE) NumItemsPartyLT("h_dart03",16)~+ ~Not yet. I'm just reporting in. I'll be heading down presently, so be on alert.~ GOTO CARNIVAL_1
       +~Gender(Player1,MALE) NumItemsPartyLT("h_dart03",16)~+ ~Not yet. I'm just reporting in. I'll be heading down presently, so be on alert.~ GOTO CARNIVAL_2
       +~NumItemsPartyLT("h_dart03",16)~+ ~What was I supposed to do again?~ GOTO CARNIVAL_3
END

IF ~~ THEN BEGIN CARNIVAL_1
   SAY ~Roger that. Alright you men! You heard the lass. Stand fast until she returns with the weapons.~
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToAriosh","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN CARNIVAL_2
   SAY ~Roger that. Alright you men! You heard the lad. Stand fast until he returns with the weapons.~
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToAriosh","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN CARNIVAL_3
   SAY ~Gods, what was Rigaldo thinking sending us a rookie for this mission. Go inside those tents there and steal the weapons off every gamesman inside, then bring them back to us. We will take it from there.~
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToAriosh","GLOBAL",1)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",9) Global("h_TalkedToAriosh","GLOBAL",1)~ THEN BEGIN CARNIVAL_4
   SAY ~Back already? Whats the word then?~
       +~NumItemsParty("h_dart03",16)~+ ~I've secured all their weapons. Divy them up and ready yourselves for action.~ GOTO CARNIVAL_5
       +~NumItemsPartyLT("h_dart03",16)~+ ~What was I supposed to do again?~ GOTO CARNIVAL_3
       +~NumItemsPartyLT("h_dart03",16)~+ ~Nothing yet. I'm heading down now.~ GOTO CARNIVAL_3
END

IF ~~ THEN BEGIN CARNIVAL_5
   SAY ~Aye! Come on you men, take your weapons and let's move out!~
IF ~~ THEN DO ~
   SetGlobal("h_GuildThieves","GLOBAL",4)
   SetGlobal("h_RigaldoQuest","GLOBAL",10)
   AddJournalEntry(@322,QUEST)
   TakePartyItemAll("h_dart03")~ EXIT
END

IF ~Global("h_SpawnAriosh","GLOBAL",5)~ THEN BEGIN END_0
   SAY ~Welcome back, boss.~ IF ~~ THEN EXIT
END

CHAIN
   IF ~Global("h_SpawnAriosh","GLOBAL",2)~ THEN h_ariosd 0
~Baldwin! The Shadow Thieves have infiltrated the city! A dozen of their rank fight above us as we speak!~
   =
~Scores remain outside Beregost with Thamuz at its helm! They will be here by nightfall!~
   == h_baldwd
~So, they finally decided to make their move now, have they? Men! Ready your stations and prepare for battle!~
   =
~Ariosh! Mount the outer fortifications and activate the traps at the city's edge.~
   == h_ariosd
~Yes, sir!~
   == h_baldwd
~Rhade! Distribute our munitions throughout the guild. Send word to the Night Masks and any mercenaries willing to fight for coin. We'll need as many soldiers as we can get after tonight's bloodshed.~
   == h_eurynd
~Roger that.~
   == h_baldwd
~Rigaldo! Call our numbers back from duty and get your men on the grindstone.~
   == h_rigald
~Aye!~
   == h_baldwd   
~Mifune, I will need you to take care of the Shadow Thieves within the city while we prepare for the incoming siege.~
   =
~Grab your guild armaments and then head out. Report back to me when you have exterminated all the vermin from the city.~
   DO ~
      SetGlobal("h_BaldwinQuest","GLOBAL",5)
      SetGlobal("h_SpawnAriosh","GLOBAL",3)
      SetGlobal("h_GuildItems","GLOBAL",1)
      SetGlobal("h_ShadowWar","GLOBAL",1)
      AddJournalEntry(@213,QUEST)~
EXIT
