BEGIN h_meredd

IF WEIGHT #-1 ~Global("h_MerediaQuest","GLOBAL",1)~ THEN BEGIN Q_0
   SAY ~<CHARNAME>! If you've a moment to spare, I have a little favor to ask...~
       ++ ~Of course, Meredia, what's wrong?~ GOTO Q_1
       ++ ~I'm in a hurry, sweetie, so make it quick.~GOTO Q_1
       ++ ~I don't have time for this right now.~ GOTO Q_3
END

IF ~~ THEN BEGIN Q_1
   SAY ~I'm beginning to fret over Ilena, one of my girls. She had a rendezvous with a gentleman last night and has yet to return.~ IF ~~ THEN GOTO Q_2
END

IF ~~ THEN BEGIN Q_2
   SAY ~Would you be a dear and check on her for me? It's the house next door to Taerom's and the clients name was Isley.~
       ++ ~Of course. I'll go check on her.~ GOTO Q_4
       ++ ~I don't have time for this right now.~ GOTO Q_3
END

IF ~~ THEN BEGIN Q_3
   SAY ~Oh, how charming.~
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN Q_4
   SAY ~Thank you, my dear. I'm starting to fear for her safety.~
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",2)
   SetGlobal("h_SpawnGalatea","GLOBAL",1)
   AddJournalEntry(@710,QUEST)~ EXIT
END

IF WEIGHT #-2 ~GlobalGT("h_MerediaQuest","GLOBAL",1) GlobalLT("h_MerediaQuest","GLOBAL",4)~ THEN BEGIN Q_5
   SAY ~Have you brought any news of Ilena?~
       ++ ~Nothing fresh, I'm afraid.~ EXIT
       +~PartyHasItem("h_misc16")~+ ~Isley attacked his wife and left her gasping on the floor. I found this scrap of fabric and a helmet at the scene.~ GOTO Q_6
       +~Global("h_IlenaDied","GLOBAL",1)~+ ~Meredia, I'm sorry. I was able to take out Isley, but not before he took Ilena's life.~ GOTO DEAD_0
END

IF ~~ THEN BEGIN Q_6
   SAY ~This color matches Ilena's dress!~
IF ~~ THEN DO ~
   TakePartyItem("h_misc16")
   DestroyItem("h_misc16")~ GOTO Q_7
END

IF ~~ THEN BEGIN Q_7
   SAY ~Wait... no. The fabric isn't right. This type of stitching is more akin to military garb. The helmet you found would suggest the same.~ IF ~~ THEN GOTO Q_8
END

IF ~~ THEN BEGIN Q_8
   SAY ~This isn't good. I can only hope Ilena's still breathing, even if held captive by that wretch, Isley!~ IF ~~ THEN GOTO Q_9
END

IF ~~ THEN BEGIN Q_9
   SAY ~If we can figure out the style of uniform, it might just lead us to them!~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnIsley","GLOBAL",1)
   AddJournalEntry(@712,QUEST)~ EXIT
END

IF WEIGHT #-3 ~Global("h_MerediaQuest","GLOBAL",4)~ THEN BEGIN ALIVE_0
   SAY ~Ilena has returned safe and sound. You are an honorable <MANWOMAN>, <CHARNAME>.~ IF ~~ THEN GOTO ALIVE_1
END

IF ~~ THEN BEGIN ALIVE_1
   SAY ~We've all chipped in a bit of gold for you, as a token of our appreciation.~ IF ~~ THEN GOTO ALIVE_2
END

IF ~~ THEN BEGIN ALIVE_2
   SAY ~Thank you, sweetie, for everything you've done.~
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",5)
   AddJournalEntry(@715,QUEST_DONE)
   AddExperienceParty(1000)
   GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN DEAD_0
   SAY ~Ilena... I'm sorry.~ IF ~~ THEN GOTO DEAD_1
END

IF ~~ THEN BEGIN DEAD_1
   SAY ~Thank you, <CHARNAME>, for doing all you could.~
IF ~~ THEN DO ~
   SetGlobal("h_MerediaQuest","GLOBAL",5)
   AddJournalEntry(@716,QUEST_DONE)
   AddExperienceParty(800)~ EXIT
END



IF ~Global("h_Meredia","GLOBAL",0) Global("h_EndMeredia","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Welcome to the Gorgon's Den. We've got a lovely selection of skilled staff ready to attend your every desire.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Our rates are 40 gold for the hour. Guild members get half off. Interested in a bit of... company?~
       ++ ~Not at this time, thanks.~ GOTO 2
       +~GlobalGT("h_BaldwinQuest","GLOBAL",0) PartyGoldGT(19)~+ ~Oh, yes, I'd quite like that.~ GOTO 4
       +~Global("h_BaldwinQuest","GLOBAL",0) PartyGoldGT(39)~+ ~Oh, yes, I'd quite like that.~ GOTO 3
       +~Global("h_GilbaldQuest","GLOBAL",3)~+ ~I'm looking into a man named Xevec. Do you know anything about him?~ GOTO G_0
END

IF ~~ THEN BEGIN 2
   SAY ~We're always here if you fancy a visit.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
   SAY ~Excellent choice. Right this way, and I'll introduce you to our available whores this evening.~
IF ~~ THEN DO ~
   SetGlobal("h_EndMeredia","GLOBAL",1)
   TakePartyGold(40)
   ClearAllActions()
   StartCutSceneMode()
   CutSceneId(Player1)
   FadeToColor([20.0],0)
   Wait(2)
   Rest()
   ActionOverride(Player2,Rest())
   ActionOverride(Player3,Rest())
   ActionOverride(Player4,Rest())
   ActionOverride(Player5,Rest())
   ActionOverride(Player6,Rest())
   Wait(2)
   FadeFromColor([20.0],0)
   Wait(1)
   EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 4
   SAY ~Excellent choice. Right this way, and I'll introduce you to our available whores this evening.~
IF ~~ THEN DO ~
   SetGlobal("h_EndMeredia","GLOBAL",1)
   TakePartyGold(20)
   ClearAllActions()
   StartCutSceneMode()
   CutSceneId(Player1)
   FadeToColor([20.0],0)
   Wait(2)
   Rest()
   ActionOverride(Player2,Rest())
   ActionOverride(Player3,Rest())
   ActionOverride(Player4,Rest())
   ActionOverride(Player5,Rest())
   ActionOverride(Player6,Rest())
   Wait(2)
   FadeFromColor([20.0],0)
   Wait(1)
   EndCutSceneMode()~ EXIT
END

IF ~Global("h_EndMeredia","GLOBAL",1)~ THEN BEGIN 5
   SAY ~I trust everything was to your satisfaction. Do come back to us soon, won't you?~
IF ~~ THEN DO ~
   SetGlobal("h_EndMeredia","GLOBAL",0)~ EXIT
END

IF ~Global("h_Meredia","GLOBAL",1) Global("h_EndMeredia","GLOBAL",0)~ THEN BEGIN 20
   SAY ~Welcome, <CHARNAME>. As the new guildmaster, you're entitled to our services, free of charge, naturally.~
       ++ ~Oh, yes, I'd quite like that.~ GOTO 21
       ++ ~Not at this time, thanks.~ EXIT
       +~Global("h_GilbaldQuest","GLOBAL",3)~+ ~I'm looking into a man named Xevec. Do you know anything about him?~  GOTO G_0
END

IF ~~ THEN BEGIN 21
   SAY ~Excellent choice. Right this way, and I'll introduce you to our available whores this evening.~
IF ~~ THEN DO ~
   SetGlobal("h_EndMeredia","GLOBAL",1)
   ClearAllActions()
   StartCutSceneMode()
   CutSceneId(Player1)
   FadeToColor([20.0],0)
   Wait(2)
   Rest()
   ActionOverride(Player2,Rest())
   ActionOverride(Player3,Rest())
   ActionOverride(Player4,Rest())
   ActionOverride(Player5,Rest())
   ActionOverride(Player6,Rest())
   Wait(2)
   FadeFromColor([20.0],0)
   Wait(1)
   EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN G_0
   SAY ~Xevec, darling? I know him well. In fact, he spent quite the night with us just yesterday. What can I tell you?~
       ++ ~Did he say or do anything that was unusual last night?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_1
       ++ ~Anythiung specific you can tell me about him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_3
       ++ ~Can you check to see if this coin matches any he spent here?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_4
       ++ ~Any idea where I might find him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_7
END

IF ~~ THEN BEGIN G_1
   SAY ~He couldn't stop babbling about some new venture that he believed would change his life.~ IF ~~ THEN GOTO G_2
END

IF ~~ THEN BEGIN G_2
   SAY ~Whoever hired him handed over a hefty sum up front. He decided to celebrate his success right here.~
       ++ ~Anythiung specific you can tell me about him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_3
       ++ ~Can you check to see if this coin matches any he spent here?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_4
       ++ ~Any idea where I might find him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_7
       +~GlobalGT("h_MerediaNumber","GLOBAL",3)~+ ~Thanks, Meredia. You've been great.~ GOTO G_9
END

IF ~~ THEN BEGIN G_3
   SAY ~Well, he's not the brightest man, to be sure. He's violent, crass, and always on the lookout for the next get-rich-quick scheme. Obviously, it's never worked out for him.~
       ++ ~Did he say or do anything that was unusual last night?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_1
       ++ ~Can you check to see if this coin matches any he spent here?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_4
       ++ ~Any idea where I might find him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_7
       +~GlobalGT("h_MerediaNumber","GLOBAL",3)~+ ~Thanks, Meredia. You've been great.~ GOTO G_9
END

IF ~~ THEN BEGIN G_4
   SAY ~It will be tedious, as we don't seperate payments, but I can check through last nights count. Wait here a moment.~ IF ~~ THEN GOTO G_5
END

IF ~~ THEN BEGIN G_5
   SAY ~...~ IF ~~ THEN GOTO G_6
END

IF ~~ THEN BEGIN G_6
   SAY ~By Sune! They're all fakes! Hundreds of them! How did I not see? It has to be Xevec's doing; no one else spent like him last night!~
       ++ ~Did he say or do anything that was unusual last night?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_1
       ++ ~Anythiung specific you can tell me about him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_3
       ++ ~Any idea where I might find him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_7
       +~GlobalGT("h_MerediaNumber","GLOBAL",3)~+ ~Thanks, Meredia. You've been great.~ GOTO G_9
END

IF ~~ THEN BEGIN G_7
   SAY ~He lives somewhere on the streets of Beregost, but I don't know where exactly.~ IF ~~ THEN GOTO G_8
END

IF ~~ THEN BEGIN G_8
   SAY ~I have seen him in the north-end on occasion. You might want to first check there.~
       ++ ~Did he say or do anything that was unusual last night?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_1
       ++ ~Anythiung specific you can tell me about him?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_3
       ++ ~Can you check to see if this coin matches any he spent here?~ DO ~IncrementGlobal("h_MerediaNumber","GLOBAL",1)~ GOTO G_4
       +~GlobalGT("h_MerediaNumber","GLOBAL",3)~+ ~Thanks, Meredia. You've been great.~ GOTO G_9
END

IF ~~ THEN BEGIN G_9
   SAY ~Don't be a stranger, <CHARNAME>. It's always such a delight to see you.~
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",4)
   SetGlobal("h_SpawnXevec","GLOBAL",1)
   AddJournalEntry(@612,QUEST)~ EXIT
END



