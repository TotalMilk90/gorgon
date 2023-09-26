INTERJECT_COPY_TRANS h_yumild 1 imotoyum1
  == IMOEN2 IF ~IsValidForPartyDialogue("Imoen")~ THEN
    ~I've always loved a good ghost story.~
END

INTERJECT_COPY_TRANS h_baldwd 4 imotobal4
  == IMOEN2 IF ~IsValidForPartyDialogue("Imoen")~ THEN
    ~Wow, so this is a real live thieves guild, huh, <CHARNAME>?~
  == IMOEN2 IF ~IsValidForPartyDialogue("Imoen")~ THEN
    ~So many secrets, so much going on behind the scenes. It's a whole world I never imagined when I was back in Candlekeep.~
END

INTERJECT_COPY_TRANS h_baldwd 5 ajatobal5
  == AJANTJ IF ~IsValidForPartyDialogue("Ajantis")~ THEN
    ~Helm turns his eye from this dark and vile place. Let us depart at once, for this is not within the bounds of righteousness.~
  == h_baldwd IF ~IsValidForPartyDialogue("Ajantis")~ THEN
    ~I'm certain there's a cat ensnared in the branches outside, o' righteous one, desperate for your gallant rescue.~
END

INTERJECT_COPY_TRANS h_baldwd 12 montobal12
  == MONTAJ IF ~IsValidForPartyDialogue("Montaron")~ THEN
    ~Music to me ears, that is. Where do we sign?~
END

INTERJECT_COPY_TRANS h_baldwd 18 jahtobal18
  == JAHEIJ IF ~IsValidForPartyDialogue("Jaheira")~ THEN
    ~The nerve of this one! I don't like this place, <CHARNAME>, carved by sentient hands beneath the earth. It's an affront to the natural world!~
END

