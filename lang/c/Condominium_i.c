/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Condominium.h"

/* Clause SEES */
#include "Area_Context.h"
#include "Event_Context.h"
#include "Owner_Context.h"

/* Clause IMPORTS */
#include "Owner.h"
#include "Area.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static Area_Context__AREA Condominium__reservedi[Owner_Context__OWNER__max+1];
static Event_Context__EVENT Condominium__eventsi[Area_Context__AREA__max+1];
/* Clause INITIALISATION */
void Condominium__INITIALISATION(void)
{
    
    unsigned int i = 0;
    Area__INITIALISATION();
    Owner__INITIALISATION();
    for(i = 0; i <= Owner_Context__OWNER__max-1;i++)
    {
        Condominium__reservedi[i] = Area_Context__DEFAULT_AREA;
    }
    for(i = 0; i <= Area_Context__AREA__max-1;i++)
    {
        Condominium__eventsi[i] = Event_Context__DEFAULT_EVENT;
    }
}

/* Clause OPERATIONS */

void Condominium__create_owner(Owner_Context__OWNER oo)
{
    Owner__add_owner(oo);
}

void Condominium__create_area(Area_Context__AREA aa)
{
    Area__add_area(aa);
}

void Condominium__book_area(Owner_Context__OWNER oo, Area_Context__AREA aa)
{
    Condominium__reservedi[oo] = aa;
}

void Condominium__cancel_booking(Owner_Context__OWNER oo, Area_Context__AREA aa)
{
    Condominium__reservedi[oo] = Area_Context__DEFAULT_AREA;
}

void Condominium__add_event(Area_Context__AREA aa, Event_Context__EVENT ee)
{
    Condominium__eventsi[aa] = ee;
}

void Condominium__remove_event(Area_Context__AREA aa, Event_Context__EVENT ee)
{
    Condominium__eventsi[aa] = Event_Context__DEFAULT_EVENT;
}

