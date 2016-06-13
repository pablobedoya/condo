#ifndef _Gates_h
#define _Gates_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#define Gates__GATE__max 2
/* Clause SETS */
typedef int Gates__GATE;
typedef enum
{
    Gates__open,
    Gates__closed
    
} Gates__POSITION;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void Gates__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Gates__open_gate(Gates__GATE gg);
extern void Gates__close_gate(Gates__GATE gg);
extern void Gates__printquery(Gates__GATE gg, Gates__POSITION *pp);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Gates_h */
