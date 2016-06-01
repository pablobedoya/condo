MACHINE Condominium
INCLUDES Owner, Area
VARIABLES reserved
INVARIANT
 reserved : owner <-> area
INITIALISATION reserved := {}
OPERATIONS
  book_area (oo, aa) = 
    PRE oo : OWNER & aa : AREA & (oo : dom(reserved) or oo /: dom(reserved)) & aa /: ran(reserved)
    THEN reserved := reserved \/ {oo |-> aa}
    END;

  cancel_booking (oo, aa) =
    PRE oo : OWNER & aa : AREA & aa : ran(reserved)
    THEN reserved := reserved - {oo |-> aa}
    END    
END

