APPEND NOBL10

IF WEIGHT #-1 ~PartyHasItem("h_misc05") Global("h_GerardQuest","GLOBAL",0)~ THEN BEGIN G_0
   SAY ~Welcome, welcome, I suppose. What brings you here? I have pressing engagements that demand my attention, by jove! Time is a precious commodity, you understand.~
       ++ ~Time is indeed valuable, which is why I'll be brief. I propose a solution that could save you time and ensure your protection in the long run.~ GOTO G_1
       ++ ~I'm merely here to shed light on a certain... vulnerability in your current protection arrangement.~ GOTO G_1
       ++ ~Your 'precious' time won't be worth much if your security is as easily breached as it was tonight. Let's talk about your protection.~ GOTO G_1
END

IF ~~ THEN BEGIN G_1
   SAY ~Protection? You're one of Rigaldo's dogs, then? Hmph! I shan't debase myself by dealing with the likes of you lot. Tell him he will not be recieving another penny from me. Now, begone!~
       ++ ~I've just thwarted a theft in your manor. I think we should talk about safeguarding your valuables more effectively.~ GOTO G_2
       ++ ~I was just upstairs and, quite by accident, prevented a robbery. This bauble was the target. It's surprising how easily they got past your guards.~ GOTO G_2
       ++ ~I've just had to deal with an intruder here, someone after your necklace. It's fortunate I was here, don't you think?~ GOTO G_2
END

IF ~~ THEN BEGIN G_2
   SAY ~You've what? You have my necklace? This is outrageous! I demand you return it at once!~ IF ~~ THEN GOTO G_3
END

IF ~~ THEN BEGIN G_3
   SAY ~How dare you come into my home, manipulate events to your advantage, and then have the audacity to lecture me on protection!~ IF ~~ THEN GOTO G_4
END

IF ~~ THEN BEGIN G_4
   SAY ~Return my property immediately, or I shall have the guards deal with you.~
       +~CheckStatGT(Player1,17,STR)~+ ~Maybe you should reconsider your tone. I could've easily let that thief take your necklace, or worse. Remember, it's not just your valuables that need protection.~ DO ~SetGlobal("h_GerardStrength","GLOBAL",1)~ GOTO G_8
       +~CheckStatLT(Player1,18,STR)~+ ~Maybe you should reconsider your tone. I could've easily let that thief take your necklace, or worse. Remember, it's not just your valuables that need protection.~ GOTO G_5
       +~CheckStatGT(Player1,17,INT)~+ ~Consider this logically, Gerard. I intercepted that thief because your security failed. This incident proves that even your most precious items aren't safe.~ DO ~SetGlobal("h_GerardIntelligence","GLOBAL",1)~ GOTO G_10
       +~CheckStatLT(Player1,18,INT)~+ ~Consider this logically, Gerard. I intercepted that thief because your security failed. This incident proves that even your most precious items aren't safe.~ GOTO G_5
       +~CheckStatGT(Player1,17,WIS)~+ ~Wisdom often outweighs pride. Your safety and legacy are at stake, including this little bauble. It's prudent to foresee the benefits of our protection.~ DO ~SetGlobal("h_GerardWisdom","GLOBAL",1)~ GOTO G_12
       +~CheckStatLT(Player1,18,WIS)~+ ~Wisdom often outweighs pride. Your safety and legacy are at stake, including this little bauble. It's prudent to foresee the benefits of our protection.~ GOTO G_5
       +~CheckStatGT(Player1,17,CHR)~+ ~This piece could've been lost forever. Our protection ensures your treasures, and your well-being, remain intact.~ DO ~SetGlobal("h_GerardCharisma","GLOBAL",1)~ GOTO G_14
       +~CheckStatLT(Player1,18,CHR)~+ ~This piece could've been lost forever. Our protection ensures your treasures, and your well-being, remain intact.~ GOTO G_5
       +~CheckStatGT(Player1,17,CHR)~+ ~With all due respect, good sense goes a long way. This pendant is a reminder of vulnerabilities. Let's maintain a relationship that ensures your prosperity and safety.~ DO ~SetGlobal("h_GerardCharisma","GLOBAL",1)~ GOTO G_16
       +~CheckStatLT(Player1,18,CHR)~+ ~With all due respect, good sense goes a long way. This pendant is a reminder of vulnerabilities. Let's maintain a relationship that ensures your prosperity and safety.~ GOTO G_5
END

IF ~~ THEN BEGIN G_5
   SAY ~Oh, what a laughable display! Your feeble attempts at persuasion are as thin as the cheapest wine. Do you truly believe such paltry tricks could sway a man of my stature and breeding?~ IF ~~ THEN GOTO G_6
END

IF ~~ THEN BEGIN G_6
   SAY ~I am Gerard, scion of a noble line, not some gullible street urchin to be hoodwinked by riffraff. Your presence here is a stain upon the sanctity of my abode.~ IF ~~ THEN GOTO G_7
END

IF ~~ THEN BEGIN G_7
   SAY ~Guards! Remove this insolent cur from my sight at once. Let them feel the full wrath of my displeasure. And let this be a lesson to those who dare challenge the will of a true noble!~
IF ~~ THEN DO ~
   SetGlobal("h_GerardFail","GLOBAL",1)
   SetGlobal("h_GuardsAttack","GLOBAL",1)
   SetGlobal("h_GerardQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN G_8
   SAY ~Your show of strength is distressing. I've invested in guards to avoid such brutish methods, yet here you are, proving they're inadequate.~ IF ~~ THEN GOTO G_9
END

IF ~~ THEN BEGIN G_9
   SAY ~It's infuriating to admit, but perhaps there's a need for more... direct measures. This doesn't sit well with me at all.~ IF ~~ THEN GOTO G_18
END

IF ~~ THEN BEGIN G_10
   SAY ~So, you've outwitted my security. It's maddening to acknowledge that my efforts to protect myself seem futile against your cunning.~ IF ~~ THEN GOTO G_11
END

IF ~~ THEN BEGIN G_11
   SAY ~Your logical argument is sound, infuriatingly so. It's a bitter pill to swallow, seeing my plans unraveled by your intellect.~ IF ~~ THEN GOTO G_18
END

IF ~~ THEN BEGIN G_12
   SAY ~You speak of wisdom when all I see is a checkmate by the guild. I sought to safeguard my legacy, yet here I am, cornered by your so-called foresight.~ IF ~~ THEN GOTO G_13
END

IF ~~ THEN BEGIN G_13
   SAY ~It's exasperating to consider that your approach might be necessary, despite my efforts to the contrary.~ IF ~~ THEN GOTO G_18
END

IF ~~ THEN BEGIN G_14
   SAY ~There's a fine line between persuasion and coercion, and you tread it skillfully.~ IF ~~ THEN GOTO G_15
END

IF ~~ THEN BEGIN G_15
   SAY ~It angers me that despite my best efforts, I find myself considering yielding to your intimidating presence. It's a galling thought, knowing that I'm being pushed into a corner.~ IF ~~ THEN GOTO G_18
END

IF ~~ THEN BEGIN G_16
   SAY ~Your persuasive words are a reminder of my precarious position. I despise the thought that charm and guile might be what it takes to protect my assets, over the guards I've personally hired.~ IF ~~ THEN GOTO G_17
END

IF ~~ THEN BEGIN G_17
   SAY ~It's a frustrating realization that I might have to entertain this unwanted alliance.~ IF ~~ THEN GOTO G_18
END

IF ~~ THEN BEGIN G_18
   SAY ~It appears I am left with little choice. Your points, as aggravating as they are, cannot be ignored.~ IF ~~ THEN GOTO G_19
END

IF ~~ THEN BEGIN G_19
   SAY ~I find myself in a most distasteful position, being forced to acquiesce to the likes of your organization. Very well, I shall resume the payments, but know this is under considerable duress.~ IF ~~ THEN GOTO G_20
END

IF ~~ THEN BEGIN G_20
   SAY ~And now, if you would be so kind as to return my necklace. It is, after all, a family heirloom and not a bargaining chip to be bandied about by ruffians and rogues.~
       ++ ~I apologize for the trouble, Gerard. Here is your necklace. It was never my intention to cause any undue distress.~ DO ~TakePartyItem("h_misc05") DestroyItem("h_misc05") GiveItemCreate("h_misc05","NOBL10",0,0,0)~ GOTO G_21
       ++ ~I'm glad you see the sense in our proposal. Here's your necklace back. It's important to protect what's valuable to us, isn't it?~ DO ~TakePartyItem("h_misc05") DestroyItem("h_misc05") GiveItemCreate("h_misc05","NOBL10",0,0,0)~ GOTO G_21
       ++ ~A lesson needs to be learned here, Gerard. I think we'll keep this necklace as insurance for your future compliance.~ GOTO G_25
       ++ ~You're in no position to make demands, Gerard. The next time you think of defying us, there might be more at stake than just a family heirloom.~ GOTO G_25
END

IF ~~ THEN BEGIN G_21
   SAY ~Guards, stand down. It seems our... guest has decided to act with a modicum of civility. Very well, I shall uphold my end of this distasteful bargain and resume the payments to your guild.~ IF ~~ THEN GOTO G_22
END

IF ~~ THEN BEGIN G_22
   SAY ~But let's be abundantly clear, this doesn't change my opinion of you or your underhanded methods.~ IF ~~ THEN GOTO G_23
END

IF ~~ THEN BEGIN G_23
   SAY ~You've made your point, now take your leave. I have more important matters to attend to than entertaining the whims of thugs and cutthroats.~ IF ~~ THEN GOTO G_24
END

IF ~~ THEN BEGIN G_24
   SAY ~And do ensure that the door doesn't hit you on your way out.~
IF ~~ THEN DO ~
   SetGlobal("h_GerardDismissGuards","GLOBAL",1)
   SetGlobal("h_GerardQuest","GLOBAL",3)
   AddJournalEntry(@360,QUEST)
   MoveToPoint([612.327])~ EXIT
END

IF ~~ THEN BEGIN G_25
   SAY ~You dare to steal from me, in my own home? This is an affront of the highest order! Your actions are despicable, a testament to the depravity of your guild.~ IF ~~ THEN GOTO G_26
END

IF ~~ THEN BEGIN G_26
   SAY ~You are nothing but a common thief, a lowly scoundrel draped in the flimsy guise of a negotiator. Your guild's methods are as deplorable as they are cowardly.~ IF ~~ THEN GOTO G_27
END

IF ~~ THEN BEGIN G_27
   SAY ~To think that I entertained the notion of dealing with such riffraff! Guards, seize this miscreant at once! Show this reprobate the consequences of crossing a man of my stature.~
IF ~~ THEN DO ~
   SetGlobal("h_GuardsAttack","GLOBAL",1)
   SetGlobal("h_GerardQuest","GLOBAL",2)~ EXIT
END

IF WEIGHT #-1 ~Global("h_GerardQuest","GLOBAL",1)~ THEN BEGIN G_28
   SAY ~You've slaughtered my guards, you brute! How dare you bring such violence into my home! Your actions are beyond reprehensible, a clear display of the barbarity your guild represents.~ IF ~~ THEN GOTO G_29
END

IF ~~ THEN BEGIN G_29
   SAY ~But I see now that I have no choice. I will resume the payments, under protest. This is extortion, plain and simple.~ IF ~~ THEN GOTO G_30
END

IF ~~ THEN BEGIN G_30
   SAY ~Now, return my necklace. It's the least you can do after this display of savagery. Hand it over and leave my house at once. Your presence here is intolerable.~
       ++ ~I apologize for the trouble, Gerard. Here is your necklace. It was never my intention to cause any undue distress.~ DO ~TakePartyItem("h_misc05") DestroyItem("h_misc05") GiveItemCreate("h_misc05","NOBL10",0,0,0)~ GOTO G_31
       ++ ~I'm glad you see the sense in our proposal. Here's your necklace back. It's important to protect what's valuable to us, isn't it?~ DO ~TakePartyItem("h_misc05") DestroyItem("h_misc05") GiveItemCreate("h_misc05","NOBL10",0,0,0)~ GOTO G_31
       ++ ~A lesson needs to be learned here, Gerard. I think we'll keep this necklace as insurance for your future compliance.~ GOTO G_34
       ++ ~You're in no position to make demands, Gerard. The next time you think of defying us, there might be more at stake than just a family heirloom.~ GOTO G_34
END

IF ~~ THEN BEGIN G_31
   SAY ~Finally, a semblance of decency. It's a small consolation after the chaos you've wrought. Your guild's methods are deplorable, and this entire ordeal has been a grotesque display of power.~ IF ~~ THEN GOTO G_32
END

IF ~~ THEN BEGIN G_32
   SAY ~I will resume the payments, as I've said, but know this, you have not earned my respect, merely my compliance under duress.~ IF ~~ THEN GOTO G_33
END

IF ~~ THEN BEGIN G_33
   SAY ~Now, get out of my sight. The very air seems tainted with your presence.~
IF ~~ THEN DO ~
   SetGlobal("h_GerardQuest","GLOBAL",3)
   AddJournalEntry(@314,QUEST)
   MoveToPoint([612.327])~ EXIT
END

IF ~~ THEN BEGIN G_34
   SAY ~So, you choose to add insult to injury by keeping my heirloom as well? Your villainy knows no bounds!~ IF ~~ THEN GOTO G_35
END

IF ~~ THEN BEGIN G_35
   SAY ~I may be forced to resume payments, but you are nothing more than a common thief, a scoundrel of the lowest order. You've confirmed my worst opinions of your guild.~ IF ~~ THEN GOTO G_36
END

IF ~~ THEN BEGIN G_36
   SAY ~Keep the damned necklace, it's a small price to pay to rid my home of your foul presence. Now leave, and let me never set eyes on you again!~
IF ~~ THEN DO ~
   SetGlobal("h_KeptGerardsNecklace","GLOBAL",1)
   SetGlobal("h_GerardQuest","GLOBAL",3)
   AddJournalEntry(@314,QUEST)
   ReputationInc(-1)
   MoveToPoint([612.327])~ EXIT
END

IF WEIGHT #-1 ~Global("h_GerardQuest","GLOBAL",2)~ THEN BEGIN G_37
   SAY ~Your greed and treachery know no bounds, do they? After all the reasoned discourse, you choose to stoop to petty thievery!~ IF ~~ THEN GOTO G_38
END

IF ~~ THEN BEGIN G_38
   SAY ~You've made a mockery of any semblance of honor your guild claimed to uphold. Your words are as hollow as your morals.~ IF ~~ THEN GOTO G_39
END

IF ~~ THEN BEGIN G_39
   SAY ~I am disgusted by your actions and by the very sight of you. Take your ill-gotten gains and leave my sight.~
IF ~~ THEN DO ~
   SetGlobal("h_KeptGerardsNecklace","GLOBAL",1)
   SetGlobal("h_GerardQuest","GLOBAL",3)
   ReputationInc(-1)
   AddJournalEntry(@360,QUEST)
   MoveToPoint([612.327])~ EXIT
END

IF WEIGHT #-1 ~Or(2) Global("h_GerardQuest","GLOBAL",3) Global("h_GerardQuest","GLOBAL",4) GlobalLT("h_RigaldoQuest","GLOBAL",8)~ THEN BEGIN G_40
   SAY ~You may have won this round, but be warned, my disdain for you and your guild has only deepened. Out of my house, you deceitful cur!~
IF ~~ THEN EXIT
END

END
