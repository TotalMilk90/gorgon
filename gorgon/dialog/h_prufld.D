BEGIN h_prufld

IF ~True()~ THEN BEGIN 0
   SAY ~Stars in the sky, flowers in the air... Everything's dancing, don't you see?~
       ++ ~I can't see any stars because we are inside.~ EXIT
       +~Global("h_PruflasQuest","GLOBAL",1)~+ ~Pruflas, lad, what seems to be the problem here? You need to leave this place and return home to your wife.~ GOTO 1
       +~Global("h_PruflasQuest","GLOBAL",2)~+ ~Alright, Pruflas. If reaching nirvana is the only way to get you to leave, then I'll do it.~ GOTO 9
END

IF ~~ THEN BEGIN 1
   SAY ~Oh, yes... my wife... brr. Cold steel and bitter words, she is. But in here, it's like a warm embrace. No judgment, just... peace. Can't you feel it too? It's like a dream.~
       ++ ~Your wife needs you back home, Pruflas. She can't make it on her own.~ GOTO 2
       ++ ~I understand that it feels comforting in here, but you have real responsibilities out there.~ GOTO 2
       ++ ~You're going to feel cold steel in here too if you don't scram!~ GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~No, I shan't be leaving... not until I've reached nirvana.~
       ++ ~What are you talking about?~ GOTO 3
       ++ ~I'm not dealing with this.~ EXIT
END

IF ~~ THEN BEGIN 3
   SAY ~They regard the lotus with disapproval, as if it were a malevolent force. Yet, in reality, it bestows wonder, joy, happiness, and purpose upon life! It's truly magnificent.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~There exists a state of nirvana attainable with a precise measure of lotus, wherein all truths are laid bare.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~However, I cannot embark on this journey alone, once I partake in the lotus, its effects slip my memory until they wane.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~I implore you to administer doses until I achieve the perfect equilibrium. Be cautious not to give too much, for it may lead to my demise, yet too little will be insufficient.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~It is imperative to strike the right balance. So, if you aid me in attaining nirvana, I pledge to return to my wife.~
       ++ ~Forget it! I'm not going to help you with this.~ GOTO 8
       ++ ~Alright, sounds simple enough.~ GOTO 9
END

IF ~~ THEN BEGIN 8
   SAY ~Well, then, I'm just staying right put until I get there myself.~
IF ~~ THEN DO ~
   SetGlobal("h_PruflasQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 9
   SAY ~Joyous news! Remember, too little won't be enough, but an excess could be fatal.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 
   SAY ~Should I become entirely incoherent, or begin to lose consciousness, you can use an antidote to bring me back to my senses, and we can start afresh.~
       ++ ~(Administer a small dose.)~ GOTO DOSE_2
       ++ ~(Administer a medium dose.)~ GOTO DOSE_3
       ++ ~(Administer a large dose.)~ GOTO DOSE_4
       ++ ~I can't help you with this, Pruflas.~ GOTO 8
END

IF ~~ THEN BEGIN 11 
   SAY ~Sober as a bull, now, Let's give it another crack, shall we?~
       ++ ~(Administer a small dose.)~ GOTO DOSE_2
       ++ ~(Administer a medium dose.)~ GOTO DOSE_3
       ++ ~(Administer a large dose.)~ GOTO DOSE_4
       ++ ~(Use an antidote to return Pruflas to baseline.)~ GOTO 11
       ++ ~I can't help you with this, Pruflas.~ GOTO 8
END

IF ~~ THEN BEGIN DOSE_2
   SAY ~If trees could talk, they'd probably gossip about the weather all day. 'Did you hear what that cloud said?'~
       ++ ~(Administer a small dose.)~ GOTO DOSE_4
       ++ ~(Administer a medium dose.)~ GOTO DOSE_5
       ++ ~(Administer a large dose.)~ GOTO DOSE_6
       ++ ~(Use an antidote to return Pruflas to baseline.)~ GOTO 11
END

IF ~~ THEN BEGIN DOSE_3
   SAY ~Have you ever seen a snail tap dance? It's quite the spectacle, I assure you.~
       ++ ~(Administer a small dose.)~ GOTO DOSE_5
       ++ ~(Administer a medium dose.)~ GOTO DOSE_6
       ++ ~(Administer a large dose.)~ GOTO DOSE_7
       ++ ~(Use an antidote to return Pruflas to baseline.)~ GOTO 11
END

IF ~~ THEN BEGIN DOSE_4
   SAY ~Fish have this mysterious aura, like they're keeping the secrets of the deep sea. What do you think they're hiding?~
       ++ ~(Administer a small dose.)~ GOTO DOSE_6
       ++ ~(Administer a medium dose.)~ GOTO DOSE_7
       ++ ~(Administer a large dose.)~ GOTO DOSE_8
       ++ ~(Use an antidote to return Pruflas to baseline.)~ GOTO 11
END

IF ~~ THEN BEGIN DOSE_5
   SAY ~I'm convinced that mushrooms are time travelers from the 5th century.~
       ++ ~(Administer a small dose.)~ GOTO DOSE_7
       ++ ~(Administer a medium dose.)~ GOTO DOSE_8
       ++ ~(Administer a large dose.)~ GOTO DOSE_9
       ++ ~(Use an antidote to return Pruflas to baseline.)~ GOTO 11
END

IF ~~ THEN BEGIN DOSE_6
   SAY ~The oak tree...it tells stories in whispers...I'll listen...tomorrow.~
       ++ ~(Administer a small dose.)~ GOTO DOSE_8
       ++ ~(Administer a medium dose.)~ GOTO DOSE_9
       ++ ~(Administer a large dose.)~ GOTO DOSE_10
       ++ ~(Use an antidote to return Pruflas to baseline.)~ GOTO 11
END

IF ~~ THEN BEGIN DOSE_7
   SAY ~The fireflies...they painted the night...so sparkly.~
       ++ ~(Administer a small dose.)~ GOTO DOSE_9
       ++ ~(Administer a medium dose.)~ GOTO DOSE_10
       ++ ~(Administer a large dose.)~ GOTO DOSE_11
       ++ ~(Use an antidote to return Pruflas to baseline.)~ GOTO 11
END

IF ~~ THEN BEGIN DOSE_8
   SAY ~You know, I once saw a squirrel...it was...so...squirrelly.~
       ++ ~(Administer a small dose.)~ GOTO DOSE_10
       ++ ~(Administer a medium dose.)~ GOTO DOSE_11
       ++ ~(Administer a large dose.)~ GOTO DOSE_12
       ++ ~(Use an antidote to return Pruflas to baseline.)~ GOTO 11
END

IF ~~ THEN BEGIN DOSE_9
   SAY ~Clouds are like fluffy...pillows...floating...in the...sky...~
       ++ ~(Administer a small dose.)~ GOTO DOSE_11
       ++ ~(Administer a medium dose.)~ GOTO DOSE_12
       ++ ~(Administer a large dose.)~ GOTO DOSE_13
       ++ ~(Use an antidote to return Pruflas to baseline.)~ GOTO 11
END

IF ~~ THEN BEGIN DOSE_10
   SAY ~Mushrooms...umbrellas...for gnomes...and...tiny...gnome...hats...~
       ++ ~(Administer a small dose.)~ GOTO DOSE_12
       ++ ~(Administer a medium dose.)~ GOTO DOSE_13
       ++ ~(Administer a large dose.)~ GOTO DOSE_14
       ++ ~(Use an antidote to return Pruflas to baseline.)~ GOTO 11
END

IF ~~ THEN BEGIN DOSE_11
   SAY ~Rocks...patient...like...grandparents...who've...seen...it...all...~
       ++ ~(Administer a small dose.)~ GOTO DOSE_13
       ++ ~(Administer a medium dose.)~ GOTO DOSE_14
       ++ ~(Administer a large dose.)~ GOTO DOSE_15
       ++ ~(Use an antidote to return Pruflas to baseline.)~ GOTO 11
END

IF ~~ THEN BEGIN DOSE_12
   SAY ~Fish...great swimmers...never late...for...dinner...parties...~
       ++ ~(Administer a small dose.)~ GOTO DOSE_14
       ++ ~(Administer a medium dose.)~ GOTO DOSE_15
       ++ ~(Administer a large dose.)~ GOTO DOSE_16
       ++ ~(Use an antidote to return Pruflas to baseline.)~ GOTO 11
END

IF ~~ THEN BEGIN DOSE_13
   SAY ~Ah, the veils of illusion have lifted, and truth shines through. I see now, the interconnectedness of all things, the dance of existence.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN DOSE_14
   SAY ~Owls...hoo...hoot...I'm getting...sleepy..~
       ++ ~(Administer a small dose.)~ GOTO DOSE_16
       ++ ~(Administer a medium dose.)~ GOTO DOSE_16
       ++ ~(Administer a large dose.)~ GOTO DOSE_16
       ++ ~(Use an antidote to return Pruflas to baseline.)~ GOTO 11
END

IF ~~ THEN BEGIN DOSE_15
   SAY ~Zzz...zzz...zzz~
       ++ ~(Use an antidote to return Pruflas to baseline.)~ GOTO 11
END

IF ~~ THEN BEGIN DOSE_16
   SAY ~Un...gh...~
IF ~~ THEN DO ~
   Kill("h_pruflc")
   SetGlobal("h_ShadowWar","GLOBAL",5)
   SetGlobal("h_PruflasQuest","GLOBAL",3)
   AddJournalEntry(@335,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 12
   SAY ~Thank you, dear traveler, for guiding me to this state of enlightenment. I shall return to my wife with a heart full of wisdom and gratitude. May your journey be filled with light and purpose.~
IF ~~ THEN DO ~
   EscapeArea()
   SetGlobal("h_ShadowWar","GLOBAL",5)
   SetGlobal("h_PruflasQuest","GLOBAL",3)
   AddJournalEntry(@334,QUEST)~ EXIT
END







