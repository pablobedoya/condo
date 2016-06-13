/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Suggestion.h"

/* Clause SEES */
#include "Owner_Context.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static Owner_Context__OWNER Suggestion__suggestionsi[5];
/* Clause INITIALISATION */
void Suggestion__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= 4;i++)
    {
        Suggestion__suggestionsi[i] = Owner_Context__DEFAULT_OWNER;
    }
}

/* Clause OPERATIONS */

void Suggestion__add_suggestion(Suggestion__SUGGESTION suggestion, Owner_Context__OWNER oo)
{
    Suggestion__suggestionsi[suggestion] = oo;
}

void Suggestion__remove_suggestion(Suggestion__SUGGESTION suggestion)
{
    Suggestion__suggestionsi[suggestion] = Owner_Context__DEFAULT_OWNER;
}

