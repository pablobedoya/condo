MACHINE Area
SETS
 AREA
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

