/* Area
 * Author: 
 * Creation date: 30/05/2016
 */
MACHINE
    Area
SEES Area_Context
VARIABLES area
INVARIANT
 area <: AREA
INITIALISATION area := {}
OPERATIONS
  add_area(aa) =
    PRE aa : AREA & aa /: area
    THEN area := area \/ {aa}
    END;

  remove_area(aa) =
    PRE aa : AREA & aa : area
    THEN area := area - {aa}
    END

END