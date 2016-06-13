#ifndef _Area_h
#define _Area_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "Area_Context.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void Area__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Area__add_area(Area_Context__AREA aa);
extern void Area__remove_area(Area_Context__AREA aa);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Area_h */
