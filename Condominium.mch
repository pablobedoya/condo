MACHINE Condominium
INCLUDES Owner, Area, Event
VARIABLES reserved, events
INVARIANT
 reserved : owner <-> area & events : AREA --> EVENT
INITIALISATION reserved := {} || events := {}
OPERATIONS
  book_area (oo, aa) =
    PRE oo : OWNER & aa : AREA & (oo : dom(reserved) or oo /: dom(reserved)) & aa /: ran(reserved)
    THEN reserved := reserved \/ {oo |-> aa}
    END;

  cancel_booking (oo, aa) =
    PRE oo : OWNER & aa : AREA & oo : dom(reserved) & aa : ran(reserved)
    THEN reserved := reserved - {oo |-> aa}
    END;

  add_event(aa, ee) =
    PRE aa : AREA & ee : EVENT & aa : ran(reserved) & ee /: ran(events)
    THEN events := events \/ {aa |-> ee}
    END;

  remove_event(aa, ee) =
    PRE aa : AREA & ee : EVENT & ee : ran(events)
    THEN events := events - {aa |-> ee}
    END

END

