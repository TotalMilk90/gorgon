APPEND ~blackl~

IF WEIGHT #-1 ~Global("h_BlackLilyQuest","GLOBAL",1)~ THEN BEGIN B1
   SAY @16000 /* It will be the darkest day ye have never seen before I don't have what ye need. Fer the right price, anyway. */ IF ~~ THEN GOTO B1.5
END

IF ~~ THEN BEGIN B1.5
   SAY @16001 /* What will ye need today? Remember, cash or hit the bricks. I extend no credit, especially to new recruits. */
       ++ @16002 /* Greetings, Black Lily. I'm <CHARNAME>, with the Gorgon's Eye. Ariosh sent me to seek your counsel. */ GOTO B2
       ++ @16003 /* I stand before you as a Gorgon's Eye agent, entrusted with a sanctioned appeal from Ariosh for your classified intelligence. */ GOTO B2
END

IF ~~ THEN BEGIN B2
   SAY @16004 /* Ariosh, huh? Well, well. He and I, we've danced that dance before. What's his game this time, I wonder? */ IF ~~ THEN GOTO B2.5
END

IF ~~ THEN BEGIN B2.5
   SAY @16005 /* Now, what's got the countryside stirring so, that it's sent ye up to our grand city? Seeking solace from the endless rustle of leaves and the melancholic moos, are ye? */
       ++ @16006 /* Beregost is playing host to an uninvited guest, Inspector Branic, and I need your help removing him. */ GOTO B3
       ++ @16007 /* Inspector Branic. He's become quite the nuisance in our little town and we need him gone. */ GOTO B3
END

IF ~~ THEN BEGIN B3
   SAY @16008 /* Ah, the Inspector, is it? You're diving into dangerous waters, my shadowy friend, he's no pushover. You'll certainly have your work cut out for ye. */ IF ~~ THEN GOTO B3.5
END

IF ~~ THEN BEGIN B3.5
   SAY @16009 /* Luckily, I've got a little something on the Inspector that might just give ye a fighting chance to tip the scales in your favor. */ IF ~~ THEN GOTO B4
END

IF ~~ THEN BEGIN B4
   SAY @16010 /* Like many of these 'men', the Inspector indulges in the finer things in life. However, his tastes are rather particular. */ IF ~~ THEN GOTO B4.5
END

IF ~~ THEN BEGIN B4.5
   SAY @16011 /* He savors a distinct brand of pleasure, one derived from an elusive whiskey, and an even... scarcer type of companion. */ IF ~~ THEN GOTO B5
END

IF ~~ THEN BEGIN B5
   SAY @16012 /* And, as ye would expect, I possess the knowledge of where to procure these rare treasures. Consider it a gesture of goodwill, a testament to the mutual respect Ariosh and I share. */
       ++ @16013 /* What kind of whiskey are we talking about, and what distinguishes this companion from the rest? */ GOTO B5.5
       ++ @16014 /* Are we truly staking our hopes on such basic pleasures to bring down the mighty Inspector? */ GOTO B5.25
END

IF ~~ THEN BEGIN B5.25
   SAY @16015 /* Ye underestimate the power of distraction. Sometimes, the simplest vices can lead to the most elaborate downfall. It's all a matter of knowing how to play the game. */
       ++ @16013 /* What kind of whiskey are we talking about, and what distinguishes this companion from the rest? */ GOTO B5.5
END

IF ~~ THEN BEGIN B5.5
   SAY @16016 /* It's a rare brew from the Moonshae Isles. Jopalin's Tavern, down by the docks. It's the only place in the Gate that carries it. */ IF ~~ THEN GOTO B6
END

IF ~~ THEN BEGIN B6
   SAY @16017 /* A thoughtful gift, or... well, one might say it could be an opportunity to... alter his perspective. ye catch my drift? */ IF ~~ THEN GOTO B6.5
END

IF ~~ THEN BEGIN B6.5
   SAY @16018 /* Now, for his other... pleasures. Ishani, a beautiful young courtesan, exquisite as a dew-kissed rose. Currently gracing the Blade and Stars in southeast Baldur's Gate. */ IF ~~ THEN GOTO B7
END

IF ~~ THEN BEGIN B7
   SAY @16019 /* If ye can get hold of her, she can serve as your ticket to getting close to the Inspector. Whether it's for gathering information or causing a diversion, she's your key. */
       ++ @16020 /* I appreciate your assistance, Black Lily. Your reputation certainly precedes you. */ GOTO B8
       ++ @16021 /* Thanks for the intel. I'll start workin' the leads. */ GOTO B8
END

IF ~~ THEN BEGIN B8
   SAY @16022 /* Go now, and tread carefully. Don't let your guard down with this beast. And do me a little favor when ye return to the south, will ye? Tell Ariosh he still owes me that dance. */
IF ~~ THEN DO ~
   SetGlobal("h_BlackLilyQuest","GLOBAL",2)
   SetGlobal("h_SpawnIshani","GLOBAL",1)
   SetGlobal("h_Whiskey","GLOBAL",1)
   AddJournalEntry(@541,QUEST)~ EXIT
END

END
