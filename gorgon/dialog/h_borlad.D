APPEND MTBE5

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",12) Global("h_BorlandQuest","GLOBAL",0) Global("h_SpawnZylark","GLOBAL",0)~ THEN BEGIN B_9
   SAY ~Welcome to my humble abode, strangers. What brings you here today?~
       ++ ~Greetings Borland. I've come to make arrangements regarding your new payments to the Gorgon's Eye.~ GOTO B_10
       ++ ~I know about your spice operation, Borland, and I'm shutting you down.~ GOTO GOOD_1
       ++ ~Apologies, wrong residence. I'll take my leave.~ EXIT
END

IF ~~ THEN BEGIN B_10
   SAY ~Payments? What is the meaning of this? I have no loan through you.~
       ++ ~You've been dealing lotus without the consent of the Gorgon's Eye. If you wish to continue, you'll need to start paying us a cut of your profits.~ GOTO B_11
END

IF ~~ THEN BEGIN B_11
   SAY ~Consent? Why the bloody hell do I need your consent to conduct business in my own home?~
       ++ ~Perhaps I'll inform the City Watch about your little enterprise.~ GOTO B_12
       ++ ~You haven't thought this through, friend. I have an entire guild behind me. Do you wish to make us enemies?~ GOTO B_13
       ++ ~Consider it a security fee. You'll still profit, and there won't be any... unforeseen accidents.~ GOTO B_13
       ++ ~It's time for a right lesson, Borland. Prepare yourself!~ GOTO B_14
       ++ ~Because I demand it! *unsheathe your blade* Do as I say or I'll paint the room red with your blood.~ GOTO B_14
END

IF ~~ THEN BEGIN B_12
   SAY ~Ha! Good luck with that. I've got the City Watch on my payroll, you bloke.~
       ++ ~You haven't thought this through, friend. I have an entire guild behind me. Do you wish to make us enemies?~ GOTO B_13
       ++ ~Consider it a security fee. You'll still profit, and there won't be any... unforeseen accidents.~ GOTO B_13
       ++ ~It's time for a right lesson, Borland. Prepare yourself!~ GOTO B_14
       ++ ~Because I demand it! *unsheathe your blade* Do as I say or I'll paint the room red with your blood.~ GOTO B_14
END

IF ~~ THEN BEGIN B_13
   SAY ~Very well... it's a reasonable offer. No need for violence.~
       ++ ~Glad you're a reasonable man, Borland. Someone will stop by each month to collect your payments.~ GOTO B_15
       ++ ~Sorry, but that won't quite cut it. On top of the monthly payments, I will need you to hand over your remaining black lotus, as well as all your coin.~ GOTO B_16
END

IF ~~ THEN BEGIN B_14
   SAY ~Hold! I have no wish to die over a small loss in profits. The trade will still be lucrative enough.~
       ++ ~Glad you're a reasonable man, Borland. Someone will stop by each month to collect your payments.~ GOTO B_15
       ++ ~Sorry, but that won't quite cut it. On top of the monthly payments, I will need you to hand over your remaining black lotus, as well as all your coin.~ GOTO B_16
END

IF ~~ THEN BEGIN B_15
   SAY ~You know what? Screw you and the whole bloody Gorgon's Eye! Zylark! Get out here and kill this fool!~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnZylark","GLOBAL",1)
   CreateCreature("h_zylarc",[280.352],E)~ EXIT
END

IF ~~ THEN BEGIN B_16
   SAY ~Why, you insolent little... to hell with this! Zylark! Get out here and kill this fool!~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnZylark","GLOBAL",1)
   CreateCreature("h_zylarc",[280.352],E)~ EXIT
END

IF WEIGHT #-2 ~Global("h_RigaldoQuest","GLOBAL",12) Global("h_BorlandQuest","GLOBAL",0) GlobalGT("h_SpawnZylark","GLOBAL",1) Global("h_BorlandGood","GLOBAL",0)~ THEN BEGIN B_9
   SAY ~Damn you barbarians! Take the lotus then! I'll make the payments... just know that you're making a big mistake messing with one such as me.~
IF ~~ THEN DO ~
   SetGlobal("h_BorlandQuest","GLOBAL",1)
   SetGlobal("h_SpawnZylark","GLOBAL",3)
   AddJournalEntry(@325,QUEST)
   GiveItemCreate("h_misc07",LastTalkedToBy,0,0,0)                                           
   GiveGoldForce(300)~ EXIT
END

IF ~~ THEN BEGIN GOOD_1
   SAY ~Oh? And what do you plan to do about it?~
       ++ ~Perhaps I'll inform the City Watch about your little enterprise.~ GOTO GOOD_2
       ++ ~Think of the lives you are ruining. The pain and torment that comes along with this trade. Do you have no conscious?~ GOTO GOOD_3
       ++ ~Is this truly the legacy you wish to leave, Borland? A dark taint on your reputation?~ GOTO GOOD_4
       ++ ~I'll stop you by force if I have to.~ GOTO GOOD_5
END

IF ~~ THEN BEGIN GOOD_2
   SAY ~Ha! Good luck with that. The City Watch's on my payroll, you bloke.~
       ++ ~Think of the lives you are ruining. The pain and torment that comes along with this trade. Do you have no conscious?~ GOTO GOOD_3
       ++ ~Is this truly the legacy you wish to leave, Borland? A dark taint on your reputation?~ GOTO GOOD_4
       ++ ~I'll stop you by force if I have to.~ GOTO GOOD_5
END

IF ~~ THEN BEGIN GOOD_3
   SAY ~Why should I? I don't force my product on anyone. It is their choice. Although, to be fair, the trade is so lucrative I really wouldn't care anyways.~
       ++ ~Perhaps I'll inform the City Watch about your little enterprise.~ GOTO GOOD_2
       ++ ~Is this truly the legacy you wish to leave, Borland? A dark taint on your reputation?~ GOTO GOOD_4
       ++ ~I'll stop you by force if I have to.~ GOTO GOOD_5
END

IF ~~ THEN BEGIN GOOD_4
   SAY ~You bring tears to my eyes, stranger. Tears of laughter, that is. Reputation be damned, all I care for is profit!~
       ++ ~Perhaps I'll inform the City Watch about your little enterprise.~ GOTO GOOD_2
       ++ ~Think of the lives you are ruining. The pain and torment that comes along with this trade. Do you have no conscious?~ GOTO GOOD_3
       ++ ~I'll stop you by force if I have to.~ GOTO GOOD_5
END

IF ~~ THEN BEGIN GOOD_5
   SAY ~You'll what? To hell with this! Zylark! Get out here and take care of this fool!~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnZylark","GLOBAL",1)
   SetGlobal("h_BorlandGood","GLOBAL",1)
   CreateCreature("h_zylarc",[280.352],E)~ EXIT
END

IF WEIGHT #-2 ~Global("h_RigaldoQuest","GLOBAL",12) Global("h_BorlandQuest","GLOBAL",0) GlobalGT("h_SpawnZylark","GLOBAL",1) Global("h_BorlandGood","GLOBAL",1)~ THEN BEGIN GOOD_6
   SAY ~Damn you barbarians! Take the lotus then! I'll close down for now... just know that you're making a big mistake messing with one such as me.~
IF ~~ THEN DO ~
   SetGlobal("h_BorlandQuest","GLOBAL",1)
   SetGlobal("h_SpawnZylark","GLOBAL",3)
   AddJournalEntry(@325,QUEST)
   GiveItemCreate("h_misc07",LastTalkedToBy,0,0,0)~ EXIT
END

IF WEIGHT #-1 ~Global("h_BorlandQuest","GLOBAL",1)~ THEN BEGIN B_18
   SAY ~Get out of my house you damned thief. I have not forgotten our arrangement.~ IF ~~ THEN EXIT
END

END
