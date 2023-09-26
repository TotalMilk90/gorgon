BEGIN h_flam2d

IF ~True()~ THEN BEGIN 0
   SAY ~Halt and go no further! You stand before the Flaming Fist. We demand that you identify yourself and state the purpose of your travel.~
       +~Gender(Player1,FEMALE)~+ ~I don't care if you're a Grand Duke! I'm not telling you anything!~ GOTO 1
       +~Gender(Player1,MALE)~+ ~I don't care if you're a Grand Duke! I'm not telling you anything!~ GOTO 2
       ++ ~My name is <CHARNAME>, and I'm traveling to Nashkel to visit the carnival.~ GOTO 3
       ++ ~We are just adventurers looking to explore the region.~ GOTO 3
       ++ ~If you dare to obstruct my path, then unsheathe your weapon, and we shall settle this with blood.~ GOTO 8
END

IF ~~ THEN BEGIN 1
   SAY ~Don't get smart with me, girl. This is your last chance to comply, otherwise I will declare you an enemy of the Sword Coast.~
       ++ ~My name is <CHARNAME>, and I'm traveling to Nashkel to visit the carnival.~ GOTO 3
       ++ ~We are just adventurers looking to explore the region.~ GOTO 3
       ++ ~If you dare to obstruct my path, then unsheathe your weapon, and we shall settle this with blood.~ GOTO 8
END

IF ~~ THEN BEGIN 2
   SAY ~Don't get smart with me, boy. This is your last chance to comply, otherwise I will declare you an enemy of the Sword Coast.~
       ++ ~My name is <CHARNAME>, and I'm traveling to Nashkel to visit the carnival.~ GOTO 3
       ++ ~We are just adventurers looking to explore the region.~ GOTO 3
       ++ ~If you dare to obstruct my path, then unsheathe your weapon, and we shall settle this with blood.~ GOTO 8
END

IF ~~ THEN BEGIN 3
   SAY ~Is that so? These roads are notorious for bandit attacks. You would do wise to exercise caution.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Hold a moment. What is that in your possession? Stay your weapons while I conduct a thorough search.~
       ++ ~Now, now, there is no need for that. Allow me to pass and I'll be on my way.~ GOTO 5
       ++ ~I have nothing but sundries and rations for our travels. Now please, let us continue on our way.~ GOTO 5
       ++ ~If you dare to obstruct my path, then unsheathe your weapon, and we shall settle this with blood.~ GOTO 8
END

IF ~~ THEN BEGIN 5
   SAY ~This is black lotus! Explain yourself, quickly!~
       ++ ~Oh, you won't believe this! I picked up what I thought were innocent cooking spices, but it seems I've stumbled upon a stash of the most exotic... uh, "herbs" instead! Quite the unexpected twist, wouldn't you say?~ GOTO 7
       ++ ~This is the finest lotus to be found in the Sword Coast. How about a little taste, to allow us on our way?~ GOTO 6
       ++ ~If you dare to obstruct my path, then unsheathe your weapon, and we shall settle this with blood.~ GOTO 8
END

IF ~~ THEN BEGIN 6
   SAY ~Yes, I think that will do nicely. Move along then.~
IF ~~ THEN DO ~
   SetGlobal("h_FlamingFist","GLOBAL",4)
   AddJournalEntry(@328,QUEST)
   TakePartyItemNum("h_misc07",1)~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY ~You won't deceive me, smuggler. I am the enforcer of the law in this territory, and I hereby pronounce your sentence... death!~
IF ~~ THEN DO ~
   SetGlobal("h_FlamingFist","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 8
   SAY ~You damned fool! Men, we are under attack!~
IF ~~ THEN DO ~
   SetGlobal("h_FlamingFist","GLOBAL",3)
   AddJournalEntry(@329,QUEST)
   ReputationInc(-1)~ EXIT
END
