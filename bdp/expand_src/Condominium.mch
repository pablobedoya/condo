MACHINE Condominium
EXTENDS Owner , Area
INCLUDES Event_Context , Area_Context , Owner_Context
ABSTRACT_VARIABLES reserved , events
INVARIANT
 reserved : owner +-> area & events : area +-> EVENT
INITIALISATION reserved := {} || events := {}
OPERATIONS
  create_owner ( oo ) =
    PRE oo : OWNER & oo /: owner
    THEN add_owner ( oo )
    END ;

  create_area ( aa ) =
    PRE aa : AREA & aa /: area
    THEN add_area ( aa )
    END ;

  book_area ( oo , aa ) =
    PRE oo : OWNER & aa : AREA & oo : owner & aa : area & oo /: dom ( reserved ) & aa /: ran ( reserved )
    THEN reserved := reserved \/ { oo |-> aa }
    END ;

  cancel_booking ( oo , aa ) =
    PRE oo : OWNER & aa : AREA & oo : owner & aa : area & oo : dom ( reserved ) & aa : ran ( reserved ) & aa /: dom ( events )
    THEN reserved := reserved - { oo |-> aa }
    END ;

  add_event ( aa , ee ) =
    PRE aa : AREA & ee : EVENT & aa : area & aa /: dom ( events ) & aa : ran ( reserved ) & ee /: ran ( events )
    THEN events := events \/ { aa |-> ee }
    END ;

  remove_event ( aa , ee ) =
    PRE aa : AREA & ee : EVENT & aa : area & aa : dom ( events ) & events ( aa ) = ee
    THEN events := events - { aa |-> ee }
    END

END
