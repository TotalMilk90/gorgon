BEGIN h_whit2d

IF ~Global("h_BlackJoin","GLOBAL",0)~ THEN BEGIN 0
   SAY ~My own men... my own trusted comrades, turned on me. Betrayed me.~ IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
   SAY ~Their blood stains my hands because of you, because of your vile machinations. You orchestrated this chaos. You turned the City Watch against me, against everything I've stood for.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~You... you wretched filth. Mark my words, <CHARNAME> of the Gorgon's Eye, I won't go down without a fight. I'll make sure your villainous guild crumbles, even if it costs me my life.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~This temple, this town... they've been my charge, my duty. And I'll protect them with every ounce of my being!~
       ++ ~Your reign ends here, Whitewood. You played your hand, and now it's time to pay the price. Beregost belongs to the Gorgon's Eye now.~ GOTO 4
       ++ ~Whitewood, your time has come. The Watch has spoken, and they've chosen a new path. You're just a relic of the past now, clinging to a dying cause.~ GOTO 5
       ++ ~You're a fighter, Commander, but sometimes even the best must know when to fold. Your reign is over. Leave this place, or face the inevitable.~ GOTO 7
END

IF ~~ THEN BEGIN 4
   SAY ~To think Beregost could fall to the likes of you... It's a nightmare I won't allow. I've sworn an oath to protect this town, and by the gods, I'll see it through.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 5
   SAY ~No, it is you who have usurped their voices, weaving a dark tapestry of deceit and manipulation that puppeteers their actions. Their wills are but marionettes, dancing to the malevolent tune you compose.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Their souls cry out for justice, and I shall be their instrument of vengeance. The shadows you've cast over Beregost will be dispelled, and the light of righteousness shall prevail.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 7
   SAY ~I swore an oath to protect this town, to shield it from the likes of you. Beregost deserves better than to fall to the darkness you represent.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~My duty remains unwavering, and I will give my last breath to see it fulfilled.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~You will die here. And when I'm through with you, I'll lead the Knights into the heart of your den and wipe out every last one of your treacherous lot.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Draw you blade, <CHARNAME>. Let's settle this once and for all, and see whose resolve prevails.~
IF ~~ THEN DO ~
   SetGlobal("h_WhitewoodTalk","GLOBAL",2)
   SetGlobal("h_WatchCutscene","GLOBAL",3)~ EXIT
END

IF ~Global("h_BlackJoin","GLOBAL",1)~ THEN BEGIN B0
   SAY ~My own men... my own trusted comrades, turned on me. Betrayed me.~ IF ~~ THEN GOTO B1
END

IF ~~ THEN BEGIN B1
   SAY ~Their blood stains my hands because of you, because of your vile machinations. You orchestrated this chaos. You turned the City Watch against me, against everything I've stood for.~ IF ~~ THEN GOTO B2
END

IF ~~ THEN BEGIN B2
   SAY ~You... you wretched filth. Mark my words, <CHARNAME> of the Gorgon's Eye, I won't go down without a fight. I'll make sure your villainous guild crumbles, even if it costs me my life.~ IF ~~ THEN GOTO B3
END

IF ~~ THEN BEGIN B3
   SAY ~This temple, this town... they've been my charge, my duty. And I'll protect them with every ounce of my being!~
       ++ ~Your reign ends here, Whitewood. You played your hand, and now it's time to pay the price. Beregost belongs to the Gorgon's Eye now.~ GOTO B4
       ++ ~Whitewood, your time has come. The Watch has spoken, and they've chosen a new path. You're just a relic of the past now, clinging to a dying cause.~ GOTO B5
       ++ ~You're a fighter, Commander, but sometimes even the best must know when to fold. Your reign is over. Leave this place, or face the inevitable.~ GOTO B7
END

IF ~~ THEN BEGIN B4
   SAY ~To think Beregost could fall to the likes of you... It's a nightmare I won't allow. I've sworn an oath to protect this town, and by the gods, I'll see it through.~ IF ~~ THEN GOTO B9
END

IF ~~ THEN BEGIN B5
   SAY ~No, it is you who have usurped their voices, weaving a dark tapestry of deceit and manipulation that puppeteers their actions. Their wills are but marionettes, dancing to the malevolent tune you compose.~ IF ~~ THEN GOTO B6
END

IF ~~ THEN BEGIN B6
   SAY ~Their souls cry out for justice, and I shall be their instrument of vengeance. The shadows you've cast over Beregost will be dispelled, and the light of righteousness shall prevail.~ IF ~~ THEN GOTO B9
END

IF ~~ THEN BEGIN B7
   SAY ~I swore an oath to protect this town, to shield it from the likes of you. Beregost deserves better than to fall to the darkness you represent.~ IF ~~ THEN GOTO B8
END

IF ~~ THEN BEGIN B8
   SAY ~My duty remains unwavering, and I will give my last breath to see it fulfilled.~ IF ~~ THEN GOTO B9
END

IF ~~ THEN BEGIN B9
   SAY ~You will die here. And when I'm through with you, I'll lead the Knights into the heart of your den and wipe out every last one of your treacherous lot.~ IF ~~ THEN GOTO B10
END

IF ~~ THEN BEGIN B10
   SAY ~Draw you blade, <CHARNAME>. Let's settle this once and for all, and see whose resolve prevails.~
IF ~~ THEN DO ~
   SetGlobal("h_WhitewoodTalk","GLOBAL",1)
   SetGlobal("h_WatchCutscene","GLOBAL",3)
   CreateCreature("h_blac2c",[1059.1004],W)
   Kill("h_tempmc")~ EXIT
END