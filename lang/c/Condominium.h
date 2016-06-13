#ifndef _Condominium_h
#define _Condominium_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "Area_Context.h"
#include "Event_Context.h"
#include "Owner_Context.h"

/* Clause INCLUDES */
#include "Event_Context.h"
#include "Area_Context.h"
#include "Owner_Context.h"

/* Clause IMPORTS */
#include "Owner.h"
#include "Area.h"

/* Clause EXTENDS */
#include "Owner.h"
#include "Area.h"
#define Condominium__add_owner Owner__add_owner
#define Condominium__remove_owner Owner__remove_owner
#define Condominium__add_area Area__add_area
#define Condominium__remove_area Area__remove_area
#define Condominium__add_owner Owner__add_owner
#define Condominium__remove_owner Owner__remove_owner
#define Condominium__add_area Area__add_area
#define Condominium__remove_area Area__remove_area

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#define Condominium__EVENT__max Event_Context__EVENT__max 
#define Condominium__AREA__max Area_Context__AREA__max 
#define Condominium__OWNER__max Owner_Context__OWNER__max 
/* Clause SETS */
typedef Event_Context__EVENT Condominium__EVENT;
typedef Area_Context__AREA Condominium__AREA;
typedef Owner_Context__OWNER Condominium__OWNER;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void Condominium__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Condominium__create_owner(Owner_Context__OWNER oo);
extern void Condominium__create_area(Area_Context__AREA aa);
extern void Condominium__book_area(Owner_Context__OWNER oo, Area_Context__AREA aa);
extern void Condominium__cancel_booking(Owner_Context__OWNER oo, Area_Context__AREA aa);
extern void Condominium__add_event(Area_Context__AREA aa, Event_Context__EVENT ee);
extern void Condominium__remove_event(Area_Context__AREA aa, Event_Context__EVENT ee);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Condominium_h */
