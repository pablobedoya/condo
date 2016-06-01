<<<<<<< HEAD
/* Condominium
 * Author: 
 * Creation date: 01/06/2016
 */
MACHINE
    Condominium

END
=======
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

>>>>>>> f18ce50c0ba9af266b858bad5e67a5af76736c45
