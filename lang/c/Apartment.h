#ifndef _Apartment_h
#define _Apartment_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "Owner_Context.h"
#include "Vehicle_Context.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#define Apartment__NUMBER__max 3
/* Clause SETS */
typedef int Apartment__NUMBER;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void Apartment__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Apartment__add_apart_to_owner(Apartment__NUMBER nn, Owner_Context__OWNER oo);
extern void Apartment__remove_owner_from_apartment(Apartment__NUMBER nn);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Apartment_h */
