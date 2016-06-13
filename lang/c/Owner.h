#ifndef _Owner_h
#define _Owner_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "Owner_Context.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void Owner__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Owner__add_owner(Owner_Context__OWNER oo);
extern void Owner__remove_owner(Owner_Context__OWNER oo);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Owner_h */
