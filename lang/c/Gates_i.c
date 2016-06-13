/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Gates.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static Gates__POSITION Gates__positioni[3];
/* Clause INITIALISATION */
void Gates__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= 2;i++)
    {
        Gates__positioni[i] = Gates__closed;
    }
}

/* Clause OPERATIONS */

void Gates__open_gate(Gates__GATE gg)
{
    Gates__positioni[gg] = Gates__open;
}

void Gates__close_gate(Gates__GATE gg)
{
    Gates__positioni[gg] = Gates__closed;
}

void Gates__printquery(Gates__GATE gg, Gates__POSITION *pp)
{
    (*pp) = Gates__positioni[gg];
}

