/* Gates
 * Author: 
 * Creation date: 25/05/2016
 */
MACHINE Gates
SETS
 GATE ; POSITION = { open , closed }
ABSTRACT_VARIABLES position
INVARIANT
 position : GATE --> POSITION
INITIALISATION position := GATE * { closed }
OPERATIONS
  open_gate ( gg ) =
    PRE gg : GATE
    THEN position ( gg ) := open
    END ;
  close_gate ( gg ) =
    PRE gg : GATE
    THEN position ( gg ) := closed
    END
END
