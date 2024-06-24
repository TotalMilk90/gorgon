BEGIN h_prufld

IF ~True()~ THEN BEGIN 0
   SAY @54000 /* Stars in the sky, flowers in the air... Everything's dancing, don't you see? */
       ++ @54001 /* I can't see any stars because we are inside. */ EXIT
       +~Global("h_PruflasQuest","GLOBAL",1)~+ @54002 /* Pruflas, lad, what seems to be the problem here? You need to leave this place and return home to your wife. */ GOTO 1
       +~Global("h_PruflasQuest","GLOBAL",2)~+ @54003 /* Alright, Pruflas. If reaching nirvana is the only way to get you to leave, then I'll do it. */ GOTO 9
END

IF ~~ THEN BEGIN 1
   SAY @54004 /* Oh, yes... my wife... brr. Cold steel and bitter words, she is. But in here, it's like a warm embrace. No judgment, just... peace. Can't you feel it too? It's like a dream. */
       ++ @54005 /* Your wife needs you back home, Pruflas. She can't make it on her own. */ GOTO 2
       ++ @54006 /* I understand that it feels comforting in here, but you have real responsibilities out there. */ GOTO 2
       ++ @54007 /* You're going to feel cold steel in here too if you don't scram! */ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @54008 /* No, I shan't be leaving... not until I've reached nirvana. */
       ++ @54009 /* What are you talking about? */ GOTO 3
       ++ @54010 /* I'm not dealing with this. */ EXIT
END

IF ~~ THEN BEGIN 3
   SAY @54011 /* They regard the lotus with disapproval, as if it were a malevolent force. Yet, in reality, it bestows wonder, joy, happiness, and purpose upon life! It's truly magnificent. */ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @54012 /* There exists a state of nirvana attainable with a precise measure of lotus, wherein all truths are laid bare. */ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @54013 /* However, I cannot embark on this journey alone, once I partake in the lotus, its effects slip my memory until they wane. */ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @54014 /* I implore you to administer doses until I achieve the perfect equilibrium. Be cautious not to give too much, for it may lead to my demise, yet too little will be insufficient. */ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @54015 /* It is imperative to strike the right balance. So, if you aid me in attaining nirvana, I pledge to return to my wife. */
       ++ @54016 /* Forget it! I'm not going to help you with this. */ GOTO 8
       ++ @54017 /* Alright, sounds simple enough. */ GOTO 9
END

IF ~~ THEN BEGIN 8
   SAY @54018 /* Well, then, I'm just staying right put until I get there myself. */
IF ~~ THEN DO ~
   SetGlobal("h_PruflasQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 9
   SAY @54019 /* Joyous news! Remember, too little won't be enough, but an excess could be fatal. */ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 
   SAY @54020 /* Should I become entirely incoherent, or begin to lose consciousness, you can use an antidote to bring me back to my senses, and we can start afresh. */
       ++ @54021 /* (Administer a small dose.) */ GOTO DOSE_2
       ++ @54022 /* (Administer a medium dose.) */ GOTO DOSE_3
       ++ @54023 /* (Administer a large dose.) */ GOTO DOSE_4
       ++ @54024 /* I can't help you with this, Pruflas. */ GOTO 8
END

IF ~~ THEN BEGIN 11 
   SAY @54025 /* Sober as a bull, now, Let's give it another crack, shall we? */
       ++ @54021 /* (Administer a small dose.) */ GOTO DOSE_2
       ++ @54022 /* (Administer a medium dose.) */ GOTO DOSE_3
       ++ @54023 /* (Administer a large dose.) */ GOTO DOSE_4
       ++ @54026 /* (Use an antidote to return Pruflas to baseline.) */ GOTO 11
       ++ @54024 /* I can't help you with this, Pruflas. */ GOTO 8
END

IF ~~ THEN BEGIN DOSE_2
   SAY @54027 /* If trees could talk, they'd probably gossip about the weather all day. 'Did you hear what that cloud said?' */
       ++ @54021 /* (Administer a small dose.) */ GOTO DOSE_4
       ++ @54022 /* (Administer a medium dose.) */ GOTO DOSE_5
       ++ @54023 /* (Administer a large dose.) */ GOTO DOSE_6
       ++ @54026 /* (Use an antidote to return Pruflas to baseline.) */ GOTO 11
END

IF ~~ THEN BEGIN DOSE_3
   SAY @54028 /* Have you ever seen a snail tap dance? It's quite the spectacle, I assure you. */
       ++ @54021 /* (Administer a small dose.) */ GOTO DOSE_5
       ++ @54022 /* (Administer a medium dose.) */ GOTO DOSE_6
       ++ @54023 /* (Administer a large dose.) */ GOTO DOSE_7
       ++ @54026 /* (Use an antidote to return Pruflas to baseline.) */ GOTO 11
END

IF ~~ THEN BEGIN DOSE_4
   SAY @54029 /* Fish have this mysterious aura, like they're keeping the secrets of the deep sea. What do you think they're hiding? */
       ++ @54021 /* (Administer a small dose.) */ GOTO DOSE_6
       ++ @54022 /* (Administer a medium dose.) */ GOTO DOSE_7
       ++ @54023 /* (Administer a large dose.) */ GOTO DOSE_8
       ++ @54026 /* (Use an antidote to return Pruflas to baseline.) */ GOTO 11
END

IF ~~ THEN BEGIN DOSE_5
   SAY @54030 /* I'm convinced that mushrooms are time travelers from the 5th century. */
       ++ @54021 /* (Administer a small dose.) */ GOTO DOSE_7
       ++ @54022 /* (Administer a medium dose.) */ GOTO DOSE_8
       ++ @54023 /* (Administer a large dose.) */ GOTO DOSE_9
       ++ @54026 /* (Use an antidote to return Pruflas to baseline.) */ GOTO 11
END

IF ~~ THEN BEGIN DOSE_6
   SAY @54031 /* The oak tree...it tells stories in whispers...I'll listen...tomorrow. */
       ++ @54021 /* (Administer a small dose.) */ GOTO DOSE_8
       ++ @54022 /* (Administer a medium dose.) */ GOTO DOSE_9
       ++ @54023 /* (Administer a large dose.) */ GOTO DOSE_10
       ++ @54026 /* (Use an antidote to return Pruflas to baseline.) */ GOTO 11
END

IF ~~ THEN BEGIN DOSE_7
   SAY @54032 /* The fireflies...they painted the night...so sparkly. */
       ++ @54021 /* (Administer a small dose.) */ GOTO DOSE_9
       ++ @54022 /* (Administer a medium dose.) */ GOTO DOSE_10
       ++ @54023 /* (Administer a large dose.) */ GOTO DOSE_11
       ++ @54026 /* (Use an antidote to return Pruflas to baseline.) */ GOTO 11
END

IF ~~ THEN BEGIN DOSE_8
   SAY @54033 /* You know, I once saw a squirrel...it was...so...squirrelly. */
       ++ @54021 /* (Administer a small dose.) */ GOTO DOSE_10
       ++ @54022 /* (Administer a medium dose.) */ GOTO DOSE_11
       ++ @54023 /* (Administer a large dose.) */ GOTO DOSE_12
       ++ @54026 /* (Use an antidote to return Pruflas to baseline.) */ GOTO 11
END

IF ~~ THEN BEGIN DOSE_9
   SAY @54034 /* Clouds are like fluffy...pillows...floating...in the...sky... */
       ++ @54021 /* (Administer a small dose.) */ GOTO DOSE_11
       ++ @54022 /* (Administer a medium dose.) */ GOTO DOSE_12
       ++ @54023 /* (Administer a large dose.) */ GOTO DOSE_13
       ++ @54026 /* (Use an antidote to return Pruflas to baseline.) */ GOTO 11
END

IF ~~ THEN BEGIN DOSE_10
   SAY @54035 /* Mushrooms...umbrellas...for gnomes...and...tiny...gnome...hats... */
       ++ @54021 /* (Administer a small dose.) */ GOTO DOSE_12
       ++ @54022 /* (Administer a medium dose.) */ GOTO DOSE_13
       ++ @54023 /* (Administer a large dose.) */ GOTO DOSE_14
       ++ @54026 /* (Use an antidote to return Pruflas to baseline.) */ GOTO 11
END

IF ~~ THEN BEGIN DOSE_11
   SAY @54036 /* Rocks...patient...like...grandparents...who've...seen...it...all... */
       ++ @54021 /* (Administer a small dose.) */ GOTO DOSE_13
       ++ @54022 /* (Administer a medium dose.) */ GOTO DOSE_14
       ++ @54023 /* (Administer a large dose.) */ GOTO DOSE_15
       ++ @54026 /* (Use an antidote to return Pruflas to baseline.) */ GOTO 11
END

IF ~~ THEN BEGIN DOSE_12
   SAY @54037 /* Fish...great swimmers...never late...for...dinner...parties... */
       ++ @54021 /* (Administer a small dose.) */ GOTO DOSE_14
       ++ @54022 /* (Administer a medium dose.) */ GOTO DOSE_15
       ++ @54023 /* (Administer a large dose.) */ GOTO DOSE_16
       ++ @54026 /* (Use an antidote to return Pruflas to baseline.) */ GOTO 11
END

IF ~~ THEN BEGIN DOSE_13
   SAY @54038 /* Ah, the veils of illusion have lifted, and truth shines through like the first rays of dawn. */ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN DOSE_14
   SAY @54039 /* Owls...hoo...hoot...I'm getting...sleepy.. */
       ++ @54021 /* (Administer a small dose.) */ GOTO DOSE_16
       ++ @54022 /* (Administer a medium dose.) */ GOTO DOSE_16
       ++ @54023 /* (Administer a large dose.) */ GOTO DOSE_16
       ++ @54026 /* (Use an antidote to return Pruflas to baseline.) */ GOTO 11
END

IF ~~ THEN BEGIN DOSE_15
   SAY @54040 /* Zzz...zzz...zzz */
       ++ @54026 /* (Use an antidote to return Pruflas to baseline.) */ GOTO 11
END

IF ~~ THEN BEGIN DOSE_16
   SAY @54041 /* ... */ IF ~~ THEN GOTO DOSE_17
END

IF ~~ THEN BEGIN DOSE_17
   SAY @54042 /* Un...gh... */
IF ~~ THEN DO ~
   Kill("h_pruflc")
   SetGlobal("h_ShadowWar","GLOBAL",5)
   SetGlobal("h_PruflasQuest","GLOBAL",3)
   AddJournalEntry(@335,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 12
   SAY @54043 /* I see now, the interconnectedness of all things, the grand dance of existence weaving its intricate tapestry. */ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY @54044 /* The cosmos speaks in a language of silent understanding, revealing the profound unity of life and spirit. */ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY @54045 /* This clarity, it is more than mere perception, it is a transcendent awakening of the soul. I am reborn in the light of this newfound wisdom. */ IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
   SAY @54046 /* Thank you, dear traveler, for guiding me to this state of enlightenment. I shall return to my wife with a heart full of wisdom and gratitude. May your journey be filled with light and purpose. */
IF ~~ THEN DO ~
   EscapeArea()
   SetGlobal("h_ShadowWar","GLOBAL",5)
   SetGlobal("h_PruflasQuest","GLOBAL",3)
   AddJournalEntry(@334,QUEST)
   AddExperienceParty(800)~ EXIT
END







