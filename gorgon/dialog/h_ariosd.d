BEGIN h_ariosd

IF ~GlobalLT("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN 1
   SAY ~We used to run these streets alone 'til Baldwin showed up. Got us set up with his guild and straightened us up right quick. Now we're taking twice the coin with half the heat!~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",9) Global("h_TalkedToAriosh","GLOBAL",0)~ THEN BEGIN CARNIVAL_0
   SAY ~Aye, <CHARNAME>. We're on orders to await your signal. Ready to roll when you give the word.~
       +~NumItemsParty("h_misc18",8)~+ ~Weapons secured, boys. Divy 'em up and prep for action.~ GOTO CARNIVAL_5
       +~Gender(Player1,FEMALE) NumItemsPartyLT("h_misc18",8)~+ ~Just reporting in before we kick off. Stay on your toes.~ GOTO CARNIVAL_1
       +~Gender(Player1,MALE) NumItemsPartyLT("h_misc18",8)~+ ~Just reporting in before we kick off. Stay on your toes.~ GOTO CARNIVAL_2
       +~NumItemsPartyLT("h_misc18",8)~+ ~Err. What's the plan again?~ GOTO CARNIVAL_3
END

IF ~~ THEN BEGIN CARNIVAL_1
   SAY ~Copy that. Alright you men! You heard the lass. Stand fast 'til she brings back the weapons.~
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToAriosh","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN CARNIVAL_2
   SAY ~Copy that. Alright you men! You heard the lad. Stand fast 'til she brings back the weapons.~
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToAriosh","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN CARNIVAL_3
   SAY ~Gods, what was Rigaldo thinking sending us a rookie for this mission? Get in those tents, swipe the weapons off every gamesman, then return them to us. We'll handle the rest.~
IF ~~ THEN DO ~
   SetGlobal("h_TalkedToAriosh","GLOBAL",1)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",9) Global("h_TalkedToAriosh","GLOBAL",1)~ THEN BEGIN CARNIVAL_4
   SAY ~Back already? What's the play?~
       +~NumItemsParty("h_misc18",8)~+ ~Weapons secured, boys. Divy 'em up and prep for action.~ GOTO CARNIVAL_5
       +~NumItemsPartyLT("h_misc18",8)~+ ~Err. What's the plan again?~ GOTO CARNIVAL_3
       +~NumItemsPartyLT("h_misc18",8)~+ ~Just reporting in before we kick off. Stay on your toes.~ EXIT
END

IF ~~ THEN BEGIN CARNIVAL_5
   SAY ~Aye! Listen up you men! Grab your gear and move out! Let's teach these southern boys a right lesson about the Gorgon's Eye!~
IF ~~ THEN DO ~
   SetGlobal("h_GuildThieves","GLOBAL",4)
   SetGlobal("h_RigaldoQuest","GLOBAL",10)
   AddJournalEntry(@322,QUEST)
   TakePartyItemAll("h_misc18")~ EXIT
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
~So, they've finally decided to make their move now, have they? Men! Steady yourselves and clear for action!~
   =
~Ariosh! Mount the outer fortifications and activate the traps at the city's edge.~
   == h_ariosd
~Aye, Aye!~
   == h_baldwd
~Rhade! Spread our supplies throughout the guild. Send word to the Night Masks and any sell-swords lookin' for a payday. We're gonna need as many blades as we can get after tonight's bloodbath.~
   == h_eurynd
~Copy that.~
   == h_baldwd
~Rigaldo! Call our numbers back from duty and get your men blades for the grindstone.~
   == h_rigald
~Aye, sir!~
   == h_baldwd   
~<CHARNAME>, I will need you to eliminate the Shadow Thieves within the city while we prepare for the incoming siege.~
   =
~Grab your guild armaments from Rhade and then move out. Report back when you've purged the city of these rats.~
   DO ~
      SetGlobal("h_BaldwinQuest","GLOBAL",5)
      SetGlobal("h_SpawnAriosh","GLOBAL",3)
      SetGlobal("h_GuildItems","GLOBAL",1)
      SetGlobal("h_ShadowWar","GLOBAL",1)
      AddJournalEntry(@213,QUEST)~
EXIT
