BEGIN h_citygd

IF ~RandomNum(8,8)~ THEN BEGIN 0
   SAY ~Head to the temple! We'll take care of things here!~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,1)~ THEN BEGIN 1
   SAY ~The City Watch needs a fresh start, and we're the ones to lead the way!~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,2)~ THEN BEGIN 2
   SAY ~The old guard has failed us. It's time for a new era in the City Watch!~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,3)~ THEN BEGIN 3
   SAY ~Whitewood's time is up. We're taking back control of our own destiny!~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,4)~ THEN BEGIN 4
   SAY ~Whitewood's stubbornness is going to get us all killed. We need to find a way out of this war.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,5)~ THEN BEGIN 5
   SAY ~Whitewood's pride is blinding her to the reality of our situation. We need to negotiate with the Gorgon's Eye.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,6)~ THEN BEGIN 6
   SAY ~We can't keep sacrificing ourselves for Whitewood's ideals. It's time to seek a truce.~
IF ~~ THEN EXIT
END

IF ~RandomNum(8,7)~ THEN BEGIN 7
   SAY ~The Commander's fled east to take refuge in the temple. This is where we make our final stand!~
IF ~~ THEN EXIT
END


