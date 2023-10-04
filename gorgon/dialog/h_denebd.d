BEGIN h_denebd

IF ~True()~ THEN BEGIN 0
   SAY ~Look upon them, my darling children. More thieves for you to feast on! I pray you're quick, unlike the others, my serpents do relish the madness of the chase.~
       ++ ~I have come in search of the Kerykeion, and heard it lies within your grasp.~ GOTO 1
       ++ ~Who are these thieves you mentioned? Were they after the Kerykeion as well?~ GOTO 2
       ++ ~What serpents do you speak of? Surely not these damned gibberlings!~ GOTO 3
       ++ ~Wait! Is there no other alternative? We don't need to fight.~ GOTO 4
       ++ ~If this will only end in bloodshed, then so be it!~ GOTO 4
END

IF ~~ THEN BEGIN 1
   SAY ~Oh, yes. I do possess what you seek. Sorry to inform you though, you won't be leaving here with it. In fact, you won't be leaving here at all!~
       ++ ~Who are these thieves you mentioned? Were they after the Kerykeion as well?~ GOTO 2
       ++ ~What serpents do you speak of? Surely not these damned gibberlings!~ GOTO 3
       ++ ~Wait! Is there no other alternative? We don't need to fight.~ GOTO 4
       ++ ~If this will only end in bloodshed, then so be it!~ GOTO 4
END

IF ~~ THEN BEGIN 2
   SAY ~Don't feign ignorance. Rogues, all of them, dancing in the moonlight. And now you, another puppet fell victim to my prowess.~
       ++ ~I have come in search of the Kerykeion, and heard it lies within your grasp.~ GOTO 1
       ++ ~What serpents do you speak of? Surely not these damned gibberlings!~ GOTO 3
       ++ ~Wait! Is there no other alternative? We don't need to fight.~ GOTO 4
       ++ ~If this will only end in bloodshed, then so be it!~ GOTO 4
END

IF ~~ THEN BEGIN 3
   SAY ~They are me, and I am them. When darkness falls, they rise again!~
       ++ ~Poor girl, you are obviously demented. Allow me to end your misery.~ GOTO 4
       ++ ~I have come in search of the Kerykeion and heard it may be in your possession.~ GOTO 1
       ++ ~Who are these thieves you mentioned? Were they after the Kerykeion as well?~ GOTO 2
       ++ ~Wait! Is there no other alternative? We don't need to fight.~ GOTO 4
       ++ ~If this will only end in bloodshed, then so be it!~ GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~Run or fight, the outcome will be the same. You will die, and my snakes will feast upon your corpse!~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
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