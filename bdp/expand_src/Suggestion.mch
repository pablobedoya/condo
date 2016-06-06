/* Suggestion
 * Author: 
 * Creation date: 01/06/2016
 */
MACHINE
    Suggestion
SETS
 SUGGESTION
ABSTRACT_VARIABLES suggestions
INVARIANT
 suggestions <: SUGGESTION
INITIALISATION suggestions := {}
OPERATIONS
  add_suggestion ( suggestion ) =
    PRE suggestion : SUGGESTION
    THEN suggestions := suggestions \/ { suggestion }
    END ;

  remove_suggestion ( suggestion ) =
    PRE suggestion : SUGGESTION & suggestion : suggestions
    THEN suggestions := suggestions - { suggestion }
    END
END
