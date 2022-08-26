BEGIN h_bald2d

IF ~Global("h_BaldwinQuest","GLOBAL",10)~ THEN BEGIN FINAL_0
   SAY ~It is done. The final piece of the Kerykeion is finally in my possession!~ IF ~~ THEN GOTO FINAL_1
END

IF ~~ THEN BEGIN FINAL_1
   SAY ~Thank you for your assistance, <CHARNAME>. Your help has been nothing short of invaluable to me.~
       ++ ~Of course, Baldwin. How do we proceed from here?~ GOTO FINAL_2
       ++ ~I cannot let you continue with this. I have been warned of the dangers this weapon will bring and it must be destroyed!~ GOTO FINAL_6
       ++ ~You have all the pieces in front of you, yet you are alone, and the staff remains disassembled. I think I shall kill you and take it for myself!~ GOTO FINAL_7
END

IF ~~ THEN BEGIN FINAL_2
   SAY ~I will be leaving the guild to begin my crusade into Amn, where I will use the Kerykeion to eliminate the Shadow Thieves from this world.~
       ++ ~Is the Kerykeion really powerful enough to do that?~ GOTO FINAL_3
END

IF ~~ THEN BEGIN FINAL_3
   SAY ~Over time it will be, yes. It's strength and abilities will grow the longer it is in use.~
       ++ ~What will happen to the Gorgon's Eye?~ GOTO FINAL_4
END

IF ~~ THEN BEGIN FINAL_4
   SAY ~It will need a new leader of course, and I plan to leave it under your directive. You have shown great promise in this field and in turn have gained the respect of your guildmates.~ IF ~~ THEN GOTO FINAL_5
END

IF ~~ THEN BEGIN FINAL_5
   SAY ~Speak with Saradin upon your return and he will guide you through the activities of your new role.~ IF ~~ THEN GOTO FINAL_9
END

IF ~~ THEN BEGIN FINAL_6
   SAY ~Destroyed! You poor ignorant fool. I have toiled for years to obtain this staff and I'll not waste those efforts on your baseless fears.~ IF ~~ THEN GOTO FINAL_8
END

IF ~~ THEN BEGIN FINAL_7
   SAY ~Treason is it? I guess I cannot blame you, with the opportunity for such power being within your sight.~ IF ~~ THEN GOTO FINAL_8
END

IF ~~ THEN BEGIN FINAL_8
   SAY ~If this is your wish then now is your chance to strike. I must warn you though, I have no plans of dying today. Taking your life will be a testament of my strength, proving my worthiness to wield the Kerykeion!~ IF ~~ THEN GOTO FINAL_9
END

IF ~~ THEN BEGIN FINAL_9
   SAY ~Hold... We are not alone.~
IF ~~ THEN DO ~
   CreateCreature("h_sthiec",[402.156],S)
   CreateCreature("h_richac",[331.351],E)
   CreateCreature("h_sthiec",[536.474],N)
   CreateCreature("h_sthiec",[752.407],W)
   SetGlobal("h_SpawnRichard","GLOBAL",1)
   SetGlobal("h_BaldwinQuest","GLOBAL",11)~ EXIT
END


CHAIN
   IF ~Global("h_BaldwinQuest","GLOBAL",9)~ THEN h_bald2d 0
~Evening Gerard. I suspect you understand the reason for my visit.~
   == NOBL10
~Absolutely not. What is the meaning of this intrusion? I demand you leave my premises at once!~
   == h_bald2d
~Sorry, but that won't be happening. Hiring the Shadow Thieves against us was a deadly mistake.~
   =
~Hand over the Kerykeion and I shall reward you with a quick death. Refuse and I will slowly begin to sever off your appendages.~
   == NOBL10
~Kill me if you must, Butcher. But let it be known that I will no longer suffer your indignities any longer.~
   == h_bald2d
~If that is your wish, then so be it.~
   DO ~
      Kill("NOBL10")
      SetGlobal("h_BaldwinQuest","GLOBAL",10) ~
EXIT





