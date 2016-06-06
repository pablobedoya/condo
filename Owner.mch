MACHINE Owner
SETS
 OWNER
SEES Suggestion
VARIABLES owner, owner_suggestions
INVARIANT
 owner <: OWNER & owner_suggestions : OWNER +-> SUGGESTION
INITIALISATION owner := {} || owner_suggestions := {}
OPERATIONS
  add_owner(oo) =
    PRE oo : OWNER & oo /: owner
    THEN owner := owner \/ {oo}
    END;

  remove_owner(oo) =
    PRE oo : OWNER & oo : owner
    THEN owner := owner - {oo}
    END;
    
  add_owner_suggestion(oo, suggestion) =
    PRE oo : OWNER & suggestion : SUGGESTION
    THEN owner_suggestions := owner_suggestions <+ {oo |-> suggestion}
    END

END