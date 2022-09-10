BEGIN h_denebd

IF ~True()~ THEN BEGIN 0
   SAY ~Lookee here my children, more thieves for you to feast on! I hope you're as quick as all the others, my snakes do rather enjoy the chase.~
       ++ ~I have come in search of the Kerykeion and heard it may be in your possession.~ GOTO 1
       ++ ~Who are these other thieves you speak of?~ GOTO 2
       ++ ~What snakes? There is nothing here except us and these damned gibberlings!~ GOTO 2.5
       ++ ~Wait! Is there no other solution? We don't need to fight.~ GOTO 3
       ++ ~If this will only end in bloodshed, then so be it!~ GOTO 3
END

IF ~~ THEN BEGIN 1
   SAY ~Of course you've come for the Kerykeion. Nobody just wanders up here by mistake. Sorry to inform you though, you won't be leaving here with it. In fact, you won't be leaving here at all!~
       ++ ~Who are these other thieves you speak of?~ GOTO 2
       ++ ~What snakes? There is nothing here except us and these damned gibberlings!~ GOTO 2.5
       ++ ~Wait! Is there no other solution? We don't need to fight.~ GOTO 3
       ++ ~If this will only end in bloodshed, then so be it!~ GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY ~Don't play coy with me! I've killed many rogues these past few nights and you will be just another addition to that list.~
       ++ ~I have come in search of the Kerykeion and heard it may be in your possession.~ GOTO 1
       ++ ~What snakes? There is nothing here except us and these damned gibberlings!~ GOTO 2.5
       ++ ~Wait! Is there no other solution? We don't need to fight.~ GOTO 3
       ++ ~If this will only end in bloodshed, then so be it!~ GOTO 3
END

IF ~~ THEN BEGIN 2.5
   SAY ~They are me, and I am them. When darkness falls, they rise again!~
       ++ ~Poor girl, you are obviously demented. Allow me to end your misery.~ GOTO 3
       ++ ~I have come in search of the Kerykeion and heard it may be in your possession.~ GOTO 1
       ++ ~Who are these other thieves you speak of?~ GOTO 2
       ++ ~Wait! Is there no other solution? We don't need to fight.~ GOTO 3
       ++ ~If this will only end in bloodshed, then so be it!~ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Run or fight, the outcome will be the same. You will die, and my snakes will feast upon your corpse!~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Dark sister, lend me your strength!~
IF ~~ THEN DO ~
   SetGlobal("h_SpawnDeneb","GLOBAL",3)
   AddJournalEntry(@211,QUEST)
   DayNight(MIDNIGHT)
   CreateCreature("h_snakec",[4229.516],S)
   CreateCreature("h_snakec",[4124.571],S)
   CreateCreature("h_snakec",[4209.652],S)
   CreateCreature("h_snakec",[4292.586],S)~ EXIT
END