APPEND ~bart3~

IF ~~ THEN BEGIN B1
   SAY @14500 /* Look, friend, I barely have enough coin to keep this place runnin'. The bandits 'round these parts are chokin' my business. I can't pay what I don't have. */
       ++ @14501 /* Well, that's unfortunate now, ain't it?. Maybe I'll just have to make an example out of you. */ GOTO B3
       ++ @14502 /* You've got one chance, and one chance only. Next time, you better have the full amount, or there'll be no mercy. Got it? */ GOTO B2
       ++ @14503 /* I get it, times are tough. Don't worry about the payment this time. */ GOTO B5
END

IF ~~ THEN BEGIN B2
   SAY @14504 /* Oh, hell, thank you, thank you! Yes, <SIRMAAM>. I understand. Next time I'll have it all here for you, yes I will. I promise. */
IF ~~ THEN DO ~
   SetGlobal("h_RedSheafDues","GLOBAL",1)
   AddJournalEntry(@533,QUEST)~ EXIT
END

IF ~~ THEN BEGIN B3
   SAY @14505 /* Please, there's got to be some other way. Give me time, I'll gather the funds, I swear! */
       ++ @14506 /* It's your lucky day, barkeep. I'm feeling rather merciful tonight. Have it ready next time, or you'll regret it. */ GOTO B2
       ++ @14507 /* Listen up, all of you! This sorry excuse for an innkeep thought he could swindle the Gorgon's Eye. Thought he could play with fire and not get burned. Well, he's about to learn a painful lesson. */ GOTO B4
END

IF ~~ THEN BEGIN B4
   SAY @14508 /* Please, don't! Have mercy! */
       ++ @14509 /* Mercy is for those who pay their debts. This man chose to cross us, and now he'll face the consequences. Consider this a warning to anyone else who thinks they can cross the Gorgon's bloody Eye! (Cut his throat.) */ DO ~
   Kill("bart3")
   SetGlobal("h_RedSheafDues","GLOBAL",1)
   SetGlobal("h_KilledBartender","GLOBAL",1)
   AddJournalEntry(@534,QUEST)
   ReputationInc(-2)~ EXIT
END

IF ~~ THEN BEGIN B5
   SAY @14510 /* Oh, thank you, thank you! Bless your heart. Next time I'll try to have it all here for you. I promise. */
IF ~~ THEN DO ~
   SetGlobal("h_RedSheafDues","GLOBAL",1)
   AddJournalEntry(@533,QUEST)~ EXIT
END

END

EXTEND_TOP BART3 0
   +~Global("h_ArioshQuest","GLOBAL",11) Global("h_RedSheafDues","GLOBAL",0)~+ @14511 /* Good evening. I've come to collect the Gorgon's Eye dues. */ GOTO B1
   +~Global("h_ArioshQuest","GLOBAL",11) Global("h_RedSheafDues","GLOBAL",0)~+ @14512 /* I'm here for the Gorgon's Eye's cut. Pay up now, and we won't have any trouble. */ GOTO B1
END