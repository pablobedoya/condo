/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Vehicle.h"

/* Clause SEES */
#include "Vehicle_Context.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static Vehicle__PERMITION Vehicle__vehiclesi[Vehicle_Context__VEHICLE_PLATE__max+1];
/* Clause INITIALISATION */
void Vehicle__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= Vehicle_Context__VEHICLE_PLATE__max-1;i++)
    {
        Vehicle__vehiclesi[i] = Vehicle__unpermitted;
    }
}

/* Clause OPERATIONS */

void Vehicle__add_vehicle(Vehicle_Context__VEHICLE_PLATE plate)
{
    Vehicle__vehiclesi[plate] = Vehicle__permitted;
}

void Vehicle__remove_vehicle(Vehicle_Context__VEHICLE_PLATE plate)
{
    Vehicle__vehiclesi[plate] = Vehicle__unpermitted;
}

