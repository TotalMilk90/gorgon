BEGIN h_flam2d

IF ~True()~ THEN BEGIN 0
   SAY ~Halt and go no further! You are in the presence of the Flaming Fist. We demand that you identify yourselves and the purpose of your travel.~
       +~Gender(Player1,FEMALE)~+ ~I don't care who you are. I'm not telling you my name nor where I am heading.~ GOTO 1
       +~Gender(Player1,MALE)~+ ~I don't care who you are. I'm not telling you my name nor where I am heading.~ GOTO 2
       ++ ~My name is <CHARNAME>, and we are traveling to Nashkel to visit the carnival.~ GOTO 3
       ++ ~We are just adventurers looking to explore the region.~ GOTO 3
       ++ ~No, I don't think I'll be doing that. If you'll not step aside then draw steel and prepare to die!~ GOTO 8
END

IF ~~ THEN BEGIN 1
   SAY ~Don't get smart with me, girl. This is your last chance to comply, otherwise I will declare you an enemy of the Sword Coast.~
       ++ ~My name is <CHARNAME>, and we are traveling to Nashkel to visit the carnival.~ GOTO 3
       ++ ~We are just adventurers looking to explore the region.~ GOTO 3
       ++ ~No, I don't think I'll be doing that. If you'll not step aside then draw steel and prepare to die!~ GOTO 8
END

IF ~~ THEN BEGIN 2
   SAY ~Don't get smart with me, boy. This is your last chance to comply, otherwise I will declare you an enemy of the Sword Coast.~
       ++ ~My name is <CHARNAME>, and we are traveling to Nashkel to visit the carnival.~ GOTO 3
       ++ ~We are just adventurers looking to explore the region.~ GOTO 3
       ++ ~No, I don't think I'll be doing that. If you'll not step aside then draw steel and prepare to die!~ GOTO 8
END

IF ~~ THEN BEGIN 3
   SAY ~Hmm. Is that so? These roads are often frequented by bandits and the like. You would do well to watch yourself around here.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Hold a moment. What is that you have there? Stay your weapons while I do a proper search upon your person.~
       ++ ~Now, now, there is no need for that. Allow me to pass and I'll be on my way.~ GOTO 5
       ++ ~I have nothing but sundries and rations for our travels. Now please, let us continue on our way.~ GOTO 5
       ++ ~No, I don't think I'll be doing that. If you'll not step aside then draw steel and prepare to die!~ GOTO 8
END

IF ~~ THEN BEGIN 5
   SAY ~This is black lotus! Explain yourselves, and do it quickly!~
       ++ ~What? How did that get in there? I bought some cooking spices from a merchant before we departed, he must have given me the wrong items.~ GOTO 7
       ++ ~It is the finest lotus to be found in the Sword Coast. How about a sample, to allow us on our way?~ GOTO 6
       ++ ~No, I don't think I'll be doing that. If you'll not step aside then draw steel and prepare to die!~ GOTO 8
END

IF ~~ THEN BEGIN 6
   SAY ~Yes, I think that will do nicely. Move along then.~
IF ~~ THEN DO ~
   SetGlobal("h_FlamingFist","GLOBAL",4)
   AddJournalEntry(@328,QUEST)
   TakePartyItemNum("h_misc07",1)~ EXIT
END

IF ~~ THEN BEGIN 7
   SAY ~Nice try, smuggler. You take me a fool then? I am the law in this region and I sentence you to death!~
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
