/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Area.h"

/* Clause SEES */
#include "Area_Context.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static bool Area__areai[Area_Context__AREA__max+1];
/* Clause INITIALISATION */
void Area__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= Area_Context__AREA__max-1;i++)
    {
        Area__areai[i] = false;
    }
}

/* Clause OPERATIONS */

void Area__add_area(Area_Context__AREA aa)
{
    Area__areai[aa] = true;
}

void Area__remove_area(Area_Context__AREA aa)
{
    Area__areai[aa] = false;
}

