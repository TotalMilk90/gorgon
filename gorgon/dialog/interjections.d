INTERJECT_COPY_TRANS h_yumild 1 imotoyum1
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("Imoen")~ THEN
    ~Nope. Huh-uh. I'm all up for adventures, <CHARNAME>... but I prefer my company to be, ya know, among the living.~
END

INTERJECT_COPY_TRANS h_baldwd 4 imotobal4
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("Imoen")~ THEN
    ~Wow, so this is a real live thieves guild, huh, <CHARNAME>?~
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("Imoen")~ THEN
    ~So many secrets, so much going on behind the scenes. It's a whole world I never imagined when I was back in Candlekeep.~
END

INTERJECT_COPY_TRANS h_baldwd 5 ajatobal5
  == %AJANTIS_JOINED% IF ~IsValidForPartyDialogue("Ajantis")~ THEN
    ~Helm turns his eye from this dark and vile place. Let us depart at once, for this is not within the bounds of righteousness.~
  == h_baldwd IF ~IsValidForPartyDialogue("Ajantis")~ THEN
    ~I'm certain there's a cat ensnared in the branches outside, o' righteous one, desperate for your gallant rescue.~
END

INTERJECT_COPY_TRANS h_baldwd 24 imotobal24
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("Imoen")~ THEN
    ~Psst. Stand up straight, <CHARNAME>. Try 'n look a bit more presentable, will ya?~
END

INTERJECT_COPY_TRANS h_baldwd 26 edwtobal26
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
    ~Ah, yes, the Kerykeion. I am well acquainted with its legend and the immense arcane potential it conceals.~
END

INTERJECT_COPY_TRANS h_baldwd 32 edwtobal32
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
    ~Yes, yes, a sentiment I too share. These 'scholars', and their simple-minded perspectives, forever blind to the brilliance right before their eyes!~
END

INTERJECT_COPY_TRANS h_baldwd 60 victobal60
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
    ~I despise those accursed woods and the relentless pursuit I endured within. But let us not tarry. If we must venture there once more, let it be to face our foes and reclaim what is rightfully ours.~
END

INTERJECT_COPY_TRANS h_rigald 21 imotorig21
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("Imoen")~ THEN
    ~Wow, our first mission! Leave it all to me, <CHARNAME>. No offense or nothin'. I just know my way around pickin' a purse, is all. Yes, I do...~
END

INTERJECT_COPY_TRANS h_rigald 34 kagtorig34
  == %KAGAIN_JOINED% IF ~IsValidForPartyDialogue("Kagain")~ THEN
    ~The nerve o' that one!~
END

INTERJECT_COPY_TRANS h_rigald 43 jahtorig43
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
    ~Slavers, the scourge of humanity! Such wicked souls, preying on the vulnerable and exploiting the helpless!~
END

INTERJECT_COPY_TRANS h_rigald 60 shatorig60
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
    ~So, the woman's got some spirit, eh? Ha! The clueless husband. Can't say I blame her for not trusting him with her spoils. Men can be more of a burden than they're worth, sometimes.~
END

INTERJECT_COPY_TRANS h_rigald 69 imotorig69
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("Imoen")~ THEN
    ~I'm all for a bit of mischief, but swiping from the folks running the games? They're just trying to spread a bit of joy and have some innocent fun. I'm not so sure about this one, no-sir.~
  == h_rigald IF ~IsValidForPartyDialogue("Imoen")~ THEN
    ~Beggin' your pardon, miss. But, these cats've got their claws deep in the Shadow Thieves pie. Nothin' innocent about this lot, I tell ya.~
END

INTERJECT_COPY_TRANS h_rigald 99 jahtorig99
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
    ~This task sits easier on my conscience, I must say. Black lotus, gifted by nature herself, should never be abused. It is a precious resource, not to be squandered on folly and vice.~
END

INTERJECT_COPY_TRANS h_lieded 8 imotolie8
  == %IMOEN_JOINED% IF ~IsValidForPartyDialogue("Imoen")~ THEN
    ~What's with this lady, <CHARNAME>? It's like she's tryin' to butter ya up or somethin'.~
END

INTERJECT_COPY_TRANS h_lieded 10 montolie10
  == %MONTARON_JOINED% IF ~IsValidForPartyDialogue("Montaron")~ THEN
    ~Cut him down! The Zhentarim don't fancy no second dances.~
END

INTERJECT_COPY_TRANS h_lieded 14 mintolie14
  == %NEERA_JOINED% IF ~IsValidForPartyDialogue("Neera")~ THEN
    ~From sneaky rogue to penitent pilgrim. Talk about a career change! What next? Is he going for a sainthood? Now, that would be a resume booster.~
END

INTERJECT_COPY_TRANS h_lieded 33 jahtolie33
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
    ~It is the hunters who should cease, and respect the creatures that dwell on these lands.~
END

INTERJECT_COPY_TRANS h_lieded 35 khatolie35
  == %KHALID_JOINED% IF ~IsValidForPartyDialogue("Khalid")~ THEN
    ~Experimenting on human flesh? Oh d-dear, I couldn't imagine g-g-going through that.~
END

INTERJECT_COPY_TRANS h_aishad 5 shatoais5
  == %SHARTEEL_JOINED% IF ~IsValidForPartyDialogue("Sharteel")~ THEN
    ~Serves him right, the bumbling oaf. I'd have cut him down for the attempt.~
END

INTERJECT_COPY_TRANS h_vapuld 4 tovap4
  == %EDWIN_JOINED% IF ~IsValidForPartyDialogue("Edwin")~ THEN
    ~Why subject me to this insipid drivel? Dispatch the man and let us proceed. Ravenscar will claim his quarry, regardless of this theatre.~
END

INTERJECT_COPY_TRANS h_carthd 4 imotocar4
  == %VICONIA_JOINED% IF ~IsValidForPartyDialogue("Viconia")~ THEN
    ~The depths of gluttony you surface dwellers possess truly astounds me. How utterly repulsive.~
END

INTERJECT_COPY_TRANS h_katred 2 jahtokat2
  == %JAHEIRA_JOINED% IF ~IsValidForPartyDialogue("Jaheira")~ THEN
    ~<CHARNAME>, we must not allow such sacrilege to befall these sacred woods. The balance of nature must be preserved, and those who seek to defile it deserve no mercy.~
END

INTERJECT_COPY_TRANS h_tuztdd 1 mintotuz1
  == %MINSC_JOINED% IF ~IsValidForPartyDialogue("Minsc")~ THEN
    ~What manner of evil is this, Boo, which would capture such a small and innocent little girl?~
  == %MINSC_JOINED% IF ~IsValidForPartyDialogue("Minsc")~ THEN
    ~Fear not, tiny one. Minsc and Boo are here to save you from these wretched fiends and put an end to their wicked ways!~
END

INTERJECT_COPY_TRANS h_magnud 7 xantomag7
  == %XAN_JOINED% IF ~IsValidForPartyDialogue("Xan")~ THEN
    ~Ah, the cycle of life and death, orchestrated by a necromancer no less. How perfectly mundane. Perhaps I should compose an ode to this melancholic affair, though I doubt anyone would care to listen.~
END

INTERJECT_COPY_TRANS h_zhontd 4 xzatozho4
  == %XZAR_JOINED% IF ~IsValidForPartyDialogue("Xzar")~ THEN
    ~Oh, dear comrade of the crypts! How splendid it is to meet a fellow connoisseur of the morose arts!~
  == h_zhontd IF ~IsValidForPartyDialogue("Xzar")~ THEN
    ~Indeed! The dance of death calls to us, and we are but eager participants!~
  == %XZAR_JOINED% IF ~IsValidForPartyDialogue("Xzar")~ THEN
    ~A macabre ballet, it is! Together, we shall pirouette through the mists of mortality!~
  == h_zhontd IF ~IsValidForPartyDialogue("Xzar")~ THEN
    ~And with each twirl, the world shall shiver in terror and awe at our macabre masterpiece!~
  == %XZAR_JOINED% IF ~IsValidForPartyDialogue("Xzar")~ THEN
    ~Ah, what a wicked waltz it shall be! Let us paint the world in shades of darkness!~
  == h_zhontd IF ~IsValidForPartyDialogue("Xzar")~ THEN
    ~To the grand finale of life and the raucous applause of the afterlife!~
END