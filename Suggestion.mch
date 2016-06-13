/* Suggestion
 * Author: 
 * Creation date: 01/06/2016
 */
MACHINE
    Suggestion
SEES
    Owner_Context
SETS
    SUGGESTION
VARIABLES suggestions
INVARIANT
 suggestions : SUGGESTION +-> OWNER
INITIALISATION suggestions := {}
OPERATIONS
  add_suggestion(suggestion, oo) =
    PRE suggestion : SUGGESTION & oo : OWNER
    THEN suggestions := suggestions <+ {suggestion |-> oo}
    END;

  remove_suggestion(suggestion) =
    PRE suggestion : SUGGESTION
    THEN suggestions := suggestions - {suggestion |-> suggestions(suggestion)}
    END
END