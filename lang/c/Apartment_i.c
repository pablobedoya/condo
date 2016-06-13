/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Apartment.h"

/* Clause SEES */
#include "Owner_Context.h"
#include "Vehicle_Context.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static Owner_Context__OWNER Apartment__apartmentsi[4];
static Vehicle_Context__VEHICLE_PLATE Apartment__apartment_vehiclesi[4];
/* Clause INITIALISATION */
void Apartment__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= 3;i++)
    {
        Apartment__apartmentsi[i] = Owner_Context__DEFAULT_OWNER;
    }
    for(i = 0; i <= 3;i++)
    {
        Apartment__apartment_vehiclesi[i] = Vehicle_Context__DEFAULT_VEHICLE;
    }
}

/* Clause OPERATIONS */

void Apartment__add_apart_to_owner(Apartment__NUMBER nn, Owner_Context__OWNER oo)
{
    Apartment__apartmentsi[nn] = oo;
}

void Apartment__remove_owner_from_apartment(Apartment__NUMBER nn)
{
    Apartment__apartmentsi[nn] = Owner_Context__DEFAULT_OWNER;
    Apartment__apartment_vehiclesi[nn] = Vehicle_Context__DEFAULT_VEHICLE;
}

