/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Employee.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static Employee__ROLES Employee__employeesi[4];
/* Clause INITIALISATION */
void Employee__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= 3;i++)
    {
        Employee__employeesi[i] = Employee__no_permition;
    }
}

/* Clause OPERATIONS */

void Employee__add_emp(Employee__NAME name)
{
    Employee__employeesi[name] = Employee__permition;
}

void Employee__remove_emp(Employee__NAME name)
{
    Employee__employeesi[name] = Employee__no_permition;
}

void Employee__change_role(Employee__NAME name, Employee__ROLES new_role)
{
    Employee__employeesi[name] = new_role;
}

