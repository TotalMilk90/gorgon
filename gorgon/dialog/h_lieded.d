BEGIN h_lieded

IF WEIGHT #-1 ~Global("h_RigaldoQuest","GLOBAL",13)~ THEN BEGIN WAR_0
   SAY @7200 IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY @7201 IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",1) Global("h_DeclineBounty","GLOBAL",0)~ THEN BEGIN 1
   SAY @7202 IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @7203
       ++ @7204 GOTO 3
       ++ @7205 GOTO 2.5
       ++ @7206 GOTO 4
END

IF ~~ THEN BEGIN 2.5
   SAY @7207
       ++ @7204 GOTO 3
       ++ @7208 GOTO 4
END

IF ~~ THEN BEGIN 3
   SAY @7209
       ++ @7210 GOTO 4
       ++ @7205 GOTO 2.5
       ++ @7211 GOTO DECLINE_0
END

IF ~~ THEN BEGIN DECLINE_0
   SAY @7212
IF ~~ THEN DO ~
   SetGlobal("h_DeclineBounty","GLOBAL",1)~ EXIT
END

IF ~Global("h_DeclineBounty","GLOBAL",1)~ THEN BEGIN DECLINE_1
   SAY @7213
       ++ @7210 GOTO 4
       ++ @7214 EXIT
END

IF ~~ THEN BEGIN 4
   SAY @7215 IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @7216 IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @7217 IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @7218 IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @7219 IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @7220 IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY @7221 IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY @7222 IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY @7223
IF ~~ THEN DO ~
   SetGlobal("h_DeclineBounty","GLOBAL",2)
   SetGlobal("h_LiedelQuest","GLOBAL",2)
   AddJournalEntry(@410,QUEST)
   AddJournalEntry(@415,QUEST)
   AddJournalEntry(@419,QUEST)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",2) GlobalLT("h_BountyNumber","GLOBAL",3)~ THEN BEGIN BOUNTY_1
   SAY @7224
       +~Global("h_CarthBounty","GLOBAL",1)~+ @7225 GOTO CARTH_1
       +~Global("h_CarthBounty","GLOBAL",3)~+ @7225 GOTO CARTH_3
       +~PartyHasItem("h_misc09")~+ @7226 GOTO VAPULA_1
       +~Global("h_AishaBounty","GLOBAL",4)~+ @7227 GOTO AISHA_3
       +~Global("h_AishaBounty","GLOBAL",5)~+ @7227 GOTO AISHA_1
       ++ @7228 EXIT
END

IF ~~ THEN BEGIN CARTH_1
   SAY @7229
       ++ @7230 GOTO CARTH_2
END

IF ~~ THEN BEGIN CARTH_2
   SAY @7231
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@413,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN CARTH_3
   SAY @7232
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@414,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN VAPULA_1
   SAY @7229
       ++ @7233 GOTO VAPULA_2
END

IF ~~ THEN BEGIN VAPULA_2
   SAY @7234 IF ~~ THEN GOTO VAPULA_3
END

IF ~~ THEN BEGIN VAPULA_3
   SAY @7231
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@418,QUEST_DONE)
   TakePartyItem("h_misc09")
   DestroyItem("h_misc09")
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN AISHA_1
   SAY @7229
       ++ @7235 GOTO AISHA_2
END

IF ~~ THEN BEGIN AISHA_2
   SAY @7231
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@425,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN AISHA_3
   SAY @7236
IF ~~ THEN DO ~
   SetGlobal("h_AishaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@424,QUEST_DONE)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",2) Global("h_BountyNumber","GLOBAL",3)~ THEN BEGIN MIDDLE_0
   SAY @7237 IF ~~ THEN EXIT
END

          ///////////////////////////////////
          //////// Second Bounty List ///////
          ///////////////////////////////////


IF ~Global("h_LiedelQuest","GLOBAL",3)~ THEN BEGIN SECOND_0
   SAY @7238
       ++ @7239 GOTO SECOND_1
       ++ @7211 EXIT
END

IF ~~ THEN BEGIN SECOND_1
   SAY @7240 IF ~~ THEN GOTO SECOND_2
END

IF ~~ THEN BEGIN SECOND_2
   SAY @7241 IF ~~ THEN GOTO SECOND_3
END

IF ~~ THEN BEGIN SECOND_3
   SAY @7242 IF ~~ THEN GOTO SECOND_4
END

IF ~~ THEN BEGIN SECOND_4
   SAY @7243 IF ~~ THEN GOTO SECOND_5
END

IF ~~ THEN BEGIN SECOND_5
   SAY @7244 IF ~~ THEN GOTO SECOND_6
END

IF ~~ THEN BEGIN SECOND_6
   SAY @7245 IF ~~ THEN GOTO SECOND_7
END

IF ~~ THEN BEGIN SECOND_7
   SAY @7246 IF ~~ THEN GOTO SECOND_8
END

IF ~~ THEN BEGIN SECOND_8
   SAY @7247 IF ~~ THEN GOTO SECOND_9
END

IF ~~ THEN BEGIN SECOND_9
   SAY @7223
IF ~~ THEN DO ~
   SetGlobal("h_LiedelQuest","GLOBAL",4)
   SetGlobal("h_SpawnEuropea","GLOBAL",1)
   SetGlobal("h_KatredaBounty","GLOBAL",1)
   SetGlobal("h_ZhontacBounty","GLOBAL",1)
   AddJournalEntry(@426,QUEST)
   AddJournalEntry(@431,QUEST)
   AddJournalEntry(@438,QUEST)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",4) GlobalLT("h_BountyNumber","GLOBAL",6)~ THEN BEGIN BOUNTY_2
   SAY @7224
       +~Global("h_CarthBounty","GLOBAL",1)~+ @7225 GOTO CARTH_1
       +~Global("h_CarthBounty","GLOBAL",3)~+ @7225 GOTO CARTH_3
       +~PartyHasItem("h_misc09")~+ @7226 GOTO VAPULA_1
       +~Global("h_AishaBounty","GLOBAL",4)~+ @7227 GOTO AISHA_3
       +~Global("h_AishaBounty","GLOBAL",5)~+ @7227 GOTO AISHA_1
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
       +~PartyHasItem("h_misc11")~+ @7248 GOTO EURO_1
       +~PartyHasItem("h_misc10")~+ @7248 GOTO EURO_3
       +~Global("h_KatredaBounty","GLOBAL",2)~+ @7249 GOTO KATREDA_1
       +~Global("h_KatredaBounty","GLOBAL",5)~+ @7249 GOTO KATREDA_3
       +~Global("h_MagnusBounty","GLOBAL",3)~+ @7250 GOTO ZHONTAC_1
       +~Global("h_KilledMagnus","GLOBAL",2)~+ @7250 GOTO ZHONTAC_3
       +~Global("h_ZhontacBounty","GLOBAL",4)~+ @7250 GOTO ZHONTAC_5
       ++ @7228 EXIT
END

IF ~~ THEN BEGIN EURO_1
   SAY @7229
       ++ @7251 GOTO EURO_2
END

IF ~~ THEN BEGIN EURO_2
   SAY @7252
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc11")
   DestroyItem("h_misc11")
   AddJournalEntry(@429,QUEST_DONE)
   GiveGoldForce(1000)
   AddExperienceParty(600)
   ReputationInc(-2)~ EXIT
END

IF ~~ THEN BEGIN EURO_3
   SAY @7229
       ++ @7253 GOTO EURO_4
END

IF ~~ THEN BEGIN EURO_4
   SAY @7254
IF ~~ THEN DO ~
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc10")
   DestroyItem("h_misc10")
   AddJournalEntry(@430,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN KATREDA_1
   SAY @7229
       ++ @7255 GOTO KATREDA_2
END

IF ~~ THEN BEGIN KATREDA_2
   SAY @7256
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@433,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN KATREDA_3
   SAY @7236
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@437,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN ZHONTAC_1
   SAY @7229
       ++ @7257 GOTO ZHONTAC_2
END

IF ~~ THEN BEGIN ZHONTAC_2
   SAY @7258
IF ~~ THEN DO ~
   SetGlobal("h_MagnusBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@444,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN ZHONTAC_3
   SAY @7229
       ++ @7259 GOTO ZHONTAC_4
END

IF ~~ THEN BEGIN ZHONTAC_4
   SAY @7260
IF ~~ THEN DO ~
   SetGlobal("h_KilledMagnus","GLOBAL",3)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@445,QUEST_DONE)
   GiveGoldForce(1000)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN ZHONTAC_5
   SAY @7229
       ++ @7261 GOTO ZHONTAC_6
END

IF ~~ THEN BEGIN ZHONTAC_6
   SAY @7262
IF ~~ THEN DO ~
   SetGlobal("h_ZhontacBounty","GLOBAL",5)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@440,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",4) Global("h_BountyNumber","GLOBAL",6)~ THEN BEGIN RID_0
   SAY @7263 IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",5)~ THEN BEGIN FINAL_0
   SAY @7264 IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("h_BetrayBaldwin","GLOBAL",5)~ THEN BEGIN BETRAY_1
   SAY @7265 IF ~~ THEN GOTO BETRAY_2
END

IF ~~ THEN BEGIN BETRAY_2
   SAY @7266
IF ~~ THEN DO ~
   EscapeArea()~ EXIT
END