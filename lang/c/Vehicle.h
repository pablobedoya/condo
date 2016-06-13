#ifndef _Vehicle_h
#define _Vehicle_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "Vehicle_Context.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */
typedef enum
{
    Vehicle__permitted,
    Vehicle__unpermitted
    
} Vehicle__PERMITION;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void Vehicle__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Vehicle__add_vehicle(Vehicle_Context__VEHICLE_PLATE plate);
extern void Vehicle__remove_vehicle(Vehicle_Context__VEHICLE_PLATE plate);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Vehicle_h */
