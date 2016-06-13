#ifndef _Suggestion_h
#define _Suggestion_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "Owner_Context.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#define Suggestion__SUGGESTION__max 4
/* Clause SETS */
typedef int Suggestion__SUGGESTION;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void Suggestion__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Suggestion__add_suggestion(Suggestion__SUGGESTION suggestion, Owner_Context__OWNER oo);
extern void Suggestion__remove_suggestion(Suggestion__SUGGESTION suggestion);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Suggestion_h */
