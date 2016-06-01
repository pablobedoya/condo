MACHINE Owner
SETS
 OWNER
VARIABLES owner
INVARIANT
 owner <: OWNER
INITIALISATION owner := {}
OPERATIONS
  add_owner(oo) =
    PRE oo : OWNER & oo /: owner
    THEN owner := owner \/ {oo}
    END;

  remove_owner(oo) =
    PRE oo : OWNER & oo : owner
    THEN owner := owner - {oo}
    END
END

