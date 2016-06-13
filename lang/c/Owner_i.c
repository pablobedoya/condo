/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Owner.h"

/* Clause SEES */
#include "Owner_Context.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static bool Owner__owneri[Owner_Context__OWNER__max+1];
/* Clause INITIALISATION */
void Owner__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= Owner_Context__OWNER__max-1;i++)
    {
        Owner__owneri[i] = false;
    }
}

/* Clause OPERATIONS */

void Owner__add_owner(Owner_Context__OWNER oo)
{
    Owner__owneri[oo] = true;
}

void Owner__remove_owner(Owner_Context__OWNER oo)
{
    Owner__owneri[oo] = false;
}

