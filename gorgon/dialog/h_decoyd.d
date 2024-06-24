BEGIN h_decoyd

CHAIN
   IF ~Global("h_DecoyAttack","GLOBAL",0)~ THEN h_decoyd 0
@29000 /* By the gods, observe the streets of Beregost, if you dare to call them such. */
   =
@29001 /* Lawless, overrun by the verminous tendrils of the Gorgon's Eye. A mire of violence, squalor, and malevolence lurking within every shadowed alley. */
   =
@29002 /* The stench of depravity hangs heavy in the air, where innocence is but a forgotten concept, trampled underfoot by the ceaseless dance of chaos and desperation. */
   =
@29003 /* This is no place for the faint of heart, nor the righteous of spirit. Here, in this vile underworld, the very foundations of order crumble, and only the ruthless prevail. */
   =
@29004 /* And you, City Watch, have allowed this blight to fester! Your once noble duty to protect this city has been tarnished by your own greed and complacency. */
   =
@29005 /* You turn a blind eye to the cries of the innocent, leaving them at the mercy of these cutthroat gangs. */
   =
@29006 /* Your uniforms, once a symbol of honor, have become nothing more than disguises for the corruption that runs through your veins. */
   =
@29007 /* Beregost, a city drowning in its own filth, deserves better than this wretched display of apathy and betrayal! */
   == h_city3d
@29008 /* Sir... you're right. I won't deny it. The Gorgon's Eye, they've got a grip on this town, no doubt about it. */
   =
@29009 /* But we've got good men here, sir, and we're not about to let Beregost fall to ruin. */
   =
@29010 /* We're regrouping, training harder, and we're looking to turn this tide. We're not backing down. */
   =
@29011 /* We're going to clean up this city, one rotten apple at a time. Give us a chance, and you'll see, sir. */
   == h_decoyd
@29012 /* Then we start now. First, we decapitate the serpents head, Baldwin. The one who pulls the strings from the shadows. */
   =
@29013 /* Once he is dealt with, the rest of his gang will crumble. They rely on his leadership more than they realize. */
   =
@29014 /* We'll lean on informants, put pressure on known hideouts, and keep our eyes peeled for any suspicious activity. */
   =
@29015 /* Once we've got names, we'll work our way up the ladder, squeezing them until they squeal. */
   =
@29016 /* And when they do, we'll be right there, ready to strike. No mercy for those who've brought this city to its knees. */
   =
@29017 /* It's time Beregost took a deep breath of clean air once more. */
   =
@29018 /* ... */
   =
@29019 /* Hold. Be still... */
   =
@29020 /* So, they've decided to make their move, have they? Men, eyes sharp. We are not alone. */
   =
@29021 /* I knew they'd come, creeping from the shadows like rats. Mark my words, Gorgon's Eye, you've chosen the wrong night to challenge the might of the Flaming Fist! */
   == h_city3d
@29022 /* Let's secure the perimeter. We'll leave this in your hands... Inspector. */
   == h_decoyd
@29023 /* Understood. Get going, then! */
   DO ~
      SetGlobal("h_DecoyAttack","GLOBAL",1)
      SetGlobal("h_SpawnInspector","GLOBAL",1)
      Enemy()~
EXIT
