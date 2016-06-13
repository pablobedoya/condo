#ifndef _Employee_h
#define _Employee_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#define Employee__NAME__max 3
/* Clause SETS */
typedef int Employee__NAME;
typedef enum
{
    Employee__permition,
    Employee__no_permition
    
} Employee__ROLES;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void Employee__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Employee__add_emp(Employee__NAME name);
extern void Employee__remove_emp(Employee__NAME name);
extern void Employee__change_role(Employee__NAME name, Employee__ROLES new_role);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Employee_h */
