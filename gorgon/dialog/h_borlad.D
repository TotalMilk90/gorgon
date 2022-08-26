APPEND MTBE5

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",12) Global("h_BorlandQuest","GLOBAL",0)~ THEN BEGIN B_9
   SAY ~Welcome to my home, friends. What is it I can do for you today?~
       ++ ~Hello Borland. I am here to make arrangements regarding your new payments to the Gorgon's Eye.~ GOTO B_10
       ++ ~I know about your little spice operation, Borland, and I'm shutting you down. I will no longer tolerate your drugs infiltrating this city.~ GOTO GOOD_1
       ++ ~Sorry, wrong house. I shall take my leave now.~ EXIT
END

IF ~~ THEN BEGIN B_10
   SAY ~Payments? What is the meaning of this? I have no loan through you.~
       ++ ~You've been selling black lotus without the consent of the Gorgon's Eye. If you wish to continue you will need to pay us a cut of your profits.~ GOTO B_11
       ++ ~Well, you've been selling black lotus here and I want a cut. If you don't do as I say I'll use this dagger to cut your teeth out one by one.~ GOTO B_14
END

IF ~~ THEN BEGIN B_11
   SAY ~Consent? Why the bloody hell do I need your consent to conduct business in my own home?~
       ++ ~Maybe I'll go tell the guards of your little operation here and see what they think.~ GOTO B_12
       ++ ~Just make it easier on yourself, lad. Do you really wish to make us your enemies?~ GOTO B_13
       ++ ~You will do as I say or you will be killed.~ GOTO B_14
END

IF ~~ THEN BEGIN B_12
   SAY ~Go ahead, they won't listen to you. I have too much renown in this city. Plus, a few of them are on my client list.~
       ++ ~Just make it easier on yourself, lad. Do you really wish to make us your enemies?~ GOTO B_13
       ++ ~You will pay us or you will be killed.~ GOTO B_14
END

IF ~~ THEN BEGIN B_13
   SAY ~*sigh* That is a fair point. I will comply then, as I have no wish to die over a loss in profits. The trade will still be lucrative enough.~
       ++ ~Glad you're a reasonable man Borland. Someone will stop by each month to collect your payments.~ GOTO B_15
       ++ ~Sorry but that won't quite cut it. On top of the monthly payments, I will need you to hand over your remaining black lotus as well as all your coin.~ GOTO B_16
END

IF ~~ THEN BEGIN B_14
   SAY ~*sigh* Alright, I will comply then. I have no wish to die over a loss in profits. The trade will still be lucrative enough.~
       ++ ~Glad you're a reasonable man Borland. Someone will stop by each month to collect your payments.~ GOTO B_15
       ++ ~Sorry but that won't quite cut it. On top of the monthly payments, I will need you to hand over your remaining black lotus as well as all your coin.~ GOTO B_16
END

IF ~~ THEN BEGIN B_15
   SAY ~You know, this used to be a respectable town before you gangsters came and took over.~
IF ~~ THEN DO ~
   SetGlobal("h_BorlandQuest","GLOBAL",1)
   SetGlobal("h_GuildThieves","GLOBAL",5)
   AddJournalEntry(@325,QUEST)~ EXIT
END

IF ~~ THEN BEGIN B_16
   SAY ~What a bloodthirsty bunch of louts you are! You know, this used to be a respectable town before you gangsters came and took over.~
IF ~~ THEN DO ~
   SetGlobal("h_BorlandQuest","GLOBAL",1)
   SetGlobal("h_GuildThieves","GLOBAL",5)
   AddJournalEntry(@325,QUEST)
   GiveItemCreate("h_misc07",LastTalkedToBy,0,0,0)                                           
   GiveGoldForce(300)~ EXIT
END

IF WEIGHT #-1 ~Global("h_BorlandQuest","GLOBAL",1)~ THEN BEGIN B_18
   SAY ~Get out of my house you damned thief. I have not forgotten our arrangement.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GOOD_1
   SAY ~Is that so? And what do you plan to do about it?~
       ++ ~If you don't comply then I will turn you into the authorities.~ GOTO GOOD_2
       ++ ~Do you not care about all the lives you are ruining?~ GOTO GOOD_3
END

IF ~~ THEN BEGIN GOOD_2
   SAY ~Go ahead, they won't listen to you. I have too much renown in this city. Plus, a few of them are on my client list.~
       ++ ~Do you not care about all the lives you are ruining?~ GOTO GOOD_3
       ++ ~Then I have no choice but to use violence. Cease your drug peddling at once or I shall beat you mercilessly until you break.~ GOTO GOOD_4
END

IF ~~ THEN BEGIN GOOD_3
   SAY ~Why should I? I don't force my product on anyone. It is 100% their choice. Either way, the trade is so lucrative I probably wouldn't care anyways.~
       ++ ~If you don't comply then I will turn you into the authorities.~ GOTO GOOD_2
       ++ ~Then I have no choice but to use violence. Cease your drug peddling at once or I shall beat you mercilessly until you break.~ GOTO GOOD_4
END

IF ~~ THEN BEGIN GOOD_4
   SAY ~Damn you barbarians! Take the lotus then! Just know that you are making a big mistake messing with one such as me.~
IF ~~ THEN DO ~
   SetGlobal("h_BorlandQuest","GLOBAL",2)
   SetGlobal("h_GuildThieves","GLOBAL",5)
   AddJournalEntry(@325,QUEST)
   GiveItemCreate("h_misc07",LastTalkedToBy,0,0,0)                                           
   GiveGoldForce(300)~ EXIT
END

IF WEIGHT #-1 ~Global("h_BorlandQuest","GLOBAL",2)~ THEN BEGIN GOOD_5
   SAY ~I'd watch your back around here if I was you.~ IF ~~ THEN EXIT
END


END
